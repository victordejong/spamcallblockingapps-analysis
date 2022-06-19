package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.gms.internal.measurement.fo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fo.class */
public final class C3944fo {
    /* renamed from: a */
    public static String m5538a(AbstractC3943fn abstractC3943fn, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ").append(str);
        m5537a(abstractC3943fn, sb, 0);
        return sb.toString();
    }

    /* renamed from: a */
    private static final String m5536a(String str) {
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
    private static void m5537a(AbstractC3943fn abstractC3943fn, StringBuilder sb, int i) {
        Method[] declaredMethods;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : abstractC3943fn.getClass().getDeclaredMethods()) {
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
                    m5535a(sb, i, m5536a(concat), AbstractC3900ed.m5645a(method2, abstractC3943fn, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m5535a(sb, i, m5536a(concat2), AbstractC3900ed.m5645a(method3, abstractC3943fn, new Object[0]));
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
                    Object m5645a = AbstractC3900ed.m5645a(method4, abstractC3943fn, new Object[0]);
                    if (method5 == null ? !(m5645a instanceof Boolean ? !((Boolean) m5645a).booleanValue() : m5645a instanceof Integer ? ((Integer) m5645a).intValue() == 0 : m5645a instanceof Float ? (((Float) m5645a).floatValue() > 0.0f ? 1 : (((Float) m5645a).floatValue() == 0.0f ? 0 : -1)) == 0 : m5645a instanceof Double ? (((Double) m5645a).doubleValue() > 0.0d ? 1 : (((Double) m5645a).doubleValue() == 0.0d ? 0 : -1)) == 0 : m5645a instanceof String ? m5645a.equals("") : m5645a instanceof AbstractC3859ct ? m5645a.equals(AbstractC3859ct.f17943a) : m5645a instanceof AbstractC3943fn ? m5645a == ((AbstractC3943fn) m5645a).mo5533at() : m5645a instanceof Enum ? ((Enum) m5645a).ordinal() == 0 : false) : ((Boolean) AbstractC3900ed.m5645a(method5, abstractC3943fn, new Object[0])).booleanValue()) {
                        m5535a(sb, i, m5536a(concat3), m5645a);
                    }
                }
            }
        }
        if (abstractC3943fn instanceof AbstractC3900ed.AbstractC3904d) {
            Iterator<Map.Entry<AbstractC3900ed.C3903c, Object>> m5662d = ((AbstractC3900ed.AbstractC3904d) abstractC3943fn).zzc.m5662d();
            if (m5662d.hasNext()) {
                m5662d.next().getKey();
                throw new NoSuchMethodError();
            }
        }
        if (((AbstractC3900ed) abstractC3943fn).zzb != null) {
            ((AbstractC3900ed) abstractC3943fn).zzb.m5310a(sb, i);
        }
    }

    /* renamed from: a */
    public static final void m5535a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m5535a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m5535a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"").append(C3974gr.m5341a(AbstractC3859ct.m5812a((String) obj))).append('\"');
            } else if (obj instanceof AbstractC3859ct) {
                sb.append(": \"").append(C3974gr.m5341a((AbstractC3859ct) obj)).append('\"');
            } else if (obj instanceof AbstractC3900ed) {
                sb.append(" {");
                m5537a((AbstractC3900ed) obj, sb, i + 2);
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
                m5535a(sb, i + 2, "key", entry2.getKey());
                m5535a(sb, i + 2, "value", entry2.getValue());
                sb.append("\n");
                for (int i4 = 0; i4 < i; i4++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }
}
