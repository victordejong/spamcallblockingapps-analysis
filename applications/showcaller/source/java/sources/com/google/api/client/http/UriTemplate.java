package com.google.api.client.http;

import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.p290f0.C8701a;
import com.google.common.base.C8758l;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/UriTemplate.class */
public class UriTemplate {

    /* renamed from: a */
    private static final Map<Character, CompositeOutput> f38289a = new HashMap();

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/UriTemplate$CompositeOutput.class */
    public enum CompositeOutput {
        PLUS('+', "", ",", false, true),
        HASH('#', "#", ",", false, true),
        DOT('.', ".", ".", false, false),
        FORWARD_SLASH('/', "/", "/", false, false),
        SEMI_COLON(';', ";", ";", true, false),
        QUERY('?', "?", "&", true, false),
        AMP('&', "&", "&", true, false),
        SIMPLE(null, "", ",", false, false);
        
        private final String explodeJoiner;
        private final String outputPrefix;
        private final Character propertyPrefix;
        private final boolean requiresVarAssignment;
        private final boolean reservedExpansion;

        CompositeOutput(Character ch, String str, String str2, boolean z, boolean z2) {
            this.propertyPrefix = ch;
            this.outputPrefix = (String) C8731w.m2836d(str);
            this.explodeJoiner = (String) C8731w.m2836d(str2);
            this.requiresVarAssignment = z;
            this.reservedExpansion = z2;
            if (ch != null) {
                UriTemplate.f38289a.put(ch, this);
            }
        }

        /* renamed from: a */
        public String m3233a(String str) {
            return this.reservedExpansion ? C8701a.m2905f(str) : C8701a.m2907d(str);
        }

        String getExplodeJoiner() {
            return this.explodeJoiner;
        }

        String getOutputPrefix() {
            return this.outputPrefix;
        }

        int getVarNameStartIndex() {
            return this.propertyPrefix == null ? 0 : 1;
        }

        boolean requiresVarAssignment() {
            return this.requiresVarAssignment;
        }
    }

    static {
        CompositeOutput.values();
    }

    /* renamed from: b */
    public static String m3240b(String str, Object obj, boolean z) {
        String str2;
        Map<String, Object> m3236f = m3236f(obj);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            int indexOf = str.indexOf(123, i2);
            if (indexOf != -1) {
                sb.append(str.substring(i2, indexOf));
                int indexOf2 = str.indexOf(125, indexOf + 2);
                String substring = str.substring(indexOf + 1, indexOf2);
                CompositeOutput m3238d = m3238d(substring);
                ListIterator<String> listIterator = C8758l.m2775d(',').m2773f(substring).listIterator();
                boolean z2 = true;
                while (listIterator.hasNext()) {
                    String next = listIterator.next();
                    boolean endsWith = next.endsWith(BasicSQLHelper.ALL);
                    int varNameStartIndex = listIterator.nextIndex() == 1 ? m3238d.getVarNameStartIndex() : 0;
                    int length2 = next.length();
                    int i3 = length2;
                    if (endsWith) {
                        i3 = length2 - 1;
                    }
                    String substring2 = next.substring(varNameStartIndex, i3);
                    Object remove = m3236f.remove(substring2);
                    if (remove != null) {
                        if (!z2) {
                            sb.append(m3238d.getExplodeJoiner());
                        } else {
                            sb.append(m3238d.getOutputPrefix());
                            z2 = false;
                        }
                        if (remove instanceof Iterator) {
                            str2 = m3237e(substring2, (Iterator) remove, endsWith, m3238d);
                        } else if ((remove instanceof Iterable) || remove.getClass().isArray()) {
                            str2 = m3237e(substring2, C8695d0.m2916l(remove).iterator(), endsWith, m3238d);
                        } else if (remove.getClass().isEnum()) {
                            String m2862e = C8717l.m2857j((Enum) remove).m2862e();
                            if (m2862e == null) {
                                m2862e = remove.toString();
                            }
                            str2 = m3234h(substring2, m2862e, m3238d);
                        } else {
                            str2 = !C8712j.m2878f(remove) ? m3235g(substring2, m3236f(remove), endsWith, m3238d) : m3234h(substring2, remove.toString(), m3238d);
                        }
                        sb.append((Object) str2);
                    }
                }
                i = indexOf2 + 1;
            } else if (i2 == 0 && !z) {
                return str;
            } else {
                sb.append(str.substring(i2));
            }
        }
        if (z) {
            C8645i.m3176a(m3236f.entrySet(), sb, false);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m3239c(String str, String str2, Object obj, boolean z) {
        String str3;
        C8645i c8645i;
        if (str2.startsWith("/")) {
            new C8645i(str).m3165o(null);
            str3 = c8645i.m3173d() + str2;
        } else {
            str3 = str2;
            if (!str2.startsWith("http://")) {
                if (str2.startsWith("https://")) {
                    str3 = str2;
                } else {
                    str3 = str + str2;
                }
            }
        }
        return m3240b(str3, obj, z);
    }

    /* renamed from: d */
    static CompositeOutput m3238d(String str) {
        CompositeOutput compositeOutput = f38289a.get(Character.valueOf(str.charAt(0)));
        CompositeOutput compositeOutput2 = compositeOutput;
        if (compositeOutput == null) {
            compositeOutput2 = CompositeOutput.SIMPLE;
        }
        return compositeOutput2;
    }

    /* renamed from: e */
    private static String m3237e(String str, Iterator<?> it, boolean z, CompositeOutput compositeOutput) {
        String str2;
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = compositeOutput.getExplodeJoiner();
        } else {
            if (compositeOutput.requiresVarAssignment()) {
                sb.append(C8701a.m2906e(str));
                sb.append("=");
            }
            str2 = ",";
        }
        while (it.hasNext()) {
            if (z && compositeOutput.requiresVarAssignment()) {
                sb.append(C8701a.m2906e(str));
                sb.append("=");
            }
            sb.append(compositeOutput.m3233a(it.next().toString()));
            if (it.hasNext()) {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    /* renamed from: f */
    private static Map<String, Object> m3236f(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : C8712j.m2877g(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !C8712j.m2880d(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return linkedHashMap;
    }

    /* renamed from: g */
    private static String m3235g(String str, Map<String, Object> map, boolean z, CompositeOutput compositeOutput) {
        String str2;
        if (map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String str3 = ",";
        if (z) {
            str3 = compositeOutput.getExplodeJoiner();
            str2 = "=";
        } else {
            if (compositeOutput.requiresVarAssignment()) {
                sb.append(C8701a.m2906e(str));
                sb.append("=");
            }
            str2 = ",";
        }
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Object> next = it.next();
            String m3233a = compositeOutput.m3233a(next.getKey());
            String m3233a2 = compositeOutput.m3233a(next.getValue().toString());
            sb.append(m3233a);
            sb.append(str2);
            sb.append(m3233a2);
            if (it.hasNext()) {
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    /* renamed from: h */
    private static String m3234h(String str, String str2, CompositeOutput compositeOutput) {
        return compositeOutput.requiresVarAssignment() ? String.format("%s=%s", str, compositeOutput.m3233a(str2)) : compositeOutput.m3233a(str2);
    }
}
