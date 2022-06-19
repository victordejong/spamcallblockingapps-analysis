package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/deh.class */
public final class deh {
    /* renamed from: a */
    public static String m9980a(deg degVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ").append(str);
        m9979a(degVar, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    private static final String m9978a(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m9979a(deg degVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : degVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m9977a(sb, i, m9978a(concat), dcw.m10082a(method2, degVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m9977a(sb, i, m9978a(concat2), dcw.m10082a(method3, degVar, new Object[0]));
                }
            }
            String valueOf5 = String.valueOf(substring);
            if (((Method) hashMap2.get(valueOf5.length() != 0 ? "set".concat(valueOf5) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf6 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf6.length() != 0 ? "get".concat(valueOf6) : new String("get"))) {
                    }
                }
                String valueOf7 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf8 = String.valueOf(substring.substring(1));
                String concat3 = valueOf8.length() != 0 ? valueOf7.concat(valueOf8) : new String(valueOf7);
                String valueOf9 = String.valueOf(substring);
                Method method4 = (Method) hashMap.get(valueOf9.length() != 0 ? "get".concat(valueOf9) : new String("get"));
                String valueOf10 = String.valueOf(substring);
                Method method5 = (Method) hashMap.get(valueOf10.length() != 0 ? "has".concat(valueOf10) : new String("has"));
                if (method4 != null) {
                    Object m10082a = dcw.m10082a(method4, degVar, new Object[0]);
                    if (method5 == null ? !(m10082a instanceof Boolean ? !((Boolean) m10082a).booleanValue() : m10082a instanceof Integer ? ((Integer) m10082a).intValue() == 0 : m10082a instanceof Float ? (((Float) m10082a).floatValue() > 0.0f ? 1 : (((Float) m10082a).floatValue() == 0.0f ? 0 : -1)) == 0 : m10082a instanceof Double ? (((Double) m10082a).doubleValue() > 0.0d ? 1 : (((Double) m10082a).doubleValue() == 0.0d ? 0 : -1)) == 0 : m10082a instanceof String ? m10082a.equals("") : m10082a instanceof dbi ? m10082a.equals(dbi.f13932a) : m10082a instanceof deg ? m10082a == ((deg) m10082a).mo9975w() : m10082a instanceof Enum ? ((Enum) m10082a).ordinal() == 0 : false) : ((Boolean) dcw.m10082a(method5, degVar, new Object[0])).booleanValue()) {
                        m9977a(sb, i, m9978a(concat3), m10082a);
                    }
                }
            }
        }
        if (degVar instanceof dcw.AbstractC2956b) {
            Iterator<Map.Entry<dcw.C2959e, Object>> m10110d = ((dcw.AbstractC2956b) degVar).zzhxy.m10110d();
            if (m10110d.hasNext()) {
                m10110d.next().getKey();
                throw new NoSuchMethodError();
            }
        }
        if (((dcw) degVar).zzhxv != null) {
            ((dcw) degVar).zzhxv.m9747a(sb, i);
        }
    }

    /* renamed from: a */
    public static final void m9977a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m9977a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m9977a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"").append(dfr.m9755a(dbi.m10221a((String) obj))).append('\"');
            } else if (obj instanceof dbi) {
                sb.append(": \"").append(dfr.m9755a((dbi) obj)).append('\"');
            } else if (obj instanceof dcw) {
                sb.append(" {");
                m9979a((dcw) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ").append(obj.toString());
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                m9977a(sb, i + 2, "key", entry2.getKey());
                m9977a(sb, i + 2, "value", entry2.getValue());
                sb.append("\n");
                for (int i4 = 0; i4 < i; i4++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }
}
