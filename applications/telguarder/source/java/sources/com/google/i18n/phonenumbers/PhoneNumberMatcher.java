package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.RegexCache;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher.class */
final class PhoneNumberMatcher implements Iterator<PhoneNumberMatch> {
    private static final Pattern LEAD_CLASS;
    private static final Pattern MATCHING_BRACKETS = Pattern.compile("(?:[(\\[（［])?(?:[^(\\[（［)\\]）］]+[)\\]）］])?[^(\\[（［)\\]）］]+(?:[(\\[（［][^(\\[（［)\\]）］]+[)\\]）］])" + limit(0, 3) + "[^(\\[（［)\\]）］]*");
    private static final Pattern PATTERN;
    private final PhoneNumberUtil.Leniency leniency;
    private long maxTries;
    private final PhoneNumberUtil phoneUtil;
    private final String preferredRegion;
    private final CharSequence text;
    private static final Pattern PUB_PAGES = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");
    private static final Pattern SLASH_SEPARATED_DATES = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");
    private static final Pattern TIME_STAMPS = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
    private static final Pattern TIME_STAMPS_SUFFIX = Pattern.compile(":[0-5]\\d");
    private static final Pattern[] INNER_MATCHES = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};
    private State state = State.NOT_READY;
    private PhoneNumberMatch lastMatch = null;
    private int searchIndex = 0;
    private final RegexCache regexCache = new RegexCache(32);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker.class */
    public interface NumberGroupingChecker {
        boolean checkGroups(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher$State.class */
    public enum State {
        NOT_READY,
        READY,
        DONE
    }

    static {
        String limit = limit(0, 2);
        String limit2 = limit(0, 4);
        String limit3 = limit(0, 20);
        StringBuilder sb = new StringBuilder();
        sb.append("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]");
        sb.append(limit2);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\\p{Nd}");
        sb3.append(limit(1, 20));
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("[");
        sb5.append("(\\[（［+＋");
        sb5.append("]");
        String sb6 = sb5.toString();
        LEAD_CLASS = Pattern.compile(sb6);
        PATTERN = Pattern.compile("(?:" + sb6 + sb2 + ")" + limit + sb4 + "(?:" + sb2 + sb4 + ")" + limit3 + "(?:" + PhoneNumberUtil.EXTN_PATTERNS_FOR_MATCHING + ")?", 66);
    }

    public PhoneNumberMatcher(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.Leniency leniency, long j) {
        if (phoneNumberUtil == null || leniency == null) {
            throw null;
        }
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        this.phoneUtil = phoneNumberUtil;
        this.text = str == null ? "" : str;
        this.preferredRegion = str2;
        this.leniency = leniency;
        this.maxTries = j;
    }

    public static boolean allNumberGroupsAreExactlyPresent(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.NON_DIGITS_PATTERN.split(sb.toString());
        int length = phoneNumber.hasExtension() ? split.length - 2 : split.length - 1;
        boolean z = true;
        if (split.length != 1) {
            if (split[length].contains(phoneNumberUtil.getNationalSignificantNumber(phoneNumber))) {
                z = true;
            } else {
                int length2 = strArr.length - 1;
                while (length2 > 0 && length >= 0) {
                    if (!split[length].equals(strArr[length2])) {
                        return false;
                    }
                    length2--;
                    length--;
                }
                z = length >= 0 && split[length].endsWith(strArr[0]);
            }
        }
        return z;
    }

    public static boolean allNumberGroupsRemainGrouped(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        int i;
        if (phoneNumber.getCountryCodeSource() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(phoneNumber.getCountryCode());
            i = sb.indexOf(num) + num.length();
        } else {
            i = 0;
        }
        int i2 = i;
        for (int i3 = 0; i3 < strArr.length; i3++) {
            int indexOf = sb.indexOf(strArr[i3], i2);
            if (indexOf < 0) {
                return false;
            }
            i2 = indexOf + strArr[i3].length();
            if (i3 == 0 && i2 < sb.length() && phoneNumberUtil.getNddPrefixForRegion(phoneNumberUtil.getRegionCodeForCountryCode(phoneNumber.getCountryCode()), true) != null && Character.isDigit(sb.charAt(i2))) {
                return sb.substring(i2 - strArr[i3].length()).startsWith(phoneNumberUtil.getNationalSignificantNumber(phoneNumber));
            }
        }
        return sb.substring(i2).contains(phoneNumber.getExtension());
    }

    public static boolean containsMoreThanOneSlashInNationalNumber(Phonenumber.PhoneNumber phoneNumber, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 >= 0 && (indexOf = str.indexOf(47, indexOf2 + 1)) >= 0) {
            if ((phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN) && PhoneNumberUtil.normalizeDigitsOnly(str.substring(0, indexOf2)).equals(Integer.toString(phoneNumber.getCountryCode()))) {
                return str.substring(indexOf + 1).contains("/");
            }
            return true;
        }
        return false;
    }

    public static boolean containsOnlyValidXChars(Phonenumber.PhoneNumber phoneNumber, String str, PhoneNumberUtil phoneNumberUtil) {
        int i;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < str.length() - 1) {
                char charAt = str.charAt(i3);
                if (charAt != 'x') {
                    i = i3;
                    if (charAt != 'X') {
                        continue;
                        i2 = i + 1;
                    }
                }
                i = i3 + 1;
                char charAt2 = str.charAt(i);
                if (charAt2 != 'x' && charAt2 != 'X') {
                    i = i3;
                    if (!PhoneNumberUtil.normalizeDigitsOnly(str.substring(i3)).equals(phoneNumber.getExtension())) {
                        return false;
                    }
                } else if (phoneNumberUtil.isNumberMatch(phoneNumber, str.substring(i)) != PhoneNumberUtil.MatchType.NSN_MATCH) {
                    return false;
                }
                i2 = i + 1;
            } else {
                return true;
            }
        }
    }

    private PhoneNumberMatch extractInnerMatch(CharSequence charSequence, int i) {
        for (Pattern pattern : INNER_MATCHES) {
            Matcher matcher = pattern.matcher(charSequence);
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (matcher.find() && this.maxTries > 0) {
                    boolean z3 = z2;
                    if (z2) {
                        PhoneNumberMatch parseAndVerify = parseAndVerify(trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, charSequence.subSequence(0, matcher.start())), i);
                        if (parseAndVerify != null) {
                            return parseAndVerify;
                        }
                        this.maxTries--;
                        z3 = false;
                    }
                    PhoneNumberMatch parseAndVerify2 = parseAndVerify(trimAfterFirstMatch(PhoneNumberUtil.UNWANTED_END_CHAR_PATTERN, matcher.group(1)), matcher.start(1) + i);
                    if (parseAndVerify2 != null) {
                        return parseAndVerify2;
                    }
                    this.maxTries--;
                    z = z3;
                }
            }
        }
        return null;
    }

    private PhoneNumberMatch extractMatch(CharSequence charSequence, int i) {
        if (SLASH_SEPARATED_DATES.matcher(charSequence).find()) {
            return null;
        }
        if (TIME_STAMPS.matcher(charSequence).find()) {
            if (TIME_STAMPS_SUFFIX.matcher(this.text.toString().substring(charSequence.length() + i)).lookingAt()) {
                return null;
            }
        }
        PhoneNumberMatch parseAndVerify = parseAndVerify(charSequence, i);
        return parseAndVerify != null ? parseAndVerify : extractInnerMatch(charSequence, i);
    }

    private PhoneNumberMatch find(int i) {
        Matcher matcher = PATTERN.matcher(this.text);
        while (this.maxTries > 0 && matcher.find(i)) {
            int start = matcher.start();
            CharSequence trimAfterFirstMatch = trimAfterFirstMatch(PhoneNumberUtil.SECOND_NUMBER_START_PATTERN, this.text.subSequence(start, matcher.end()));
            PhoneNumberMatch extractMatch = extractMatch(trimAfterFirstMatch, start);
            if (extractMatch != null) {
                return extractMatch;
            }
            i = start + trimAfterFirstMatch.length();
            this.maxTries--;
        }
        return null;
    }

    private static String[] getNationalNumberGroups(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber) {
        String format = phoneNumberUtil.format(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
        int indexOf = format.indexOf(59);
        int i = indexOf;
        if (indexOf < 0) {
            i = format.length();
        }
        return format.substring(format.indexOf(45) + 1, i).split("-");
    }

    private static String[] getNationalNumberGroups(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, Phonemetadata.NumberFormat numberFormat) {
        return phoneNumberUtil.formatNsnUsingPattern(phoneNumberUtil.getNationalSignificantNumber(phoneNumber), numberFormat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split("-");
    }

    private static boolean isInvalidPunctuationSymbol(char c) {
        return c == '%' || Character.getType(c) == 26;
    }

    static boolean isLatinLetter(char c) {
        boolean z = false;
        if (Character.isLetter(c) || Character.getType(c) == 6) {
            Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
            if (of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS)) {
                z = true;
            }
            return z;
        }
        return false;
    }

    public static boolean isNationalPrefixPresentIfRequired(Phonenumber.PhoneNumber phoneNumber, PhoneNumberUtil phoneNumberUtil) {
        Phonemetadata.PhoneMetadata metadataForRegion;
        if (phoneNumber.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY && (metadataForRegion = phoneNumberUtil.getMetadataForRegion(phoneNumberUtil.getRegionCodeForCountryCode(phoneNumber.getCountryCode()))) != null) {
            Phonemetadata.NumberFormat chooseFormattingPatternForNumber = phoneNumberUtil.chooseFormattingPatternForNumber(metadataForRegion.getNumberFormatList(), phoneNumberUtil.getNationalSignificantNumber(phoneNumber));
            if (chooseFormattingPatternForNumber != null && chooseFormattingPatternForNumber.getNationalPrefixFormattingRule().length() > 0 && !chooseFormattingPatternForNumber.getNationalPrefixOptionalWhenFormatting() && !PhoneNumberUtil.formattingRuleHasFirstGroupOnly(chooseFormattingPatternForNumber.getNationalPrefixFormattingRule())) {
                return phoneNumberUtil.maybeStripNationalPrefixAndCarrierCode(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(phoneNumber.getRawInput())), metadataForRegion, null);
            }
            return true;
        }
        return true;
    }

    private static String limit(int i, int i2) {
        if (i < 0 || i2 <= 0 || i2 < i) {
            throw new IllegalArgumentException();
        }
        return "{" + i + "," + i2 + "}";
    }

    private PhoneNumberMatch parseAndVerify(CharSequence charSequence, int i) {
        try {
            if (MATCHING_BRACKETS.matcher(charSequence).matches() && !PUB_PAGES.matcher(charSequence).find()) {
                if (this.leniency.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0) {
                    if (i > 0 && !LEAD_CLASS.matcher(charSequence).lookingAt()) {
                        char charAt = this.text.charAt(i - 1);
                        if (isInvalidPunctuationSymbol(charAt) || isLatinLetter(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i;
                    if (length < this.text.length()) {
                        char charAt2 = this.text.charAt(length);
                        if (isInvalidPunctuationSymbol(charAt2) || isLatinLetter(charAt2)) {
                            return null;
                        }
                    }
                }
                Phonenumber.PhoneNumber parseAndKeepRawInput = this.phoneUtil.parseAndKeepRawInput(charSequence, this.preferredRegion);
                if (!this.leniency.verify(parseAndKeepRawInput, charSequence, this.phoneUtil, this)) {
                    return null;
                }
                parseAndKeepRawInput.clearCountryCodeSource();
                parseAndKeepRawInput.clearRawInput();
                parseAndKeepRawInput.clearPreferredDomesticCarrierCode();
                return new PhoneNumberMatch(i, charSequence.toString(), parseAndKeepRawInput);
            }
            return null;
        } catch (NumberParseException e) {
            return null;
        }
    }

    private static CharSequence trimAfterFirstMatch(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        CharSequence charSequence2 = charSequence;
        if (matcher.find()) {
            charSequence2 = charSequence.subSequence(0, matcher.start());
        }
        return charSequence2;
    }

    public boolean checkNumberGroupingIsValid(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, NumberGroupingChecker numberGroupingChecker) {
        StringBuilder normalizeDigits = PhoneNumberUtil.normalizeDigits(charSequence, true);
        if (numberGroupingChecker.checkGroups(phoneNumberUtil, phoneNumber, normalizeDigits, getNationalNumberGroups(phoneNumberUtil, phoneNumber))) {
            return true;
        }
        Phonemetadata.PhoneMetadata alternateFormatsForCountry = MetadataManager.getAlternateFormatsForCountry(phoneNumber.getCountryCode());
        String nationalSignificantNumber = phoneNumberUtil.getNationalSignificantNumber(phoneNumber);
        if (alternateFormatsForCountry == null) {
            return false;
        }
        for (Phonemetadata.NumberFormat numberFormat : alternateFormatsForCountry.getNumberFormatList()) {
            if (numberFormat.getLeadingDigitsPatternCount() <= 0 || this.regexCache.getPatternForRegex(numberFormat.getLeadingDigitsPattern(0)).matcher(nationalSignificantNumber).lookingAt()) {
                if (numberGroupingChecker.checkGroups(phoneNumberUtil, phoneNumber, normalizeDigits, getNationalNumberGroups(phoneNumberUtil, phoneNumber, numberFormat))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.state == State.NOT_READY) {
            PhoneNumberMatch find = find(this.searchIndex);
            this.lastMatch = find;
            if (find == null) {
                this.state = State.DONE;
            } else {
                this.searchIndex = find.end();
                this.state = State.READY;
            }
        }
        return this.state == State.READY;
    }

    @Override // java.util.Iterator
    public PhoneNumberMatch next() {
        if (hasNext()) {
            PhoneNumberMatch phoneNumberMatch = this.lastMatch;
            this.lastMatch = null;
            this.state = State.NOT_READY;
            return phoneNumberMatch;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
