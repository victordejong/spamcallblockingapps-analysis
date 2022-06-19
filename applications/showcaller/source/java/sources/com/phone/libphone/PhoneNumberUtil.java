package com.phone.libphone;

import com.phone.libphone.NumberParseException;
import com.phone.libphone.Phonenumber$PhoneNumber;
import com.phone.libphone.internal.AbstractC9407a;
import com.phone.libphone.internal.C9408b;
import com.phone.libphone.internal.RegexCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil.class */
public class PhoneNumberUtil {

    /* renamed from: a */
    private static final Logger f40160a = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: b */
    private static final Map<Integer, String> f40161b;

    /* renamed from: c */
    private static final Set<Integer> f40162c;

    /* renamed from: d */
    private static final Set<Integer> f40163d;

    /* renamed from: e */
    private static final Map<Character, Character> f40164e;

    /* renamed from: f */
    private static final Map<Character, Character> f40165f;

    /* renamed from: g */
    private static final Map<Character, Character> f40166g;

    /* renamed from: h */
    private static final Map<Character, Character> f40167h;

    /* renamed from: i */
    private static final Pattern f40168i;

    /* renamed from: j */
    private static final String f40169j;

    /* renamed from: k */
    static final Pattern f40170k;

    /* renamed from: l */
    private static final Pattern f40171l;

    /* renamed from: m */
    private static final Pattern f40172m;

    /* renamed from: n */
    private static final Pattern f40173n;

    /* renamed from: o */
    static final Pattern f40174o;

    /* renamed from: p */
    static final Pattern f40175p;

    /* renamed from: q */
    private static final Pattern f40176q;

    /* renamed from: r */
    private static final String f40177r;

    /* renamed from: s */
    private static final String f40178s;

    /* renamed from: t */
    static final String f40179t;

    /* renamed from: u */
    private static final Pattern f40180u;

    /* renamed from: v */
    private static final Pattern f40181v;

    /* renamed from: w */
    static final Pattern f40182w;

    /* renamed from: x */
    private static final Pattern f40183x;

    /* renamed from: y */
    private static final Pattern f40184y;

    /* renamed from: z */
    private static PhoneNumberUtil f40185z;

    /* renamed from: A */
    private final AbstractC9401e f40186A;

    /* renamed from: B */
    private final Map<Integer, List<String>> f40187B;

    /* renamed from: C */
    private final AbstractC9407a f40188C = C9408b.m654b();

    /* renamed from: D */
    private final Set<String> f40189D = new HashSet(35);

    /* renamed from: E */
    private final RegexCache f40190E = new RegexCache(100);

    /* renamed from: F */
    private final Set<String> f40191F = new HashSet(320);

