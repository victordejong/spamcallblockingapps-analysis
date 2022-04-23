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
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher.class */
final class PhoneNumberMatcher implements Iterator<PhoneNumberMatch> {

    /* renamed from: o */
    private static final Pattern f12239o;

    /* renamed from: t */
    private static final Pattern f12244t;

    /* renamed from: v */
    private static final Pattern f12246v;

    /* renamed from: f */
    private final PhoneNumberUtil f12247f;

    /* renamed from: g */
    private final CharSequence f12248g;

    /* renamed from: h */
    private final String f12249h;

    /* renamed from: i */
    private final PhoneNumberUtil.Leniency f12250i;

    /* renamed from: j */
    private long f12251j;

    /* renamed from: k */
    private State f12252k = State.NOT_READY;

    /* renamed from: l */
    private PhoneNumberMatch f12253l = null;

    /* renamed from: m */
    private int f12254m = 0;

    /* renamed from: n */
    private final RegexCache f12255n = new RegexCache(32);

    /* renamed from: p */
    private static final Pattern f12240p = Pattern.compile("\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}");

    /* renamed from: q */
    private static final Pattern f12241q = Pattern.compile("(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}");

    /* renamed from: r */
    private static final Pattern f12242r = Pattern.compile("[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$");

    /* renamed from: s */
    private static final Pattern f12243s = Pattern.compile(":[0-5]\\d");

    /* renamed from: u */
    private static final Pattern[] f12245u = {Pattern.compile("/+(.*)"), Pattern.compile("(\\([^(]*)"), Pattern.compile("(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"), Pattern.compile("[‒-―－]\\p{Z}*(.+)"), Pattern.compile("\\.+\\p{Z}*([^.]+)"), Pattern.compile("\\p{Z}+(\\P{Z}+)")};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker.class */
    public interface NumberGroupingChecker {
        /* renamed from: a */
        boolean mo7992a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberMatcher$State.class */
    public enum State {
        NOT_READY,
        READY,
        DONE
    }

