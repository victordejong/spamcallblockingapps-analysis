package com.zendesk.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/StringUtils.class */
public class StringUtils {
    public static final String EMPTY_STRING = "";
    private static final String ISO_8601_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static Map<Character, String> JS_ESCAPE_LOOKUP_MAP = new HashMap();
    public static final String LINE_SEPARATOR = System.getProperty("line.separator");

    static {
        JS_ESCAPE_LOOKUP_MAP.put('\'', "\\'");
        JS_ESCAPE_LOOKUP_MAP.put('\"', "\\\"");
        JS_ESCAPE_LOOKUP_MAP.put('\\', "\\\\");
        JS_ESCAPE_LOOKUP_MAP.put('/', "\\/");
        JS_ESCAPE_LOOKUP_MAP.put('\b', "\\b");
        JS_ESCAPE_LOOKUP_MAP.put('\n', "\\n");
        JS_ESCAPE_LOOKUP_MAP.put('\t', "\\t");
        JS_ESCAPE_LOOKUP_MAP.put('\f', "\\f");
        JS_ESCAPE_LOOKUP_MAP.put('\r', "\\r");
    }

    private StringUtils() {
    }

    public static String capitalize(String str) {
        if (hasLength(str)) {
            if (Character.isUpperCase(str.charAt(0))) {
                return str;
            }
            StringBuilder sb = new StringBuilder(str.length());
            sb.append(Character.toTitleCase(str.charAt(0)));
            sb.append(str.substring(1));
            return sb.toString();
        } else if (str != null) {
            return str;
        } else {
            return null;
        }
    }

    public static String ensureEmpty(String str) {
        return hasLength(str) ? str : "";
    }

    public static String escapeEcmaScript(String str) {
        if (isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str.length() * 2);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (JS_ESCAPE_LOOKUP_MAP.containsKey(Character.valueOf(charAt))) {
                sb.append(JS_ESCAPE_LOOKUP_MAP.get(Character.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static List<String> fromCsv(String str) {
        if (!hasLength(str)) {
            return CollectionUtils.unmodifiableList(new ArrayList(0));
        }
        String[] split = str.split(",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (hasLength(str2)) {
                arrayList.add(str2);
            }
        }
        return CollectionUtils.unmodifiableList(arrayList);
    }

    public static boolean hasLength(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean hasLengthMany(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str : strArr) {
            if (isEmpty(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(String str) {
        return !hasLength(str);
    }

    public static boolean isNumeric(String str) {
        if (isEmpty(str)) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean startsWithIdeographic(String str) {
        if (hasLength(str)) {
            return Character.isIdeographic(str.codePointAt(0));
        }
        return false;
    }

    public static String toCsvString(List<String> list) {
        String str;
        if (list != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                if (hasLength(list.get(i))) {
                    sb.append(list.get(i));
                    if (i < list.size() - 1) {
                        sb.append(",");
                    }
                }
            }
            str = sb.toString();
        } else {
            str = null;
        }
        return str;
    }

    public static String toCsvString(long... jArr) {
        if (jArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return toCsvStringNumber(arrayList);
    }

    public static String toCsvString(String... strArr) {
        return toCsvString(strArr == null ? null : Arrays.asList(strArr));
    }

    public static String toCsvStringNumber(List<? extends Number> list) {
        ArrayList arrayList;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<? extends Number> it = list.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                Number number = (Number) it.next();
                if (number != null) {
                    arrayList2.add(number.toString());
                }
            }
        } else {
            arrayList = null;
        }
        return toCsvString(arrayList);
    }

    public static String toCsvStringNumber(Number... numberArr) {
        return toCsvStringNumber(numberArr == null ? null : Arrays.asList(numberArr));
    }

    public static String toDateInIsoFormat(Date date) {
        return date != null ? new SimpleDateFormat(ISO_8601_DATE_FORMAT).format(date) : "";
    }
}
