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

    /* renamed from: a */
    private static Map<String, Pattern> f19151a = new HashMap();

    /* renamed from: b */
    private static final String[] f19152b;

    /* renamed from: c */
    private static String f19153c;

    static {
        String[] strArr = {"gmbh", "mbh", "ltd", "inc", "gbr"};
        f19152b = strArr;
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", str));
            sb.append("|");
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", str.toUpperCase()));
            sb.append("|");
            sb.append(String.format("(\\s?\\b%s\\b\\s?)", StringUtils.m26049a(str, ' ')));
            sb.append("|");
        }
        sb.deleteCharAt(sb.length() - 1);
        f19153c = sb.toString();
    }

    /* renamed from: a */
    public static String m31911a(CharSequence charSequence) {
        return m31910a("^0+").matcher(charSequence).replaceAll("");
    }

    /* renamed from: a */
    public static List<String> m31909a(String str, String str2) {
        String m31881t = m31881t(str);
        String format = StringUtils.m26045b((CharSequence) str2) ? String.format("\\x{%04x}", Integer.valueOf(str2.charAt(0))) : null;
        String str3 = "[\\p{L}\\p{N}g]*\\d[\\p{L}\\p{N}.g]*";
        if (format != null) {
            str3 = "[\\p{L}\\p{N}g]*\\d[\\p{L}\\p{N}.g]*".replace("g", format);
        }
        ArrayList arrayList = new ArrayList();
        if (StringUtils.m26045b((CharSequence) m31881t)) {
            Matcher matcher = m31910a(str3).matcher(m31881t);
            while (matcher.find()) {
                String group = matcher.group(0);
                String str4 = group;
                if (StringUtils.m26030e(group, ".")) {
                    str4 = StringUtils.m26054a(group, 1, group.length());
                }
                String str5 = str4;
                if (StringUtils.m26033d(str4, ".")) {
                    str5 = StringUtils.m26054a(str4, 0, str4.length() - 1);
                }
                if (!StringUtils.m26045b((CharSequence) str2) || !StringUtils.m26048a(str5, new String[]{str2, "."})) {
                    if (!Phone.m26093b(str5).isValidForSearch() && str5.length() >= 4) {
                        int indexOf = m31881t.indexOf(str5) - 1;
                        int indexOf2 = m31881t.indexOf(str5) + str5.length();
                        if (!((indexOf >= 0 && (m31881t.charAt(indexOf) == '/' || m31881t.charAt(indexOf) == '\\')) || (indexOf2 < m31881t.length() && (m31881t.charAt(indexOf2) == '/' || m31881t.charAt(indexOf2) == '\\')))) {
                            arrayList.add(str5);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Pattern m31910a(String str) {
        Pattern pattern = f19151a.get(str);
        Pattern pattern2 = pattern;
        if (pattern == null) {
            pattern2 = Pattern.compile(str);
            f19151a.put(str, pattern2);
        }
        return pattern2;
    }

    /* renamed from: b */
    public static String m31908b(CharSequence charSequence) {
        return m31910a("^0").matcher(charSequence).replaceAll("");
    }

    /* renamed from: b */
    public static String m31907b(String str) {
        int indexOf;
        if (!StringUtils.m26059a((CharSequence) str) && (indexOf = str.indexOf("://")) >= 0) {
            String substring = str.substring(indexOf + 3);
            int indexOf2 = substring.indexOf("www.");
            return indexOf2 < 0 ? substring : substring.substring(indexOf2 + 4);
        }
        return str;
    }

    /* renamed from: b */
    public static String m31906b(String str, String str2) {
        return str != null ? m31910a("\\P{L}").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: c */
    public static String m31904c(String str, String str2) {
        return str != null ? m31910a("[ ]{2,}").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: c */
    public static boolean m31905c(String str) {
        return StringUtils.m26045b((CharSequence) str) ? m31910a("\\p{L}\\p{M}*").matcher(str).find() : false;
    }

    /* renamed from: d */
    public static int m31903d(String str) {
        if (str == null) {
            return 0;
        }
        return str.length() - (StringUtils.m26045b((CharSequence) str) ? m31910a("\\p{L}\\p{M}*").matcher(str).replaceAll("") : str).length();
    }

    /* renamed from: d */
    public static String m31902d(String str, String str2) {
        return str != null ? m31910a("[-.,'\"()_@]").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: e */
    public static int m31901e(String str) {
        String m31895h = m31895h(str);
        if (m31895h == null) {
            return 0;
        }
        return m31895h.length();
    }

    /* renamed from: e */
    public static String m31900e(String str, String str2) {
        return str != null ? m31910a("[^+0-9(),;.\\s\\-]+").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: f */
    public static String m31899f(String str) {
        return StringUtils.m26045b((CharSequence) str) ? m31910a(f19153c).matcher(str).replaceAll(org.apache.commons.lang3.StringUtils.SPACE).trim() : "";
    }

    /* renamed from: f */
    public static String m31898f(String str, String str2) {
        return str != null ? m31910a("^[.\\-,;)(]+").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: g */
    public static String m31897g(String str) {
        return str != null ? m31910a("[^+0-9]([^0-9])*").matcher(str).replaceAll("") : null;
    }

    /* renamed from: g */
    public static String m31896g(String str, String str2) {
        return str != null ? m31910a("[\\s+|.][a-zA-Z]$|^[a-zA-Z][\\s+|.]|[\\s+][a-zA-Z][\\s+|.]").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: h */
    public static String m31895h(String str) {
        return str != null ? m31910a("[^0-9]").matcher(str).replaceAll("") : null;
    }

    /* renamed from: h */
    public static String m31894h(String str, String str2) {
        return str != null ? m31910a("[0-9]").matcher(str).replaceAll(str2) : null;
    }

    /* renamed from: i */
    public static String m31893i(String str) {
        return m31902d(str, "");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        if (r9 <= 1) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f A[RETURN] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m31892i(java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.common.util.RegexUtils.m31892i(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: j */
    public static boolean m31891j(String str) {
        return StringUtils.m26045b((CharSequence) str) ? m31910a("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$").matcher(str).find() : false;
    }

    /* renamed from: k */
    public static String m31890k(String str) {
        if (StringUtils.m26059a((CharSequence) str) || str.length() > 2048) {
            return null;
        }
        Matcher matcher = m31910a("[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*(\\.[A-Za-z]{2,})").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group();
    }

    /* renamed from: l */
    public static String m31889l(String str) {
        return m31910a("\\p{InCombiningDiacriticalMarks}+").matcher(Normalizer.normalize(str.toLowerCase(), Normalizer.Form.NFD)).replaceAll("");
    }

    /* renamed from: m */
    public static String m31888m(String str) {
        return str != null ? m31910a("\\p{C}").matcher(str).replaceAll("") : null;
    }

    /* renamed from: n */
    public static String m31887n(String str) {
        return m31910a("\\.|_").matcher(str).replaceAll(org.apache.commons.lang3.StringUtils.SPACE);
    }

    /* renamed from: o */
    public static boolean m31886o(String str) {
        return str.matches(".{1,}\\+\\d{4}");
    }

    /* renamed from: p */
    public static boolean m31885p(String str) {
        return StringUtils.m26045b((CharSequence) str) ? m31910a("\\p{InEmoticons}").matcher(str).find() : false;
    }

    /* renamed from: q */
    public static boolean m31884q(String str) {
        return str != null ? m31910a("[\\+]?[0-9.-;N()\\*,#]+").matcher(str).matches() : false;
    }

    /* renamed from: r */
    public static boolean m31883r(String str) {
        return StringUtils.m26045b((CharSequence) str) ? m31910a(".*[\\p{L}].*[\\p{L}].*").matcher(str).matches() : false;
    }

    /* renamed from: s */
    public static String m31882s(String str) {
        return str != null ? m31910a("[^A-Za-z0-9_]").matcher(str).replaceAll("_") : null;
    }

    /* renamed from: t */
    private static String m31881t(String str) {
        String str2;
        String str3 = str;
        try {
            Matcher matcher = Pattern.compile("((https?|ftp|gopher|telnet|file|Unsure|http):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?+-=\\\\.&]*)", 2).matcher(str);
            int i = 0;
            while (true) {
                str2 = str;
                str3 = str;
                if (!matcher.find()) {
                    break;
                }
                String str4 = str;
                str = StringUtils.m26036c(str, matcher.group(i), "");
                i++;
            }
        } catch (Exception e) {
            str2 = str3;
        }
        return str2;
    }
}