    static {
        String str = "[^(\\[（［)\\]）］]";
        f12244t = Pattern.compile("(?:[(\\[（［])?(?:" + str + "+[)\\]）］])?" + str + "+(?:[(\\[（［]" + str + "+[)\\]）］])" + m8064n(0, 3) + str + "*");
        String n = m8064n(0, 2);
        String n2 = m8064n(0, 4);
        String n3 = m8064n(0, 20);
        String str2 = "[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]" + n2;
        String str3 = "\\p{Nd}" + m8064n(1, 20);
        String str4 = "[" + ("(\\[（［+＋") + "]";
        f12246v = Pattern.compile(str4);
        f12239o = Pattern.compile("(?:" + str4 + str2 + ")" + n + str3 + "(?:" + str2 + str3 + ")" + n3 + "(?:" + PhoneNumberUtil.f12276w + ")?", 66);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhoneNumberMatcher(PhoneNumberUtil phoneNumberUtil, String str, String str2, PhoneNumberUtil.Leniency leniency, long j) {
        if (phoneNumberUtil == null || leniency == null) {
            throw null;
        } else if (j >= 0) {
            this.f12247f = phoneNumberUtil;
            this.f12248g = str == null ? "" : str;
            this.f12249h = str2;
            this.f12250i = leniency;
            this.f12251j = j;
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8077a(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        String[] split = PhoneNumberUtil.f12279z.split(sb.toString());
        int length = phoneNumber.m7894m() ? split.length - 2 : split.length - 1;
        boolean z = true;
        if (split.length != 1) {
            if (split[length].contains(phoneNumberUtil.m7995x(phoneNumber))) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m8076b(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, StringBuilder sb, String[] strArr) {
        int i;
        if (phoneNumber.m7901f() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            String num = Integer.toString(phoneNumber.m7902e());
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
            if (i2 == 0 && i < sb.length() && phoneNumberUtil.m7994y(phoneNumberUtil.m8055C(phoneNumber.m7902e()), true) != null && Character.isDigit(sb.charAt(i))) {
                return sb.substring(i - strArr[i2].length()).startsWith(phoneNumberUtil.m7995x(phoneNumber));
            }
        }
        return sb.substring(i).contains(phoneNumber.m7900g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static boolean m8074d(Phonenumber.PhoneNumber phoneNumber, String str) {
        int indexOf;
        int indexOf2 = str.indexOf(47);
        if (indexOf2 < 0 || (indexOf = str.indexOf(47, indexOf2 + 1)) < 0) {
            return false;
        }
        if (!(phoneNumber.m7901f() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN || phoneNumber.m7901f() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN) || !PhoneNumberUtil.m8030a0(str.substring(0, indexOf2)).equals(Integer.toString(phoneNumber.m7902e()))) {
            return true;
        }
        return str.substring(indexOf + 1).contains("/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static boolean m8073e(Phonenumber.PhoneNumber phoneNumber, String str, PhoneNumberUtil phoneNumberUtil) {
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
                if (!PhoneNumberUtil.m8030a0(str.substring(i2)).equals(phoneNumber.m7900g())) {
                    return false;
                }
            } else if (phoneNumberUtil.m8047K(phoneNumber, str.substring(i)) != PhoneNumberUtil.MatchType.NSN_MATCH) {
                return false;
            }
            i2 = i + 1;
        }
        return true;
    }

    /* renamed from: f */
    private PhoneNumberMatch m8072f(CharSequence charSequence, int i) {
        for (Pattern pattern : f12245u) {
            Matcher matcher = pattern.matcher(charSequence);
            boolean z = true;
            while (matcher.find() && this.f12251j > 0) {
                z = z;
                if (z) {
                    PhoneNumberMatch p = m8062p(m8061q(PhoneNumberUtil.f12272s, charSequence.subSequence(0, matcher.start())), i);
                    if (p != null) {
                        return p;
                    }
                    this.f12251j--;
                    z = false;
                }
                PhoneNumberMatch p2 = m8062p(m8061q(PhoneNumberUtil.f12272s, matcher.group(1)), matcher.start(1) + i);
                if (p2 != null) {
                    return p2;
                }
                this.f12251j--;
            }
        }
        return null;
    }

    /* renamed from: g */
    private PhoneNumberMatch m8071g(CharSequence charSequence, int i) {
        if (f12241q.matcher(charSequence).find()) {
            return null;
        }
        if (f12242r.matcher(charSequence).find()) {
            if (f12243s.matcher(this.f12248g.toString().substring(charSequence.length() + i)).lookingAt()) {
                return null;
            }
        }
        PhoneNumberMatch p = m8062p(charSequence, i);
        return p != null ? p : m8072f(charSequence, i);
    }

    /* renamed from: h */
    private PhoneNumberMatch m8070h(int i) {
        Matcher matcher = f12239o.matcher(this.f12248g);
        while (this.f12251j > 0 && matcher.find(i)) {
            int start = matcher.start();
            CharSequence q = m8061q(PhoneNumberUtil.f12271r, this.f12248g.subSequence(start, matcher.end()));
            PhoneNumberMatch g = m8071g(q, start);
            if (g != null) {
                return g;
            }
            i = start + q.length();
            this.f12251j--;
        }
        return null;
    }

    /* renamed from: i */
    private static String[] m8069i(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber) {
        String k = phoneNumberUtil.m8011k(phoneNumber, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
        int indexOf = k.indexOf(59);
        int i = indexOf;
        if (indexOf < 0) {
            i = k.length();
        }
        return k.substring(k.indexOf(45) + 1, i).split(HelpFormatter.DEFAULT_OPT_PREFIX);
    }

    /* renamed from: j */
    private static String[] m8068j(PhoneNumberUtil phoneNumberUtil, Phonenumber.PhoneNumber phoneNumber, Phonemetadata.NumberFormat numberFormat) {
        return phoneNumberUtil.m8004o(phoneNumberUtil.m7995x(phoneNumber), numberFormat, PhoneNumberUtil.PhoneNumberFormat.RFC3966).split(HelpFormatter.DEFAULT_OPT_PREFIX);
    }

    /* renamed from: k */
    private static boolean m8067k(char c) {
        return c == '%' || Character.getType(c) == 26;
    }

    /* renamed from: l */
    static boolean m8066l(char c) {
        boolean z = false;
        if (!Character.isLetter(c) && Character.getType(c) != 6) {
            return false;
        }
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        if (of.equals(Character.UnicodeBlock.BASIC_LATIN) || of.equals(Character.UnicodeBlock.LATIN_1_SUPPLEMENT) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_A) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL) || of.equals(Character.UnicodeBlock.LATIN_EXTENDED_B) || of.equals(Character.UnicodeBlock.COMBINING_DIACRITICAL_MARKS)) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static boolean m8065m(Phonenumber.PhoneNumber phoneNumber, PhoneNumberUtil phoneNumberUtil) {
        Phonemetadata.PhoneMetadata v;
        if (phoneNumber.m7901f() != Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY || (v = phoneNumberUtil.m7997v(phoneNumberUtil.m8055C(phoneNumber.m7902e()))) == null) {
            return true;
        }
        Phonemetadata.NumberFormat c = phoneNumberUtil.m8027c(v.m7934n(), phoneNumberUtil.m7995x(phoneNumber));
        if (c == null || c.m7987e().length() <= 0 || c.m7986f() || PhoneNumberUtil.m8002q(c.m7987e())) {
            return true;
        }
        return phoneNumberUtil.m8034X(new StringBuilder(PhoneNumberUtil.m8030a0(phoneNumber.m7896k())), v, null);
    }

    /* renamed from: n */
    private static String m8064n(int i, int i2) {
        if (i < 0 || i2 <= 0 || i2 < i) {
            throw new IllegalArgumentException();
        }
        return "{" + i + "," + i2 + "}";
    }

    /* renamed from: p */
    private PhoneNumberMatch m8062p(CharSequence charSequence, int i) {
        try {
            if (f12244t.matcher(charSequence).matches() && !f12240p.matcher(charSequence).find()) {
                if (this.f12250i.compareTo(PhoneNumberUtil.Leniency.VALID) >= 0) {
                    if (i > 0 && !f12246v.matcher(charSequence).lookingAt()) {
                        char charAt = this.f12248g.charAt(i - 1);
                        if (m8067k(charAt) || m8066l(charAt)) {
                            return null;
                        }
                    }
                    int length = charSequence.length() + i;
                    if (length < this.f12248g.length()) {
                        char charAt2 = this.f12248g.charAt(length);
                        if (m8067k(charAt2) || m8066l(charAt2)) {
                            return null;
                        }
                    }
                }
                Phonenumber.PhoneNumber e0 = this.f12247f.m8022e0(charSequence, this.f12249h);
                if (!this.f12250i.verify(e0, charSequence, this.f12247f, this)) {
                    return null;
                }
                e0.m7906a();
                e0.m7904c();
                e0.m7905b();
                return new PhoneNumberMatch(i, charSequence.toString(), e0);
            }
            return null;
        } catch (NumberParseException e) {
            return null;
        }
    }

    /* renamed from: q */
    private static CharSequence m8061q(Pattern pattern, CharSequence charSequence) {
        Matcher matcher = pattern.matcher(charSequence);
        CharSequence charSequence2 = charSequence;
        if (matcher.find()) {
            charSequence2 = charSequence.subSequence(0, matcher.start());
        }
        return charSequence2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m8075c(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, NumberGroupingChecker numberGroupingChecker) {
        StringBuilder Z = PhoneNumberUtil.m8032Z(charSequence, true);
        if (numberGroupingChecker.mo7992a(phoneNumberUtil, phoneNumber, Z, m8069i(phoneNumberUtil, phoneNumber))) {
            return true;
        }
        Phonemetadata.PhoneMetadata b = MetadataManager.m8090b(phoneNumber.m7902e());
        String x = phoneNumberUtil.m7995x(phoneNumber);
        if (b == null) {
            return false;
        }
        for (Phonemetadata.NumberFormat numberFormat : b.m7934n()) {
            if (numberFormat.m7988d() <= 0 || this.f12255n.m7869a(numberFormat.m7989c(0)).matcher(x).lookingAt()) {
                if (numberGroupingChecker.mo7992a(phoneNumberUtil, phoneNumber, Z, m8068j(phoneNumberUtil, phoneNumber, numberFormat))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f12252k == State.NOT_READY) {
            PhoneNumberMatch h = m8070h(this.f12254m);
            this.f12253l = h;
            if (h == null) {
                this.f12252k = State.DONE;
            } else {
                this.f12254m = h.m8079a();
                this.f12252k = State.READY;
            }
        }
        return this.f12252k == State.READY;
    }

    /* renamed from: o */
    public PhoneNumberMatch next() {
        if (hasNext()) {
            PhoneNumberMatch phoneNumberMatch = this.f12253l;
            this.f12253l = null;
            this.f12252k = State.NOT_READY;
            return phoneNumberMatch;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