    /* renamed from: G */
    private final Set<Integer> f40192G = new HashSet();

    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil$PhoneNumberFormat.class */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil$PhoneNumberType.class */
    public enum PhoneNumberType {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil$ValidationResult.class */
    public enum ValidationResult {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    /* renamed from: com.phone.libphone.PhoneNumberUtil$a */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil$a.class */
    public static /* synthetic */ class C9395a {

        /* renamed from: a */
        static final /* synthetic */ int[] f40218a;

        /* renamed from: b */
        static final /* synthetic */ int[] f40219b;

        /* renamed from: c */
        static final /* synthetic */ int[] f40220c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00f3 -> B:74:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f7 -> B:90:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00fb -> B:84:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ff -> B:98:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0103 -> B:94:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0107 -> B:68:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x010b -> B:64:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x010f -> B:78:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0113 -> B:72:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0117 -> B:88:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x011b -> B:24:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x011f -> B:96:0x009c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0123 -> B:92:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0127 -> B:66:0x00b2). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x012b -> B:33:0x00bd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x012f -> B:76:0x00d1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0133 -> B:70:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0137 -> B:86:0x00e7). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            f40220c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f40220c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f40220c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f40220c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f40220c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f40220c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f40220c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f40220c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f40220c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f40220c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f40220c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f40219b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f40219b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f40219b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f40219b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            int[] iArr3 = new int[Phonenumber$PhoneNumber.CountryCodeSource.values().length];
            f40218a = iArr3;
            try {
                iArr3[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f40218a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f40218a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f40218a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(52, "1");
        hashMap.put(54, "9");
        f40161b = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        f40162c = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f40163d = Collections.unmodifiableSet(hashSet2);
        HashMap hashMap2 = new HashMap();
        hashMap2.put('0', '0');
        hashMap2.put('1', '1');
        hashMap2.put('2', '2');
        hashMap2.put('3', '3');
        hashMap2.put('4', '4');
        hashMap2.put('5', '5');
        hashMap2.put('6', '6');
        hashMap2.put('7', '7');
        hashMap2.put('8', '8');
        hashMap2.put('9', '9');
        HashMap hashMap3 = new HashMap(40);
        hashMap3.put('A', '2');
        hashMap3.put('B', '2');
        hashMap3.put('C', '2');
        hashMap3.put('D', '3');
        hashMap3.put('E', '3');
        hashMap3.put('F', '3');
        hashMap3.put('G', '4');
        hashMap3.put('H', '4');
        hashMap3.put('I', '4');
        hashMap3.put('J', '5');
        hashMap3.put('K', '5');
        hashMap3.put('L', '5');
        hashMap3.put('M', '6');
        hashMap3.put('N', '6');
        hashMap3.put('O', '6');
        hashMap3.put('P', '7');
        hashMap3.put('Q', '7');
        hashMap3.put('R', '7');
        hashMap3.put('S', '7');
        hashMap3.put('T', '8');
        hashMap3.put('U', '8');
        hashMap3.put('V', '8');
        hashMap3.put('W', '9');
        hashMap3.put('X', '9');
        hashMap3.put('Y', '9');
        hashMap3.put('Z', '9');
        Map<Character, Character> unmodifiableMap = Collections.unmodifiableMap(hashMap3);
        f40165f = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        f40166g = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        f40164e = Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : unmodifiableMap.keySet()) {
            char charValue = ch.charValue();
            hashMap6.put(Character.valueOf(Character.toLowerCase(charValue)), Character.valueOf(charValue));
            hashMap6.put(Character.valueOf(charValue), Character.valueOf(charValue));
        }
        hashMap6.putAll(hashMap2);
        hashMap6.put('-', '-');
        hashMap6.put((char) 65293, '-');
        hashMap6.put((char) 8208, '-');
        hashMap6.put((char) 8209, '-');
        hashMap6.put((char) 8210, '-');
        hashMap6.put((char) 8211, '-');
        hashMap6.put((char) 8212, '-');
        hashMap6.put((char) 8213, '-');
        hashMap6.put((char) 8722, '-');
        hashMap6.put('/', '/');
        hashMap6.put((char) 65295, '/');
        hashMap6.put(' ', ' ');
        hashMap6.put((char) 12288, ' ');
        hashMap6.put((char) 8288, ' ');
        hashMap6.put('.', '.');
        hashMap6.put((char) 65294, '.');
        f40167h = Collections.unmodifiableMap(hashMap6);
        f40168i = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = f40165f;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        f40169j = sb2;
        f40170k = Pattern.compile("[+＋]+");
        f40171l = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f40172m = Pattern.compile("(\\p{Nd})");
        f40173n = Pattern.compile("[+＋\\p{Nd}]");
        f40174o = Pattern.compile("[\\\\/] *x");
        f40175p = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        f40176q = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + "\\p{Nd}]*";
        f40177r = str;
        String m706d = m706d(",;xｘ#＃~～");
        f40178s = m706d;
        f40179t = m706d("xｘ#＃~～");
        f40180u = Pattern.compile("(?:" + m706d + ")$", 66);
        f40181v = Pattern.compile(str + "(?:" + m706d + ")?", 66);
        f40182w = Pattern.compile("(\\D+)");
        f40183x = Pattern.compile("(\\$\\d)");
        f40184y = Pattern.compile("\\(?\\$1\\)?");
        f40185z = null;
    }

    PhoneNumberUtil(AbstractC9401e abstractC9401e, Map<Integer, List<String>> map) {
        this.f40186A = abstractC9401e;
        this.f40187B = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !"001".equals(value.get(0))) {
                this.f40191F.addAll(value);
            } else {
                this.f40192G.add(entry.getKey());
            }
        }
        if (this.f40191F.remove("001")) {
            f40160a.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f40189D.addAll(map.get(1));
    }

