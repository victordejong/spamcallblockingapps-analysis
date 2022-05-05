package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberMatcher;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import com.google.i18n.phonenumbers.internal.RegexCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil.class */
public class PhoneNumberUtil {

    /* renamed from: A */
    private static final Pattern f12258A;

    /* renamed from: B */
    private static final Pattern f12259B;

    /* renamed from: C */
    private static PhoneNumberUtil f12260C;

    /* renamed from: h */
    private static final Logger f12261h = Logger.getLogger(PhoneNumberUtil.class.getName());

    /* renamed from: i */
    private static final Map<Integer, String> f12262i;

    /* renamed from: j */
    private static final Set<Integer> f12263j;

    /* renamed from: k */
    private static final Map<Character, Character> f12264k;

    /* renamed from: l */
    private static final Map<Character, Character> f12265l;

    /* renamed from: m */
    private static final String f12266m;

    /* renamed from: n */
    static final Pattern f12267n;

    /* renamed from: o */
    private static final Pattern f12268o;

    /* renamed from: p */
    private static final Pattern f12269p;

    /* renamed from: q */
    private static final Pattern f12270q;

    /* renamed from: r */
    static final Pattern f12271r;

    /* renamed from: s */
    static final Pattern f12272s;

    /* renamed from: t */
    private static final Pattern f12273t;

    /* renamed from: u */
    private static final String f12274u;

    /* renamed from: v */
    private static final String f12275v;

    /* renamed from: w */
    static final String f12276w;

    /* renamed from: x */
    private static final Pattern f12277x;

    /* renamed from: y */
    private static final Pattern f12278y;

    /* renamed from: z */
    static final Pattern f12279z;

    /* renamed from: a */
    private final MetadataSource f12280a;

    /* renamed from: b */
    private final Map<Integer, List<String>> f12281b;

    /* renamed from: c */
    private final MatcherApi f12282c = RegexBasedMatcher.m7871b();

    /* renamed from: d */
    private final Set<String> f12283d = new HashSet(35);

    /* renamed from: e */
    private final RegexCache f12284e = new RegexCache(100);

    /* renamed from: f */
    private final Set<String> f12285f = new HashSet(320);

    /* renamed from: g */
    private final Set<Integer> f12286g = new HashSet();

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$1 */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$1.class */
    class C14791 implements Iterable<PhoneNumberMatch> {

        /* renamed from: f */
        final /* synthetic */ CharSequence f12287f;

        /* renamed from: g */
        final /* synthetic */ String f12288g;

        /* renamed from: h */
        final /* synthetic */ Leniency f12289h;

        /* renamed from: i */
        final /* synthetic */ long f12290i;

        /* renamed from: j */
        final /* synthetic */ PhoneNumberUtil f12291j;

