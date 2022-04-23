package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.h;
import com.google.i18n.phonenumbers.j;
import com.google.i18n.phonenumbers.k;
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
    private final com.google.i18n.phonenumbers.e metadataSource;
    private final com.google.i18n.phonenumbers.a.a matcherApi = new com.google.i18n.phonenumbers.a.b();
    private final Set<String> nanpaRegions = new HashSet(35);
    private final com.google.i18n.phonenumbers.a.c regexCache = new com.google.i18n.phonenumbers.a.c(100);
    private final Set<String> supportedRegions = new HashSet(320);
    private final Set<Integer> countryCodesForNonGeographicalRegion = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.i18n.phonenumbers.PhoneNumberUtil$2  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32824a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f32825b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f32826c;

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
            int[] iArr = new int[d.values().length];
            f32826c = iArr;
            try {
                iArr[d.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32826c[d.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32826c[d.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32826c[d.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32826c[d.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32826c[d.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f32826c[d.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f32826c[d.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f32826c[d.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f32826c[d.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f32826c[d.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[c.values().length];
            f32825b = iArr2;
            try {
                iArr2[c.E164.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f32825b[c.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f32825b[c.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f32825b[c.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            int[] iArr3 = new int[k.a.EnumC0527a.values().length];
            f32824a = iArr3;
            try {
                iArr3[k.a.EnumC0527a.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f32824a[k.a.EnumC0527a.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f32824a[k.a.EnumC0527a.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f32824a[k.a.EnumC0527a.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$a.class */
    public enum a {
        POSSIBLE { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.1
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.a
            final boolean verify(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, h hVar) {
                return phoneNumberUtil.isPossibleNumber(aVar);
            }
        },
        VALID { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.2
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.a
            final boolean verify(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, h hVar) {
                if (!phoneNumberUtil.isValidNumber(aVar) || !h.a(aVar, charSequence.toString(), phoneNumberUtil)) {
                    return false;
                }
                return h.a(aVar, phoneNumberUtil);
            }
        },
        STRICT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.3
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.a
            final boolean verify(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, h hVar) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.isValidNumber(aVar) || !h.a(aVar, charSequence2, phoneNumberUtil) || h.a(aVar, charSequence2) || !h.a(aVar, phoneNumberUtil)) {
                    return false;
                }
                return hVar.a(aVar, charSequence, phoneNumberUtil, new h.a() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.3.1
                    @Override // com.google.i18n.phonenumbers.h.a
                    public final boolean a(PhoneNumberUtil phoneNumberUtil2, k.a aVar2, StringBuilder sb, String[] strArr) {
                        return h.a(phoneNumberUtil2, aVar2, sb, strArr);
                    }
                });
            }
        },
        EXACT_GROUPING { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.4
            @Override // com.google.i18n.phonenumbers.PhoneNumberUtil.a
            final boolean verify(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, h hVar) {
                String charSequence2 = charSequence.toString();
                if (!phoneNumberUtil.isValidNumber(aVar) || !h.a(aVar, charSequence2, phoneNumberUtil) || h.a(aVar, charSequence2) || !h.a(aVar, phoneNumberUtil)) {
                    return false;
                }
                return hVar.a(aVar, charSequence, phoneNumberUtil, new h.a() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.a.4.1
                    @Override // com.google.i18n.phonenumbers.h.a
                    public final boolean a(PhoneNumberUtil phoneNumberUtil2, k.a aVar2, StringBuilder sb, String[] strArr) {
                        return h.b(phoneNumberUtil2, aVar2, sb, strArr);
                    }
                });
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean verify(k.a aVar, CharSequence charSequence, PhoneNumberUtil phoneNumberUtil, h hVar);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$b.class */
    public enum b {
        NOT_A_NUMBER,
        NO_MATCH,
        SHORT_NSN_MATCH,
        NSN_MATCH,
        EXACT_MATCH
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$c.class */
    public enum c {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$d.class */
    public enum d {
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

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/PhoneNumberUtil$e.class */
    public enum e {
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

    PhoneNumberUtil(com.google.i18n.phonenumbers.e eVar, Map<Integer, List<String>> map) {
        this.metadataSource = eVar;
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

    private static k.a copyCoreFieldsOnly(k.a aVar) {
        k.a aVar2 = new k.a();
        aVar2.a(aVar.f32890a);
        aVar2.a(aVar.f32891b);
        if (aVar.f32893d.length() > 0) {
            aVar2.a(aVar.f32893d);
        }
        if (aVar.e) {
            aVar2.a(true);
            aVar2.b(aVar.f);
        }
        return aVar2;
    }

    private static String createExtnPattern(boolean z) {
        String str = (RFC3966_EXTN_PREFIX + extnDigits(20)) + "|" + ("[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|anexo)[:\\.．]?[  \\t,-]*" + extnDigits(20) + "#?") + "|" + ("[  \\t,]*(?:[xｘ#＃~～]|int|ｉｎｔ)[:\\.．]?[  \\t,-]*" + extnDigits(9) + "#?") + "|" + ("[- ]+" + extnDigits(6) + "#");
        if (!z) {
            return str;
        }
        return str + "|" + ("[  \\t]*(?:,{2}|;)[:\\.．]?[  \\t,-]*" + extnDigits(15) + "#?") + "|" + ("[  \\t]*(?:,)+[:\\.．]?[  \\t,-]*" + extnDigits(9) + "#?");
    }

    public static PhoneNumberUtil createInstance(com.google.i18n.phonenumbers.c cVar) {
        if (cVar != null) {
            return createInstance(new f(cVar));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    private static PhoneNumberUtil createInstance(com.google.i18n.phonenumbers.e eVar) {
        if (eVar != null) {
            return new PhoneNumberUtil(eVar, com.google.i18n.phonenumbers.b.a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    private static boolean descHasData(j.d dVar) {
        return dVar.e || descHasPossibleNumberData(dVar) || dVar.f32886a;
    }

    private static boolean descHasPossibleNumberData(j.d dVar) {
        return (dVar.a() == 1 && dVar.f32888c.get(0).intValue() == -1) ? false : true;
    }

    private static String extnDigits(int i) {
        return "(\\p{Nd}{1," + i + "})";
    }

    static CharSequence extractPossibleNumber(CharSequence charSequence) {
        Matcher matcher = VALID_START_CHAR_PATTERN.matcher(charSequence);
        if (!matcher.find()) {
            return "";
        }
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

    private String formatNsn(String str, j.b bVar, c cVar) {
        return formatNsn(str, bVar, cVar, null);
    }

    private String formatNsn(String str, j.b bVar, c cVar, CharSequence charSequence) {
        j.a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber((bVar.z.size() == 0 || cVar == c.NATIONAL) ? bVar.y : bVar.z, str);
        return chooseFormattingPatternForNumber == null ? str : formatNsnUsingPattern(str, chooseFormattingPatternForNumber, cVar, charSequence);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String formatNsnUsingPattern(java.lang.String r5, com.google.i18n.phonenumbers.j.a r6, com.google.i18n.phonenumbers.PhoneNumberUtil.c r7, java.lang.CharSequence r8) {
        /*
            r4 = this;
            r0 = r6
            java.lang.String r0 = r0.f32878b
            r9 = r0
            r0 = r4
            com.google.i18n.phonenumbers.a.c r0 = r0.regexCache
            r1 = r6
            java.lang.String r1 = r1.f32877a
            java.util.regex.Pattern r0 = r0.a(r1)
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r10 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.c.NATIONAL
            if (r0 != r1) goto L_0x0053
            r0 = r8
            if (r0 == 0) goto L_0x0053
            r0 = r8
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0053
            r0 = r6
            java.lang.String r0 = r0.f
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0053
            r0 = r6
            java.lang.String r0 = r0.f
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
            goto L_0x0088
        L_0x0053:
            r0 = r6
            java.lang.String r0 = r0.f32879c
            r6 = r0
            r0 = r9
            r5 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.c.NATIONAL
            if (r0 != r1) goto L_0x0088
            r0 = r9
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0088
            r0 = r9
            r5 = r0
            r0 = r6
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0088
            r0 = r10
            java.util.regex.Pattern r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.FIRST_GROUP_PATTERN
            r2 = r9
            java.util.regex.Matcher r1 = r1.matcher(r2)
            r2 = r6
            java.lang.String r1 = r1.replaceFirst(r2)
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
            goto L_0x008f
        L_0x0088:
            r0 = r10
            r1 = r5
            java.lang.String r0 = r0.replaceAll(r1)
            r5 = r0
        L_0x008f:
            r0 = r5
            r6 = r0
            r0 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$c r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.c.RFC3966
            if (r0 != r1) goto L_0x00bb
            java.util.regex.Pattern r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.SEPARATOR_PATTERN
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r6 = r0
            r0 = r6
            boolean r0 = r0.lookingAt()
            if (r0 == 0) goto L_0x00af
            r0 = r6
            java.lang.String r1 = ""
            java.lang.String r0 = r0.replaceFirst(r1)
            r5 = r0
        L_0x00af:
            r0 = r6
            r1 = r5
            java.util.regex.Matcher r0 = r0.reset(r1)
            java.lang.String r1 = "-"
            java.lang.String r0 = r0.replaceAll(r1)
            r6 = r0
        L_0x00bb:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.formatNsnUsingPattern(java.lang.String, com.google.i18n.phonenumbers.j$a, com.google.i18n.phonenumbers.PhoneNumberUtil$c, java.lang.CharSequence):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean formattingRuleHasFirstGroupOnly(String str) {
        return str.length() == 0 || FIRST_GROUP_ONLY_PREFIX_PATTERN.matcher(str).matches();
    }

    private int getCountryCodeForValidRegion(String str) {
        j.b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion != null) {
            return metadataForRegion.m;
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
                    setInstance(createInstance(com.google.i18n.phonenumbers.d.f32855a));
                }
                phoneNumberUtil = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtil;
    }

    private j.b getMetadataForRegionOrCallingCode(int i, String str) {
        return REGION_CODE_FOR_NON_GEO_ENTITY.equals(str) ? getMetadataForNonGeographicalRegion(i) : getMetadataForRegion(str);
    }

    private d getNumberTypeHelper(String str, j.b bVar) {
        if (!isNumberMatchingDesc(str, bVar.f32881a)) {
            return d.UNKNOWN;
        }
        if (isNumberMatchingDesc(str, bVar.e)) {
            return d.PREMIUM_RATE;
        }
        if (isNumberMatchingDesc(str, bVar.f32884d)) {
            return d.TOLL_FREE;
        }
        if (isNumberMatchingDesc(str, bVar.f)) {
            return d.SHARED_COST;
        }
        if (isNumberMatchingDesc(str, bVar.h)) {
            return d.VOIP;
        }
        if (isNumberMatchingDesc(str, bVar.g)) {
            return d.PERSONAL_NUMBER;
        }
        if (isNumberMatchingDesc(str, bVar.i)) {
            return d.PAGER;
        }
        if (isNumberMatchingDesc(str, bVar.j)) {
            return d.UAN;
        }
        if (isNumberMatchingDesc(str, bVar.k)) {
            return d.VOICEMAIL;
        }
        if (!isNumberMatchingDesc(str, bVar.f32882b)) {
            return (bVar.x || !isNumberMatchingDesc(str, bVar.f32883c)) ? d.UNKNOWN : d.MOBILE;
        }
        if (!bVar.x && !isNumberMatchingDesc(str, bVar.f32883c)) {
            return d.FIXED_LINE;
        }
        return d.FIXED_LINE_OR_MOBILE;
    }

    private String getRegionCodeForNumberFromRegionList(k.a aVar, List<String> list) {
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        for (String str : list) {
            j.b metadataForRegion = getMetadataForRegion(str);
            if (metadataForRegion.A) {
                if (this.regexCache.a(metadataForRegion.B).matcher(nationalSignificantNumber).lookingAt()) {
                    return str;
                }
            } else if (getNumberTypeHelper(nationalSignificantNumber, metadataForRegion) != d.UNKNOWN) {
                return str;
            }
        }
        return null;
    }

    private Set<d> getSupportedTypesForMetadata(j.b bVar) {
        d[] values;
        TreeSet treeSet = new TreeSet();
        for (d dVar : d.values()) {
            if (!(dVar == d.FIXED_LINE_OR_MOBILE || dVar == d.UNKNOWN || !descHasData(getNumberDescByType(bVar, dVar)))) {
                treeSet.add(dVar);
            }
        }
        return Collections.unmodifiableSet(treeSet);
    }

    private boolean hasFormattingPatternForNumber(k.a aVar) {
        int i = aVar.f32890a;
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        if (metadataForRegionOrCallingCode == null) {
            return false;
        }
        return chooseFormattingPatternForNumber(metadataForRegionOrCallingCode.y, getNationalSignificantNumber(aVar)) != null;
    }

    private boolean hasValidCountryCallingCode(int i) {
        return this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i));
    }

    private boolean isNationalNumberSuffixOfTheOther(k.a aVar, k.a aVar2) {
        String valueOf = String.valueOf(aVar.f32891b);
        String valueOf2 = String.valueOf(aVar2.f32891b);
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

    private void maybeAppendFormattedExtension(k.a aVar, j.b bVar, c cVar, StringBuilder sb) {
        if (aVar.f32892c && aVar.f32893d.length() > 0) {
            if (cVar == c.RFC3966) {
                sb.append(RFC3966_EXTN_PREFIX);
                sb.append(aVar.f32893d);
            } else if (bVar.s) {
                sb.append(bVar.t);
                sb.append(aVar.f32893d);
            } else {
                sb.append(DEFAULT_EXTN_PREFIX);
                sb.append(aVar.f32893d);
            }
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    private void parseHelper(CharSequence charSequence, String str, boolean z, boolean z2, k.a aVar) throws NumberParseException {
        int i;
        j.b bVar;
        if (charSequence == null) {
            throw new NumberParseException(NumberParseException.a.NOT_A_NUMBER, "The phone number supplied was null.");
        } else if (charSequence.length() <= MAX_INPUT_STRING_LENGTH) {
            StringBuilder sb = new StringBuilder();
            String charSequence2 = charSequence.toString();
            buildNationalNumberForParsing(charSequence2, sb);
            if (!isViablePhoneNumber(sb)) {
                throw new NumberParseException(NumberParseException.a.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            } else if (!z2 || checkRegionForParsing(sb, str)) {
                if (z) {
                    aVar.b(charSequence2);
                }
                String maybeStripExtension = maybeStripExtension(sb);
                if (maybeStripExtension.length() > 0) {
                    aVar.a(maybeStripExtension);
                }
                j.b metadataForRegion = getMetadataForRegion(str);
                StringBuilder sb2 = new StringBuilder();
                try {
                    i = maybeExtractCountryCode(sb, metadataForRegion, sb2, z, aVar);
                } catch (NumberParseException e2) {
                    Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
                    if (e2.f32818a != NumberParseException.a.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                        throw new NumberParseException(e2.f32818a, e2.getMessage());
                    }
                    i = maybeExtractCountryCode(sb.substring(matcher.end()), metadataForRegion, sb2, z, aVar);
                    if (i == 0) {
                        throw new NumberParseException(NumberParseException.a.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                    }
                }
                if (i != 0) {
                    String regionCodeForCountryCode = getRegionCodeForCountryCode(i);
                    bVar = metadataForRegion;
                    if (!regionCodeForCountryCode.equals(str)) {
                        bVar = getMetadataForRegionOrCallingCode(i, regionCodeForCountryCode);
                    }
                } else {
                    sb2.append(normalize(sb));
                    if (str != null) {
                        aVar.a(metadataForRegion.m);
                        bVar = metadataForRegion;
                    } else {
                        bVar = metadataForRegion;
                        if (z) {
                            aVar.b();
                            bVar = metadataForRegion;
                        }
                    }
                }
                if (sb2.length() >= 2) {
                    StringBuilder sb3 = sb2;
                    if (bVar != null) {
                        StringBuilder sb4 = new StringBuilder();
                        StringBuilder sb5 = new StringBuilder(sb2);
                        maybeStripNationalPrefixAndCarrierCode(sb5, bVar, sb4);
                        e testNumberLength = testNumberLength(sb5, bVar);
                        sb3 = sb2;
                        if (testNumberLength != e.TOO_SHORT) {
                            sb3 = sb2;
                            if (testNumberLength != e.IS_POSSIBLE_LOCAL_ONLY) {
                                sb3 = sb2;
                                if (testNumberLength != e.INVALID_LENGTH) {
                                    if (z && sb4.length() > 0) {
                                        aVar.c(sb4.toString());
                                    }
                                    sb3 = sb5;
                                }
                            }
                        }
                    }
                    int length = sb3.length();
                    if (length < 2) {
                        throw new NumberParseException(NumberParseException.a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                    } else if (length <= 17) {
                        setItalianLeadingZerosForPhoneNumber(sb3, aVar);
                        aVar.a(Long.parseLong(sb3.toString()));
                    } else {
                        throw new NumberParseException(NumberParseException.a.TOO_LONG, "The string supplied is too long to be a phone number.");
                    }
                } else {
                    throw new NumberParseException(NumberParseException.a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                }
            } else {
                throw new NumberParseException(NumberParseException.a.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
            }
        } else {
            throw new NumberParseException(NumberParseException.a.TOO_LONG, "The string supplied was too long to parse.");
        }
    }

    private boolean parsePrefixAsIdd(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        int end = matcher.end();
        Matcher matcher2 = CAPTURING_DIGIT_PATTERN.matcher(sb.substring(end));
        if (matcher2.find() && normalizeDigitsOnly(matcher2.group(1)).equals("0")) {
            return false;
        }
        sb.delete(0, end);
        return true;
    }

    private void prefixNumberWithCountryCallingCode(int i, c cVar, StringBuilder sb) {
        int i2 = AnonymousClass2.f32825b[cVar.ordinal()];
        if (i2 == 1) {
            sb.insert(0, i).insert(0, '+');
        } else if (i2 == 2) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, '+');
        } else if (i2 == 3) {
            sb.insert(0, VerificationLanguage.REGION_PREFIX).insert(0, i).insert(0, '+').insert(0, RFC3966_PREFIX);
        }
    }

    private boolean rawInputContainsNationalPrefix(String str, String str2, String str3) {
        String normalizeDigitsOnly = normalizeDigitsOnly(str);
        if (!normalizeDigitsOnly.startsWith(str2)) {
            return false;
        }
        try {
            return isValidNumber(parse(normalizeDigitsOnly.substring(str2.length()), str3));
        } catch (NumberParseException e2) {
            return false;
        }
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

    static void setItalianLeadingZerosForPhoneNumber(CharSequence charSequence, k.a aVar) {
        if (charSequence.length() > 1 && charSequence.charAt(0) == '0') {
            aVar.a(true);
            int i = 1;
            while (i < charSequence.length() - 1 && charSequence.charAt(i) == '0') {
                i++;
            }
            if (i != 1) {
                aVar.b(i);
            }
        }
    }

    private e testNumberLength(CharSequence charSequence, j.b bVar) {
        return testNumberLength(charSequence, bVar, d.UNKNOWN);
    }

    private e testNumberLength(CharSequence charSequence, j.b bVar, d dVar) {
        List<Integer> list;
        List<Integer> list2;
        d dVar2 = dVar;
        while (true) {
            j.d numberDescByType = getNumberDescByType(bVar, dVar2);
            List<Integer> list3 = numberDescByType.f32888c.isEmpty() ? bVar.f32881a.f32888c : numberDescByType.f32888c;
            List<Integer> list4 = numberDescByType.f32889d;
            list = list4;
            list2 = list3;
            if (dVar2 != d.FIXED_LINE_OR_MOBILE) {
                break;
            } else if (!descHasPossibleNumberData(getNumberDescByType(bVar, d.FIXED_LINE))) {
                dVar2 = d.MOBILE;
            } else {
                j.d numberDescByType2 = getNumberDescByType(bVar, d.MOBILE);
                list = list4;
                list2 = list3;
                if (descHasPossibleNumberData(numberDescByType2)) {
                    list2 = new ArrayList<>(list3);
                    list2.addAll(numberDescByType2.a() == 0 ? bVar.f32881a.f32888c : numberDescByType2.f32888c);
                    Collections.sort(list2);
                    if (list4.isEmpty()) {
                        list = numberDescByType2.f32889d;
                    } else {
                        list = new ArrayList<>(list4);
                        list.addAll(numberDescByType2.f32889d);
                        Collections.sort(list);
                    }
                }
            }
        }
        if (list2.get(0).intValue() == -1) {
            return e.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (list.contains(Integer.valueOf(length))) {
            return e.IS_POSSIBLE_LOCAL_ONLY;
        }
        int intValue = list2.get(0).intValue();
        return intValue == length ? e.IS_POSSIBLE : intValue > length ? e.TOO_SHORT : list2.get(list2.size() - 1).intValue() < length ? e.TOO_LONG : list2.subList(1, list2.size()).contains(Integer.valueOf(length)) ? e.IS_POSSIBLE : e.INVALID_LENGTH;
    }

    public boolean canBeInternationallyDialled(k.a aVar) {
        j.b metadataForRegion = getMetadataForRegion(getRegionCodeForNumber(aVar));
        return metadataForRegion == null || !isNumberMatchingDesc(getNationalSignificantNumber(aVar), metadataForRegion.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j.a chooseFormattingPatternForNumber(List<j.a> list, String str) {
        for (j.a aVar : list) {
            int e2 = aVar.e();
            if (e2 == 0 || this.regexCache.a(aVar.a(e2 - 1)).matcher(str).lookingAt()) {
                if (this.regexCache.a(aVar.f32877a).matcher(str).matches()) {
                    return aVar;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    public Iterable<g> findNumbers(CharSequence charSequence, String str) {
        return findNumbers(charSequence, str, a.VALID, Long.MAX_VALUE);
    }

    public Iterable<g> findNumbers(final CharSequence charSequence, final String str, final a aVar, final long j) {
        return new Iterable<g>() { // from class: com.google.i18n.phonenumbers.PhoneNumberUtil.1
            @Override // java.lang.Iterable
            public final Iterator<g> iterator() {
                return new h(PhoneNumberUtil.this, charSequence, str, aVar, j);
            }
        };
    }

    public String format(k.a aVar, c cVar) {
        if (aVar.f32891b == 0 && aVar.g) {
            String str = aVar.h;
            if (str.length() > 0) {
                return str;
            }
        }
        StringBuilder sb = new StringBuilder(20);
        format(aVar, cVar, sb);
        return sb.toString();
    }

    public void format(k.a aVar, c cVar, StringBuilder sb) {
        sb.setLength(0);
        int i = aVar.f32890a;
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        if (cVar == c.E164) {
            sb.append(nationalSignificantNumber);
            prefixNumberWithCountryCallingCode(i, c.E164, sb);
        } else if (!hasValidCountryCallingCode(i)) {
            sb.append(nationalSignificantNumber);
        } else {
            j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
            sb.append(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, cVar));
            maybeAppendFormattedExtension(aVar, metadataForRegionOrCallingCode, cVar, sb);
            prefixNumberWithCountryCallingCode(i, cVar, sb);
        }
    }

    public String formatByPattern(k.a aVar, c cVar, List<j.a> list) {
        int i = aVar.f32890a;
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(20);
        j.a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(list, nationalSignificantNumber);
        if (chooseFormattingPatternForNumber == null) {
            sb.append(nationalSignificantNumber);
        } else {
            j.a.C0526a a2 = j.a.a();
            a2.a(chooseFormattingPatternForNumber);
            String str = chooseFormattingPatternForNumber.f32879c;
            if (str.length() > 0) {
                String str2 = metadataForRegionOrCallingCode.r;
                if (str2.length() > 0) {
                    a2.d(str.replace(NP_STRING, str2).replace(FG_STRING, "$1"));
                } else {
                    a2.g();
                }
            }
            sb.append(formatNsnUsingPattern(nationalSignificantNumber, a2, cVar));
        }
        maybeAppendFormattedExtension(aVar, metadataForRegionOrCallingCode, cVar, sb);
        prefixNumberWithCountryCallingCode(i, cVar, sb);
        return sb.toString();
    }

    public String formatInOriginalFormat(k.a aVar, String str) {
        String str2;
        if (aVar.g && !hasFormattingPatternForNumber(aVar)) {
            return aVar.h;
        }
        if (!aVar.i) {
            return format(aVar, c.NATIONAL);
        }
        int i = AnonymousClass2.f32824a[aVar.j.ordinal()];
        if (i == 1) {
            str2 = format(aVar, c.INTERNATIONAL);
        } else if (i == 2) {
            str2 = formatOutOfCountryCallingNumber(aVar, str);
        } else if (i != 3) {
            String regionCodeForCountryCode = getRegionCodeForCountryCode(aVar.f32890a);
            String nddPrefixForRegion = getNddPrefixForRegion(regionCodeForCountryCode, true);
            String format = format(aVar, c.NATIONAL);
            str2 = format;
            if (nddPrefixForRegion != null) {
                if (nddPrefixForRegion.length() == 0) {
                    str2 = format;
                } else if (rawInputContainsNationalPrefix(aVar.h, nddPrefixForRegion, regionCodeForCountryCode)) {
                    str2 = format;
                } else {
                    j.b metadataForRegion = getMetadataForRegion(regionCodeForCountryCode);
                    j.a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(metadataForRegion.y, getNationalSignificantNumber(aVar));
                    if (chooseFormattingPatternForNumber == null) {
                        str2 = format;
                    } else {
                        String str3 = chooseFormattingPatternForNumber.f32879c;
                        int indexOf = str3.indexOf("$1");
                        if (indexOf <= 0) {
                            str2 = format;
                        } else if (normalizeDigitsOnly(str3.substring(0, indexOf)).length() == 0) {
                            str2 = format;
                        } else {
                            j.a.C0526a a2 = j.a.a();
                            a2.a(chooseFormattingPatternForNumber);
                            a2.g();
                            List<j.a> arrayList = new ArrayList<>(1);
                            arrayList.add(a2);
                            str2 = formatByPattern(aVar, c.NATIONAL, arrayList);
                        }
                    }
                }
            }
        } else {
            str2 = format(aVar, c.INTERNATIONAL).substring(1);
        }
        String str4 = aVar.h;
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

    public String formatNationalNumberWithCarrierCode(k.a aVar, CharSequence charSequence) {
        int i = aVar.f32890a;
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(20);
        sb.append(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, c.NATIONAL, charSequence));
        maybeAppendFormattedExtension(aVar, metadataForRegionOrCallingCode, c.NATIONAL, sb);
        prefixNumberWithCountryCallingCode(i, c.NATIONAL, sb);
        return sb.toString();
    }

    public String formatNationalNumberWithPreferredCarrierCode(k.a aVar, CharSequence charSequence) {
        if (aVar.l.length() > 0) {
            charSequence = aVar.l;
        }
        return formatNationalNumberWithCarrierCode(aVar, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String formatNsnUsingPattern(String str, j.a aVar, c cVar) {
        return formatNsnUsingPattern(str, aVar, cVar, null);
    }

    public String formatNumberForMobileDialing(k.a aVar, String str, boolean z) {
        String str2;
        int i = aVar.f32890a;
        if (!hasValidCountryCallingCode(i)) {
            return aVar.g ? aVar.h : "";
        }
        k.a a2 = new k.a().a(aVar).a();
        String regionCodeForCountryCode = getRegionCodeForCountryCode(i);
        d numberType = getNumberType(a2);
        boolean z2 = false;
        boolean z3 = numberType != d.UNKNOWN;
        if (str.equals(regionCodeForCountryCode)) {
            if (numberType == d.FIXED_LINE || numberType == d.MOBILE || numberType == d.FIXED_LINE_OR_MOBILE) {
                z2 = true;
            }
            if (regionCodeForCountryCode.equals("CO") && numberType == d.FIXED_LINE) {
                str2 = formatNationalNumberWithCarrierCode(a2, COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX);
            } else if (regionCodeForCountryCode.equals("BR") && z2) {
                str2 = "";
                if (a2.l.length() > 0) {
                    str2 = formatNationalNumberWithPreferredCarrierCode(a2, "");
                }
            } else if (i == 1) {
                str2 = (!canBeInternationallyDialled(a2) || testNumberLength(getNationalSignificantNumber(a2), getMetadataForRegion(str)) == e.TOO_SHORT) ? format(a2, c.NATIONAL) : format(a2, c.INTERNATIONAL);
            } else {
                str2 = ((regionCodeForCountryCode.equals(REGION_CODE_FOR_NON_GEO_ENTITY) || ((regionCodeForCountryCode.equals("MX") || regionCodeForCountryCode.equals("CL") || regionCodeForCountryCode.equals("UZ")) && z2)) && canBeInternationallyDialled(a2)) ? format(a2, c.INTERNATIONAL) : format(a2, c.NATIONAL);
            }
        } else {
            str2 = "";
            if (z3) {
                str2 = "";
                if (canBeInternationallyDialled(a2)) {
                    return z ? format(a2, c.INTERNATIONAL) : format(a2, c.E164);
                }
            }
        }
        return z ? str2 : normalizeDiallableCharsOnly(str2);
    }

    public String formatOutOfCountryCallingNumber(k.a aVar, String str) {
        if (!isValidRegionCode(str)) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            logger2.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
            return format(aVar, c.INTERNATIONAL);
        }
        int i = aVar.f32890a;
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        if (!hasValidCountryCallingCode(i)) {
            return nationalSignificantNumber;
        }
        if (i == 1) {
            if (isNANPACountry(str)) {
                return i + StringUtils.SPACE + format(aVar, c.NATIONAL);
            }
        } else if (i == getCountryCodeForValidRegion(str)) {
            return format(aVar, c.NATIONAL);
        }
        j.b metadataForRegion = getMetadataForRegion(str);
        String str2 = metadataForRegion.n;
        if (!SINGLE_INTERNATIONAL_PREFIX.matcher(str2).matches()) {
            str2 = metadataForRegion.o ? metadataForRegion.p : "";
        }
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i));
        StringBuilder sb = new StringBuilder(formatNsn(nationalSignificantNumber, metadataForRegionOrCallingCode, c.INTERNATIONAL));
        maybeAppendFormattedExtension(aVar, metadataForRegionOrCallingCode, c.INTERNATIONAL, sb);
        if (str2.length() > 0) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, StringUtils.SPACE).insert(0, str2);
        } else {
            prefixNumberWithCountryCallingCode(i, c.INTERNATIONAL, sb);
        }
        return sb.toString();
    }

    public String formatOutOfCountryKeepingAlphaChars(k.a aVar, String str) {
        String str2;
        String str3 = aVar.h;
        if (str3.length() == 0) {
            return formatOutOfCountryCallingNumber(aVar, str);
        }
        int i = aVar.f32890a;
        if (!hasValidCountryCallingCode(i)) {
            return str3;
        }
        String normalizeHelper = normalizeHelper(str3, ALL_PLUS_NUMBER_GROUPING_SYMBOLS, true);
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        String str4 = normalizeHelper;
        if (nationalSignificantNumber.length() > 3) {
            int indexOf = normalizeHelper.indexOf(nationalSignificantNumber.substring(0, 3));
            str4 = normalizeHelper;
            if (indexOf != -1) {
                str4 = normalizeHelper.substring(indexOf);
            }
        }
        j.b metadataForRegion = getMetadataForRegion(str);
        if (i == 1) {
            if (isNANPACountry(str)) {
                return i + StringUtils.SPACE + str4;
            }
        } else if (metadataForRegion != null && i == getCountryCodeForValidRegion(str)) {
            j.a chooseFormattingPatternForNumber = chooseFormattingPatternForNumber(metadataForRegion.y, nationalSignificantNumber);
            if (chooseFormattingPatternForNumber == null) {
                return str4;
            }
            j.a.C0526a a2 = j.a.a();
            a2.a(chooseFormattingPatternForNumber);
            a2.a("(\\d+)(.*)");
            a2.b("$1$2");
            return formatNsnUsingPattern(str4, a2, c.NATIONAL);
        }
        if (metadataForRegion != null) {
            str2 = metadataForRegion.n;
            if (!SINGLE_INTERNATIONAL_PREFIX.matcher(str2).matches()) {
                str2 = metadataForRegion.p;
            }
        } else {
            str2 = "";
        }
        StringBuilder sb = new StringBuilder(str4);
        maybeAppendFormattedExtension(aVar, getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i)), c.INTERNATIONAL, sb);
        if (str2.length() > 0) {
            sb.insert(0, StringUtils.SPACE).insert(0, i).insert(0, StringUtils.SPACE).insert(0, str2);
        } else {
            if (!isValidRegionCode(str)) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                logger2.log(level, "Trying to format number from invalid region " + str + ". International formatting applied.");
            }
            prefixNumberWithCountryCallingCode(i, c.INTERNATIONAL, sb);
        }
        return sb.toString();
    }

    public com.google.i18n.phonenumbers.a getAsYouTypeFormatter(String str) {
        return new com.google.i18n.phonenumbers.a(str);
    }

    public int getCountryCodeForRegion(String str) {
        if (isValidRegionCode(str)) {
            return getCountryCodeForValidRegion(str);
        }
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

    public k.a getExampleNumber(String str) {
        return getExampleNumberForType(str, d.FIXED_LINE);
    }

    public k.a getExampleNumberForNonGeoEntity(int i) {
        j.b metadataForNonGeographicalRegion = getMetadataForNonGeographicalRegion(i);
        if (metadataForNonGeographicalRegion != null) {
            for (j.d dVar : Arrays.asList(metadataForNonGeographicalRegion.f32883c, metadataForNonGeographicalRegion.f32884d, metadataForNonGeographicalRegion.f, metadataForNonGeographicalRegion.h, metadataForNonGeographicalRegion.k, metadataForNonGeographicalRegion.j, metadataForNonGeographicalRegion.e)) {
                if (dVar != null) {
                    try {
                        if (dVar.e) {
                            return parse("+" + i + dVar.f, UNKNOWN_REGION);
                        }
                        continue;
                    } catch (NumberParseException e2) {
                        logger.log(Level.SEVERE, e2.toString());
                    }
                }
            }
            return null;
        }
        logger.log(Level.WARNING, "Invalid or unknown country calling code provided: ".concat(String.valueOf(i)));
        return null;
    }

    public k.a getExampleNumberForType(d dVar) {
        for (String str : getSupportedRegions()) {
            k.a exampleNumberForType = getExampleNumberForType(str, dVar);
            if (exampleNumberForType != null) {
                return exampleNumberForType;
            }
        }
        for (Integer num : getSupportedGlobalNetworkCallingCodes()) {
            int intValue = num.intValue();
            j.d numberDescByType = getNumberDescByType(getMetadataForNonGeographicalRegion(intValue), dVar);
            try {
            } catch (NumberParseException e2) {
                logger.log(Level.SEVERE, e2.toString());
            }
            if (numberDescByType.e) {
                return parse("+" + intValue + numberDescByType.f, UNKNOWN_REGION);
            }
            continue;
        }
        return null;
    }

    public k.a getExampleNumberForType(String str, d dVar) {
        if (!isValidRegionCode(str)) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return null;
        }
        j.d numberDescByType = getNumberDescByType(getMetadataForRegion(str), dVar);
        try {
            if (numberDescByType.e) {
                return parse(numberDescByType.f, str);
            }
            return null;
        } catch (NumberParseException e2) {
            logger.log(Level.SEVERE, e2.toString());
            return null;
        }
    }

    public k.a getInvalidExampleNumber(String str) {
        k.a parse;
        if (!isValidRegionCode(str)) {
            logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
            return null;
        }
        j.d numberDescByType = getNumberDescByType(getMetadataForRegion(str), d.FIXED_LINE);
        if (!numberDescByType.e) {
            return null;
        }
        String str2 = numberDescByType.f;
        for (int length = str2.length() - 1; length >= 2; length--) {
            try {
                parse = parse(str2.substring(0, length), str);
            } catch (NumberParseException e2) {
            }
            if (!isValidNumber(parse)) {
                return parse;
            }
        }
        return null;
    }

    public int getLengthOfGeographicalAreaCode(k.a aVar) {
        j.b metadataForRegion = getMetadataForRegion(getRegionCodeForNumber(aVar));
        if (metadataForRegion == null) {
            return 0;
        }
        if (!metadataForRegion.q && !aVar.e) {
            return 0;
        }
        d numberType = getNumberType(aVar);
        int i = aVar.f32890a;
        if ((numberType != d.MOBILE || !GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES.contains(Integer.valueOf(i))) && isNumberGeographical(numberType, i)) {
            return getLengthOfNationalDestinationCode(aVar);
        }
        return 0;
    }

    public int getLengthOfNationalDestinationCode(k.a aVar) {
        k.a aVar2;
        if (aVar.f32892c) {
            aVar2 = new k.a();
            aVar2.a(aVar);
            aVar2.a();
        } else {
            aVar2 = aVar;
        }
        String[] split = NON_DIGITS_PATTERN.split(format(aVar2, c.INTERNATIONAL));
        if (split.length <= 3) {
            return 0;
        }
        return (getNumberType(aVar) != d.MOBILE || getCountryMobileToken(aVar.f32890a).equals("")) ? split[2].length() : split[2].length() + split[3].length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j.b getMetadataForNonGeographicalRegion(int i) {
        if (!this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i))) {
            return null;
        }
        return this.metadataSource.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j.b getMetadataForRegion(String str) {
        if (!isValidRegionCode(str)) {
            return null;
        }
        return this.metadataSource.a(str);
    }

    public String getNationalSignificantNumber(k.a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar.e && aVar.f > 0) {
            char[] cArr = new char[aVar.f];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(aVar.f32891b);
        return sb.toString();
    }

    public String getNddPrefixForRegion(String str, boolean z) {
        j.b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion == null) {
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
            return null;
        }
        String str3 = metadataForRegion.r;
        if (str3.length() == 0) {
            return null;
        }
        String str4 = str3;
        if (z) {
            str4 = str3.replace("~", "");
        }
        return str4;
    }

    j.d getNumberDescByType(j.b bVar, d dVar) {
        switch (AnonymousClass2.f32826c[dVar.ordinal()]) {
            case 1:
                return bVar.e;
            case 2:
                return bVar.f32884d;
            case 3:
                return bVar.f32883c;
            case 4:
            case 5:
                return bVar.f32882b;
            case 6:
                return bVar.f;
            case 7:
                return bVar.h;
            case 8:
                return bVar.g;
            case 9:
                return bVar.i;
            case 10:
                return bVar.j;
            case 11:
                return bVar.k;
            default:
                return bVar.f32881a;
        }
    }

    public d getNumberType(k.a aVar) {
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(aVar.f32890a, getRegionCodeForNumber(aVar));
        return metadataForRegionOrCallingCode == null ? d.UNKNOWN : getNumberTypeHelper(getNationalSignificantNumber(aVar), metadataForRegionOrCallingCode);
    }

    public String getRegionCodeForCountryCode(int i) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        return list == null ? UNKNOWN_REGION : list.get(0);
    }

    public String getRegionCodeForNumber(k.a aVar) {
        int i = aVar.f32890a;
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        if (list != null) {
            return list.size() == 1 ? list.get(0) : getRegionCodeForNumberFromRegionList(aVar, list);
        }
        Logger logger2 = logger;
        Level level = Level.INFO;
        logger2.log(level, "Missing/invalid country_code (" + i + ")");
        return null;
    }

    public List<String> getRegionCodesForCountryCode(int i) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list2);
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

    public Set<d> getSupportedTypesForNonGeoEntity(int i) {
        j.b metadataForNonGeographicalRegion = getMetadataForNonGeographicalRegion(i);
        if (metadataForNonGeographicalRegion != null) {
            return getSupportedTypesForMetadata(metadataForNonGeographicalRegion);
        }
        logger.log(Level.WARNING, "Unknown country calling code for a non-geographical entity provided: ".concat(String.valueOf(i)));
        return Collections.unmodifiableSet(new TreeSet());
    }

    public Set<d> getSupportedTypesForRegion(String str) {
        if (isValidRegionCode(str)) {
            return getSupportedTypesForMetadata(getMetadataForRegion(str));
        }
        logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
        return Collections.unmodifiableSet(new TreeSet());
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
        j.b metadataForRegion = getMetadataForRegion(str);
        if (metadataForRegion != null) {
            return metadataForRegion.C;
        }
        logger.log(Level.WARNING, "Invalid or unknown region code provided: ".concat(String.valueOf(str)));
        return false;
    }

    public boolean isNANPACountry(String str) {
        return this.nanpaRegions.contains(str);
    }

    public boolean isNumberGeographical(d dVar, int i) {
        if (dVar == d.FIXED_LINE || dVar == d.FIXED_LINE_OR_MOBILE) {
            return true;
        }
        return GEO_MOBILE_COUNTRIES.contains(Integer.valueOf(i)) && dVar == d.MOBILE;
    }

    public boolean isNumberGeographical(k.a aVar) {
        return isNumberGeographical(getNumberType(aVar), aVar.f32890a);
    }

    public b isNumberMatch(k.a aVar, k.a aVar2) {
        k.a copyCoreFieldsOnly = copyCoreFieldsOnly(aVar);
        k.a copyCoreFieldsOnly2 = copyCoreFieldsOnly(aVar2);
        if (copyCoreFieldsOnly.f32892c && copyCoreFieldsOnly2.f32892c && !copyCoreFieldsOnly.f32893d.equals(copyCoreFieldsOnly2.f32893d)) {
            return b.NO_MATCH;
        }
        int i = copyCoreFieldsOnly.f32890a;
        int i2 = copyCoreFieldsOnly2.f32890a;
        if (i != 0 && i2 != 0) {
            return copyCoreFieldsOnly.b(copyCoreFieldsOnly2) ? b.EXACT_MATCH : (i != i2 || !isNationalNumberSuffixOfTheOther(copyCoreFieldsOnly, copyCoreFieldsOnly2)) ? b.NO_MATCH : b.SHORT_NSN_MATCH;
        }
        copyCoreFieldsOnly.a(i2);
        return copyCoreFieldsOnly.b(copyCoreFieldsOnly2) ? b.NSN_MATCH : isNationalNumberSuffixOfTheOther(copyCoreFieldsOnly, copyCoreFieldsOnly2) ? b.SHORT_NSN_MATCH : b.NO_MATCH;
    }

    public b isNumberMatch(k.a aVar, CharSequence charSequence) {
        try {
            return isNumberMatch(aVar, parse(charSequence, UNKNOWN_REGION));
        } catch (NumberParseException e2) {
            if (e2.f32818a == NumberParseException.a.INVALID_COUNTRY_CODE) {
                String regionCodeForCountryCode = getRegionCodeForCountryCode(aVar.f32890a);
                try {
                    if (!regionCodeForCountryCode.equals(UNKNOWN_REGION)) {
                        b isNumberMatch = isNumberMatch(aVar, parse(charSequence, regionCodeForCountryCode));
                        b bVar = isNumberMatch;
                        if (isNumberMatch == b.EXACT_MATCH) {
                            bVar = b.NSN_MATCH;
                        }
                        return bVar;
                    }
                    k.a aVar2 = new k.a();
                    parseHelper(charSequence, null, false, false, aVar2);
                    return isNumberMatch(aVar, aVar2);
                } catch (NumberParseException e3) {
                    return b.NOT_A_NUMBER;
                }
            }
            return b.NOT_A_NUMBER;
        }
    }

    public b isNumberMatch(CharSequence charSequence, CharSequence charSequence2) {
        try {
            return isNumberMatch(parse(charSequence, UNKNOWN_REGION), charSequence2);
        } catch (NumberParseException e2) {
            if (e2.f32818a == NumberParseException.a.INVALID_COUNTRY_CODE) {
                try {
                    return isNumberMatch(parse(charSequence2, UNKNOWN_REGION), charSequence);
                } catch (NumberParseException e3) {
                    if (e3.f32818a == NumberParseException.a.INVALID_COUNTRY_CODE) {
                        try {
                            k.a aVar = new k.a();
                            k.a aVar2 = new k.a();
                            parseHelper(charSequence, null, false, false, aVar);
                            parseHelper(charSequence2, null, false, false, aVar2);
                            return isNumberMatch(aVar, aVar2);
                        } catch (NumberParseException e4) {
                            return b.NOT_A_NUMBER;
                        }
                    }
                    return b.NOT_A_NUMBER;
                }
            }
            return b.NOT_A_NUMBER;
        }
    }

    boolean isNumberMatchingDesc(String str, j.d dVar) {
        int length = str.length();
        List<Integer> list = dVar.f32888c;
        if (list.size() <= 0 || list.contains(Integer.valueOf(length))) {
            return this.matcherApi.a(str, dVar);
        }
        return false;
    }

    public boolean isPossibleNumber(k.a aVar) {
        e isPossibleNumberWithReason = isPossibleNumberWithReason(aVar);
        return isPossibleNumberWithReason == e.IS_POSSIBLE || isPossibleNumberWithReason == e.IS_POSSIBLE_LOCAL_ONLY;
    }

    public boolean isPossibleNumber(CharSequence charSequence, String str) {
        try {
            return isPossibleNumber(parse(charSequence, str));
        } catch (NumberParseException e2) {
            return false;
        }
    }

    public boolean isPossibleNumberForType(k.a aVar, d dVar) {
        e isPossibleNumberForTypeWithReason = isPossibleNumberForTypeWithReason(aVar, dVar);
        return isPossibleNumberForTypeWithReason == e.IS_POSSIBLE || isPossibleNumberForTypeWithReason == e.IS_POSSIBLE_LOCAL_ONLY;
    }

    public e isPossibleNumberForTypeWithReason(k.a aVar, d dVar) {
        String nationalSignificantNumber = getNationalSignificantNumber(aVar);
        int i = aVar.f32890a;
        return !hasValidCountryCallingCode(i) ? e.INVALID_COUNTRY_CODE : testNumberLength(nationalSignificantNumber, getMetadataForRegionOrCallingCode(i, getRegionCodeForCountryCode(i)), dVar);
    }

    public e isPossibleNumberWithReason(k.a aVar) {
        return isPossibleNumberForTypeWithReason(aVar, d.UNKNOWN);
    }

    public boolean isValidNumber(k.a aVar) {
        return isValidNumberForRegion(aVar, getRegionCodeForNumber(aVar));
    }

    public boolean isValidNumberForRegion(k.a aVar, String str) {
        int i = aVar.f32890a;
        j.b metadataForRegionOrCallingCode = getMetadataForRegionOrCallingCode(i, str);
        if (metadataForRegionOrCallingCode != null) {
            return (REGION_CODE_FOR_NON_GEO_ENTITY.equals(str) || i == getCountryCodeForValidRegion(str)) && getNumberTypeHelper(getNationalSignificantNumber(aVar), metadataForRegionOrCallingCode) != d.UNKNOWN;
        }
        return false;
    }

    int maybeExtractCountryCode(CharSequence charSequence, j.b bVar, StringBuilder sb, boolean z, k.a aVar) throws NumberParseException {
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        k.a.EnumC0527a maybeStripInternationalPrefixAndNormalize = maybeStripInternationalPrefixAndNormalize(sb2, bVar != null ? bVar.n : "NonMatch");
        if (z) {
            aVar.a(maybeStripInternationalPrefixAndNormalize);
        }
        if (maybeStripInternationalPrefixAndNormalize == k.a.EnumC0527a.FROM_DEFAULT_COUNTRY) {
            if (bVar != null) {
                int i = bVar.m;
                String valueOf = String.valueOf(i);
                String sb3 = sb2.toString();
                if (sb3.startsWith(valueOf)) {
                    StringBuilder sb4 = new StringBuilder(sb3.substring(valueOf.length()));
                    j.d dVar = bVar.f32881a;
                    maybeStripNationalPrefixAndCarrierCode(sb4, bVar, null);
                    if ((!this.matcherApi.a(sb2, dVar) && this.matcherApi.a(sb4, dVar)) || testNumberLength(sb2, bVar) == e.TOO_LONG) {
                        sb.append((CharSequence) sb4);
                        if (z) {
                            aVar.a(k.a.EnumC0527a.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                        }
                        aVar.a(i);
                        return i;
                    }
                }
            }
            aVar.a(0);
            return 0;
        } else if (sb2.length() > 2) {
            int extractCountryCode = extractCountryCode(sb2, sb);
            if (extractCountryCode != 0) {
                aVar.a(extractCountryCode);
                return extractCountryCode;
            }
            throw new NumberParseException(NumberParseException.a.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
        } else {
            throw new NumberParseException(NumberParseException.a.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
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

    k.a.EnumC0527a maybeStripInternationalPrefixAndNormalize(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return k.a.EnumC0527a.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            normalize(sb);
            return k.a.EnumC0527a.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern a2 = this.regexCache.a(str);
        normalize(sb);
        return parsePrefixAsIdd(a2, sb) ? k.a.EnumC0527a.FROM_NUMBER_WITH_IDD : k.a.EnumC0527a.FROM_DEFAULT_COUNTRY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean maybeStripNationalPrefixAndCarrierCode(StringBuilder sb, j.b bVar, StringBuilder sb2) {
        int length = sb.length();
        String str = bVar.v;
        if (length == 0 || str.length() == 0) {
            return false;
        }
        Matcher matcher = this.regexCache.a(str).matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        j.d dVar = bVar.f32881a;
        boolean a2 = this.matcherApi.a(sb, dVar);
        int groupCount = matcher.groupCount();
        String str2 = bVar.w;
        if (str2 != null && str2.length() != 0 && matcher.group(groupCount) != null) {
            StringBuilder sb3 = new StringBuilder(sb);
            sb3.replace(0, length, matcher.replaceFirst(str2));
            if (a2 && !this.matcherApi.a(sb3.toString(), dVar)) {
                return false;
            }
            if (sb2 != null && groupCount > 1) {
                sb2.append(matcher.group(1));
            }
            sb.replace(0, sb.length(), sb3.toString());
            return true;
        } else if (a2 && !this.matcherApi.a(sb.substring(matcher.end()), dVar)) {
            return false;
        } else {
            if (!(sb2 == null || groupCount <= 0 || matcher.group(groupCount) == null)) {
                sb2.append(matcher.group(1));
            }
            sb.delete(0, matcher.end());
            return true;
        }
    }

    public k.a parse(CharSequence charSequence, String str) throws NumberParseException {
        k.a aVar = new k.a();
        parse(charSequence, str, aVar);
        return aVar;
    }

    public void parse(CharSequence charSequence, String str, k.a aVar) throws NumberParseException {
        parseHelper(charSequence, str, false, true, aVar);
    }

    public k.a parseAndKeepRawInput(CharSequence charSequence, String str) throws NumberParseException {
        k.a aVar = new k.a();
        parseAndKeepRawInput(charSequence, str, aVar);
        return aVar;
    }

    public void parseAndKeepRawInput(CharSequence charSequence, String str, k.a aVar) throws NumberParseException {
        parseHelper(charSequence, str, true, true, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.i18n.phonenumbers.k$a] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.i18n.phonenumbers.PhoneNumberUtil] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.i18n.phonenumbers.k$a] */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean truncateTooLongNumber(com.google.i18n.phonenumbers.k.a r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            boolean r0 = r0.isValidNumber(r1)
            if (r0 == 0) goto L_0x000a
            r0 = 1
            return r0
        L_0x000a:
            com.google.i18n.phonenumbers.k$a r0 = new com.google.i18n.phonenumbers.k$a
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r6
            com.google.i18n.phonenumbers.k$a r0 = r0.a(r1)
            r0 = r6
            long r0 = r0.f32891b
            r8 = r0
        L_0x001d:
            r0 = r8
            r1 = 10
            long r0 = r0 / r1
            r10 = r0
            r0 = r7
            r1 = r10
            com.google.i18n.phonenumbers.k$a r0 = r0.a(r1)
            r0 = r5
            r1 = r7
            com.google.i18n.phonenumbers.PhoneNumberUtil$e r0 = r0.isPossibleNumberWithReason(r1)
            com.google.i18n.phonenumbers.PhoneNumberUtil$e r1 = com.google.i18n.phonenumbers.PhoneNumberUtil.e.TOO_SHORT
            if (r0 == r1) goto L_0x0054
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0040
            goto L_0x0054
        L_0x0040:
            r0 = r10
            r8 = r0
            r0 = r5
            r1 = r7
            boolean r0 = r0.isValidNumber(r1)
            if (r0 == 0) goto L_0x001d
            r0 = r6
            r1 = r10
            com.google.i18n.phonenumbers.k$a r0 = r0.a(r1)
            r0 = 1
            return r0
        L_0x0054:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.PhoneNumberUtil.truncateTooLongNumber(com.google.i18n.phonenumbers.k$a):boolean");
    }
}