    /* renamed from: A */
    private String m736A(Phonenumber$PhoneNumber phonenumber$PhoneNumber, List<String> list) {
        String m689u = m689u(phonenumber$PhoneNumber);
        for (String str : list) {
            Phonemetadata$PhoneMetadata m691s = m691s(str);
            if (m691s.hasLeadingDigits()) {
                if (this.f40190E.m659a(m691s.getLeadingDigits()).matcher(m689u).lookingAt()) {
                    return str;
                }
            } else if (m686x(m689u, m691s) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: C */
    private boolean m734C(int i) {
        return this.f40187B.containsKey(Integer.valueOf(i));
    }

    /* renamed from: H */
    private boolean m729H(String str) {
        return str != null && this.f40191F.contains(str);
    }

    /* renamed from: I */
    static boolean m728I(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return f40181v.matcher(charSequence).matches();
    }

    /* renamed from: J */
    private void m727J(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        if (!phonenumber$PhoneNumber.hasExtension() || phonenumber$PhoneNumber.getExtension().length() <= 0) {
            return;
        }
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            sb.append(";ext=");
            sb.append(phonenumber$PhoneNumber.getExtension());
        } else if (phonemetadata$PhoneMetadata.hasPreferredExtnPrefix()) {
            sb.append(phonemetadata$PhoneMetadata.getPreferredExtnPrefix());
            sb.append(phonenumber$PhoneNumber.getExtension());
        } else {
            sb.append(" ext. ");
            sb.append(phonenumber$PhoneNumber.getExtension());
        }
    }

    /* renamed from: O */
    static StringBuilder m722O(StringBuilder sb) {
        if (f40176q.matcher(sb).matches()) {
            sb.replace(0, sb.length(), m719R(sb, f40166g, true));
        } else {
            sb.replace(0, sb.length(), m720Q(sb));
        }
        return sb;
    }

    /* renamed from: P */
    static StringBuilder m721P(CharSequence charSequence, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (z) {
                sb.append(charAt);
            }
        }
        return sb;
    }

    /* renamed from: Q */
    public static String m720Q(CharSequence charSequence) {
        return m721P(charSequence, false).toString();
    }

    /* renamed from: R */
    private static String m719R(CharSequence charSequence, Map<Character, Character> map, boolean z) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            Character ch = map.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!z) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: U */
    private void m716U(CharSequence charSequence, String str, boolean z, boolean z2, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int i;
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata;
        if (charSequence != null) {
            if (charSequence.length() > 250) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
            }
            StringBuilder sb = new StringBuilder();
            String charSequence2 = charSequence.toString();
            m710a(charSequence2, sb);
            if (!m728I(sb)) {
                throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            }
            if (z2 && !m708b(sb, str)) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
            }
            if (z) {
                phonenumber$PhoneNumber.setRawInput(charSequence2);
            }
            String m725L = m725L(sb);
            if (m725L.length() > 0) {
                phonenumber$PhoneNumber.setExtension(m725L);
            }
            Phonemetadata$PhoneMetadata m691s = m691s(str);
            StringBuilder sb2 = new StringBuilder();
            try {
                i = m726K(sb, m691s, sb2, z, phonenumber$PhoneNumber);
            } catch (NumberParseException e) {
                Matcher matcher = f40170k.matcher(sb);
                if (e.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                    throw new NumberParseException(e.getErrorType(), e.getMessage());
                }
                i = m726K(sb.substring(matcher.end()), m691s, sb2, z, phonenumber$PhoneNumber);
                if (i == 0) {
                    throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                }
            }
            if (i != 0) {
                String m685y = m685y(i);
                phonemetadata$PhoneMetadata = m691s;
                if (!m685y.equals(str)) {
                    phonemetadata$PhoneMetadata = m690t(i, m685y);
                }
            } else {
                sb2.append(m722O(sb));
                if (str != null) {
                    phonenumber$PhoneNumber.setCountryCode(m691s.getCountryCode());
                    phonemetadata$PhoneMetadata = m691s;
                } else {
                    phonemetadata$PhoneMetadata = m691s;
                    if (z) {
                        phonenumber$PhoneNumber.clearCountryCodeSource();
                        phonemetadata$PhoneMetadata = m691s;
                    }
                }
            }
            if (sb2.length() < 2) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
            }
            StringBuilder sb3 = sb2;
            if (phonemetadata$PhoneMetadata != null) {
                StringBuilder sb4 = new StringBuilder();
                StringBuilder sb5 = new StringBuilder(sb2);
                m723N(sb5, phonemetadata$PhoneMetadata, sb4);
                ValidationResult m711Z = m711Z(sb5, phonemetadata$PhoneMetadata);
                sb3 = sb2;
                if (m711Z != ValidationResult.TOO_SHORT) {
                    sb3 = sb2;
                    if (m711Z != ValidationResult.IS_POSSIBLE_LOCAL_ONLY) {
                        sb3 = sb2;
                        if (m711Z != ValidationResult.INVALID_LENGTH) {
                            if (z && sb4.length() > 0) {
                                phonenumber$PhoneNumber.setPreferredDomesticCarrierCode(sb4.toString());
                            }
                            sb3 = sb5;
                        }
                    }
                }
            }
            int length = sb3.length();
            if (length < 2) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
            }
            if (length > 17) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
            }
            m712Y(sb3, phonenumber$PhoneNumber);
            phonenumber$PhoneNumber.setNationalNumber(Long.parseLong(sb3.toString()));
            return;
        }
        throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
    }

    /* renamed from: V */
    private boolean m715V(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (matcher.lookingAt()) {
            int end = matcher.end();
            Matcher matcher2 = f40172m.matcher(sb.substring(end));
            if (matcher2.find() && m720Q(matcher2.group(1)).equals("0")) {
                return false;
            }
            sb.delete(0, end);
            return true;
        }
        return false;
    }

    /* renamed from: W */
    private void m714W(int i, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int i2 = C9395a.f40219b[phoneNumberFormat.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i2 == 2) {
            sb.insert(0, " ").insert(0, i).insert(0, '+');
        } else if (i2 != 3) {
        } else {
            sb.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
        }
    }

    /* renamed from: X */
    static void m713X(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            try {
                f40185z = phoneNumberUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: Y */
    static void m712Y(CharSequence charSequence, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (charSequence.length() <= 1 || charSequence.charAt(0) != '0') {
            return;
        }
        phonenumber$PhoneNumber.setItalianLeadingZero(true);
        int i = 1;
        while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
            i++;
        }
        if (i == 1) {
            return;
        }
        phonenumber$PhoneNumber.setNumberOfLeadingZeros(i);
    }

    /* renamed from: Z */
    private ValidationResult m711Z(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        return m709a0(charSequence, phonemetadata$PhoneMetadata, PhoneNumberType.UNKNOWN);
    }

    /* renamed from: a */
    private void m710a(String str, StringBuilder sb) {
        int indexOf = str.indexOf(";phone-context=");
        if (indexOf >= 0) {
            int i = indexOf + 15;
            if (i < str.length() - 1 && str.charAt(i) == '+') {
                int indexOf2 = str.indexOf(59, i);
                if (indexOf2 > 0) {
                    sb.append(str.substring(i, indexOf2));
                } else {
                    sb.append(str.substring(i));
                }
            }
            int indexOf3 = str.indexOf("tel:");
            sb.append(str.substring(indexOf3 >= 0 ? indexOf3 + 4 : 0, indexOf));
        } else {
            sb.append(m701i(str));
        }
        int indexOf4 = sb.indexOf(";isub=");
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    /* renamed from: a0 */
    private ValidationResult m709a0(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        ArrayList arrayList;
        Phonemetadata$PhoneNumberDesc m688v = m688v(phonemetadata$PhoneMetadata, phoneNumberType);
        List<Integer> possibleLengthList = m688v.getPossibleLengthList().isEmpty() ? phonemetadata$PhoneMetadata.getGeneralDesc().getPossibleLengthList() : m688v.getPossibleLengthList();
        List<Integer> possibleLengthLocalOnlyList = m688v.getPossibleLengthLocalOnlyList();
        List<Integer> list = possibleLengthLocalOnlyList;
        ArrayList arrayList2 = possibleLengthList;
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!m703g(m688v(phonemetadata$PhoneMetadata, PhoneNumberType.FIXED_LINE))) {
                return m709a0(charSequence, phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata$PhoneNumberDesc m688v2 = m688v(phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            list = possibleLengthLocalOnlyList;
            arrayList2 = possibleLengthList;
            if (m703g(m688v2)) {
                arrayList2 = new ArrayList(possibleLengthList);
                arrayList2.addAll(m688v2.getPossibleLengthList().size() == 0 ? phonemetadata$PhoneMetadata.getGeneralDesc().getPossibleLengthList() : m688v2.getPossibleLengthList());
                Collections.sort(arrayList2);
                if (possibleLengthLocalOnlyList.isEmpty()) {
                    arrayList = m688v2.getPossibleLengthLocalOnlyList();
                } else {
                    arrayList = new ArrayList(possibleLengthLocalOnlyList);
                    arrayList.addAll(m688v2.getPossibleLengthLocalOnlyList());
                    Collections.sort(arrayList);
                }
                list = arrayList;
            }
        }
        if (arrayList2.get(0).intValue() == -1) {
            return ValidationResult.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (list.contains(Integer.valueOf(length))) {
            return ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = arrayList2.get(0).intValue();
        if (intValue == length) {
            return ValidationResult.IS_POSSIBLE;
        }
        if (intValue > length) {
            return ValidationResult.TOO_SHORT;
        }
        if (arrayList2.get(arrayList2.size() - 1).intValue() < length) {
            return ValidationResult.TOO_LONG;
        }
        return arrayList2.subList(1, arrayList2.size()).contains(Integer.valueOf(length)) ? ValidationResult.IS_POSSIBLE : ValidationResult.INVALID_LENGTH;
    }

    /* renamed from: b */
    private boolean m708b(CharSequence charSequence, String str) {
        if (!m729H(str)) {
            return (charSequence == null || charSequence.length() == 0 || !f40170k.matcher(charSequence).lookingAt()) ? false : true;
        }
        return true;
    }

    /* renamed from: d */
    private static String m706d(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*(\\p{Nd}{1,7})#?|[- ]+(\\p{Nd}{1,5})#";
    }

    /* renamed from: e */
    public static PhoneNumberUtil m705e(AbstractC9398c abstractC9398c) {
        if (abstractC9398c != null) {
            return m704f(new C9402f(abstractC9398c));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    /* renamed from: f */
    private static PhoneNumberUtil m704f(AbstractC9401e abstractC9401e) {
        if (abstractC9401e != null) {
            return new PhoneNumberUtil(abstractC9401e, C9397b.m682a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    /* renamed from: g */
    private static boolean m703g(Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        boolean z = false;
        if (phonemetadata$PhoneNumberDesc.getPossibleLengthCount() != 1 || phonemetadata$PhoneNumberDesc.getPossibleLength(0) != -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    static CharSequence m701i(CharSequence charSequence) {
        Matcher matcher = f40173n.matcher(charSequence);
        if (matcher.find()) {
            CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
            Matcher matcher2 = f40175p.matcher(subSequence);
            CharSequence charSequence2 = subSequence;
            if (matcher2.find()) {
                charSequence2 = subSequence.subSequence(0, matcher2.start());
            }
            Matcher matcher3 = f40174o.matcher(charSequence2);
            CharSequence charSequence3 = charSequence2;
            if (matcher3.find()) {
                charSequence3 = charSequence2.subSequence(0, matcher3.start());
            }
            return charSequence3;
        }
        return "";
    }

    /* renamed from: l */
    private String m698l(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat) {
        return m697m(str, phonemetadata$PhoneMetadata, phoneNumberFormat, null);
    }

    /* renamed from: m */
    private String m697m(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        Phonemetadata$NumberFormat m707c = m707c((phonemetadata$PhoneMetadata.intlNumberFormats().size() == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? phonemetadata$PhoneMetadata.numberFormats() : phonemetadata$PhoneMetadata.intlNumberFormats(), str);
        if (m707c != null) {
            str = m696n(str, m707c, phoneNumberFormat, charSequence);
        }
        return str;
    }

    /* renamed from: n */
    private String m696n(String str, Phonemetadata$NumberFormat phonemetadata$NumberFormat, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        String str2;
        String format = phonemetadata$NumberFormat.getFormat();
        Matcher matcher = this.f40190E.m659a(phonemetadata$NumberFormat.getPattern()).matcher(str);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.NATIONAL;
        if (phoneNumberFormat != phoneNumberFormat2 || charSequence == null || charSequence.length() <= 0 || phonemetadata$NumberFormat.getDomesticCarrierCodeFormattingRule().length() <= 0) {
            String nationalPrefixFormattingRule = phonemetadata$NumberFormat.getNationalPrefixFormattingRule();
            str2 = (phoneNumberFormat != phoneNumberFormat2 || nationalPrefixFormattingRule == null || nationalPrefixFormattingRule.length() <= 0) ? matcher.replaceAll(format) : matcher.replaceAll(f40183x.matcher(format).replaceFirst(nationalPrefixFormattingRule));
        } else {
            str2 = matcher.replaceAll(f40183x.matcher(format).replaceFirst(phonemetadata$NumberFormat.getDomesticCarrierCodeFormattingRule().replace("$CC", charSequence)));
        }
        String str3 = str2;
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            Matcher matcher2 = f40171l.matcher(str2);
            if (matcher2.lookingAt()) {
                str2 = matcher2.replaceFirst("");
            }
            str3 = matcher2.reset(str2).replaceAll("-");
        }
        return str3;
    }

    /* renamed from: o */
    private int m695o(String str) {
        Phonemetadata$PhoneMetadata m691s = m691s(str);
        if (m691s != null) {
            return m691s.getCountryCode();
        }
        throw new IllegalArgumentException("Invalid region code: " + str);
    }

    /* renamed from: p */
    public static String m694p(int i) {
        Map<Integer, String> map = f40161b;
        return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : "";
    }

    /* renamed from: q */
    public static PhoneNumberUtil m693q() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            try {
                if (f40185z == null) {
                    m713X(m705e(C9399d.f40227a));
                }
                phoneNumberUtil = f40185z;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtil;
    }

    /* renamed from: t */
    private Phonemetadata$PhoneMetadata m690t(int i, String str) {
        return "001".equals(str) ? m692r(i) : m691s(str);
    }

    /* renamed from: x */
    private PhoneNumberType m686x(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        if (!m731F(str, phonemetadata$PhoneMetadata.getGeneralDesc())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getPremiumRate())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getTollFree())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getSharedCost())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getVoip())) {
            return PhoneNumberType.VOIP;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getPersonalNumber())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getPager())) {
            return PhoneNumberType.PAGER;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getUan())) {
            return PhoneNumberType.UAN;
        }
        if (m731F(str, phonemetadata$PhoneMetadata.getVoicemail())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (!m731F(str, phonemetadata$PhoneMetadata.getFixedLine())) {
            return (phonemetadata$PhoneMetadata.getSameMobileAndFixedLinePattern() || !m731F(str, phonemetadata$PhoneMetadata.getMobile())) ? PhoneNumberType.UNKNOWN : PhoneNumberType.MOBILE;
        }
        if (!phonemetadata$PhoneMetadata.getSameMobileAndFixedLinePattern() && !m731F(str, phonemetadata$PhoneMetadata.getMobile())) {
            return PhoneNumberType.FIXED_LINE;
        }
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    /* renamed from: B */
    public List<String> m735B(int i) {
        List<String> list = this.f40187B.get(Integer.valueOf(i));
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList(0);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: D */
    public boolean m733D(PhoneNumberType phoneNumberType, int i) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f40163d.contains(Integer.valueOf(i)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    /* renamed from: E */
    public boolean m732E(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return m733D(m687w(phonenumber$PhoneNumber), phonenumber$PhoneNumber.getCountryCode());
    }

    /* renamed from: F */
    boolean m731F(String str, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        int length = str.length();
        List<Integer> possibleLengthList = phonemetadata$PhoneNumberDesc.getPossibleLengthList();
        if (possibleLengthList.size() <= 0 || possibleLengthList.contains(Integer.valueOf(length))) {
            return this.f40188C.mo655a(str, phonemetadata$PhoneNumberDesc, false);
        }
        return false;
    }

    /* renamed from: G */
    public boolean m730G(Phonenumber$PhoneNumber phonenumber$PhoneNumber, String str) {
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        Phonemetadata$PhoneMetadata m690t = m690t(countryCode, str);
        boolean z = false;
        if (m690t != null) {
            if ("001".equals(str) || countryCode == m695o(str)) {
                z = false;
                if (m686x(m689u(phonenumber$PhoneNumber), m690t) != PhoneNumberType.UNKNOWN) {
                    z = true;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: K */
    int m726K(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb, boolean z, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        Phonenumber$PhoneNumber.CountryCodeSource m724M = m724M(sb2, phonemetadata$PhoneMetadata != null ? phonemetadata$PhoneMetadata.getInternationalPrefix() : "NonMatch");
        if (z) {
            phonenumber$PhoneNumber.setCountryCodeSource(m724M);
        }
        if (m724M != Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() <= 2) {
                throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int m702h = m702h(sb2, sb);
            if (m702h == 0) {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            phonenumber$PhoneNumber.setCountryCode(m702h);
            return m702h;
        }
        if (phonemetadata$PhoneMetadata != null) {
            int countryCode = phonemetadata$PhoneMetadata.getCountryCode();
            String valueOf = String.valueOf(countryCode);
            String sb3 = sb2.toString();
            if (sb3.startsWith(valueOf)) {
                StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                Phonemetadata$PhoneNumberDesc generalDesc = phonemetadata$PhoneMetadata.getGeneralDesc();
                m723N(sb4, phonemetadata$PhoneMetadata, null);
                if ((!this.f40188C.mo655a(sb2, generalDesc, false) && this.f40188C.mo655a(sb4, generalDesc, false)) || m711Z(sb2, phonemetadata$PhoneMetadata) == ValidationResult.TOO_LONG) {
                    sb.append((CharSequence) sb4);
                    if (z) {
                        phonenumber$PhoneNumber.setCountryCodeSource(Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    phonenumber$PhoneNumber.setCountryCode(countryCode);
                    return countryCode;
                }
            }
        }
        phonenumber$PhoneNumber.setCountryCode(0);
        return 0;
    }

    /* renamed from: L */
    String m725L(StringBuilder sb) {
        Matcher matcher = f40180u.matcher(sb);
        if (!matcher.find() || !m728I(sb.substring(0, matcher.start()))) {
            return "";
        }
        int groupCount = matcher.groupCount();
        for (int i = 1; i <= groupCount; i++) {
            if (matcher.group(i) != null) {
                String group = matcher.group(i);
                sb.delete(matcher.start(), sb.length());
                return group;
            }
        }
        return "";
    }

    /* renamed from: M */
    Phonenumber$PhoneNumber.CountryCodeSource m724M(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = f40170k.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            m722O(sb);
            return Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern m659a = this.f40190E.m659a(str);
        m722O(sb);
        return m715V(m659a, sb) ? Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    /* renamed from: N */
    boolean m723N(StringBuilder sb, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String nationalPrefixForParsing = phonemetadata$PhoneMetadata.getNationalPrefixForParsing();
        if (length == 0 || nationalPrefixForParsing.length() == 0) {
            return false;
        }
        Matcher matcher = this.f40190E.m659a(nationalPrefixForParsing).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        Phonemetadata$PhoneNumberDesc generalDesc = phonemetadata$PhoneMetadata.getGeneralDesc();
        boolean mo655a = this.f40188C.mo655a(sb, generalDesc, false);
        int groupCount = matcher.groupCount();
        String nationalPrefixTransformRule = phonemetadata$PhoneMetadata.getNationalPrefixTransformRule();
        if (nationalPrefixTransformRule == null || nationalPrefixTransformRule.length() == 0 || matcher.group(groupCount) == null) {
            if (mo655a && !this.f40188C.mo655a(sb.substring(matcher.end()), generalDesc, false)) {
                return false;
            }
            if (sb2 != null && groupCount > 0 && matcher.group(groupCount) != null) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
        StringBuilder sb3 = new StringBuilder(sb);
        sb3.replace(0, length, matcher.replaceFirst(nationalPrefixTransformRule));
        if (mo655a && !this.f40188C.mo655a(sb3.toString(), generalDesc, false)) {
            return false;
        }
        if (sb2 != null && groupCount > 1) {
            sb2.append(matcher.group(1));
        }
        sb.replace(0, sb.length(), sb3.toString());
        return true;
    }

    /* renamed from: S */
    public Phonenumber$PhoneNumber m718S(CharSequence charSequence, String str) {
        Phonenumber$PhoneNumber phonenumber$PhoneNumber = new Phonenumber$PhoneNumber();
        m717T(charSequence, str, phonenumber$PhoneNumber);
        return phonenumber$PhoneNumber;
    }

    /* renamed from: T */
    public void m717T(CharSequence charSequence, String str, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        m716U(charSequence, str, false, true, phonenumber$PhoneNumber);
    }

    /* renamed from: c */
    Phonemetadata$NumberFormat m707c(List<Phonemetadata$NumberFormat> list, String str) {
        for (Phonemetadata$NumberFormat phonemetadata$NumberFormat : list) {
            int leadingDigitsPatternSize = phonemetadata$NumberFormat.leadingDigitsPatternSize();
            if (leadingDigitsPatternSize == 0 || this.f40190E.m659a(phonemetadata$NumberFormat.getLeadingDigitsPattern(leadingDigitsPatternSize - 1)).matcher(str).lookingAt()) {
                if (this.f40190E.m659a(phonemetadata$NumberFormat.getPattern()).matcher(str).matches()) {
                    return phonemetadata$NumberFormat;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    int m702h(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            return 0;
        }
        int length = sb.length();
        for (int i = 1; i <= 3 && i <= length; i++) {
            int parseInt = Integer.parseInt(sb.substring(0, i));
            if (this.f40187B.containsKey(Integer.valueOf(parseInt))) {
                sb2.append(sb.substring(i));
                return parseInt;
            }
        }
        return 0;
    }

    /* renamed from: j */
    public String m700j(Phonenumber$PhoneNumber phonenumber$PhoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phonenumber$PhoneNumber.getNationalNumber() == 0 && phonenumber$PhoneNumber.hasRawInput()) {
            String rawInput = phonenumber$PhoneNumber.getRawInput();
            if (rawInput.length() > 0) {
                return rawInput;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        m699k(phonenumber$PhoneNumber, phoneNumberFormat, sb);
        return sb.toString();
    }

    /* renamed from: k */
    public void m699k(Phonenumber$PhoneNumber phonenumber$PhoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        sb.setLength(0);
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        String m689u = m689u(phonenumber$PhoneNumber);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.E164;
        if (phoneNumberFormat == phoneNumberFormat2) {
            sb.append(m689u);
            m714W(countryCode, phoneNumberFormat2, sb);
        } else if (!m734C(countryCode)) {
            sb.append(m689u);
        } else {
            Phonemetadata$PhoneMetadata m690t = m690t(countryCode, m685y(countryCode));
            sb.append(m698l(m689u, m690t, phoneNumberFormat));
            m727J(phonenumber$PhoneNumber, m690t, phoneNumberFormat, sb);
            m714W(countryCode, phoneNumberFormat, sb);
        }
    }

    /* renamed from: r */
    Phonemetadata$PhoneMetadata m692r(int i) {
        if (!this.f40187B.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.f40186A.mo677a(i);
    }

    /* renamed from: s */
    Phonemetadata$PhoneMetadata m691s(String str) {
        if (!m729H(str)) {
            return null;
        }
        return this.f40186A.mo676b(str);
    }

    /* renamed from: u */
    public String m689u(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phonenumber$PhoneNumber.isItalianLeadingZero() && phonenumber$PhoneNumber.getNumberOfLeadingZeros() > 0) {
            char[] cArr = new char[phonenumber$PhoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phonenumber$PhoneNumber.getNationalNumber());
        return sb.toString();
    }

    /* renamed from: v */
    Phonemetadata$PhoneNumberDesc m688v(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        switch (C9395a.f40220c[phoneNumberType.ordinal()]) {
            case 1:
                return phonemetadata$PhoneMetadata.getPremiumRate();
            case 2:
                return phonemetadata$PhoneMetadata.getTollFree();
            case 3:
                return phonemetadata$PhoneMetadata.getMobile();
            case 4:
            case 5:
                return phonemetadata$PhoneMetadata.getFixedLine();
            case 6:
                return phonemetadata$PhoneMetadata.getSharedCost();
            case 7:
                return phonemetadata$PhoneMetadata.getVoip();
            case 8:
                return phonemetadata$PhoneMetadata.getPersonalNumber();
            case 9:
                return phonemetadata$PhoneMetadata.getPager();
            case 10:
                return phonemetadata$PhoneMetadata.getUan();
            case 11:
                return phonemetadata$PhoneMetadata.getVoicemail();
            default:
                return phonemetadata$PhoneMetadata.getGeneralDesc();
        }
    }

    /* renamed from: w */
    public PhoneNumberType m687w(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        Phonemetadata$PhoneMetadata m690t = m690t(phonenumber$PhoneNumber.getCountryCode(), m684z(phonenumber$PhoneNumber));
        return m690t == null ? PhoneNumberType.UNKNOWN : m686x(m689u(phonenumber$PhoneNumber), m690t);
    }

    /* renamed from: y */
    public String m685y(int i) {
        List<String> list = this.f40187B.get(Integer.valueOf(i));
        return list == null ? "ZZ" : list.get(0);
    }

    /* renamed from: z */
    public String m684z(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        List<String> list = this.f40187B.get(Integer.valueOf(countryCode));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : m736A(phonenumber$PhoneNumber, list);
        }
        Logger logger = f40160a;
        Level level = Level.INFO;
        logger.log(level, "Missing/invalid country_code (" + countryCode + ")");
        return null;
    }
}
