package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.a.c;
import com.google.i18n.phonenumbers.j;
import com.google.i18n.phonenumbers.k;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h.class */
final class h implements Iterator<g> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f32866a;
    private static final Pattern f = Pattern.compile("(?:[(\\[（［])?(?:[^(\\[（［)\\]）］]+[)\\]）］])?[^(\\[（［)\\]）］]+(?:[(\\[（［][^(\\[（［)\\]）］]+[)\\]）］])" + a(0, 3) + "[^(\\[（［)\\]）］]*");
    private static final Pattern h;
    private final PhoneNumberUtil i;
    private final CharSequence j;
    private final String k;
    private final PhoneNumberUtil.a l;
    private long m;
    private int n = b.f32870a;
    private g o = null;
    private int p = 0;
    private final c q = new c(32);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f32867b = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f32868c = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f32869d = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");
    private static final Pattern e = Pattern.compile(":[0-5]\\d");
    private static final Pattern[] g = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h$a.class */
    public interface a {
        boolean a(PhoneNumberUtil phoneNumberUtil, k.a aVar, StringBuilder sb, String[] strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h$b.class */
    public static final class b extends Enum<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f32870a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f32871b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32872c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f32873d = {1, 2, 3};

        private b(String str, int i) {
        }
    }

    static {
        String a2 = a(0, 2);
        String a3 = a(0, 4);
        String a4 = a(0, 20);
        String concat = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]".concat(String.valueOf(a3));
        StringBuilder sb = new StringBuilder("\\p{Nd}");
        sb.append(a(1, 20));
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder("[");
        sb3.append("(\\[（［+＋");
        sb3.append("]");
        String sb4 = sb3.toString();
        h = Pattern.compile(sb4);
        f32866a = Pattern.compile("(?:" + sb4 + concat + ")" + a2 + sb2 + "(?:" + concat + sb2 + ")" + a4 + "(?:" + PhoneNumberUtil.EXTN_PATTERNS_FOR_MATCHING + ")?", 66);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.a aVar, long j) {
        if (phoneNumberUtil == null || aVar == null) {
            throw null;
        } else if (j >= 0) {
            this.i = phoneNumberUtil;
            this.j = str == null ? "" : str;
            this.k = str2;
            this.l = aVar;
            this.m = j;
        } else {
            throw new IllegalArgumentException();
        }
    }

    private g a(CharSequence charSequence, int i) {
        try {
            if (f.matcher(charSequence).matches() && !f32867b.matcher(charSequence).find()) {
                if (this.l.compareTo(PhoneNumberUtil.a.VALID) >= 0) {
                    if (i > 0 && !h.matcher(charSequence).lookingAt()) {
                        char charAt = this.j.charAt(i - 1);
                        if (b(charAt) || a(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i;
                    if (length < this.j.length()) {
                        char charAt2 = this.j.charAt(length);
                        if (b(charAt2) || a(charAt2)) {
                            return null;
                        }
                    }
                }
                k.a parseAndKeepRawInput = this.i.parseAndKeepRawInput(charSequence, this.k);
                if (!this.l.verify(parseAndKeepRawInput, charSequence, this.i, this)) {
                    return null;
                }
                parseAndKeepRawInput.b();
                parseAndKeepRawInput.g = false;
                parseAndKeepRawInput.h = "";
                parseAndKeepRawInput.k = false;
                parseAndKeepRawInput.l = "";
                return new g(i, charSequence.toString(), parseAndKeepRawInput);
            }
            return null;
        } catch (NumberParseException e2) {
            return null;
        }
    }

    private static CharSequence a(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        CharSequence charSequence2 = charSequence;
        if (matcher.find()) {
            charSequence2 = charSequence.subSequence(0, matcher.start());
        }
        return charSequence2;
    }

    private static String a(int i, int i2) {
        if (i < 0 || i2 <= 0 || i2 < i) {
            throw new IllegalArgumentException();
        }
        return "{" + i + "," + i2 + "}";
    }

    private static boolean a(char c2) {
        if (!Character.isLetter(c2) && Character.getType(c2) != 6) {
            return false;
        }
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c2);
        return of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(PhoneNumberUtil phoneNumberUtil, k.a aVar, StringBuilder sb, String[] strArr) {
        int i;
        if (aVar.j != k.a.EnumC0527a.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(aVar.f32890a);
            i = sb.indexOf(num) + num.length();
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            int indexOf = sb.indexOf(strArr[i2], i);
            if (indexOf < 0) {
                return false;
            }
            i = indexOf + strArr[i2].length();
            if (i2 == 0 && i < sb.length() && phoneNumberUtil.getNddPrefixForRegion(phoneNumberUtil.getRegionCodeForCountryCode(aVar.f32890a), true) != null && Character.isDigit(sb.charAt(i))) {
                return sb.substring(i - strArr[i2].length()).startsWith(phoneNumberUtil.getNationalSignificantNumber(aVar));
            }
        }
        return sb.substring(i).contains(aVar.f32893d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(k.a aVar, PhoneNumberUtil phoneNumberUtil) {
        j.b metadataForRegion;
        if (aVar.j != k.a.EnumC0527a.FROM_DEFAULT_COUNTRY || (metadataForRegion = phoneNumberUtil.getMetadataForRegion(phoneNumberUtil.getRegionCodeForCountryCode(aVar.f32890a))) == null) {
            return true;
        }
        j.a chooseFormattingPatternForNumber = phoneNumberUtil.chooseFormattingPatternForNumber(metadataForRegion.y, phoneNumberUtil.getNationalSignificantNumber(aVar));
        if (chooseFormattingPatternForNumber == null || chooseFormattingPatternForNumber.f32879c.length() <= 0 || chooseFormattingPatternForNumber.f32880d || PhoneNumberUtil.formattingRuleHasFirstGroupOnly(chooseFormattingPatternForNumber.f32879c)) {
            return true;
        }
        return phoneNumberUtil.maybeStripNationalPrefixAndCarrierCode(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(aVar.h)), metadataForRegion, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(k.a aVar, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 < 0 || (indexOf = str.indexOf(47, indexOf2 + 1)) < 0) {
            return false;
        }
        if (!(aVar.j == k.a.EnumC0527a.FROM_NUMBER_WITH_PLUS_SIGN || aVar.j == k.a.EnumC0527a.FROM_NUMBER_WITHOUT_PLUS_SIGN) || !PhoneNumberUtil.normalizeDigitsOnly(str.substring(0, indexOf2)).equals(Integer.toString(aVar.f32890a))) {
            return true;
        }
        return str.substring(indexOf + 1).contains("/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(k.a aVar, String str, PhoneNumberUtil phoneNumberUtil) {
        int i;
        int i2 = 0;
        while (i2 < str.length() - 1) {
            char charAt = str.charAt(i2);
            if (charAt != 'x') {
                i = i2;
                if (charAt != 'X') {
                    continue;
                    i2 = i + 1;
                }
            }
            i = i2 + 1;
            char charAt2 = str.charAt(i);
            if (charAt2 != 'x' && charAt2 != 'X') {
                i = i2;
                if (!PhoneNumberUtil.normalizeDigitsOnly(str.substring(i2)).equals(aVar.f32893d)) {
                    return false;
                }
            } else if (phoneNumberUtil.isNumberMatch(aVar, str.substring(i)) != PhoneNumberUtil.b.NSN_MATCH) {
                return false;
            }
            i2 = i + 1;
        }
        return true;
    }

    private static boolean b(char c2) {
        return c2 == '%' || Character.getType(c2) == 26;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(PhoneNumberUtil phoneNumberUtil, k.a aVar, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.NON_DIGITS_PATTERN.split(sb.toString());
        int length = aVar.f32892c ? split.length - 2 : split.length - 1;
        if (split.length == 1 || split[length].contains(phoneNumberUtil.getNationalSignificantNumber(aVar))) {
            return true;
        }
        int length2 = strArr.length - 1;
        while (length2 > 0 && length >= 0) {
            if (!split[length].equals(strArr[length2])) {
                return false;
            }
            length2--;
            length--;
        }
        return length >= 0 && split[length].endsWith(strArr[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, a aVar2) {
        StringBuilder normalizeDigits = PhoneNumberUtil.normalizeDigits(charSequence, true);
        String format = phoneNumberUtil.format(aVar, PhoneNumberUtil.c.RFC3966);
        int indexOf = format.indexOf(59);
        int i = indexOf;
        if (indexOf < 0) {
            i = format.length();
        }
        if (aVar2.a(phoneNumberUtil, aVar, normalizeDigits, format.substring(format.indexOf(45) + 1, i).split(VerificationLanguage.REGION_PREFIX))) {
            return true;
        }
        j.b a2 = d.a(aVar.f32890a);
        String nationalSignificantNumber = phoneNumberUtil.getNationalSignificantNumber(aVar);
        if (a2 == null) {
            return false;
        }
        for (j.a aVar3 : a2.y) {
            if (aVar3.e() <= 0 || this.q.a(aVar3.a(0)).matcher(nationalSignificantNumber).lookingAt()) {
                if (aVar2.a(phoneNumberUtil, aVar, normalizeDigits, phoneNumberUtil.formatNsnUsingPattern(phoneNumberUtil.getNationalSignificantNumber(aVar), aVar3, PhoneNumberUtil.c.RFC3966).split(VerificationLanguage.REGION_PREFIX))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a3, code lost:
        if (com.google.i18n.phonenumbers.h.e.matcher(r6.j.toString().substring(r0.length() + r0)).lookingAt() == false) goto L_0x00a6;
     */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasNext() {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.h.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ g next() {
        if (hasNext()) {
            g gVar = this.o;
            this.o = null;
            this.n = b.f32870a;
            return gVar;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
