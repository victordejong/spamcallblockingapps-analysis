package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C16129j;
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.p402a.C16109c;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.lang.Character;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.h */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h.class */
final class C16125h implements Iterator<C16124g> {

    /* renamed from: a */
    private static final Pattern f56925a;

    /* renamed from: f */
    private static final Pattern f56930f = Pattern.compile("(?:[(\\[（［])?(?:[^(\\[（［)\\]）］]+[)\\]）］])?[^(\\[（［)\\]）］]+(?:[(\\[（［][^(\\[（［)\\]）］]+[)\\]）］])" + m7813a(0, 3) + "[^(\\[（［)\\]）］]*");

    /* renamed from: h */
    private static final Pattern f56932h;

    /* renamed from: i */
    private final PhoneNumberUtil f56933i;

    /* renamed from: j */
    private final CharSequence f56934j;

    /* renamed from: k */
    private final String f56935k;

    /* renamed from: l */
    private final PhoneNumberUtil.EnumC16095a f56936l;

    /* renamed from: m */
    private long f56937m;

    /* renamed from: n */
    private int f56938n = EnumC16127b.f56942a;

    /* renamed from: o */
    private C16124g f56939o = null;

    /* renamed from: p */
    private int f56940p = 0;

    /* renamed from: q */
    private final C16109c f56941q = new C16109c(32);

    /* renamed from: b */
    private static final Pattern f56926b = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: c */
    private static final Pattern f56927c = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: d */
    private static final Pattern f56928d = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");

    /* renamed from: e */
    private static final Pattern f56929e = Pattern.compile(":[0-5]\\d");

    /* renamed from: g */
    private static final Pattern[] f56931g = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* renamed from: com.google.i18n.phonenumbers.h$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h$a.class */
    public interface AbstractC16126a {
        /* renamed from: a */
        boolean mo7803a(PhoneNumberUtil phoneNumberUtil, C16136k.C16137a c16137a, StringBuilder sb, String[] strArr);
    }

    /* renamed from: com.google.i18n.phonenumbers.h$b */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/h$b.class */
    public static final class EnumC16127b extends Enum<EnumC16127b> {

        /* renamed from: a */
        public static final int f56942a = 1;

        /* renamed from: b */
        public static final int f56943b = 2;

        /* renamed from: c */
        public static final int f56944c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f56945d = {1, 2, 3};

        private EnumC16127b(String str, int i) {
            super(str, i);
        }
    }