        @Override // java.lang.Iterable
        public Iterator<PhoneNumberMatch> iterator() {
            return new PhoneNumberMatcher(this.f12291j, this.f12287f, this.f12288g, this.f12289h, this.f12290i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$2 */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$2.class */
    public static /* synthetic */ class C14802 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12292a;

        /* renamed from: b */
        static final /* synthetic */ int[] f12293b;

        /* renamed from: c */
        static final /* synthetic */ int[] f12294c;

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
            f12294c = iArr;
            try {
                iArr[PhoneNumberType.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12294c[PhoneNumberType.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12294c[PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12294c[PhoneNumberType.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12294c[PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12294c[PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12294c[PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12294c[PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12294c[PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f12294c[PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f12294c[PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[PhoneNumberFormat.values().length];
            f12293b = iArr2;
            try {
                iArr2[PhoneNumberFormat.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f12293b[PhoneNumberFormat.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f12293b[PhoneNumberFormat.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f12293b[PhoneNumberFormat.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            int[] iArr3 = new int[Phonenumber.PhoneNumber.CountryCodeSource.values().length];
            f12292a = iArr3;
            try {
                iArr3[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f12292a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f12292a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f12292a[Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$Leniency.class */
    public enum Leniency {
        POSSIBLE { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.1
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                return phoneNumberUtil.m8045M(phoneNumber);
            }
        },
        VALID { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.2
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                if (!phoneNumberUtil.m8042P(phoneNumber) || !PhoneNumberMatcher.m8073e(phoneNumber, charSequence.toString(), phoneNumberUtil)) {
                    return false;
                }
                return PhoneNumberMatcher.m8065m(phoneNumber, phoneNumberUtil);
            }
        },
        STRICT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.3
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.m8042P(phoneNumber) || !PhoneNumberMatcher.m8073e(phoneNumber, charSequence2, phoneNumberUtil) || PhoneNumberMatcher.m8074d(phoneNumber, charSequence2) || !PhoneNumberMatcher.m8065m(phoneNumber, phoneNumberUtil)) {
                    return false;
                }
                return phoneNumberMatcher.m8075c(phoneNumber, charSequence, phoneNumberUtil, new PhoneNumberMatcher.NumberGroupingChecker(this) { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.3.1
                    @Override // com.google.i18n.phonenumbers.PhoneNumberMatcher.NumberGroupingChecker
                    /* renamed from: a */
                    public boolean mo7992a(PhoneNumberUtil phoneNumberUtil2, Phonenumber.PhoneNumber phoneNumber2, StringBuilder sb, String[] strArr) {
                        return PhoneNumberMatcher.m8076b(phoneNumberUtil2, phoneNumber2, sb, strArr);
                    }
                });
            }
        },
        EXACT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.4
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency
            boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.m8042P(phoneNumber) || !PhoneNumberMatcher.m8073e(phoneNumber, charSequence2, phoneNumberUtil) || PhoneNumberMatcher.m8074d(phoneNumber, charSequence2) || !PhoneNumberMatcher.m8065m(phoneNumber, phoneNumberUtil)) {
                    return false;
                }
                return phoneNumberMatcher.m8075c(phoneNumber, charSequence, phoneNumberUtil, new PhoneNumberMatcher.NumberGroupingChecker(this) { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.Leniency.4.1
                    @Override // com.google.i18n.phonenumbers.PhoneNumberMatcher.NumberGroupingChecker
                    /* renamed from: a */
                    public boolean mo7992a(PhoneNumberUtil phoneNumberUtil2, Phonenumber.PhoneNumber phoneNumber2, StringBuilder sb, String[] strArr) {
                        return PhoneNumberMatcher.m8077a(phoneNumberUtil2, phoneNumber2, sb, strArr);
                    }
                });
            }
        };

        /* synthetic */ Leniency(C14791 r7) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean verify(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, PhoneNumberMatcher phoneNumberMatcher);
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$MatchType.class */
    public enum MatchType {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat.class */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType.class */
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

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult.class */
    public enum ValidationResult {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(54, "9");
        f12262i = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        f12263j = Collections.unmodifiableSet(hashSet2);
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
        f12264k = Collections.unmodifiableMap(hashMap3);
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(f12264k);
        hashMap4.putAll(hashMap2);
        f12265l = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        Collections.unmodifiableMap(hashMap5);
        HashMap hashMap6 = new HashMap();
        for (Character ch : f12264k.keySet()) {
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
        f12266m = Arrays.toString(f12264k.keySet().toArray()).replaceAll("[, \\[\\]]", "") + Arrays.toString(f12264k.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", "");
        f12267n = Pattern.compile("[+＋]+");
        f12268o = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        f12269p = Pattern.compile("(\\p{Nd})");
        f12270q = Pattern.compile("[+＋\\p{Nd}]");
        f12271r = Pattern.compile("[\\\\/] *x");
        f12272s = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        f12273t = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        f12274u = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + f12266m + "\\p{Nd}]*";
        StringBuilder sb = new StringBuilder();
        sb.append(",;");
        sb.append("xｘ#＃~～");
        f12275v = m8023e(sb.toString());
        f12276w = m8023e("xｘ#＃~～");
        f12277x = Pattern.compile("(?:" + f12275v + ")$", 66);
        f12278y = Pattern.compile(f12274u + "(?:" + f12275v + ")?", 66);
        f12279z = Pattern.compile("(\\D+)");
        f12258A = Pattern.compile("(\\$\\d)");
        f12259B = Pattern.compile("\\(?\\$1\\)?");
        f12260C = null;
    }

    PhoneNumberUtil(MetadataSource metadataSource, Map<Integer, List<String>> map) {
        this.f12280a = metadataSource;
        this.f12281b = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !"001".equals(value.get(0))) {
                this.f12285f.addAll(value);
            } else {
                this.f12286g.add(entry.getKey());
            }
        }
        if (this.f12285f.remove("001")) {
            f12261h.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.f12283d.addAll(map.get(1));
    }

    /* renamed from: B */
    private PhoneNumberType m8056B(String str, Phonemetadata.PhoneMetadata phoneMetadata) {
        if (!m8046L(str, phoneMetadata.m7950c())) {
            return PhoneNumberType.UNKNOWN;
        }
        if (m8046L(str, phoneMetadata.m7930r())) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (m8046L(str, phoneMetadata.m7927u())) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (m8046L(str, phoneMetadata.m7928t())) {
            return PhoneNumberType.SHARED_COST;
        }
        if (m8046L(str, phoneMetadata.m7924x())) {
            return PhoneNumberType.VOIP;
        }
        if (m8046L(str, phoneMetadata.m7932p())) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (m8046L(str, phoneMetadata.m7933o())) {
            return PhoneNumberType.PAGER;
        }
        if (m8046L(str, phoneMetadata.m7926v())) {
            return PhoneNumberType.UAN;
        }
        if (m8046L(str, phoneMetadata.m7925w())) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (!m8046L(str, phoneMetadata.m7952b())) {
            return (phoneMetadata.m7929s() || !m8046L(str, phoneMetadata.m7939i())) ? PhoneNumberType.UNKNOWN : PhoneNumberType.MOBILE;
        }
        if (!phoneMetadata.m7929s() && !m8046L(str, phoneMetadata.m7939i())) {
            return PhoneNumberType.FIXED_LINE;
        }
        return PhoneNumberType.FIXED_LINE_OR_MOBILE;
    }

    /* renamed from: E */
    private String m8053E(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        String x = m7995x(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata v = m7997v(str);
            if (v.m7923y()) {
                if (this.f12284e.m7869a(v.m7940h()).matcher(x).lookingAt()) {
                    return str;
                }
            } else if (m8056B(x, v) != PhoneNumberType.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    /* renamed from: G */
    private boolean m8051G(int i) {
        return this.f12281b.containsKey(Integer.valueOf(i));
    }

    /* renamed from: H */
    private boolean m8050H(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        String valueOf = String.valueOf(phoneNumber.m7899h());
        String valueOf2 = String.valueOf(phoneNumber2.m7899h());
        return valueOf.endsWith(valueOf2) || valueOf2.endsWith(valueOf);
    }

    /* renamed from: R */
    private boolean m8040R(String str) {
        return str != null && this.f12285f.contains(str);
    }

    /* renamed from: S */
    static boolean m8039S(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return f12278y.matcher(charSequence).matches();
    }

    /* renamed from: T */
    private void m8038T(Phonenumber.PhoneNumber phoneNumber, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        if (phoneNumber.m7894m() && phoneNumber.m7900g().length() > 0) {
            if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
                sb.append(";ext=");
                sb.append(phoneNumber.m7900g());
            } else if (phoneMetadata.m7922z()) {
                sb.append(phoneMetadata.m7931q());
                sb.append(phoneNumber.m7900g());
            } else {
                sb.append(" ext. ");
                sb.append(phoneNumber.m7900g());
            }
        }
    }

    /* renamed from: Y */
    static StringBuilder m8033Y(StringBuilder sb) {
        if (f12273t.matcher(sb).matches()) {
            sb.replace(0, sb.length(), m8028b0(sb, f12265l, true));
        } else {
            sb.replace(0, sb.length(), m8030a0(sb));
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public static StringBuilder m8032Z(CharSequence charSequence, boolean z) {
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

    /* renamed from: a */
    private void m8031a(String str, StringBuilder sb) {
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
            sb.append(m8013j(str));
        }
        int indexOf4 = sb.indexOf(";isub=");
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    /* renamed from: a0 */
    public static String m8030a0(CharSequence charSequence) {
        return m8032Z(charSequence, false).toString();
    }

    /* renamed from: b */
    private boolean m8029b(CharSequence charSequence, String str) {
        if (!m8040R(str)) {
            return (charSequence == null || charSequence.length() == 0 || !f12267n.matcher(charSequence).lookingAt()) ? false : true;
        }
        return true;
    }

    /* renamed from: b0 */
    private static String m8028b0(CharSequence charSequence, Map<Character, Character> map, boolean z) {
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

    /* renamed from: d */
    private static Phonenumber.PhoneNumber m8025d(Phonenumber.PhoneNumber phoneNumber) {
        Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
        phoneNumber2.m7888s(phoneNumber.m7902e());
        phoneNumber2.m7884w(phoneNumber.m7899h());
        if (phoneNumber.m7900g().length() > 0) {
            phoneNumber2.m7886u(phoneNumber.m7900g());
        }
        if (phoneNumber.m7889r()) {
            phoneNumber2.m7885v(true);
            phoneNumber2.m7883x(phoneNumber.m7898i());
        }
        return phoneNumber2;
    }

    /* renamed from: e */
    private static String m8023e(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*(\\p{Nd}{1,7})#?|[- ]+(\\p{Nd}{1,5})#";
    }

    /* renamed from: f */
    public static PhoneNumberUtil m8021f(MetadataLoader metadataLoader) {
        if (metadataLoader != null) {
            return m8019g(new MultiFileMetadataSourceImpl(metadataLoader));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    /* renamed from: g */
    private static PhoneNumberUtil m8019g(MetadataSource metadataSource) {
        if (metadataSource != null) {
            return new PhoneNumberUtil(metadataSource, CountryCodeToRegionCodeMap.m8092a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    /* renamed from: g0 */
    private void m8018g0(CharSequence charSequence, String str, boolean z, boolean z2, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        int i;
        Phonemetadata.PhoneMetadata phoneMetadata;
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        } else if (charSequence.length() <= 250) {
            StringBuilder sb = new StringBuilder();
            String charSequence2 = charSequence.toString();
            m8031a(charSequence2, sb);
            if (!m8039S(sb)) {
                throw new NumberParseException(NumberParseException.ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            } else if (!z2 || m8029b(sb, str)) {
                if (z) {
                    phoneNumber.m7881z(charSequence2);
                }
                String V = m8036V(sb);
                if (V.length() > 0) {
                    phoneNumber.m7886u(V);
                }
                Phonemetadata.PhoneMetadata v = m7997v(str);
                StringBuilder sb2 = new StringBuilder();
                try {
                    i = m8037U(sb, v, sb2, z, phoneNumber);
                } catch (NumberParseException e) {
                    Matcher matcher = f12267n.matcher(sb);
                    if (e.m8080a() != NumberParseException.ErrorType.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                        throw new NumberParseException(e.m8080a(), e.getMessage());
                    }
                    i = m8037U(sb.substring(matcher.end()), v, sb2, z, phoneNumber);
                    if (i == 0) {
                        throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                    }
                }
                if (i != 0) {
                    String C = m8055C(i);
                    phoneMetadata = v;
                    if (!C.equals(str)) {
                        phoneMetadata = m7996w(i, C);
                    }
                } else {
                    m8033Y(sb);
                    sb2.append((CharSequence) sb);
                    if (str != null) {
                        phoneNumber.m7888s(v.m7954a());
                        phoneMetadata = v;
                    } else {
                        phoneMetadata = v;
                        if (z) {
                            phoneNumber.m7906a();
                            phoneMetadata = v;
                        }
                    }
                }
                if (sb2.length() >= 2) {
                    StringBuilder sb3 = sb2;
                    if (phoneMetadata != null) {
                        StringBuilder sb4 = new StringBuilder();
                        StringBuilder sb5 = new StringBuilder(sb2);
                        m8034X(sb5, phoneMetadata, sb4);
                        ValidationResult l0 = m8008l0(sb5, phoneMetadata);
                        sb3 = sb2;
                        if (l0 != ValidationResult.TOO_SHORT) {
                            sb3 = sb2;
                            if (l0 != ValidationResult.IS_POSSIBLE_LOCAL_ONLY) {
                                sb3 = sb2;
                                if (l0 != ValidationResult.INVALID_LENGTH) {
                                    if (z && sb4.length() > 0) {
                                        phoneNumber.m7882y(sb4.toString());
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
                        m8010k0(sb3, phoneNumber);
                        phoneNumber.m7884w(Long.parseLong(sb3.toString()));
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

    /* renamed from: h */
    private static boolean m8017h(Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        boolean z = false;
        if (!(phoneNumberDesc.m7912c() == 1 && phoneNumberDesc.m7913b(0) == -1)) {
            z = true;
        }
        return z;
    }

    /* renamed from: h0 */
    private boolean m8016h0(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        int end = matcher.end();
        Matcher matcher2 = f12269p.matcher(sb.substring(end));
        if (matcher2.find() && m8030a0(matcher2.group(1)).equals("0")) {
            return false;
        }
        sb.delete(0, end);
        return true;
    }

    /* renamed from: i0 */
    private void m8014i0(int i, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        int i2 = C14802.f12293b[phoneNumberFormat.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i2 == 2) {
            sb.insert(0, " ").insert(0, i).insert(0, '+');
        } else if (i2 == 3) {
            sb.insert(0, HelpFormatter.DEFAULT_OPT_PREFIX).insert(0, i).insert(0, '+').insert(0, "tel:");
        }
    }

    /* renamed from: j */
    static CharSequence m8013j(CharSequence charSequence) {
        Matcher matcher = f12270q.matcher(charSequence);
        if (!matcher.find()) {
            return "";
        }
        CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
        Matcher matcher2 = f12272s.matcher(subSequence);
        CharSequence charSequence2 = subSequence;
        if (matcher2.find()) {
            charSequence2 = subSequence.subSequence(0, matcher2.start());
        }
        Matcher matcher3 = f12271r.matcher(charSequence2);
        CharSequence charSequence3 = charSequence2;
        if (matcher3.find()) {
            charSequence3 = charSequence2.subSequence(0, matcher3.start());
        }
        return charSequence3;
    }

    /* renamed from: j0 */
    static void m8012j0(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            try {
                f12260C = phoneNumberUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: k0 */
    static void m8010k0(CharSequence charSequence, Phonenumber.PhoneNumber phoneNumber) {
        if (charSequence.length() > 1 && charSequence.charAt(0) == '0') {
            phoneNumber.m7885v(true);
            int i = 1;
            while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
                i++;
            }
            if (i != 1) {
                phoneNumber.m7883x(i);
            }
        }
    }

    /* renamed from: l0 */
    private ValidationResult m8008l0(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata) {
        return m8006m0(charSequence, phoneMetadata, PhoneNumberType.UNKNOWN);
    }

    /* renamed from: m */
    private String m8007m(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat) {
        return m8005n(str, phoneMetadata, phoneNumberFormat, null);
    }

    /* renamed from: m0 */
    private ValidationResult m8006m0(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        Phonemetadata.PhoneNumberDesc z = m7993z(phoneMetadata, phoneNumberType);
        List<Integer> d = z.m7911d().isEmpty() ? phoneMetadata.m7950c().m7911d() : z.m7911d();
        List<Integer> f = z.m7909f();
        List<Integer> list = f;
        List<Integer> list2 = d;
        if (phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE) {
            if (!m8017h(m7993z(phoneMetadata, PhoneNumberType.FIXED_LINE))) {
                return m8006m0(charSequence, phoneMetadata, PhoneNumberType.MOBILE);
            }
            Phonemetadata.PhoneNumberDesc z2 = m7993z(phoneMetadata, PhoneNumberType.MOBILE);
            list = f;
            list2 = d;
            if (m8017h(z2)) {
                list2 = new ArrayList<>(d);
                list2.addAll(z2.m7912c() == 0 ? phoneMetadata.m7950c().m7911d() : z2.m7911d());
                Collections.sort(list2);
                if (f.isEmpty()) {
                    list = z2.m7909f();
                } else {
                    list = new ArrayList<>(f);
                    list.addAll(z2.m7909f());
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

    /* renamed from: n */
    private String m8005n(String str, Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        Phonemetadata.NumberFormat c = m8027c((phoneMetadata.m7942g().size() == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? phoneMetadata.m7934n() : phoneMetadata.m7942g(), str);
        if (c != null) {
            str = m8003p(str, c, phoneNumberFormat, charSequence);
        }
        return str;
    }

    /* renamed from: p */
    private String m8003p(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat, CharSequence charSequence) {
        String str2;
        String b = numberFormat.m7990b();
        Matcher matcher = this.f12284e.m7869a(numberFormat.m7985g()).matcher(str);
        if (phoneNumberFormat != PhoneNumberFormat.NATIONAL || charSequence == null || charSequence.length() <= 0 || numberFormat.m7991a().length() <= 0) {
            String e = numberFormat.m7987e();
            str2 = (phoneNumberFormat != PhoneNumberFormat.NATIONAL || e == null || e.length() <= 0) ? matcher.replaceAll(b) : matcher.replaceAll(f12258A.matcher(b).replaceFirst(e));
        } else {
            str2 = matcher.replaceAll(f12258A.matcher(b).replaceFirst(numberFormat.m7991a().replace("$CC", charSequence)));
        }
        String str3 = str2;
        if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
            Matcher matcher2 = f12268o.matcher(str2);
            if (matcher2.lookingAt()) {
                str2 = matcher2.replaceFirst("");
            }
            str3 = matcher2.reset(str2).replaceAll(HelpFormatter.DEFAULT_OPT_PREFIX);
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static boolean m8002q(String str) {
        return str.length() == 0 || f12259B.matcher(str).matches();
    }

    /* renamed from: r */
    private int m8001r(String str) {
        Phonemetadata.PhoneMetadata v = m7997v(str);
        if (v != null) {
            return v.m7954a();
        }
        throw new IllegalArgumentException("Invalid region code: " + str);
    }

    /* renamed from: s */
    public static String m8000s(int i) {
        return f12262i.containsKey(Integer.valueOf(i)) ? f12262i.get(Integer.valueOf(i)) : "";
    }

    /* renamed from: t */
    public static PhoneNumberUtil m7999t() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            try {
                if (f12260C == null) {
                    m8012j0(m8021f(MetadataManager.f12224a));
                }
                phoneNumberUtil = f12260C;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtil;
    }

    /* renamed from: w */
    private Phonemetadata.PhoneMetadata m7996w(int i, String str) {
        return "001".equals(str) ? m7998u(i) : m7997v(str);
    }

    /* renamed from: A */
    public PhoneNumberType m8057A(Phonenumber.PhoneNumber phoneNumber) {
        Phonemetadata.PhoneMetadata w = m7996w(phoneNumber.m7902e(), m8054D(phoneNumber));
        return w == null ? PhoneNumberType.UNKNOWN : m8056B(m7995x(phoneNumber), w);
    }

    /* renamed from: C */
    public String m8055C(int i) {
        List<String> list = this.f12281b.get(Integer.valueOf(i));
        return list == null ? "ZZ" : list.get(0);
    }

    /* renamed from: D */
    public String m8054D(Phonenumber.PhoneNumber phoneNumber) {
        int e = phoneNumber.m7902e();
        List<String> list = this.f12281b.get(Integer.valueOf(e));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : m8053E(phoneNumber, list);
        }
        Logger logger = f12261h;
        Level level = Level.INFO;
        logger.log(level, "Missing/invalid country_code (" + e + ")");
        return null;
    }

    /* renamed from: F */
    public List<String> m8052F(int i) {
        List<String> list = this.f12281b.get(Integer.valueOf(i));
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list2);
    }

    /* renamed from: I */
    public boolean m8049I(PhoneNumberType phoneNumberType, int i) {
        return phoneNumberType == PhoneNumberType.FIXED_LINE || phoneNumberType == PhoneNumberType.FIXED_LINE_OR_MOBILE || (f12263j.contains(Integer.valueOf(i)) && phoneNumberType == PhoneNumberType.MOBILE);
    }

    /* renamed from: J */
    public MatchType m8048J(Phonenumber.PhoneNumber phoneNumber, Phonenumber.PhoneNumber phoneNumber2) {
        Phonenumber.PhoneNumber d = m8025d(phoneNumber);
        Phonenumber.PhoneNumber d2 = m8025d(phoneNumber2);
        if (d.m7894m() && d2.m7894m() && !d.m7900g().equals(d2.m7900g())) {
            return MatchType.NO_MATCH;
        }
        int e = d.m7902e();
        int e2 = d2.m7902e();
        if (e != 0 && e2 != 0) {
            return d.m7903d(d2) ? MatchType.EXACT_MATCH : (e != e2 || !m8050H(d, d2)) ? MatchType.NO_MATCH : MatchType.SHORT_NSN_MATCH;
        }
        d.m7888s(e2);
        return d.m7903d(d2) ? MatchType.NSN_MATCH : m8050H(d, d2) ? MatchType.SHORT_NSN_MATCH : MatchType.NO_MATCH;
    }

    /* renamed from: K */
    public MatchType m8047K(Phonenumber.PhoneNumber phoneNumber, CharSequence charSequence) {
        try {
            return m8048J(phoneNumber, m8026c0(charSequence, "ZZ"));
        } catch (NumberParseException e) {
            if (e.m8080a() == NumberParseException.ErrorType.INVALID_COUNTRY_CODE) {
                String C = m8055C(phoneNumber.m7902e());
                try {
                    if (!C.equals("ZZ")) {
                        MatchType J = m8048J(phoneNumber, m8026c0(charSequence, C));
                        MatchType matchType = J;
                        if (J == MatchType.EXACT_MATCH) {
                            matchType = MatchType.NSN_MATCH;
                        }
                        return matchType;
                    }
                    Phonenumber.PhoneNumber phoneNumber2 = new Phonenumber.PhoneNumber();
                    m8018g0(charSequence, null, false, false, phoneNumber2);
                    return m8048J(phoneNumber, phoneNumber2);
                } catch (NumberParseException e2) {
                    return MatchType.NOT_A_NUMBER;
                }
            }
            return MatchType.NOT_A_NUMBER;
        }
    }

    /* renamed from: L */
    boolean m8046L(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        int length = str.length();
        List<Integer> d = phoneNumberDesc.m7911d();
        if (d.size() <= 0 || d.contains(Integer.valueOf(length))) {
            return this.f12282c.mo7872a(str, phoneNumberDesc, false);
        }
        return false;
    }

    /* renamed from: M */
    public boolean m8045M(Phonenumber.PhoneNumber phoneNumber) {
        ValidationResult O = m8043O(phoneNumber);
        return O == ValidationResult.IS_POSSIBLE || O == ValidationResult.IS_POSSIBLE_LOCAL_ONLY;
    }

    /* renamed from: N */
    public ValidationResult m8044N(Phonenumber.PhoneNumber phoneNumber, PhoneNumberType phoneNumberType) {
        String x = m7995x(phoneNumber);
        int e = phoneNumber.m7902e();
        return !m8051G(e) ? ValidationResult.INVALID_COUNTRY_CODE : m8006m0(x, m7996w(e, m8055C(e)), phoneNumberType);
    }

    /* renamed from: O */
    public ValidationResult m8043O(Phonenumber.PhoneNumber phoneNumber) {
        return m8044N(phoneNumber, PhoneNumberType.UNKNOWN);
    }

    /* renamed from: P */
    public boolean m8042P(Phonenumber.PhoneNumber phoneNumber) {
        return m8041Q(phoneNumber, m8054D(phoneNumber));
    }

    /* renamed from: Q */
    public boolean m8041Q(Phonenumber.PhoneNumber phoneNumber, String str) {
        int e = phoneNumber.m7902e();
        Phonemetadata.PhoneMetadata w = m7996w(e, str);
        boolean z = false;
        if (w != null) {
            if ("001".equals(str) || e == m8001r(str)) {
                z = false;
                if (m8056B(m7995x(phoneNumber), w) != PhoneNumberType.UNKNOWN) {
                    z = true;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: U */
    int m8037U(CharSequence charSequence, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb, boolean z, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        Phonenumber.PhoneNumber.CountryCodeSource W = m8035W(sb2, phoneMetadata != null ? phoneMetadata.m7946e() : "NonMatch");
        if (z) {
            phoneNumber.m7887t(W);
        }
        if (W == Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (phoneMetadata != null) {
                int a = phoneMetadata.m7954a();
                String valueOf = String.valueOf(a);
                String sb3 = sb2.toString();
                if (sb3.startsWith(valueOf)) {
                    StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                    Phonemetadata.PhoneNumberDesc c = phoneMetadata.m7950c();
                    m8034X(sb4, phoneMetadata, null);
                    if ((!this.f12282c.mo7872a(sb2, c, false) && this.f12282c.mo7872a(sb4, c, false)) || m8008l0(sb2, phoneMetadata) == ValidationResult.TOO_LONG) {
                        sb.append((CharSequence) sb4);
                        if (z) {
                            phoneNumber.m7887t(Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                        }
                        phoneNumber.m7888s(a);
                        return a;
                    }
                }
            }
            phoneNumber.m7888s(0);
            return 0;
        } else if (sb2.length() > 2) {
            int i = m8015i(sb2, sb);
            if (i != 0) {
                phoneNumber.m7888s(i);
                return i;
            }
            throw new NumberParseException(NumberParseException.ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
        } else {
            throw new NumberParseException(NumberParseException.ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
    }

    /* renamed from: V */
    String m8036V(StringBuilder sb) {
        Matcher matcher = f12277x.matcher(sb);
        if (!matcher.find() || !m8039S(sb.substring(0, matcher.start()))) {
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

    /* renamed from: W */
    Phonenumber.PhoneNumber.CountryCodeSource m8035W(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = f12267n.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            m8033Y(sb);
            return Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern a = this.f12284e.m7869a(str);
        m8033Y(sb);
        return m8016h0(a, sb) ? Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_IDD : Phonenumber.PhoneNumber.CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public boolean m8034X(StringBuilder sb, Phonemetadata.PhoneMetadata phoneMetadata, StringBuilder sb2) {
        int length = sb.length();
        String k = phoneMetadata.m7937k();
        if (length == 0 || k.length() == 0) {
            return false;
        }
        Matcher matcher = this.f12284e.m7869a(k).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        Phonemetadata.PhoneNumberDesc c = phoneMetadata.m7950c();
        boolean a = this.f12282c.mo7872a(sb, c, false);
        int groupCount = matcher.groupCount();
        String l = phoneMetadata.m7936l();
        if (l != null && l.length() != 0 && matcher.group(groupCount) != null) {
            StringBuilder sb3 = new StringBuilder(sb);
            sb3.replace(0, length, matcher.replaceFirst(l));
            if (a && !this.f12282c.mo7872a(sb3.toString(), c, false)) {
                return false;
            }
            if (sb2 != null && groupCount > 1) {
                sb2.append(matcher.group(1));
            }
            sb.replace(0, sb.length(), sb3.toString());
            return true;
        } else if (a && !this.f12282c.mo7872a(sb.substring(matcher.end()), c, false)) {
            return false;
        } else {
            if (!(sb2 == null || groupCount <= 0 || matcher.group(groupCount) == null)) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Phonemetadata.NumberFormat m8027c(List<Phonemetadata.NumberFormat> list, String str) {
        for (Phonemetadata.NumberFormat numberFormat : list) {
            int d = numberFormat.m7988d();
            if (d == 0 || this.f12284e.m7869a(numberFormat.m7989c(d - 1)).matcher(str).lookingAt()) {
                if (this.f12284e.m7869a(numberFormat.m7985g()).matcher(str).matches()) {
                    return numberFormat;
                }
            }
        }
        return null;
    }

    /* renamed from: c0 */
    public Phonenumber.PhoneNumber m8026c0(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        m8024d0(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    /* renamed from: d0 */
    public void m8024d0(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        m8018g0(charSequence, str, false, true, phoneNumber);
    }

    /* renamed from: e0 */
    public Phonenumber.PhoneNumber m8022e0(CharSequence charSequence, String str) throws NumberParseException {
        Phonenumber.PhoneNumber phoneNumber = new Phonenumber.PhoneNumber();
        m8020f0(charSequence, str, phoneNumber);
        return phoneNumber;
    }

    /* renamed from: f0 */
    public void m8020f0(CharSequence charSequence, String str, Phonenumber.PhoneNumber phoneNumber) throws NumberParseException {
        m8018g0(charSequence, str, true, true, phoneNumber);
    }

    /* renamed from: i */
    int m8015i(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            return 0;
        }
        int length = sb.length();
        for (int i = 1; i <= 3 && i <= length; i++) {
            int parseInt = Integer.parseInt(sb.substring(0, i));
            if (this.f12281b.containsKey(Integer.valueOf(parseInt))) {
                sb2.append(sb.substring(i));
                return parseInt;
            }
        }
        return 0;
    }

    /* renamed from: k */
    public String m8011k(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phoneNumber.m7899h() == 0 && phoneNumber.m7890q()) {
            String k = phoneNumber.m7896k();
            if (k.length() > 0) {
                return k;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        m8009l(phoneNumber, phoneNumberFormat, sb);
        return sb.toString();
    }

    /* renamed from: l */
    public void m8009l(Phonenumber.PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder sb) {
        sb.setLength(0);
        int e = phoneNumber.m7902e();
        String x = m7995x(phoneNumber);
        if (phoneNumberFormat == PhoneNumberFormat.E164) {
            sb.append(x);
            m8014i0(e, PhoneNumberFormat.E164, sb);
        } else if (!m8051G(e)) {
            sb.append(x);
        } else {
            Phonemetadata.PhoneMetadata w = m7996w(e, m8055C(e));
            sb.append(m8007m(x, w, phoneNumberFormat));
            m8038T(phoneNumber, w, phoneNumberFormat, sb);
            m8014i0(e, phoneNumberFormat, sb);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public String m8004o(String str, Phonemetadata.NumberFormat numberFormat, PhoneNumberFormat phoneNumberFormat) {
        return m8003p(str, numberFormat, phoneNumberFormat, null);
    }

    /* renamed from: u */
    Phonemetadata.PhoneMetadata m7998u(int i) {
        if (!this.f12281b.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.f12280a.mo7879a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public Phonemetadata.PhoneMetadata m7997v(String str) {
        if (!m8040R(str)) {
            return null;
        }
        return this.f12280a.mo7878b(str);
    }

    /* renamed from: x */
    public String m7995x(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.m7889r() && phoneNumber.m7898i() > 0) {
            char[] cArr = new char[phoneNumber.m7898i()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.m7899h());
        return sb.toString();
    }

    /* renamed from: y */
    public String m7994y(String str, boolean z) {
        Phonemetadata.PhoneMetadata v = m7997v(str);
        if (v == null) {
            Logger logger = f12261h;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid or missing region code (");
            String str2 = str;
            if (str == null) {
                str2 = "null";
            }
            sb.append(str2);
            sb.append(") provided.");
            logger.log(level, sb.toString());
            return null;
        }
        String j = v.m7938j();
        if (j.length() == 0) {
            return null;
        }
        String str3 = j;
        if (z) {
            str3 = j.replace("~", "");
        }
        return str3;
    }

    /* renamed from: z */
    Phonemetadata.PhoneNumberDesc m7993z(Phonemetadata.PhoneMetadata phoneMetadata, PhoneNumberType phoneNumberType) {
        switch (C14802.f12294c[phoneNumberType.ordinal()]) {
            case 1:
                return phoneMetadata.m7930r();
            case 2:
                return phoneMetadata.m7927u();
            case 3:
                return phoneMetadata.m7939i();
            case 4:
            case 5:
                return phoneMetadata.m7952b();
            case 6:
                return phoneMetadata.m7928t();
            case 7:
                return phoneMetadata.m7924x();
            case 8:
                return phoneMetadata.m7932p();
            case 9:
                return phoneMetadata.m7933o();
            case 10:
                return phoneMetadata.m7926v();
            case 11:
                return phoneMetadata.m7925w();
            default:
                return phoneMetadata.m7950c();
        }
    }
}
