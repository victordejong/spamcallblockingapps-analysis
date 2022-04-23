package com.callapp.common.util;

import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/RegexUtils.class */
public class RegexUtils {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Pattern> f10394a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f10395b;

    /* renamed from: c  reason: collision with root package name */
    private static String f10396c;

    static {
        String[] strArr = {"gmbh", "mbh", "ltd", "inc", "gbr"};
        f10395b = strArr;
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", str));
            sb.append("|");
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", str.toUpperCase()));
            sb.append("|");
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", StringUtils.a(str, ' ')));
            sb.append("|");
        }
        sb.deleteCharAt(sb.length() - 1);
        f10396c = sb.toString();
    }

    public static String a(CharSequence charSequence) {
        return a("^0+").matcher(charSequence).replaceAll("");
    }

    public static List<String> a(String str, String str2) {
        String t = t(str);
        String format = StringUtils.b((CharSequence) str2) ? String.format("\\x{%04x}", Integer.valueOf(str2.charAt(0))) : null;
        String str3 = "[\\p{L}\\p{N}g]*\\d[\\p{L}\\p{N}.g]*";
        if (format != null) {
            str3 = "[\\p{L}\\p{N}g]*\\d[\\p{L}\\p{N}.g]*".replace("g", format);
        }
        ArrayList arrayList = new ArrayList();
        if (StringUtils.b((CharSequence) t)) {
            Matcher matcher = a(str3).matcher(t);
            while (matcher.find()) {
                String group = matcher.group(0);
                String str4 = group;
                if (StringUtils.e(group, ".")) {
                    str4 = StringUtils.a(group, 1, group.length());
                }
                String str5 = str4;
                if (StringUtils.d(str4, ".")) {
                    str5 = StringUtils.a(str4, 0, str4.length() - 1);
                }
                if (!StringUtils.b((CharSequence) str2) || !StringUtils.a(str5, new String[]{str2, "."})) {
                    if (!Phone.b(str5).isValidForSearch() && str5.length() >= 4) {
                        int indexOf = t.indexOf(str5) - 1;
                        int indexOf2 = t.indexOf(str5) + str5.length();
                        if (!((indexOf >= 0 && (t.charAt(indexOf) == '/' || t.charAt(indexOf) == '\\')) || (indexOf2 < t.length() && (t.charAt(indexOf2) == '/' || t.charAt(indexOf2) == '\\')))) {
                            arrayList.add(str5);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static Pattern a(String str) {
        Pattern pattern = f10394a.get(str);
        Pattern pattern2 = pattern;
        if (pattern == null) {
            pattern2 = Pattern.compile(str);
            f10394a.put(str, pattern2);
        }
        return pattern2;
    }

    public static String b(CharSequence charSequence) {
        return a("^0").matcher(charSequence).replaceAll("");
    }

    public static String b(String str) {
        int indexOf;
        if (!StringUtils.a((CharSequence) str) && (indexOf = str.indexOf("://")) >= 0) {
            String substring = str.substring(indexOf + 3);
            int indexOf2 = substring.indexOf("www.");
            return indexOf2 < 0 ? substring : substring.substring(indexOf2 + 4);
        }
        return str;
    }

    public static String b(String str, String str2) {
        return str != null ? a("\\P{L}").matcher(str).replaceAll(str2) : null;
    }

    public static String c(String str, String str2) {
        return str != null ? a("[ ]{2,}").matcher(str).replaceAll(str2) : null;
    }

    public static boolean c(String str) {
        return StringUtils.b((CharSequence) str) ? a("\\p{L}\\p{M}*").matcher(str).find() : false;
    }

    public static int d(String str) {
        if (str == null) {
            return 0;
        }
        return str.length() - (StringUtils.b((CharSequence) str) ? a("\\p{L}\\p{M}*").matcher(str).replaceAll("") : str).length();
    }

    public static String d(String str, String str2) {
        return str != null ? a("[-.,'\"()_@]").matcher(str).replaceAll(str2) : null;
    }

    public static int e(String str) {
        String h = h(str);
        if (h == null) {
            return 0;
        }
        return h.length();
    }

    public static String e(String str, String str2) {
        return str != null ? a("[^+0-9(),;.\\s\\-]+").matcher(str).replaceAll(str2) : null;
    }

    public static String f(String str) {
        return StringUtils.b((CharSequence) str) ? a(f10396c).matcher(str).replaceAll(org.apache.commons.lang3.StringUtils.SPACE).trim() : "";
    }

    public static String f(String str, String str2) {
        return str != null ? a("^[.\\-,;)(]+").matcher(str).replaceAll(str2) : null;
    }

    public static String g(String str) {
        return str != null ? a("[^+0-9]([^0-9])*").matcher(str).replaceAll("") : null;
    }

    public static String g(String str, String str2) {
        return str != null ? a("[\\s+|.][a-zA-Z]$|^[a-zA-Z][\\s+|.]|[\\s+][a-zA-Z][\\s+|.]").matcher(str).replaceAll(str2) : null;
    }

    public static String h(String str) {
        return str != null ? a("[^0-9]").matcher(str).replaceAll("") : null;
    }

    public static String h(String str, String str2) {
        return str != null ? a("[0-9]").matcher(str).replaceAll(str2) : null;
    }

    public static String i(String str) {
        return d(str, "");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r9 <= 1) goto L_0x0139;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean i(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.common.util.RegexUtils.i(java.lang.String, java.lang.String):boolean");
    }

    public static boolean j(String str) {
        return StringUtils.b((CharSequence) str) ? a("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$").matcher(str).find() : false;
    }

    public static String k(String str) {
        if (StringUtils.a((CharSequence) str) || str.length() > 2048) {
            return null;
        }
        Matcher matcher = a("[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})").matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }

    public static String l(String str) {
        return a("\\p{InCombiningDiacriticalMarks}+").matcher(Normalizer.normalize(str.toLowerCase(), Normalizer.Form.NFD)).replaceAll("");
    }

    public static String m(String str) {
        return str != null ? a("\\p{C}").matcher(str).replaceAll("") : null;
    }

    public static String n(String str) {
        return a("\\.|_").matcher(str).replaceAll(org.apache.commons.lang3.StringUtils.SPACE);
    }

    public static boolean o(String str) {
        return str.matches(".{1,}\\+\\d{4}");
    }

    public static boolean p(String str) {
        return StringUtils.b((CharSequence) str) ? a("\\p{InEmoticons}").matcher(str).find() : false;
    }

    public static boolean q(String str) {
        return str != null ? a("[\\+]?[0-9.-;N()\\*,#]+").matcher(str).matches() : false;
    }

    public static boolean r(String str) {
        return StringUtils.b((CharSequence) str) ? a(".*[\\p{L}].*[\\p{L}].*").matcher(str).matches() : false;
    }

    public static String s(String str) {
        return str != null ? a("[^A-Za-z0-9_]").matcher(str).replaceAll("_") : null;
    }

    private static String t(String str) {
        String str2 = str;
        try {
            Matcher matcher = Pattern.compile("((https?|ftp|gopher|telnet|file|Unsure|http):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?+-=\\\\.&]*)", 2).matcher(str);
            int i = 0;
            while (true) {
                str2 = str;
                str2 = str;
                if (!matcher.find()) {
                    break;
                }
                str = StringUtils.c(str, matcher.group(i), "");
                i++;
            }
        } catch (Exception e) {
        }
        return str2;
    }
}
