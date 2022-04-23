package com.phone.libphone;

import com.phone.libphone.NumberParseException;
import com.phone.libphone.Phonenumber$PhoneNumber;
import com.phone.libphone.internal.AbstractC2802a;
import com.phone.libphone.internal.C2803b;
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

    /* renamed from: h */
    private static final Logger f11568h = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: i */
    private static final Map<Integer, String> f11569i;

    /* renamed from: j */
    private static final Set<Integer> f11570j;

    /* renamed from: k */
    private static final Map<Character, Character> f11571k;

    /* renamed from: l */
    private static final Map<Character, Character> f11572l;

    /* renamed from: m */
    private static final String f11573m;

    /* renamed from: n */
    static final Pattern f11574n;

    /* renamed from: o */
    private static final Pattern f11575o;

    /* renamed from: p */
    private static final Pattern f11576p;

    /* renamed from: q */
    private static final Pattern f11577q;

    /* renamed from: r */
    static final Pattern f11578r;

    /* renamed from: s */
    static final Pattern f11579s;

    /* renamed from: t */
    private static final Pattern f11580t;

    /* renamed from: u */
    private static final String f11581u;

    /* renamed from: v */
    private static final String f11582v;

    /* renamed from: w */
    private static final Pattern f11583w;

    /* renamed from: x */
    private static final Pattern f11584x;

    /* renamed from: y */
    private static final Pattern f11585y;

    /* renamed from: z */
    private static PhoneNumberUtil f11586z;

    /* renamed from: a */
    private final AbstractC2796e f11587a;

    /* renamed from: b */
    private final Map<Integer, List<String>> f11588b;

    /* renamed from: c */
    private final AbstractC2802a f11589c = C2803b.m1638b();

    /* renamed from: d */
    private final Set<String> f11590d = new HashSet(35);

    /* renamed from: e */
    private final RegexCache f11591e = new RegexCache(100);

    /* renamed from: f */
    private final Set<String> f11592f = new HashSet(320);

    /* renamed from: g */
    private final Set<Integer> f11593g = new HashSet();

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.phone.libphone.PhoneNumberUtil$a */
    /* loaded from: classes2-dex2jar.jar:com/phone/libphone/PhoneNumberUtil$a.class */
    public static /* synthetic */ class C2790a {

        /* renamed from: a */
        static final /* synthetic */ int[] f11619a;

        /* renamed from: b */
        static final /* synthetic */ int[] f11620b;

        /* renamed from: c */
        static final /* synthetic */ int[] f11621c;

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
            f11621c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11621c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11621c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11621c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11621c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f11621c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f11621c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f11621c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f11621c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f11621c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f11621c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f11620b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f11620b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f11620b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f11620b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            int[] iArr3 = new int[Phonenumber$PhoneNumber.CountryCodeSource.values().length];
            f11619a = iArr3;
            try {
                iArr3[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f11619a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f11619a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f11619a[Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(52, "1");
        hashMap.put(54, "9");
        f11569i = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f11570j = Collections.unmodifiableSet(hashSet2);
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
        f11571k = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        f11572l = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        Collections.unmodifiableMap(hashMap5);
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
        Collections.unmodifiableMap(hashMap6);
        Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = f11571k;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        f11573m = sb2;
        f11574n = Pattern.compile("[+＋]+");
        f11575o = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f11576p = Pattern.compile("(\\p{Nd})");
        f11577q = Pattern.compile("[+＋\\p{Nd}]");
        f11578r = Pattern.compile("[\\\\/] *x");
        f11579s = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        f11580t = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + "\\p{Nd}]*";
        f11581u = str;
        String d = m1689d(",;xｘ#＃~～");
        f11582v = d;
        m1689d("xｘ#＃~～");
        f11583w = Pattern.compile("(?:" + d + ")$", 66);
        f11584x = Pattern.compile(str + "(?:" + d + ")?", 66);
        Pattern.compile("(\\D+)");
        f11585y = Pattern.compile("(\\$\\d)");
        Pattern.compile("\\(?\\$1\\)?");
        f11586z = null;
    }

    PhoneNumberUtil(AbstractC2796e eVar, Map<Integer, List<String>> map) {
        this.f11587a = eVar;
        this.f11588b = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !"001".equals(value.get(0))) {
                this.f11592f.addAll(value);
            } else {
                this.f11593g.add(entry.getKey());
            }
        }
        if (this.f11592f.remove("001")) {
            f11568h.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f11590d.addAll(map.get(1));
    }

    /* renamed from: A */
    private String m1719A(Phonenumber$PhoneNumber phonenumber$PhoneNumber, List<String> list) {
        String u = m1672u(phonenumber$PhoneNumber);
        for (String str : list) {
            Phonemetadata$PhoneMetadata s = m1674s(str);
            if (s.hasLeadingDigits()) {
                if (this.f11591e.m1643a(s.getLeadingDigits()).matcher(u).lookingAt()) {
                    return str;
                }
            } else if (m1669x(u, s) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: C */
    private boolean m1717C(int i) {
        return this.f11588b.containsKey(Integer.valueOf(i));
    }

    /* renamed from: H */
    private boolean m1712H(String str) {
        return str != null && this.f11592f.contains(str);
    }

    /* renamed from: I */
    static boolean m1711I(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return f11584x.matcher(charSequence).matches();
    }

    /* renamed from: J */
    private void m1710J(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        if (phonenumber$PhoneNumber.hasExtension() && phonenumber$PhoneNumber.getExtension().length() > 0) {
            sb.append(phoneNumberFormat == PhoneNumberFormat.RFC3966 ? ";ext=" : phonemetadata$PhoneMetadata.hasPreferredExtnPrefix() ? phonemetadata$PhoneMetadata.getPreferredExtnPrefix() : " ext. ");
            sb.append(phonenumber$PhoneNumber.getExtension());
        }
    }

    /* renamed from: O */
    static StringBuilder m1705O(StringBuilder sb) {
        String str;
        int i;
        if (f11580t.matcher(sb).matches()) {
            i = sb.length();
            str = m1702R(sb, f11572l, true);
        } else {
            i = sb.length();
            str = m1703Q(sb);
        }
        sb.replace(0, i, str);
        return sb;
    }

    /* renamed from: P */
    static StringBuilder m1704P(CharSequence charSequence, boolean z) {
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
    public static String m1703Q(CharSequence charSequence) {
        return m1704P(charSequence, false).toString();
    }

    /* renamed from: R */
    private static String m1702R(CharSequence charSequence, Map<Character, Character> map, boolean z) {
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
    private void m1699U(CharSequence charSequence, String str, boolean z, boolean z2, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int i;
        Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata;
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        } else if (charSequence.length() <= 250) {
            StringBuilder sb = new StringBuilder();
            String charSequence2 = charSequence.toString();
            m1693a(charSequence2, sb);
            if (!m1711I(sb)) {
                throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            } else if (!z2 || m1691b(sb, str)) {
                if (z) {
                    phonenumber$PhoneNumber.setRawInput(charSequence2);
                }
                String L = m1708L(sb);
                if (L.length() > 0) {
                    phonenumber$PhoneNumber.setExtension(L);
                }
                Phonemetadata$PhoneMetadata s = m1674s(str);
                StringBuilder sb2 = new StringBuilder();
                try {
                    i = m1709K(sb, s, sb2, z, phonenumber$PhoneNumber);
                } catch (NumberParseException e) {
                    Matcher matcher = f11574n.matcher(sb);
                    if (e.getErrorType() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                        throw new NumberParseException(e.getErrorType(), e.getMessage());
                    }
                    i = m1709K(sb.substring(matcher.end()), s, sb2, z, phonenumber$PhoneNumber);
                    if (i == 0) {
                        throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                    }
                }
                if (i != 0) {
                    String y = m1668y(i);
                    phonemetadata$PhoneMetadata = s;
                    if (!y.equals(str)) {
                        phonemetadata$PhoneMetadata = m1673t(i, y);
                    }
                } else {
                    m1705O(sb);
                    sb2.append((CharSequence) sb);
                    if (str != null) {
                        phonenumber$PhoneNumber.setCountryCode(s.getCountryCode());
                        phonemetadata$PhoneMetadata = s;
                    } else {
                        phonemetadata$PhoneMetadata = s;
                        if (z) {
                            phonenumber$PhoneNumber.clearCountryCodeSource();
                            phonemetadata$PhoneMetadata = s;
                        }
                    }
                }
                if (sb2.length() >= 2) {
                    StringBuilder sb3 = sb2;
                    if (phonemetadata$PhoneMetadata != null) {
                        StringBuilder sb4 = new StringBuilder();
                        StringBuilder sb5 = new StringBuilder(sb2);
                        m1706N(sb5, phonemetadata$PhoneMetadata, sb4);
                        ValidationResult Z = m1694Z(sb5, phonemetadata$PhoneMetadata);
                        sb3 = sb2;
                        if (Z != ValidationResult.TOO_SHORT) {
                            sb3 = sb2;
                            if (Z != ValidationResult.IS_POSSIBLE_LOCAL_ONLY) {
                                sb3 = sb2;
                                if (Z != ValidationResult.INVALID_LENGTH) {
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
                    } else if (length <= 17) {
                        m1695Y(sb3, phonenumber$PhoneNumber);
                        phonenumber$PhoneNumber.setNationalNumber(Long.parseLong(sb3.toString()));
                    } else {
                        throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
                    }
                } else {
                    throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                }
            } else {
                throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
            }
        } else {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        }
    }

    /* renamed from: V */
    private boolean m1698V(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        int end = matcher.end();
        Matcher matcher2 = f11576p.matcher(sb.substring(end));
        if (matcher2.find() && m1703Q(matcher2.group(1)).equals("0")) {
            return false;
        }
        sb.delete(0, end);
        return true;
    }

    /* renamed from: W */
    private void m1697W(int i, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int i2 = C2790a.f11620b[phoneNumberFormat.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i2 == 2) {
            sb.insert(0, " ").insert(0, i).insert(0, '+');
        } else if (i2 == 3) {
            sb.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
        }
    }

    /* renamed from: X */
    static void m1696X(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            try {
                f11586z = phoneNumberUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: Y */
    static void m1695Y(CharSequence charSequence, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (charSequence.length() > 1 && charSequence.charAt(0) == '0') {
            phonenumber$PhoneNumber.setItalianLeadingZero(true);
            int i = 1;
            while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
                i++;
            }
            if (i != 1) {
                phonenumber$PhoneNumber.setNumberOfLeadingZeros(i);
            }
        }
    }

    /* renamed from: Z */
    private ValidationResult m1694Z(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        return m1692a0(charSequence, phonemetadata$PhoneMetadata, PhoneNumberType.UNKNOWN);
    }

    /* renamed from: a */
    private void m1693a(String str, StringBuilder sb) {
        int indexOf = str.indexOf(";phone-context=");
        if (indexOf >= 0) {
            int i = indexOf + 15;
            if (i < str.length() - 1 && str.charAt(i) == '+') {
                int indexOf2 = str.indexOf(59, i);
                sb.append(indexOf2 > 0 ? str.substring(i, indexOf2) : str.substring(i));
            }
            int indexOf3 = str.indexOf("tel:");
            sb.append(str.substring(indexOf3 >= 0 ? indexOf3 + 4 : 0, indexOf));
        } else {
            sb.append(m1684i(str));
        }
        int indexOf4 = sb.indexOf(";isub=");
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    /* renamed from: a0 */
    private ValidationResult m1692a0(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        Phonemetadata$PhoneNumberDesc v = m1671v(phonemetadata$PhoneMetadata, phoneNumberType);
        List<Integer> possibleLengthList = v.getPossibleLengthList().isEmpty() ? phonemetadata$PhoneMetadata.getGeneralDesc().getPossibleLengthList() : v.getPossibleLengthList();
        List<Integer> possibleLengthLocalOnlyList = v.getPossibleLengthLocalOnlyList();
        List<Integer> list = possibleLengthLocalOnlyList;
        List<Integer> list2 = possibleLengthList;
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!m1686g(m1671v(phonemetadata$PhoneMetadata, PhoneNumberType.FIXED_LINE))) {
                return m1692a0(charSequence, phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata$PhoneNumberDesc v2 = m1671v(phonemetadata$PhoneMetadata, PhoneNumberType.MOBILE);
            list = possibleLengthLocalOnlyList;
            list2 = possibleLengthList;
            if (m1686g(v2)) {
                list2 = new ArrayList<>(possibleLengthList);
                list2.addAll(v2.getPossibleLengthList().size() == 0 ? phonemetadata$PhoneMetadata.getGeneralDesc().getPossibleLengthList() : v2.getPossibleLengthList());
                Collections.sort(list2);
                if (possibleLengthLocalOnlyList.isEmpty()) {
                    list = v2.getPossibleLengthLocalOnlyList();
                } else {
                    list = new ArrayList<>(possibleLengthLocalOnlyList);
                    list.addAll(v2.getPossibleLengthLocalOnlyList());
                    Collections.sort(list);
                }
            }
        }
        if (list2.get(0).intValue() == -1) {
            return ValidationResult.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (list.contains(Integer.valueOf(length))) {
            return ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = list2.get(0).intValue();
        if (intValue == length) {
            return ValidationResult.IS_POSSIBLE;
        }
        if (intValue > length) {
            return ValidationResult.TOO_SHORT;
        }
        if (list2.get(list2.size() - 1).intValue() < length) {
            return ValidationResult.TOO_LONG;
        }
        return list2.subList(1, list2.size()).contains(Integer.valueOf(length)) ? ValidationResult.IS_POSSIBLE : ValidationResult.INVALID_LENGTH;
    }

    /* renamed from: b */
    private boolean m1691b(CharSequence charSequence, String str) {
        if (!m1712H(str)) {
            return (charSequence == null || charSequence.length() == 0 || !f11574n.matcher(charSequence).lookingAt()) ? false : true;
        }
        return true;
    }

    /* renamed from: d */
    private static String m1689d(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*(\\p{Nd}{1,7})#?|[- ]+(\\p{Nd}{1,5})#";
    }

    /* renamed from: e */
    public static PhoneNumberUtil m1688e(AbstractC2793c cVar) {
        if (cVar != null) {
            return m1687f(new C2797f(cVar));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    /* renamed from: f */
    private static PhoneNumberUtil m1687f(AbstractC2796e eVar) {
        if (eVar != null) {
            return new PhoneNumberUtil(eVar, C2792b.m1665a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    /* renamed from: g */
    private static boolean m1686g(Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        boolean z = false;
        if (!(phonemetadata$PhoneNumberDesc.getPossibleLengthCount() == 1 && phonemetadata$PhoneNumberDesc.getPossibleLength(0) == -1)) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    static CharSequence m1684i(CharSequence charSequence) {
        Matcher matcher = f11577q.matcher(charSequence);
        if (!matcher.find()) {
            return "";
        }
        CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
        Matcher matcher2 = f11579s.matcher(subSequence);
        CharSequence charSequence2 = subSequence;
        if (matcher2.find()) {
            charSequence2 = subSequence.subSequence(0, matcher2.start());
        }
        Matcher matcher3 = f11578r.matcher(charSequence2);
        CharSequence charSequence3 = charSequence2;
        if (matcher3.find()) {
            charSequence3 = charSequence2.subSequence(0, matcher3.start());
        }
        return charSequence3;
    }

    /* renamed from: l */
    private String m1681l(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat) {
        return m1680m(str, phonemetadata$PhoneMetadata, phoneNumberFormat, null);
    }

    /* renamed from: m */
    private String m1680m(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        Phonemetadata$NumberFormat c = m1690c((phonemetadata$PhoneMetadata.intlNumberFormats().size() == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? phonemetadata$PhoneMetadata.numberFormats() : phonemetadata$PhoneMetadata.intlNumberFormats(), str);
        if (c != null) {
            str = m1679n(str, c, phoneNumberFormat, charSequence);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m1679n(java.lang.String r5, com.phone.libphone.Phonemetadata$NumberFormat r6, com.phone.libphone.PhoneNumberUtil.PhoneNumberFormat r7, java.lang.CharSequence r8) {
        /*
            r4 = this;
            r0 = r6
            java.lang.String r0 = r0.getFormat()
            r9 = r0
            r0 = r4
            com.phone.libphone.internal.RegexCache r0 = r0.f11591e
            r1 = r6
            java.lang.String r1 = r1.getPattern()
            java.util.regex.Pattern r0 = r0.m1643a(r1)
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r10 = r0
            com.phone.libphone.PhoneNumberUtil$PhoneNumberFormat r0 = com.phone.libphone.PhoneNumberUtil.PhoneNumberFormat.NATIONAL
            r11 = r0
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L_0x004b
            r0 = r8
            if (r0 == 0) goto L_0x004b
            r0 = r8
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x004b
            r0 = r6
            java.lang.String r0 = r0.getDomesticCarrierCodeFormattingRule()
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x004b
            r0 = r6
            java.lang.String r0 = r0.getDomesticCarrierCodeFormattingRule()
            java.lang.String r1 = "$CC"
            r2 = r8
            java.lang.String r0 = r0.replace(r1, r2)
            r5 = r0
            goto L_0x0061
        L_0x004b:
            r0 = r6
            java.lang.String r0 = r0.getNationalPrefixFormattingRule()
            r5 = r0
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L_0x0076
            r0 = r5
            if (r0 == 0) goto L_0x0076
            r0 = r5
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0076
        L_0x0061:
            r0 = r10
            java.util.regex.Pattern r1 = com.phone.libphone.PhoneNumberUtil.f11585y
            r2 = r9
            java.util.regex.Matcher r1 = r1.matcher(r2)
            r2 = r5
            java.lang.String r1 = r1.replaceFirst(r2)
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
            goto L_0x007e
        L_0x0076:
            r0 = r10
            r1 = r9
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
        L_0x007e:
            r0 = r5
            r6 = r0
            r0 = r7
            com.phone.libphone.PhoneNumberUtil$PhoneNumberFormat r1 = com.phone.libphone.PhoneNumberUtil.PhoneNumberFormat.RFC3966
            if (r0 != r1) goto L_0x00a9
            java.util.regex.Pattern r0 = com.phone.libphone.PhoneNumberUtil.f11575o
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r6 = r0
            r0 = r6
            boolean r0 = r0.lookingAt()
            if (r0 == 0) goto L_0x009d
            r0 = r6
            java.lang.String r1 = ""
            java.lang.String r0 = r0.replaceFirst(r1)
            r5 = r0
        L_0x009d:
            r0 = r6
            r1 = r5
            java.util.regex.Matcher r0 = r0.reset(r1)
            java.lang.String r1 = "-"
            java.lang.String r0 = r0.replaceAll(r1)
            r6 = r0
        L_0x00a9:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.phone.libphone.PhoneNumberUtil.m1679n(java.lang.String, com.phone.libphone.Phonemetadata$NumberFormat, com.phone.libphone.PhoneNumberUtil$PhoneNumberFormat, java.lang.CharSequence):java.lang.String");
    }

    /* renamed from: o */
    private int m1678o(String str) {
        Phonemetadata$PhoneMetadata s = m1674s(str);
        if (s != null) {
            return s.getCountryCode();
        }
        throw new IllegalArgumentException("Invalid region code: " + str);
    }

    /* renamed from: p */
    public static String m1677p(int i) {
        Map<Integer, String> map = f11569i;
        return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : "";
    }

    /* renamed from: q */
    public static PhoneNumberUtil m1676q() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            try {
                if (f11586z == null) {
                    m1696X(m1688e(C2794d.f11628a));
                }
                phoneNumberUtil = f11586z;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtil;
    }

    /* renamed from: t */
    private Phonemetadata$PhoneMetadata m1673t(int i, String str) {
        return "001".equals(str) ? m1675r(i) : m1674s(str);
    }

    /* renamed from: x */
    private PhoneNumberType m1669x(String str, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata) {
        if (!m1714F(str, phonemetadata$PhoneMetadata.getGeneralDesc())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getPremiumRate())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getTollFree())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getSharedCost())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getVoip())) {
            return PhoneNumberType.VOIP;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getPersonalNumber())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getPager())) {
            return PhoneNumberType.PAGER;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getUan())) {
            return PhoneNumberType.UAN;
        }
        if (m1714F(str, phonemetadata$PhoneMetadata.getVoicemail())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (!m1714F(str, phonemetadata$PhoneMetadata.getFixedLine())) {
            return (phonemetadata$PhoneMetadata.getSameMobileAndFixedLinePattern() || !m1714F(str, phonemetadata$PhoneMetadata.getMobile())) ? PhoneNumberType.UNKNOWN : PhoneNumberType.MOBILE;
        }
        if (!phonemetadata$PhoneMetadata.getSameMobileAndFixedLinePattern() && !m1714F(str, phonemetadata$PhoneMetadata.getMobile())) {
            return PhoneNumberType.FIXED_LINE;
        }
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    /* renamed from: B */
    public List<String> m1718B(int i) {
        List<String> list = this.f11588b.get(Integer.valueOf(i));
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list2);
    }

    /* renamed from: D */
    public boolean m1716D(PhoneNumberType phoneNumberType, int i) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f11570j.contains(Integer.valueOf(i)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    /* renamed from: E */
    public boolean m1715E(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return m1716D(m1670w(phonenumber$PhoneNumber), phonenumber$PhoneNumber.getCountryCode());
    }

    /* renamed from: F */
    boolean m1714F(String str, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc) {
        int length = str.length();
        List<Integer> possibleLengthList = phonemetadata$PhoneNumberDesc.getPossibleLengthList();
        if (possibleLengthList.size() <= 0 || possibleLengthList.contains(Integer.valueOf(length))) {
            return this.f11589c.mo1639a(str, phonemetadata$PhoneNumberDesc, false);
        }
        return false;
    }

    /* renamed from: G */
    public boolean m1713G(Phonenumber$PhoneNumber phonenumber$PhoneNumber, String str) {
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        Phonemetadata$PhoneMetadata t = m1673t(countryCode, str);
        boolean z = false;
        if (t != null) {
            if ("001".equals(str) || countryCode == m1678o(str)) {
                z = false;
                if (m1669x(m1672u(phonenumber$PhoneNumber), t) != PhoneNumberType.UNKNOWN) {
                    z = true;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: K */
    int m1709K(CharSequence charSequence, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb, boolean z, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        Phonenumber$PhoneNumber.CountryCodeSource M = m1707M(sb2, phonemetadata$PhoneMetadata != null ? phonemetadata$PhoneMetadata.getInternationalPrefix() : "NonMatch");
        if (z) {
            phonenumber$PhoneNumber.setCountryCodeSource(M);
        }
        if (M == Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (phonemetadata$PhoneMetadata != null) {
                int countryCode = phonemetadata$PhoneMetadata.getCountryCode();
                String valueOf = String.valueOf(countryCode);
                String sb3 = sb2.toString();
                if (sb3.startsWith(valueOf)) {
                    StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                    Phonemetadata$PhoneNumberDesc generalDesc = phonemetadata$PhoneMetadata.getGeneralDesc();
                    m1706N(sb4, phonemetadata$PhoneMetadata, null);
                    if ((!this.f11589c.mo1639a(sb2, generalDesc, false) && this.f11589c.mo1639a(sb4, generalDesc, false)) || m1694Z(sb2, phonemetadata$PhoneMetadata) == ValidationResult.TOO_LONG) {
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
        } else if (sb2.length() > 2) {
            int h = m1685h(sb2, sb);
            if (h != 0) {
                phonenumber$PhoneNumber.setCountryCode(h);
                return h;
            }
            throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
        } else {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
    }

    /* renamed from: L */
    String m1708L(StringBuilder sb) {
        Matcher matcher = f11583w.matcher(sb);
        if (!matcher.find() || !m1711I(sb.substring(0, matcher.start()))) {
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
    Phonenumber$PhoneNumber.CountryCodeSource m1707M(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = f11574n.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            m1705O(sb);
            return Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern a = this.f11591e.m1643a(str);
        m1705O(sb);
        return m1698V(a, sb) ? Phonenumber$PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber$PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    /* renamed from: N */
    boolean m1706N(StringBuilder sb, Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String nationalPrefixForParsing = phonemetadata$PhoneMetadata.getNationalPrefixForParsing();
        if (length == 0 || nationalPrefixForParsing.length() == 0) {
            return false;
        }
        Matcher matcher = this.f11591e.m1643a(nationalPrefixForParsing).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        Phonemetadata$PhoneNumberDesc generalDesc = phonemetadata$PhoneMetadata.getGeneralDesc();
        boolean a = this.f11589c.mo1639a(sb, generalDesc, false);
        int groupCount = matcher.groupCount();
        String nationalPrefixTransformRule = phonemetadata$PhoneMetadata.getNationalPrefixTransformRule();
        if (nationalPrefixTransformRule != null && nationalPrefixTransformRule.length() != 0 && matcher.group(groupCount) != null) {
            StringBuilder sb3 = new StringBuilder(sb);
            sb3.replace(0, length, matcher.replaceFirst(nationalPrefixTransformRule));
            if (a && !this.f11589c.mo1639a(sb3.toString(), generalDesc, false)) {
                return false;
            }
            if (sb2 != null && groupCount > 1) {
                sb2.append(matcher.group(1));
            }
            sb.replace(0, sb.length(), sb3.toString());
            return true;
        } else if (a && !this.f11589c.mo1639a(sb.substring(matcher.end()), generalDesc, false)) {
            return false;
        } else {
            if (!(sb2 == null || groupCount <= 0 || matcher.group(groupCount) == null)) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
    }

    /* renamed from: S */
    public Phonenumber$PhoneNumber m1701S(CharSequence charSequence, String str) {
        Phonenumber$PhoneNumber phonenumber$PhoneNumber = new Phonenumber$PhoneNumber();
        m1700T(charSequence, str, phonenumber$PhoneNumber);
        return phonenumber$PhoneNumber;
    }

    /* renamed from: T */
    public void m1700T(CharSequence charSequence, String str, Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        m1699U(charSequence, str, false, true, phonenumber$PhoneNumber);
    }

    /* renamed from: c */
    Phonemetadata$NumberFormat m1690c(List<Phonemetadata$NumberFormat> list, String str) {
        for (Phonemetadata$NumberFormat phonemetadata$NumberFormat : list) {
            int leadingDigitsPatternSize = phonemetadata$NumberFormat.leadingDigitsPatternSize();
            if (leadingDigitsPatternSize == 0 || this.f11591e.m1643a(phonemetadata$NumberFormat.getLeadingDigitsPattern(leadingDigitsPatternSize - 1)).matcher(str).lookingAt()) {
                if (this.f11591e.m1643a(phonemetadata$NumberFormat.getPattern()).matcher(str).matches()) {
                    return phonemetadata$NumberFormat;
                }
            }
        }
        return null;
    }

    /* renamed from: h */
    int m1685h(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            return 0;
        }
        int length = sb.length();
        for (int i = 1; i <= 3 && i <= length; i++) {
            int parseInt = Integer.parseInt(sb.substring(0, i));
            if (this.f11588b.containsKey(Integer.valueOf(parseInt))) {
                sb2.append(sb.substring(i));
                return parseInt;
            }
        }
        return 0;
    }

    /* renamed from: j */
    public String m1683j(Phonenumber$PhoneNumber phonenumber$PhoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phonenumber$PhoneNumber.getNationalNumber() == 0 && phonenumber$PhoneNumber.hasRawInput()) {
            String rawInput = phonenumber$PhoneNumber.getRawInput();
            if (rawInput.length() > 0) {
                return rawInput;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        m1682k(phonenumber$PhoneNumber, phoneNumberFormat, sb);
        return sb.toString();
    }

    /* renamed from: k */
    public void m1682k(Phonenumber$PhoneNumber phonenumber$PhoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        sb.setLength(0);
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        String u = m1672u(phonenumber$PhoneNumber);
        PhoneNumberFormat phoneNumberFormat2 = PhoneNumberFormat.E164;
        if (phoneNumberFormat == phoneNumberFormat2) {
            sb.append(u);
            m1697W(countryCode, phoneNumberFormat2, sb);
        } else if (!m1717C(countryCode)) {
            sb.append(u);
        } else {
            Phonemetadata$PhoneMetadata t = m1673t(countryCode, m1668y(countryCode));
            sb.append(m1681l(u, t, phoneNumberFormat));
            m1710J(phonenumber$PhoneNumber, t, phoneNumberFormat, sb);
            m1697W(countryCode, phoneNumberFormat, sb);
        }
    }

    /* renamed from: r */
    Phonemetadata$PhoneMetadata m1675r(int i) {
        if (!this.f11588b.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.f11587a.mo1660a(i);
    }

    /* renamed from: s */
    Phonemetadata$PhoneMetadata m1674s(String str) {
        if (!m1712H(str)) {
            return null;
        }
        return this.f11587a.mo1659b(str);
    }

    /* renamed from: u */
    public String m1672u(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
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
    Phonemetadata$PhoneNumberDesc m1671v(Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadata, PhoneNumberType phoneNumberType) {
        switch (C2790a.f11621c[phoneNumberType.ordinal()]) {
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
    public PhoneNumberType m1670w(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        Phonemetadata$PhoneMetadata t = m1673t(phonenumber$PhoneNumber.getCountryCode(), m1667z(phonenumber$PhoneNumber));
        return t == null ? PhoneNumberType.UNKNOWN : m1669x(m1672u(phonenumber$PhoneNumber), t);
    }

    /* renamed from: y */
    public String m1668y(int i) {
        List<String> list = this.f11588b.get(Integer.valueOf(i));
        return list == null ? "ZZ" : list.get(0);
    }

    /* renamed from: z */
    public String m1667z(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        int countryCode = phonenumber$PhoneNumber.getCountryCode();
        List<String> list = this.f11588b.get(Integer.valueOf(countryCode));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : m1719A(phonenumber$PhoneNumber, list);
        }
        Logger logger = f11568h;
        Level level = Level.INFO;
        logger.log(level, "Missing/invalid country_code (" + countryCode + ")");
        return null;
    }
}