    static {
        String m7813a = m7813a(0, 2);
        String m7813a2 = m7813a(0, 4);
        String m7813a3 = m7813a(0, 20);
        String concat = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]".concat(String.valueOf(m7813a2));
        StringBuilder sb = new StringBuilder("\\p{Nd}");
        sb.append(m7813a(1, 20));
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder("[");
        sb3.append("(\\[（［+＋");
        sb3.append("]");
        String sb4 = sb3.toString();
        f56932h = Pattern.compile(sb4);
        f56925a = Pattern.compile("(?:" + sb4 + concat + ")" + m7813a + sb2 + "(?:" + concat + sb2 + ")" + m7813a3 + "(?:" + PhoneNumberUtil.EXTN_PATTERNS_FOR_MATCHING + ")?", 66);
    }

    public C16125h(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.EnumC16095a enumC16095a, long j) {
        if (phoneNumberUtil == null || enumC16095a == null) {
            throw null;
        }
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        this.f56933i = phoneNumberUtil;
        this.f56934j = str == null ? "" : str;
        this.f56935k = str2;
        this.f56936l = enumC16095a;
        this.f56937m = j;
    }

    /* renamed from: a */
    private C16124g m7807a(CharSequence charSequence, int i) {
        try {
            if (f56930f.matcher(charSequence).matches() && !f56926b.matcher(charSequence).find()) {
                if (this.f56936l.compareTo(PhoneNumberUtil.EnumC16095a.VALID) >= 0) {
                    if (i > 0 && !f56932h.matcher(charSequence).lookingAt()) {
                        char charAt = this.f56934j.charAt(i - 1);
                        if (m7805b(charAt) || m7814a(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i;
                    if (length < this.f56934j.length()) {
                        char charAt2 = this.f56934j.charAt(length);
                        if (m7805b(charAt2) || m7814a(charAt2)) {
                            return null;
                        }
                    }
                }
                C16136k.C16137a parseAndKeepRawInput = this.f56933i.parseAndKeepRawInput(charSequence, this.f56935k);
                if (!this.f56936l.verify(parseAndKeepRawInput, charSequence, this.f56933i, this)) {
                    return null;
                }
                parseAndKeepRawInput.m7770b();
                parseAndKeepRawInput.f57035g = false;
                parseAndKeepRawInput.f57036h = "";
                parseAndKeepRawInput.f57039k = false;
                parseAndKeepRawInput.f57040l = "";
                return new C16124g(i, charSequence.toString(), parseAndKeepRawInput);
            }
            return null;
        } catch (NumberParseException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static CharSequence m7806a(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        CharSequence charSequence2 = charSequence;
        if (matcher.find()) {
            charSequence2 = charSequence.subSequence(0, matcher.start());
        }
        return charSequence2;
    }

    /* renamed from: a */
    private static String m7813a(int i, int i2) {
        if (i < 0 || i2 <= 0 || i2 < i) {
            throw new IllegalArgumentException();
        }
        return "{" + i + "," + i2 + "}";
    }

    /* renamed from: a */
    private static boolean m7814a(char c) {
        if (Character.isLetter(c) || Character.getType(c) == 6) {
            Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
            return of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m7812a(PhoneNumberUtil phoneNumberUtil, C16136k.C16137a c16137a, StringBuilder sb, String[] strArr) {
        int i;
        if (c16137a.f57038j != C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(c16137a.f57029a);
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
            if (i3 == 0 && i2 < sb.length() && phoneNumberUtil.getNddPrefixForRegion(phoneNumberUtil.getRegionCodeForCountryCode(c16137a.f57029a), true) != null && Character.isDigit(sb.charAt(i2))) {
                return sb.substring(i2 - strArr[i3].length()).startsWith(phoneNumberUtil.getNationalSignificantNumber(c16137a));
            }
        }
        return sb.substring(i2).contains(c16137a.f57032d);
    }

    /* renamed from: a */
    public static boolean m7811a(C16136k.C16137a c16137a, PhoneNumberUtil phoneNumberUtil) {
        C16129j.C16132b metadataForRegion;
        if (c16137a.f57038j == C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY && (metadataForRegion = phoneNumberUtil.getMetadataForRegion(phoneNumberUtil.getRegionCodeForCountryCode(c16137a.f57029a))) != null) {
            C16129j.C16130a chooseFormattingPatternForNumber = phoneNumberUtil.chooseFormattingPatternForNumber(metadataForRegion.f57020y, phoneNumberUtil.getNationalSignificantNumber(c16137a));
            if (chooseFormattingPatternForNumber != null && chooseFormattingPatternForNumber.f56951c.length() > 0 && !chooseFormattingPatternForNumber.f56952d && !PhoneNumberUtil.formattingRuleHasFirstGroupOnly(chooseFormattingPatternForNumber.f56951c)) {
                return phoneNumberUtil.maybeStripNationalPrefixAndCarrierCode(new StringBuilder(PhoneNumberUtil.normalizeDigitsOnly(c16137a.f57036h)), metadataForRegion, null);
            }
            return true;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m7809a(C16136k.C16137a c16137a, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 >= 0 && (indexOf = str.indexOf(47, indexOf2 + 1)) >= 0) {
            if ((c16137a.f57038j == C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITH_PLUS_SIGN || c16137a.f57038j == C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITHOUT_PLUS_SIGN) && PhoneNumberUtil.normalizeDigitsOnly(str.substring(0, indexOf2)).equals(Integer.toString(c16137a.f57029a))) {
                return str.substring(indexOf + 1).contains("/");
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m7808a(C16136k.C16137a c16137a, String str, PhoneNumberUtil phoneNumberUtil) {
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
                    if (!PhoneNumberUtil.normalizeDigitsOnly(str.substring(i3)).equals(c16137a.f57032d)) {
                        return false;
                    }
                } else if (phoneNumberUtil.isNumberMatch(c16137a, str.substring(i)) != PhoneNumberUtil.EnumC16102b.NSN_MATCH) {
                    return false;
                }
                i2 = i + 1;
            } else {
                return true;
            }
        }
    }

    /* renamed from: b */
    private static boolean m7805b(char c) {
        return c == '%' || Character.getType(c) == 26;
    }

    /* renamed from: b */
    public static boolean m7804b(PhoneNumberUtil phoneNumberUtil, C16136k.C16137a c16137a, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.NON_DIGITS_PATTERN.split(sb.toString());
        int length = c16137a.f57031c ? split.length - 2 : split.length - 1;
        if (split.length == 1 || split[length].contains(phoneNumberUtil.getNationalSignificantNumber(c16137a))) {
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

    /* renamed from: a */
    public final boolean m7810a(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, AbstractC16126a abstractC16126a) {
        StringBuilder normalizeDigits = PhoneNumberUtil.normalizeDigits(charSequence, true);
        String format = phoneNumberUtil.format(c16137a, PhoneNumberUtil.EnumC16103c.RFC3966);
        int indexOf = format.indexOf(59);
        int i = indexOf;
        if (indexOf < 0) {
            i = format.length();
        }
        if (abstractC16126a.mo7803a(phoneNumberUtil, c16137a, normalizeDigits, format.substring(format.indexOf(45) + 1, i).split(VerificationLanguage.REGION_PREFIX))) {
            return true;
        }
        C16129j.C16132b m7822a = C16120d.m7822a(c16137a.f57029a);
        String nationalSignificantNumber = phoneNumberUtil.getNationalSignificantNumber(c16137a);
        if (m7822a == null) {
            return false;
        }
        for (C16129j.C16130a c16130a : m7822a.f57020y) {
            if (c16130a.m7790e() <= 0 || this.f56941q.m7842a(c16130a.m7799a(0)).matcher(nationalSignificantNumber).lookingAt()) {
                if (abstractC16126a.mo7803a(phoneNumberUtil, c16137a, normalizeDigits, phoneNumberUtil.formatNsnUsingPattern(phoneNumberUtil.getNationalSignificantNumber(c16137a), c16130a, PhoneNumberUtil.EnumC16103c.RFC3966).split(VerificationLanguage.REGION_PREFIX))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a3, code lost:
        if (com.google.i18n.phonenumbers.C16125h.f56929e.matcher(r6.f56934j.toString().substring(r0.length() + r0)).lookingAt() == false) goto L15;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.C16125h.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public final /* synthetic */ C16124g next() {
        if (hasNext()) {
            C16124g c16124g = this.f56939o;
            this.f56939o = null;
            this.f56938n = EnumC16127b.f56942a;
            return c16124g;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
