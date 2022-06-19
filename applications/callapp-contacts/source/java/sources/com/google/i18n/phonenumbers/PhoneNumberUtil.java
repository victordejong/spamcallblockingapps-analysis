package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C16125h;
import com.google.i18n.phonenumbers.C16129j;
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.p402a.AbstractC16107a;
import com.google.i18n.phonenumbers.p402a.C16108b;
import com.google.i18n.phonenumbers.p402a.C16109c;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil.class */
public class PhoneNumberUtil {
    private static final Map<Character, Character> ALL_PLUS_NUMBER_GROUPING_SYMBOLS;
    private static final Map<Character, Character> ALPHA_MAPPINGS;
    private static final Map<Character, Character> ALPHA_PHONE_MAPPINGS;
    private static final Pattern CAPTURING_DIGIT_PATTERN;
    private static final String CC_STRING = "$CC";
    private static final String COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX = "3";
    private static final String DEFAULT_EXTN_PREFIX = " ext. ";
    private static final Map<Character, Character> DIALLABLE_CHAR_MAPPINGS;
    private static final String DIGITS = "\\p{Nd}";
    private static final Pattern EXTN_PATTERN;
    static final String EXTN_PATTERNS_FOR_MATCHING;
    private static final String EXTN_PATTERNS_FOR_PARSING;
    private static final String FG_STRING = "$FG";
    private static final Pattern FIRST_GROUP_ONLY_PREFIX_PATTERN;
    private static final Pattern FIRST_GROUP_PATTERN;
    private static final Set<Integer> GEO_MOBILE_COUNTRIES;
    private static final Set<Integer> GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES;
    private static final int MAX_INPUT_STRING_LENGTH = 250;
    static final int MAX_LENGTH_COUNTRY_CODE = 3;
    static final int MAX_LENGTH_FOR_NSN = 17;
    private static final int MIN_LENGTH_FOR_NSN = 2;
    private static final Map<Integer, String> MOBILE_TOKEN_MAPPINGS;
    private static final int NANPA_COUNTRY_CODE = 1;
    static final Pattern NON_DIGITS_PATTERN;
    private static final String NP_STRING = "$NP";
    static final String PLUS_CHARS = "+＋";
    static final Pattern PLUS_CHARS_PATTERN;
    static final char PLUS_SIGN = '+';
    static final int REGEX_FLAGS = 66;
    public static final String REGION_CODE_FOR_NON_GEO_ENTITY = "001";
    private static final String RFC3966_EXTN_PREFIX = ";ext=";
    private static final String RFC3966_ISDN_SUBADDRESS = ";isub=";
    private static final String RFC3966_PHONE_CONTEXT = ";phone-context=";
    private static final String RFC3966_PREFIX = "tel:";
    private static final String SECOND_NUMBER_START = "[\\\\/] *x";
    static final Pattern SECOND_NUMBER_START_PATTERN;
    private static final Pattern SEPARATOR_PATTERN;
    private static final Pattern SINGLE_INTERNATIONAL_PREFIX;
    private static final char STAR_SIGN = '*';
    private static final String UNKNOWN_REGION = "ZZ";
    private static final String UNWANTED_END_CHARS = "[[\\P{N}&&\\P{L}]&&[^#]]+$";
    static final Pattern UNWANTED_END_CHAR_PATTERN;
    private static final String VALID_ALPHA;
    private static final Pattern VALID_ALPHA_PHONE_PATTERN;
    private static final String VALID_PHONE_NUMBER;
    private static final Pattern VALID_PHONE_NUMBER_PATTERN;
    static final String VALID_PUNCTUATION = "-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～";
    private static final String VALID_START_CHAR = "[+＋\\p{Nd}]";
    private static final Pattern VALID_START_CHAR_PATTERN;
    private static PhoneNumberUtil instance;
    private static final Logger logger = Logger.getLogger(PhoneNumberUtil.class.getName());
    private final Map<Integer, List<String>> countryCallingCodeToRegionCodeMap;
    private final AbstractC16122e metadataSource;
    private final AbstractC16107a matcherApi = new C16108b();
    private final Set<String> nanpaRegions = new HashSet(35);
    private final C16109c regexCache = new C16109c(100);
    private final Set<String> supportedRegions = new HashSet(320);
    private final Set<Integer> countryCodesForNonGeographicalRegion = new HashSet();

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$2 */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$2.class */
    public static final /* synthetic */ class C160942 {

        /* renamed from: a */
        static final /* synthetic */ int[] f56856a;

        /* renamed from: b */
        static final /* synthetic */ int[] f56857b;

        /* renamed from: c */
        static final /* synthetic */ int[] f56858c;

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
            int[] iArr = new int[EnumC16104d.values().length];
            f56858c = iArr;
            try {
                iArr[EnumC16104d.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f56858c[EnumC16104d.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f56858c[EnumC16104d.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f56858c[EnumC16104d.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f56858c[EnumC16104d.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f56858c[EnumC16104d.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f56858c[EnumC16104d.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f56858c[EnumC16104d.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f56858c[EnumC16104d.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f56858c[EnumC16104d.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f56858c[EnumC16104d.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[EnumC16103c.values().length];
            f56857b = iArr2;
            try {
                iArr2[EnumC16103c.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f56857b[EnumC16103c.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f56857b[EnumC16103c.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f56857b[EnumC16103c.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            int[] iArr3 = new int[C16136k.C16137a.EnumC16138a.values().length];
            f56856a = iArr3;
            try {
                iArr3[C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f56856a[C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f56856a[C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f56856a[C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$a.class */
    public enum EnumC16095a {
        POSSIBLE { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16095a
            public final boolean verify(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, C16125h c16125h) {
                return phoneNumberUtil.isPossibleNumber(c16137a);
            }
        },
        VALID { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16095a
            public final boolean verify(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, C16125h c16125h) {
                if (!phoneNumberUtil.isValidNumber(c16137a) || !C16125h.m7808a(c16137a, charSequence.toString(), phoneNumberUtil)) {
                    return false;
                }
                return C16125h.m7811a(c16137a, phoneNumberUtil);
            }
        },
        STRICT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16095a
            public final boolean verify(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, C16125h c16125h) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.isValidNumber(c16137a) || !C16125h.m7808a(c16137a, charSequence2, phoneNumberUtil) || C16125h.m7809a(c16137a, charSequence2) || !C16125h.m7811a(c16137a, phoneNumberUtil)) {
                    return false;
                }
                return c16125h.m7810a(c16137a, charSequence, phoneNumberUtil, new C16125h.AbstractC16126a() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.3.1
                    @Override // com.google.i18n.phonenumbers.C16125h.AbstractC16126a
                    /* renamed from: a */
                    public final boolean mo7803a(PhoneNumberUtil phoneNumberUtil2, C16136k.C16137a c16137a2, StringBuilder sb, String[] strArr) {
                        return C16125h.m7812a(phoneNumberUtil2, c16137a2, sb, strArr);
                    }
                });
            }
        },
        EXACT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16095a
            public final boolean verify(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, C16125h c16125h) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.isValidNumber(c16137a) || !C16125h.m7808a(c16137a, charSequence2, phoneNumberUtil) || C16125h.m7809a(c16137a, charSequence2) || !C16125h.m7811a(c16137a, phoneNumberUtil)) {
                    return false;
                }
                return c16125h.m7810a(c16137a, charSequence, phoneNumberUtil, new C16125h.AbstractC16126a() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.4.1
                    @Override // com.google.i18n.phonenumbers.C16125h.AbstractC16126a
                    /* renamed from: a */
                    public final boolean mo7803a(PhoneNumberUtil phoneNumberUtil2, C16136k.C16137a c16137a2, StringBuilder sb, String[] strArr) {
                        return C16125h.m7804b(phoneNumberUtil2, c16137a2, sb, strArr);
                    }
                });
            }
        };

        public abstract boolean verify(C16136k.C16137a c16137a, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, C16125h c16125h);
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$b */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$b.class */
    public enum EnumC16102b {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$c */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$c.class */
    public enum EnumC16103c {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$d */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$d.class */
    public enum EnumC16104d {
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

    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$e */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$e.class */
    public enum EnumC16105e {
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
        MOBILE_TOKEN_MAPPINGS = Collections.unmodifiableMap(hashMap);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        GEO_MOBILE_COUNTRIES = Collections.unmodifiableSet(hashSet2);
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
        ALPHA_MAPPINGS = unmodifiableMap;
        HashMap hashMap4 = new HashMap(100);
        hashMap4.putAll(unmodifiableMap);
        hashMap4.putAll(hashMap2);
        ALPHA_PHONE_MAPPINGS = Collections.unmodifiableMap(hashMap4);
        HashMap hashMap5 = new HashMap();
        hashMap5.putAll(hashMap2);
        hashMap5.put('+', '+');
        hashMap5.put('*', '*');
        hashMap5.put('#', '#');
        DIALLABLE_CHAR_MAPPINGS = Collections.unmodifiableMap(hashMap5);
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
        ALL_PLUS_NUMBER_GROUPING_SYMBOLS = Collections.unmodifiableMap(hashMap6);
        SINGLE_INTERNATIONAL_PREFIX = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map = ALPHA_MAPPINGS;
        sb.append(Arrays.toString(map.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String sb2 = sb.toString();
        VALID_ALPHA = sb2;
        PLUS_CHARS_PATTERN = Pattern.compile("[+＋]+");
        SEPARATOR_PATTERN = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        CAPTURING_DIGIT_PATTERN = Pattern.compile("(\\p{Nd})");
        VALID_START_CHAR_PATTERN = Pattern.compile(VALID_START_CHAR);
        SECOND_NUMBER_START_PATTERN = Pattern.compile(SECOND_NUMBER_START);
        UNWANTED_END_CHAR_PATTERN = Pattern.compile(UNWANTED_END_CHARS);
        VALID_ALPHA_PHONE_PATTERN = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + sb2 + "\\p{Nd}]*";
        VALID_PHONE_NUMBER = str;
        String createExtnPattern = createExtnPattern(true);
        EXTN_PATTERNS_FOR_PARSING = createExtnPattern;
        EXTN_PATTERNS_FOR_MATCHING = createExtnPattern(false);
        EXTN_PATTERN = Pattern.compile("(?:" + createExtnPattern + ")$", 66);
        VALID_PHONE_NUMBER_PATTERN = Pattern.compile(str + "(?:" + createExtnPattern + ")?", 66);
        NON_DIGITS_PATTERN = Pattern.compile("(\\D+)");
        FIRST_GROUP_PATTERN = Pattern.compile("(\\$\\d)");
        FIRST_GROUP_ONLY_PREFIX_PATTERN = Pattern.compile("\\(?\\$1\\)?");
        instance = null;
    }

    PhoneNumberUtil(AbstractC16122e abstractC16122e, Map<Integer, List<String>> map) {
        this.metadataSource = abstractC16122e;
        this.countryCallingCodeToRegionCodeMap = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() != 1 || !REGION_CODE_FOR_NON_GEO_ENTITY.equals(value.get(0))) {
                this.supportedRegions.addAll(value);
            } else {
                this.countryCodesForNonGeographicalRegion.add(entry.getKey());
            }
        }
        if (this.supportedRegions.remove(REGION_CODE_FOR_NON_GEO_ENTITY)) {
            logger.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.nanpaRegions.addAll(map.get(1));
    }

    private void buildNationalNumberForParsing(String str, StringBuilder sb) {
        int indexOf = str.indexOf(RFC3966_PHONE_CONTEXT);
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
            int indexOf3 = str.indexOf(RFC3966_PREFIX);
            sb.append(str.substring(indexOf3 >= 0 ? indexOf3 + 4 : 0, indexOf));
        } else {
            sb.append(extractPossibleNumber(str));
        }
        int indexOf4 = sb.indexOf(RFC3966_ISDN_SUBADDRESS);
        if (indexOf4 > 0) {
            sb.delete(indexOf4, sb.length());
        }
    }

    private boolean checkRegionForParsing(CharSequence charSequence, String str) {
        if (!isValidRegionCode(str)) {
            return (charSequence == null || charSequence.length() == 0 || !PLUS_CHARS_PATTERN.matcher(charSequence).lookingAt()) ? false : true;
        }
        return true;
    }

    public static String convertAlphaCharactersInNumber(CharSequence charSequence) {
        return normalizeHelper(charSequence, ALPHA_PHONE_MAPPINGS, false);
    }

    private static C16136k.C16137a copyCoreFieldsOnly(C16136k.C16137a c16137a) {
        C16136k.C16137a c16137a2 = new C16136k.C16137a();
        c16137a2.m7776a(c16137a.f57029a);
        c16137a2.m7775a(c16137a.f57030b);
        if (c16137a.f57032d.length() > 0) {
            c16137a2.m7772a(c16137a.f57032d);
        }
        if (c16137a.f57033e) {
            c16137a2.m7771a(true);
            c16137a2.m7769b(c16137a.f57034f);
        }
        return c16137a2;
    }

    private static String createExtnPattern(boolean z) {
        String str = (RFC3966_EXTN_PREFIX + extnDigits(20)) + "|" + ("[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|anexo)[:\\.．]?[  \\t,-]*" + extnDigits(20) + "#?") + "|" + ("[  \\t,]*(?:[xｘ#＃~～]|int|ｉｎｔ)[:\\.．]?[  \\t,-]*" + extnDigits(9) + "#?") + "|" + ("[- ]+" + extnDigits(6) + "#");
        if (z) {
            return str + "|" + ("[  \\t]*(?:,{2}|;)[:\\.．]?[  \\t,-]*" + extnDigits(15) + "#?") + "|" + ("[  \\t]*(?:,)+[:\\.．]?[  \\t,-]*" + extnDigits(9) + "#?");
        }
        return str;
    }

    public static PhoneNumberUtil createInstance(AbstractC16119c abstractC16119c) {
        if (abstractC16119c != null) {
            return createInstance(new C16123f(abstractC16119c));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    private static PhoneNumberUtil createInstance(AbstractC16122e abstractC16122e) {
        if (abstractC16122e != null) {
            return new PhoneNumberUtil(abstractC16122e, C16112b.m7839a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    private static boolean descHasData(C16129j.C16135d c16135d) {
        return c16135d.f57027e || descHasPossibleNumberData(c16135d) || c16135d.f57023a;
    }

    private static boolean descHasPossibleNumberData(C16129j.C16135d c16135d) {
        return (c16135d.m7778a() == 1 && c16135d.f57025c.get(0).intValue() == -1) ? false : true;
    }

    private static String extnDigits(int i) {
        return "(\\p{Nd}{1," + i + "})";
    }

    static CharSequence extractPossibleNumber(CharSequence charSequence) {
        Matcher matcher = VALID_START_CHAR_PATTERN.matcher(charSequence);
        if (matcher.find()) {
            CharSequence subSequence = charSequence.subSequence(matcher.start(), charSequence.length());
            Matcher matcher2 = UNWANTED_END_CHAR_PATTERN.matcher(subSequence);
            CharSequence charSequence2 = subSequence;
            if (matcher2.find()) {
                charSequence2 = subSequence.subSequence(0, matcher2.start());
            }
            Matcher matcher3 = SECOND_NUMBER_START_PATTERN.matcher(charSequence2);
            CharSequence charSequence3 = charSequence2;
            if (matcher3.find()) {
                charSequence3 = charSequence2.subSequence(0, matcher3.start());
            }
            return charSequence3;
        }
        return "";
    }

    private String formatNsn(String str, C16129j.C16132b c16132b, EnumC16103c enumC16103c) {
        return formatNsn(str, c16132b, enumC16103c, null);
    }

    private String formatNsn(String str, C16129j.C16132b c16132b, EnumC16103c enumC16103c, CharSequence charSequence) {
        C16129j.C16130a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber((c16132b.f57021z.size() == 0 || enumC16103c == EnumC16103c.NATIONAL) ? c16132b.f57020y : c16132b.f57021z, str);
        return chooseFormattingPatternForNumber == null ? str : formatNsnUsingPattern(str, chooseFormattingPatternForNumber, enumC16103c, charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String formatNsnUsingPattern(java.lang.String r5, com.google.i18n.phonenumbers.C16129j.C16130a r6, com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16103c r7, java.lang.CharSequence r8) {
        /*
            r4 = this;
            r0 = r6
            java.lang.String r0 = r0.f56950b
            r9 = r0
            r0 = r4
            com.google.i18n.phonenumbers.a.c r0 = r0.regexCache
            r1 = r6
            java.lang.String r1 = r1.f56949a
            java.util.regex.Pattern r0 = r0.m7842a(r1)
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r10 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16103c.NATIONAL
            if (r0 != r1) goto L53
            r0 = r8
            if (r0 == 0) goto L53
            r0 = r8
            int r0 = r0.length()
            if (r0 <= 0) goto L53
            r0 = r6
            java.lang.String r0 = r0.f56954f
            int r0 = r0.length()
            if (r0 <= 0) goto L53
            r0 = r6
            java.lang.String r0 = r0.f56954f
            java.lang.String r1 = "$CC"
            r2 = r8
            java.lang.String r0 = r0.replace(r1, r2)
            r5 = r0
            java.util.regex.Pattern r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.FIRST_GROUP_PATTERN
            r1 = r9
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r1 = r5
            java.lang.String r0 = r0.replaceFirst(r1)
            r5 = r0
            goto L88
        L53:
            r0 = r6
            java.lang.String r0 = r0.f56951c
            r6 = r0
            r0 = r9
            r5 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16103c.NATIONAL
            if (r0 != r1) goto L88
            r0 = r9
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L88
            r0 = r9
            r5 = r0
            r0 = r6
            int r0 = r0.length()
            if (r0 <= 0) goto L88
            r0 = r10
            java.util.regex.Pattern r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.FIRST_GROUP_PATTERN
            r2 = r9
            java.util.regex.Matcher r1 = r1.matcher(r2)
            r2 = r6
            java.lang.String r1 = r1.replaceFirst(r2)
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
            goto L8f
        L88:
            r0 = r10
            r1 = r5
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
        L8f:
            r0 = r5
            r6 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16103c.RFC3966
            if (r0 != r1) goto Lbb
            java.util.regex.Pattern r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.SEPARATOR_PATTERN
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r6 = r0
            r0 = r6
            boolean r0 = r0.lookingAt()
            if (r0 == 0) goto Laf
            r0 = r6
            java.lang.String r1 = ""
            java.lang.String r0 = r0.replaceFirst(r1)
            r5 = r0
        Laf:
            r0 = r6
            r1 = r5
            java.util.regex.Matcher r0 = r0.reset(r1)
            java.lang.String r1 = "-"
            java.lang.String r0 = r0.replaceAll(r1)
            r6 = r0
        Lbb:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.formatNsnUsingPattern(java.lang.String, com.google.i18n.phonenumbers.j$a, com.google.i18n.phonenumbers.PhoneNumberUtil$c, java.lang.CharSequence):java.lang.String");
    }

    public static boolean formattingRuleHasFirstGroupOnly(String str) {
        return str.length() == 0 || FIRST_GROUP_ONLY_PREFIX_PATTERN.matcher(str).matches();
    }

    private int getCountryCodeForValidRegion(String str) {
        C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion != null) {
            return metadataForRegion.f57008m;
        }
        throw new IllegalArgumentException("Invalid region code: ".concat(String.valueOf(str)));
    }

    public static String getCountryMobileToken(int i) {
        Map<Integer, String> map = MOBILE_TOKEN_MAPPINGS;
        return map.containsKey(Integer.valueOf(i)) ? map.get(Integer.valueOf(i)) : "";
    }

    public static PhoneNumberUtil getInstance() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            try {
                if (instance == null) {
                    setInstance(createInstance(C16120d.f56912a));
                }
                phoneNumberUtil = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtil;
    }

    private C16129j.C16132b getMetadataForRegionOrCallingCode(int i, String str) {
        return REGION_CODE_FOR_NON_GEO_ENTITY.equals(str) ? getMetadataForNonGeographicalRegion(i) : getMetadataForRegion(str);
    }

    private EnumC16104d getNumberTypeHelper(String str, C16129j.C16132b c16132b) {
        if (!isNumberMatchingDesc(str, c16132b.f56986a)) {
            return EnumC16104d.UNKNOWN;
        }
        if (isNumberMatchingDesc(str, c16132b.f57000e)) {
            return EnumC16104d.PREMIUM_RATE;
        }
        if (isNumberMatchingDesc(str, c16132b.f56999d)) {
            return EnumC16104d.TOLL_FREE;
        }
        if (isNumberMatchingDesc(str, c16132b.f57001f)) {
            return EnumC16104d.SHARED_COST;
        }
        if (isNumberMatchingDesc(str, c16132b.f57003h)) {
            return EnumC16104d.VOIP;
        }
        if (isNumberMatchingDesc(str, c16132b.f57002g)) {
            return EnumC16104d.PERSONAL_NUMBER;
        }
        if (isNumberMatchingDesc(str, c16132b.f57004i)) {
            return EnumC16104d.PAGER;
        }
        if (isNumberMatchingDesc(str, c16132b.f57005j)) {
            return EnumC16104d.UAN;
        }
        if (isNumberMatchingDesc(str, c16132b.f57006k)) {
            return EnumC16104d.VOICEMAIL;
        }
        if (!isNumberMatchingDesc(str, c16132b.f56997b)) {
            return (c16132b.f57019x || !isNumberMatchingDesc(str, c16132b.f56998c)) ? EnumC16104d.UNKNOWN : EnumC16104d.MOBILE;
        }
        if (!c16132b.f57019x && !isNumberMatchingDesc(str, c16132b.f56998c)) {
            return EnumC16104d.FIXED_LINE;
        }
        return EnumC16104d.FIXED_LINE_OR_MOBILE;
    }

    private String getRegionCodeForNumberFromRegionList(C16136k.C16137a c16137a, List<String> list) {
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        for (String str : list) {
            C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
            if (metadataForRegion.f56960A) {
                if (this.regexCache.m7842a(metadataForRegion.f56961B).matcher(nationalSignificantNumber).lookingAt()) {
                    return str;
                }
            } else if (getNumberTypeHelper(nationalSignificantNumber, metadataForRegion) != EnumC16104d.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    private Set<EnumC16104d> getSupportedTypesForMetadata(C16129j.C16132b c16132b) {
        EnumC16104d[] values;
        TreeSet treeSet = new TreeSet();
        for (EnumC16104d enumC16104d : EnumC16104d.values()) {
            if (enumC16104d != EnumC16104d.FIXED_LINE_OR_MOBILE && enumC16104d != EnumC16104d.UNKNOWN && descHasData(getNumberDescByType(c16132b, enumC16104d))) {
                treeSet.add(enumC16104d);
            }
        }
        return Collections.unmodifiableSet(treeSet);
    }

    private boolean hasFormattingPatternForNumber(C16136k.C16137a c16137a) {
        int i = c16137a.f57029a;
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        if (metadataForRegionOrCallingCode == null) {
            return false;
        }
        return chooseFormattingPatternForNumber(metadataForRegionOrCallingCode.f57020y, getNationalSignificantNumber(c16137a)) != null;
    }

    private boolean hasValidCountryCallingCode(int i) {
        return this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i));
    }

    private boolean isNationalNumberSuffixOfTheOther(C16136k.C16137a c16137a, C16136k.C16137a c16137a2) {
        String valueOf = String.valueOf(c16137a.f57030b);
        String valueOf2 = String.valueOf(c16137a2.f57030b);
        return valueOf.endsWith(valueOf2) || valueOf2.endsWith(valueOf);
    }

    private boolean isValidRegionCode(String str) {
        return str != null && this.supportedRegions.contains(str);
    }

    static boolean isViablePhoneNumber(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return VALID_PHONE_NUMBER_PATTERN.matcher(charSequence).matches();
    }

    private void maybeAppendFormattedExtension(C16136k.C16137a c16137a, C16129j.C16132b c16132b, EnumC16103c enumC16103c, StringBuilder sb) {
        if (!c16137a.f57031c || c16137a.f57032d.length() <= 0) {
            return;
        }
        if (enumC16103c == EnumC16103c.RFC3966) {
            sb.append(RFC3966_EXTN_PREFIX);
            sb.append(c16137a.f57032d);
        } else if (c16132b.f57014s) {
            sb.append(c16132b.f57015t);
            sb.append(c16137a.f57032d);
        } else {
            sb.append(DEFAULT_EXTN_PREFIX);
            sb.append(c16137a.f57032d);
        }
    }

    static StringBuilder normalize(StringBuilder sb) {
        if (VALID_ALPHA_PHONE_PATTERN.matcher(sb).matches()) {
            sb.replace(0, sb.length(), normalizeHelper(sb, ALPHA_PHONE_MAPPINGS, true));
        } else {
            sb.replace(0, sb.length(), normalizeDigitsOnly(sb));
        }
        return sb;
    }

    public static String normalizeDiallableCharsOnly(CharSequence charSequence) {
        return normalizeHelper(charSequence, DIALLABLE_CHAR_MAPPINGS, true);
    }

    public static StringBuilder normalizeDigits(CharSequence charSequence, boolean z) {
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

    public static String normalizeDigitsOnly(CharSequence charSequence) {
        return normalizeDigits(charSequence, false).toString();
    }

    private static String normalizeHelper(CharSequence charSequence, Map<Character, Character> map, boolean z) {
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

    private void parseHelper(CharSequence charSequence, String str, boolean z, boolean z2, C16136k.C16137a c16137a) throws NumberParseException {
        int i;
        C16129j.C16132b c16132b;
        if (charSequence != null) {
            if (charSequence.length() > MAX_INPUT_STRING_LENGTH) {
                throw new NumberParseException(NumberParseException.EnumC16092a.TOO_LONG, "The string supplied was too long to parse.");
            }
            StringBuilder sb = new StringBuilder();
            String charSequence2 = charSequence.toString();
            buildNationalNumberForParsing(charSequence2, sb);
            if (!isViablePhoneNumber(sb)) {
                throw new NumberParseException(NumberParseException.EnumC16092a.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            }
            if (z2 && !checkRegionForParsing(sb, str)) {
                throw new NumberParseException(NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
            }
            if (z) {
                c16137a.m7767b(charSequence2);
            }
            String maybeStripExtension = maybeStripExtension(sb);
            if (maybeStripExtension.length() > 0) {
                c16137a.m7772a(maybeStripExtension);
            }
            C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
            StringBuilder sb2 = new StringBuilder();
            try {
                i = maybeExtractCountryCode(sb, metadataForRegion, sb2, z, c16137a);
            } catch (NumberParseException e) {
                Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
                if (e.f56849a != NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                    throw new NumberParseException(e.f56849a, e.getMessage());
                }
                i = maybeExtractCountryCode(sb.substring(matcher.end()), metadataForRegion, sb2, z, c16137a);
                if (i == 0) {
                    throw new NumberParseException(NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                }
            }
            if (i != 0) {
                String regionCodeForCountryCode = getRegionCodeForCountryCode(i);
                c16132b = metadataForRegion;
                if (!regionCodeForCountryCode.equals(str)) {
                    c16132b = getMetadataForRegionOrCallingCode(i, regionCodeForCountryCode);
                }
            } else {
                sb2.append(normalize(sb));
                if (str != null) {
                    c16137a.m7776a(metadataForRegion.f57008m);
                    c16132b = metadataForRegion;
                } else {
                    c16132b = metadataForRegion;
                    if (z) {
                        c16137a.m7770b();
                        c16132b = metadataForRegion;
                    }
                }
            }
            if (sb2.length() < 2) {
                throw new NumberParseException(NumberParseException.EnumC16092a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
            }
            StringBuilder sb3 = sb2;
            if (c16132b != null) {
                StringBuilder sb4 = new StringBuilder();
                StringBuilder sb5 = new StringBuilder(sb2);
                maybeStripNationalPrefixAndCarrierCode(sb5, c16132b, sb4);
                EnumC16105e testNumberLength = testNumberLength(sb5, c16132b);
                sb3 = sb2;
                if (testNumberLength != EnumC16105e.TOO_SHORT) {
                    sb3 = sb2;
                    if (testNumberLength != EnumC16105e.IS_POSSIBLE_LOCAL_ONLY) {
                        sb3 = sb2;
                        if (testNumberLength != EnumC16105e.INVALID_LENGTH) {
                            if (z && sb4.length() > 0) {
                                c16137a.m7766c(sb4.toString());
                            }
                            sb3 = sb5;
                        }
                    }
                }
            }
            int length = sb3.length();
            if (length < 2) {
                throw new NumberParseException(NumberParseException.EnumC16092a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
            }
            if (length > 17) {
                throw new NumberParseException(NumberParseException.EnumC16092a.TOO_LONG, "The string supplied is too long to be a phone number.");
            }
            setItalianLeadingZerosForPhoneNumber(sb3, c16137a);
            c16137a.m7775a(Long.parseLong(sb3.toString()));
            return;
        }
        throw new NumberParseException(NumberParseException.EnumC16092a.NOT_A_NUMBER, "The phone number supplied was null.");
    }

    private boolean parsePrefixAsIdd(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (matcher.lookingAt()) {
            int end = matcher.end();
            Matcher matcher2 = CAPTURING_DIGIT_PATTERN.matcher(sb.substring(end));
            if (matcher2.find() && normalizeDigitsOnly(matcher2.group(1)).equals("0")) {
                return false;
            }
            sb.delete(0, end);
            return true;
        }
        return false;
    }

    private void prefixNumberWithCountryCallingCode(int i, EnumC16103c enumC16103c, StringBuilder sb) {
        int i2 = C160942.f56857b[enumC16103c.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i2 == 2) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, '+');
        } else if (i2 != 3) {
        } else {
            sb.insert(0, VerificationLanguage.REGION_PREFIX).insert(0, i).insert(0, '+').insert(0, RFC3966_PREFIX);
        }
    }

    private boolean rawInputContainsNationalPrefix(String str, String str2, String str3) {
        String normalizeDigitsOnly = normalizeDigitsOnly(str);
        if (normalizeDigitsOnly.startsWith(str2)) {
            try {
                return isValidNumber(parse(normalizeDigitsOnly.substring(str2.length()), str3));
            } catch (NumberParseException e) {
                return false;
            }
        }
        return false;
    }

    static void setInstance(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            try {
                instance = phoneNumberUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static void setItalianLeadingZerosForPhoneNumber(CharSequence charSequence, C16136k.C16137a c16137a) {
        if (charSequence.length() <= 1 || charSequence.charAt(0) != '0') {
            return;
        }
        c16137a.m7771a(true);
        int i = 1;
        while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
            i++;
        }
        if (i == 1) {
            return;
        }
        c16137a.m7769b(i);
    }

    private EnumC16105e testNumberLength(CharSequence charSequence, C16129j.C16132b c16132b) {
        return testNumberLength(charSequence, c16132b, EnumC16104d.UNKNOWN);
    }

    private EnumC16105e testNumberLength(CharSequence charSequence, C16129j.C16132b c16132b, EnumC16104d enumC16104d) {
        List<Integer> list;
        List<Integer> list2;
        ArrayList arrayList;
        EnumC16104d enumC16104d2 = enumC16104d;
        while (true) {
            EnumC16104d enumC16104d3 = enumC16104d2;
            C16129j.C16135d numberDescByType = getNumberDescByType(c16132b, enumC16104d3);
            List<Integer> list3 = numberDescByType.f57025c.isEmpty() ? c16132b.f56986a.f57025c : numberDescByType.f57025c;
            List<Integer> list4 = numberDescByType.f57026d;
            list = list4;
            list2 = list3;
            if (enumC16104d3 != EnumC16104d.FIXED_LINE_OR_MOBILE) {
                break;
            } else if (!descHasPossibleNumberData(getNumberDescByType(c16132b, EnumC16104d.FIXED_LINE))) {
                enumC16104d2 = EnumC16104d.MOBILE;
            } else {
                C16129j.C16135d numberDescByType2 = getNumberDescByType(c16132b, EnumC16104d.MOBILE);
                list = list4;
                list2 = list3;
                if (descHasPossibleNumberData(numberDescByType2)) {
                    list2 = new ArrayList(list3);
                    list2.addAll(numberDescByType2.m7778a() == 0 ? c16132b.f56986a.f57025c : numberDescByType2.f57025c);
                    Collections.sort(list2);
                    if (list4.isEmpty()) {
                        arrayList = numberDescByType2.f57026d;
                    } else {
                        arrayList = new ArrayList(list4);
                        arrayList.addAll(numberDescByType2.f57026d);
                        Collections.sort(arrayList);
                    }
                    list = arrayList;
                }
            }
        }
        if (list2.get(0).intValue() == -1) {
            return EnumC16105e.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (list.contains(Integer.valueOf(length))) {
            return EnumC16105e.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = list2.get(0).intValue();
        return intValue == length ? EnumC16105e.IS_POSSIBLE : intValue > length ? EnumC16105e.TOO_SHORT : list2.get(list2.size() - 1).intValue() < length ? EnumC16105e.TOO_LONG : list2.subList(1, list2.size()).contains(Integer.valueOf(length)) ? EnumC16105e.IS_POSSIBLE : EnumC16105e.INVALID_LENGTH;
    }

    public boolean canBeInternationallyDialled(C16136k.C16137a c16137a) {
        C16129j.C16132b metadataForRegion = getMetadataForRegion(getRegionCodeForNumber(c16137a));
        return metadataForRegion == null || !isNumberMatchingDesc(getNationalSignificantNumber(c16137a), metadataForRegion.f57007l);
    }

    public C16129j.C16130a chooseFormattingPatternForNumber(List<C16129j.C16130a> list, String str) {
        for (C16129j.C16130a c16130a : list) {
            int m7790e = c16130a.m7790e();
            if (m7790e == 0 || this.regexCache.m7842a(c16130a.m7799a(m7790e - 1)).matcher(str).lookingAt()) {
                if (this.regexCache.m7842a(c16130a.f56949a).matcher(str).matches()) {
                    return c16130a;
                }
            }
        }
        return null;
    }

    public int extractCountryCode(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() == 0 || sb.charAt(0) == '0') {
            return 0;
        }
        int length = sb.length();
        for (int i = 1; i <= 3 && i <= length; i++) {
            int parseInt = Integer.parseInt(sb.substring(0, i));
            if (this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(parseInt))) {
                sb2.append(sb.substring(i));
                return parseInt;
            }
        }
        return 0;
    }

    public Iterable<C16124g> findNumbers(CharSequence charSequence, String str) {
        return findNumbers(charSequence, str, EnumC16095a.VALID, Long.MAX_VALUE);
    }

    public Iterable<C16124g> findNumbers(final CharSequence charSequence, final String str, final EnumC16095a enumC16095a, final long j) {
        return new Iterable<C16124g>() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.1
            @Override // java.lang.Iterable
            public final Iterator<C16124g> iterator() {
                return new C16125h(PhoneNumberUtil.this, charSequence, str, enumC16095a, j);
            }
        };
    }

    public String format(C16136k.C16137a c16137a, EnumC16103c enumC16103c) {
        if (c16137a.f57030b == 0 && c16137a.f57035g) {
            String str = c16137a.f57036h;
            if (str.length() > 0) {
                return str;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        format(c16137a, enumC16103c, sb);
        return sb.toString();
    }

    public void format(C16136k.C16137a c16137a, EnumC16103c enumC16103c, StringBuilder sb) {
        sb.setLength(0);
        int i = c16137a.f57029a;
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        if (enumC16103c == EnumC16103c.E164) {
            sb.append(nationalSignificantNumber);
            prefixNumberWithCountryCallingCode(i, EnumC16103c.E164, sb);
        } else if (!hasValidCountryCallingCode(i)) {
            sb.append(nationalSignificantNumber);
        } else {
            C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
            sb.append(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, enumC16103c));
            maybeAppendFormattedExtension(c16137a, metadataForRegionOrCallingCode, enumC16103c, sb);
            prefixNumberWithCountryCallingCode(i, enumC16103c, sb);
        }
    }

    public String formatByPattern(C16136k.C16137a c16137a, EnumC16103c enumC16103c, List<C16129j.C16130a> list) {
        int i = c16137a.f57029a;
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(20);
        C16129j.C16130a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(list, nationalSignificantNumber);
        if (chooseFormattingPatternForNumber == null) {
            sb.append(nationalSignificantNumber);
        } else {
            C16129j.C16130a.C16131a m7800a = C16129j.C16130a.m7800a();
            m7800a.m7785a(chooseFormattingPatternForNumber);
            String str = chooseFormattingPatternForNumber.f56951c;
            if (str.length() > 0) {
                String str2 = metadataForRegionOrCallingCode.f57013r;
                if (str2.length() > 0) {
                    m7800a.m7791d(str.replace(NP_STRING, str2).replace(FG_STRING, "$1"));
                } else {
                    m7800a.m7787g();
                }
            }
            sb.append(formatNsnUsingPattern(nationalSignificantNumber, m7800a, enumC16103c));
        }
        maybeAppendFormattedExtension(c16137a, metadataForRegionOrCallingCode, enumC16103c, sb);
        prefixNumberWithCountryCallingCode(i, enumC16103c, sb);
        return sb.toString();
    }

    public String formatInOriginalFormat(C16136k.C16137a c16137a, String str) {
        String str2;
        if (!c16137a.f57035g || hasFormattingPatternForNumber(c16137a)) {
            if (!c16137a.f57037i) {
                return format(c16137a, EnumC16103c.NATIONAL);
            }
            int i = C160942.f56856a[c16137a.f57038j.ordinal()];
            if (i == 1) {
                str2 = format(c16137a, EnumC16103c.INTERNATIONAL);
            } else if (i == 2) {
                str2 = formatOutOfCountryCallingNumber(c16137a, str);
            } else if (i != 3) {
                String regionCodeForCountryCode = getRegionCodeForCountryCode(c16137a.f57029a);
                String nddPrefixForRegion = getNddPrefixForRegion(regionCodeForCountryCode, true);
                String format = format(c16137a, EnumC16103c.NATIONAL);
                str2 = format;
                if (nddPrefixForRegion != null) {
                    if (nddPrefixForRegion.length() == 0) {
                        str2 = format;
                    } else if (rawInputContainsNationalPrefix(c16137a.f57036h, nddPrefixForRegion, regionCodeForCountryCode)) {
                        str2 = format;
                    } else {
                        C16129j.C16132b metadataForRegion = getMetadataForRegion(regionCodeForCountryCode);
                        C16129j.C16130a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(metadataForRegion.f57020y, getNationalSignificantNumber(c16137a));
                        if (chooseFormattingPatternForNumber == null) {
                            str2 = format;
                        } else {
                            String str3 = chooseFormattingPatternForNumber.f56951c;
                            int indexOf = str3.indexOf("$1");
                            if (indexOf <= 0) {
                                str2 = format;
                            } else if (normalizeDigitsOnly(str3.substring(0, indexOf)).length() == 0) {
                                str2 = format;
                            } else {
                                C16129j.C16130a.C16131a m7800a = C16129j.C16130a.m7800a();
                                m7800a.m7785a(chooseFormattingPatternForNumber);
                                m7800a.m7787g();
                                List<C16129j.C16130a> arrayList = new ArrayList<>(1);
                                arrayList.add(m7800a);
                                str2 = formatByPattern(c16137a, EnumC16103c.NATIONAL, arrayList);
                            }
                        }
                    }
                }
            } else {
                str2 = format(c16137a, EnumC16103c.INTERNATIONAL).substring(1);
            }
            String str4 = c16137a.f57036h;
            String str5 = str2;
            if (str2 != null) {
                str5 = str2;
                if (str4.length() > 0) {
                    str5 = str2;
                    if (!normalizeDiallableCharsOnly(str2).equals(normalizeDiallableCharsOnly(str4))) {
                        str5 = str4;
                    }
                }
            }
            return str5;
        }
        return c16137a.f57036h;
    }

    public String formatNationalNumberWithCarrierCode(C16136k.C16137a c16137a, CharSequence charSequence) {
        int i = c16137a.f57029a;
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(20);
        sb.append(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, EnumC16103c.NATIONAL, charSequence));
        maybeAppendFormattedExtension(c16137a, metadataForRegionOrCallingCode, EnumC16103c.NATIONAL, sb);
        prefixNumberWithCountryCallingCode(i, EnumC16103c.NATIONAL, sb);
        return sb.toString();
    }

    public String formatNationalNumberWithPreferredCarrierCode(C16136k.C16137a c16137a, CharSequence charSequence) {
        if (c16137a.f57040l.length() > 0) {
            charSequence = c16137a.f57040l;
        }
        return formatNationalNumberWithCarrierCode(c16137a, charSequence);
    }

    public String formatNsnUsingPattern(String str, C16129j.C16130a c16130a, EnumC16103c enumC16103c) {
        return formatNsnUsingPattern(str, c16130a, enumC16103c, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
        if (r0 == com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16104d.FIXED_LINE_OR_MOBILE) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String formatNumberForMobileDialing(com.google.i18n.phonenumbers.C16136k.C16137a r5, java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.formatNumberForMobileDialing(com.google.i18n.phonenumbers.k$a, java.lang.String, boolean):java.lang.String");
    }

    public String formatOutOfCountryCallingNumber(C16136k.C16137a c16137a, String str) {
        if (!isValidRegionCode(str)) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            logger2.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
            return format(c16137a, EnumC16103c.INTERNATIONAL);
        }
        int i = c16137a.f57029a;
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        if (i == 1) {
            if (isNANPACountry(str)) {
                return i + StringUtils.SPACE + format(c16137a, EnumC16103c.NATIONAL);
            }
        } else if (i == getCountryCodeForValidRegion(str)) {
            return format(c16137a, EnumC16103c.NATIONAL);
        }
        C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
        String str2 = metadataForRegion.f57009n;
        if (!SINGLE_INTERNATIONAL_PREFIX.matcher(str2).matches()) {
            str2 = metadataForRegion.f57010o ? metadataForRegion.f57011p : "";
        }
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, EnumC16103c.INTERNATIONAL));
        maybeAppendFormattedExtension(c16137a, metadataForRegionOrCallingCode, EnumC16103c.INTERNATIONAL, sb);
        if (str2.length() > 0) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, StringUtils.SPACE).insert(0, str2);
        } else {
            prefixNumberWithCountryCallingCode(i, EnumC16103c.INTERNATIONAL, sb);
        }
        return sb.toString();
    }

    public String formatOutOfCountryKeepingAlphaChars(C16136k.C16137a c16137a, String str) {
        String str2;
        String str3 = c16137a.f57036h;
        if (str3.length() == 0) {
            return formatOutOfCountryCallingNumber(c16137a, str);
        }
        int i = c16137a.f57029a;
        if (!hasValidCountryCallingCode(i)) {
            return str3;
        }
        String normalizeHelper = normalizeHelper(str3, ALL_PLUS_NUMBER_GROUPING_SYMBOLS, true);
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        String str4 = normalizeHelper;
        if (nationalSignificantNumber.length() > 3) {
            int indexOf = normalizeHelper.indexOf(nationalSignificantNumber.substring(0, 3));
            str4 = normalizeHelper;
            if (indexOf != -1) {
                str4 = normalizeHelper.substring(indexOf);
            }
        }
        C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
        if (i == 1) {
            if (isNANPACountry(str)) {
                return i + StringUtils.SPACE + str4;
            }
        } else if (metadataForRegion != null && i == getCountryCodeForValidRegion(str)) {
            C16129j.C16130a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(metadataForRegion.f57020y, nationalSignificantNumber);
            if (chooseFormattingPatternForNumber == null) {
                return str4;
            }
            C16129j.C16130a.C16131a m7800a = C16129j.C16130a.m7800a();
            m7800a.m7785a(chooseFormattingPatternForNumber);
            m7800a.m7798a("(\\d+)(.*)");
            m7800a.m7795b("$1$2");
            return formatNsnUsingPattern(str4, m7800a, EnumC16103c.NATIONAL);
        }
        if (metadataForRegion != null) {
            str2 = metadataForRegion.f57009n;
            if (!SINGLE_INTERNATIONAL_PREFIX.matcher(str2).matches()) {
                str2 = metadataForRegion.f57011p;
            }
        } else {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder(str4);
        maybeAppendFormattedExtension(c16137a, getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i)), EnumC16103c.INTERNATIONAL, sb);
        if (str2.length() > 0) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, StringUtils.SPACE).insert(0, str2);
        } else {
            if (!isValidRegionCode(str)) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                logger2.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
            }
            prefixNumberWithCountryCallingCode(i, EnumC16103c.INTERNATIONAL, sb);
        }
        return sb.toString();
    }

    public C16106a getAsYouTypeFormatter(String str) {
        return new C16106a(str);
    }

    public int getCountryCodeForRegion(String str) {
        if (!isValidRegionCode(str)) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder("Invalid or missing region code (");
            String str2 = str;
            if (str == null) {
                str2 = JsonReaderKt.NULL;
            }
            sb.append(str2);
            sb.append(") provided.");
            logger2.log(level, sb.toString());
            return 0;
        }
        return getCountryCodeForValidRegion(str);
    }

    public C16136k.C16137a getExampleNumber(String str) {
        return getExampleNumberForType(str, EnumC16104d.FIXED_LINE);
    }

    public C16136k.C16137a getExampleNumberForNonGeoEntity(int i) {
        C16129j.C16132b metadataForNonGeographicalRegion = getMetadataForNonGeographicalRegion(i);
        if (metadataForNonGeographicalRegion == null) {
            logger.log(Level.WARNING, "Invalid or unknown country calling code provided: ".concat(String.valueOf(i)));
            return null;
        }
        for (C16129j.C16135d c16135d : Arrays.asList(metadataForNonGeographicalRegion.f56998c, metadataForNonGeographicalRegion.f56999d, metadataForNonGeographicalRegion.f57001f, metadataForNonGeographicalRegion.f57003h, metadataForNonGeographicalRegion.f57006k, metadataForNonGeographicalRegion.f57005j, metadataForNonGeographicalRegion.f57000e)) {
            if (c16135d != null) {
                try {
                    if (c16135d.f57027e) {
                        return parse("+" + i + c16135d.f57028f, UNKNOWN_REGION);
                    }
                    continue;
                } catch (NumberParseException e) {
                    logger.log(Level.SEVERE, e.toString());
                }
            }
        }
        return null;
    }

    public C16136k.C16137a getExampleNumberForType(EnumC16104d enumC16104d) {
        for (String str : getSupportedRegions()) {
            C16136k.C16137a exampleNumberForType = getExampleNumberForType(str, enumC16104d);
            if (exampleNumberForType != null) {
                return exampleNumberForType;
            }
        }
        for (Integer num : getSupportedGlobalNetworkCallingCodes()) {
            int intValue = num.intValue();
            C16129j.C16135d numberDescByType = getNumberDescByType(getMetadataForNonGeographicalRegion(intValue), enumC16104d);
            try {
            } catch (NumberParseException e) {
                logger.log(Level.SEVERE, e.toString());
            }
            if (numberDescByType.f57027e) {
                return parse("+" + intValue + numberDescByType.f57028f, UNKNOWN_REGION);
            }
            continue;
        }
        return null;
    }

    public C16136k.C16137a getExampleNumberForType(String str, EnumC16104d enumC16104d) {
        if (!isValidRegionCode(str)) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return null;
        }
        C16129j.C16135d numberDescByType = getNumberDescByType(getMetadataForRegion(str), enumC16104d);
        try {
            if (!numberDescByType.f57027e) {
                return null;
            }
            return parse(numberDescByType.f57028f, str);
        } catch (NumberParseException e) {
            logger.log(Level.SEVERE, e.toString());
            return null;
        }
    }

    public C16136k.C16137a getInvalidExampleNumber(String str) {
        C16136k.C16137a parse;
        if (!isValidRegionCode(str)) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return null;
        }
        C16129j.C16135d numberDescByType = getNumberDescByType(getMetadataForRegion(str), EnumC16104d.FIXED_LINE);
        if (!numberDescByType.f57027e) {
            return null;
        }
        String str2 = numberDescByType.f57028f;
        for (int length = str2.length() - 1; length >= 2; length--) {
            try {
                parse = parse(str2.substring(0, length), str);
            } catch (NumberParseException e) {
            }
            if (!isValidNumber(parse)) {
                return parse;
            }
        }
        return null;
    }

    public int getLengthOfGeographicalAreaCode(C16136k.C16137a c16137a) {
        C16129j.C16132b metadataForRegion = getMetadataForRegion(getRegionCodeForNumber(c16137a));
        if (metadataForRegion == null) {
            return 0;
        }
        if (!metadataForRegion.f57012q && !c16137a.f57033e) {
            return 0;
        }
        EnumC16104d numberType = getNumberType(c16137a);
        int i = c16137a.f57029a;
        if ((numberType == EnumC16104d.MOBILE && GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES.contains(Integer.valueOf(i))) || !isNumberGeographical(numberType, i)) {
            return 0;
        }
        return getLengthOfNationalDestinationCode(c16137a);
    }

    public int getLengthOfNationalDestinationCode(C16136k.C16137a c16137a) {
        C16136k.C16137a c16137a2;
        if (c16137a.f57031c) {
            c16137a2 = new C16136k.C16137a();
            c16137a2.m7773a(c16137a);
            c16137a2.m7777a();
        } else {
            c16137a2 = c16137a;
        }
        String[] split = NON_DIGITS_PATTERN.split(format(c16137a2, EnumC16103c.INTERNATIONAL));
        if (split.length <= 3) {
            return 0;
        }
        return (getNumberType(c16137a) != EnumC16104d.MOBILE || getCountryMobileToken(c16137a.f57029a).equals("")) ? split[2].length() : split[2].length() + split[3].length();
    }

    public C16129j.C16132b getMetadataForNonGeographicalRegion(int i) {
        if (!this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.metadataSource.mo7817a(i);
    }

    public C16129j.C16132b getMetadataForRegion(String str) {
        if (!isValidRegionCode(str)) {
            return null;
        }
        return this.metadataSource.mo7816a(str);
    }

    public String getNationalSignificantNumber(C16136k.C16137a c16137a) {
        StringBuilder sb = new StringBuilder();
        if (c16137a.f57033e && c16137a.f57034f > 0) {
            char[] cArr = new char[c16137a.f57034f];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(c16137a.f57030b);
        return sb.toString();
    }

    public String getNddPrefixForRegion(String str, boolean z) {
        C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion != null) {
            String str2 = metadataForRegion.f57013r;
            if (str2.length() == 0) {
                return null;
            }
            String str3 = str2;
            if (z) {
                str3 = str2.replace("~", "");
            }
            return str3;
        }
        Logger logger2 = logger;
        Level level = Level.WARNING;
        StringBuilder sb = new StringBuilder("Invalid or missing region code (");
        String str4 = str;
        if (str == null) {
            str4 = JsonReaderKt.NULL;
        }
        sb.append(str4);
        sb.append(") provided.");
        logger2.log(level, sb.toString());
        return null;
    }

    C16129j.C16135d getNumberDescByType(C16129j.C16132b c16132b, EnumC16104d enumC16104d) {
        switch (C160942.f56858c[enumC16104d.ordinal()]) {
            case 1:
                return c16132b.f57000e;
            case 2:
                return c16132b.f56999d;
            case 3:
                return c16132b.f56998c;
            case 4:
            case 5:
                return c16132b.f56997b;
            case 6:
                return c16132b.f57001f;
            case 7:
                return c16132b.f57003h;
            case 8:
                return c16132b.f57002g;
            case 9:
                return c16132b.f57004i;
            case 10:
                return c16132b.f57005j;
            case 11:
                return c16132b.f57006k;
            default:
                return c16132b.f56986a;
        }
    }

    public EnumC16104d getNumberType(C16136k.C16137a c16137a) {
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(c16137a.f57029a, getRegionCodeForNumber(c16137a));
        return metadataForRegionOrCallingCode == null ? EnumC16104d.UNKNOWN : getNumberTypeHelper(getNationalSignificantNumber(c16137a), metadataForRegionOrCallingCode);
    }

    public String getRegionCodeForCountryCode(int i) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        return list == null ? UNKNOWN_REGION : list.get(0);
    }

    public String getRegionCodeForNumber(C16136k.C16137a c16137a) {
        int i = c16137a.f57029a;
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : getRegionCodeForNumberFromRegionList(c16137a, list);
        }
        Logger logger2 = logger;
        Level level = Level.INFO;
        logger2.log(level, "Missing/invalid country_code (" + i + ")");
        return null;
    }

    public List<String> getRegionCodesForCountryCode(int i) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList(0);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Set<Integer> getSupportedCallingCodes() {
        return Collections.unmodifiableSet(this.countryCallingCodeToRegionCodeMap.keySet());
    }

    public Set<Integer> getSupportedGlobalNetworkCallingCodes() {
        return Collections.unmodifiableSet(this.countryCodesForNonGeographicalRegion);
    }

    public Set<String> getSupportedRegions() {
        return Collections.unmodifiableSet(this.supportedRegions);
    }

    public Set<EnumC16104d> getSupportedTypesForNonGeoEntity(int i) {
        C16129j.C16132b metadataForNonGeographicalRegion = getMetadataForNonGeographicalRegion(i);
        if (metadataForNonGeographicalRegion == null) {
            logger.log(Level.WARNING, "Unknown country calling code for a non-geographical entity provided: ".concat(String.valueOf(i)));
            return Collections.unmodifiableSet(new TreeSet());
        }
        return getSupportedTypesForMetadata(metadataForNonGeographicalRegion);
    }

    public Set<EnumC16104d> getSupportedTypesForRegion(String str) {
        if (!isValidRegionCode(str)) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return Collections.unmodifiableSet(new TreeSet());
        }
        return getSupportedTypesForMetadata(getMetadataForRegion(str));
    }

    public boolean isAlphaNumber(CharSequence charSequence) {
        if (!isViablePhoneNumber(charSequence)) {
            return false;
        }
        StringBuilder sb = new StringBuilder(charSequence);
        maybeStripExtension(sb);
        return VALID_ALPHA_PHONE_PATTERN.matcher(sb).matches();
    }

    public boolean isMobileNumberPortableRegion(String str) {
        C16129j.C16132b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion == null) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return false;
        }
        return metadataForRegion.f56962C;
    }

    public boolean isNANPACountry(String str) {
        return this.nanpaRegions.contains(str);
    }

    public boolean isNumberGeographical(EnumC16104d enumC16104d, int i) {
        if (enumC16104d == EnumC16104d.FIXED_LINE || enumC16104d == EnumC16104d.FIXED_LINE_OR_MOBILE) {
            return true;
        }
        return GEO_MOBILE_COUNTRIES.contains(Integer.valueOf(i)) && enumC16104d == EnumC16104d.MOBILE;
    }

    public boolean isNumberGeographical(C16136k.C16137a c16137a) {
        return isNumberGeographical(getNumberType(c16137a), c16137a.f57029a);
    }

    public EnumC16102b isNumberMatch(C16136k.C16137a c16137a, C16136k.C16137a c16137a2) {
        C16136k.C16137a copyCoreFieldsOnly = copyCoreFieldsOnly(c16137a);
        C16136k.C16137a copyCoreFieldsOnly2 = copyCoreFieldsOnly(c16137a2);
        if (!copyCoreFieldsOnly.f57031c || !copyCoreFieldsOnly2.f57031c || copyCoreFieldsOnly.f57032d.equals(copyCoreFieldsOnly2.f57032d)) {
            int i = copyCoreFieldsOnly.f57029a;
            int i2 = copyCoreFieldsOnly2.f57029a;
            if (i != 0 && i2 != 0) {
                return copyCoreFieldsOnly.m7768b(copyCoreFieldsOnly2) ? EnumC16102b.EXACT_MATCH : (i != i2 || !isNationalNumberSuffixOfTheOther(copyCoreFieldsOnly, copyCoreFieldsOnly2)) ? EnumC16102b.NO_MATCH : EnumC16102b.SHORT_NSN_MATCH;
            }
            copyCoreFieldsOnly.m7776a(i2);
            return copyCoreFieldsOnly.m7768b(copyCoreFieldsOnly2) ? EnumC16102b.NSN_MATCH : isNationalNumberSuffixOfTheOther(copyCoreFieldsOnly, copyCoreFieldsOnly2) ? EnumC16102b.SHORT_NSN_MATCH : EnumC16102b.NO_MATCH;
        }
        return EnumC16102b.NO_MATCH;
    }

    public EnumC16102b isNumberMatch(C16136k.C16137a c16137a, CharSequence charSequence) {
        try {
            return isNumberMatch(c16137a, parse(charSequence, UNKNOWN_REGION));
        } catch (NumberParseException e) {
            if (e.f56849a == NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE) {
                String regionCodeForCountryCode = getRegionCodeForCountryCode(c16137a.f57029a);
                try {
                    if (regionCodeForCountryCode.equals(UNKNOWN_REGION)) {
                        C16136k.C16137a c16137a2 = new C16136k.C16137a();
                        parseHelper(charSequence, null, false, false, c16137a2);
                        return isNumberMatch(c16137a, c16137a2);
                    }
                    EnumC16102b isNumberMatch = isNumberMatch(c16137a, parse(charSequence, regionCodeForCountryCode));
                    EnumC16102b enumC16102b = isNumberMatch;
                    if (isNumberMatch == EnumC16102b.EXACT_MATCH) {
                        enumC16102b = EnumC16102b.NSN_MATCH;
                    }
                    return enumC16102b;
                } catch (NumberParseException e2) {
                    return EnumC16102b.NOT_A_NUMBER;
                }
            }
            return EnumC16102b.NOT_A_NUMBER;
        }
    }

    public EnumC16102b isNumberMatch(CharSequence charSequence, CharSequence charSequence2) {
        try {
            return isNumberMatch(parse(charSequence, UNKNOWN_REGION), charSequence2);
        } catch (NumberParseException e) {
            if (e.f56849a == NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE) {
                try {
                    return isNumberMatch(parse(charSequence2, UNKNOWN_REGION), charSequence);
                } catch (NumberParseException e2) {
                    if (e2.f56849a == NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE) {
                        try {
                            C16136k.C16137a c16137a = new C16136k.C16137a();
                            C16136k.C16137a c16137a2 = new C16136k.C16137a();
                            parseHelper(charSequence, null, false, false, c16137a);
                            parseHelper(charSequence2, null, false, false, c16137a2);
                            return isNumberMatch(c16137a, c16137a2);
                        } catch (NumberParseException e3) {
                            return EnumC16102b.NOT_A_NUMBER;
                        }
                    }
                    return EnumC16102b.NOT_A_NUMBER;
                }
            }
            return EnumC16102b.NOT_A_NUMBER;
        }
    }

    boolean isNumberMatchingDesc(String str, C16129j.C16135d c16135d) {
        int length = str.length();
        List<Integer> list = c16135d.f57025c;
        if (list.size() <= 0 || list.contains(Integer.valueOf(length))) {
            return this.matcherApi.mo7843a(str, c16135d);
        }
        return false;
    }

    public boolean isPossibleNumber(C16136k.C16137a c16137a) {
        EnumC16105e isPossibleNumberWithReason = isPossibleNumberWithReason(c16137a);
        return isPossibleNumberWithReason == EnumC16105e.IS_POSSIBLE || isPossibleNumberWithReason == EnumC16105e.IS_POSSIBLE_LOCAL_ONLY;
    }

    public boolean isPossibleNumber(CharSequence charSequence, String str) {
        try {
            return isPossibleNumber(parse(charSequence, str));
        } catch (NumberParseException e) {
            return false;
        }
    }

    public boolean isPossibleNumberForType(C16136k.C16137a c16137a, EnumC16104d enumC16104d) {
        EnumC16105e isPossibleNumberForTypeWithReason = isPossibleNumberForTypeWithReason(c16137a, enumC16104d);
        return isPossibleNumberForTypeWithReason == EnumC16105e.IS_POSSIBLE || isPossibleNumberForTypeWithReason == EnumC16105e.IS_POSSIBLE_LOCAL_ONLY;
    }

    public EnumC16105e isPossibleNumberForTypeWithReason(C16136k.C16137a c16137a, EnumC16104d enumC16104d) {
        String nationalSignificantNumber = getNationalSignificantNumber(c16137a);
        int i = c16137a.f57029a;
        return !hasValidCountryCallingCode(i) ? EnumC16105e.INVALID_COUNTRY_CODE : testNumberLength(nationalSignificantNumber, getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i)), enumC16104d);
    }

    public EnumC16105e isPossibleNumberWithReason(C16136k.C16137a c16137a) {
        return isPossibleNumberForTypeWithReason(c16137a, EnumC16104d.UNKNOWN);
    }

    public boolean isValidNumber(C16136k.C16137a c16137a) {
        return isValidNumberForRegion(c16137a, getRegionCodeForNumber(c16137a));
    }

    public boolean isValidNumberForRegion(C16136k.C16137a c16137a, String str) {
        int i = c16137a.f57029a;
        C16129j.C16132b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, str);
        if (metadataForRegionOrCallingCode != null) {
            return (REGION_CODE_FOR_NON_GEO_ENTITY.equals(str) || i == getCountryCodeForValidRegion(str)) && getNumberTypeHelper(getNationalSignificantNumber(c16137a), metadataForRegionOrCallingCode) != EnumC16104d.UNKNOWN;
        }
        return false;
    }

    int maybeExtractCountryCode(CharSequence charSequence, C16129j.C16132b c16132b, StringBuilder sb, boolean z, C16136k.C16137a c16137a) throws NumberParseException {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        C16136k.C16137a.EnumC16138a maybeStripInternationalPrefixAndNormalize = maybeStripInternationalPrefixAndNormalize(sb2, c16132b != null ? c16132b.f57009n : "NonMatch");
        if (z) {
            c16137a.m7774a(maybeStripInternationalPrefixAndNormalize);
        }
        if (maybeStripInternationalPrefixAndNormalize != C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() <= 2) {
                throw new NumberParseException(NumberParseException.EnumC16092a.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int extractCountryCode = extractCountryCode(sb2, sb);
            if (extractCountryCode == 0) {
                throw new NumberParseException(NumberParseException.EnumC16092a.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            c16137a.m7776a(extractCountryCode);
            return extractCountryCode;
        }
        if (c16132b != null) {
            int i = c16132b.f57008m;
            String valueOf = String.valueOf(i);
            String sb3 = sb2.toString();
            if (sb3.startsWith(valueOf)) {
                StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                C16129j.C16135d c16135d = c16132b.f56986a;
                maybeStripNationalPrefixAndCarrierCode(sb4, c16132b, null);
                if ((!this.matcherApi.mo7843a(sb2, c16135d) && this.matcherApi.mo7843a(sb4, c16135d)) || testNumberLength(sb2, c16132b) == EnumC16105e.TOO_LONG) {
                    sb.append((CharSequence) sb4);
                    if (z) {
                        c16137a.m7774a(C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    c16137a.m7776a(i);
                    return i;
                }
            }
        }
        c16137a.m7776a(0);
        return 0;
    }

    String maybeStripExtension(StringBuilder sb) {
        Matcher matcher = EXTN_PATTERN.matcher(sb);
        if (!matcher.find() || !isViablePhoneNumber(sb.substring(0, matcher.start()))) {
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

    C16136k.C16137a.EnumC16138a maybeStripInternationalPrefixAndNormalize(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            normalize(sb);
            return C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern m7842a = this.regexCache.m7842a(str);
        normalize(sb);
        return parsePrefixAsIdd(m7842a, sb) ? C16136k.C16137a.EnumC16138a.FROM_NUMBER_WITH_IDD : C16136k.C16137a.EnumC16138a.FROM_DEFAULT_COUNTRY;
    }

    public boolean maybeStripNationalPrefixAndCarrierCode(StringBuilder sb, C16129j.C16132b c16132b, StringBuilder sb2) {
        int length = sb.length();
        String str = c16132b.f57017v;
        if (length == 0 || str.length() == 0) {
            return false;
        }
        Matcher matcher = this.regexCache.m7842a(str).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        C16129j.C16135d c16135d = c16132b.f56986a;
        boolean mo7843a = this.matcherApi.mo7843a(sb, c16135d);
        int groupCount = matcher.groupCount();
        String str2 = c16132b.f57018w;
        if (str2 == null || str2.length() == 0 || matcher.group(groupCount) == null) {
            if (mo7843a && !this.matcherApi.mo7843a(sb.substring(matcher.end()), c16135d)) {
                return false;
            }
            if (sb2 != null && groupCount > 0 && matcher.group(groupCount) != null) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
        StringBuilder sb3 = new StringBuilder(sb);
        sb3.replace(0, length, matcher.replaceFirst(str2));
        if (mo7843a && !this.matcherApi.mo7843a(sb3.toString(), c16135d)) {
            return false;
        }
        if (sb2 != null && groupCount > 1) {
            sb2.append(matcher.group(1));
        }
        sb.replace(0, sb.length(), sb3.toString());
        return true;
    }

    public C16136k.C16137a parse(CharSequence charSequence, String str) throws NumberParseException {
        C16136k.C16137a c16137a = new C16136k.C16137a();
        parse(charSequence, str, c16137a);
        return c16137a;
    }

    public void parse(CharSequence charSequence, String str, C16136k.C16137a c16137a) throws NumberParseException {
        parseHelper(charSequence, str, false, true, c16137a);
    }

    public C16136k.C16137a parseAndKeepRawInput(CharSequence charSequence, String str) throws NumberParseException {
        C16136k.C16137a c16137a = new C16136k.C16137a();
        parseAndKeepRawInput(charSequence, str, c16137a);
        return c16137a;
    }

    public void parseAndKeepRawInput(CharSequence charSequence, String str, C16136k.C16137a c16137a) throws NumberParseException {
        parseHelper(charSequence, str, true, true, c16137a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public boolean truncateTooLongNumber(C16136k.C16137a c16137a) {
        ?? r0;
        if (isValidNumber(c16137a)) {
            return true;
        }
        C16136k.C16137a c16137a2 = new C16136k.C16137a();
        c16137a2.m7773a(c16137a);
        char c = c16137a.f57030b;
        do {
            r0 = c / '\n';
            c16137a2.m7775a((long) r0);
            if (isPossibleNumberWithReason(c16137a2) == EnumC16105e.TOO_SHORT || r0 == 0) {
                return false;
            }
            c = r0;
        } while (!isValidNumber(c16137a2));
        c16137a.m7775a((long) r0);
        return true;
    }
}
