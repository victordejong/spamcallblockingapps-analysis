package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/of3.class */
public final class of3 {
    /* renamed from: a */
    public static String m12680a(mf3 mf3Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m12678c(mf3Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m12679b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m12679b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m12679b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(qg3.m11895a(zzgex.zzv((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgex) {
                sb.append(": \"");
                sb.append(qg3.m11895a((zzgex) obj));
                sb.append('\"');
            } else if (obj instanceof ie3) {
                sb.append(" {");
                m12678c((ie3) obj, sb, i + 2);
                sb.append("\n");
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj.toString());
            } else {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m12679b(sb, i4, "key", entry2.getKey());
                m12679b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m12678c(mf3 mf3Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : mf3Var.getClass().getDeclaredMethods()) {
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
                    m12679b(sb, i, m12677d(concat), ie3.m14429j(method2, mf3Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m12679b(sb, i, m12677d(concat2), ie3.m14429j(method3, mf3Var, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(substring.length() != 0 ? "set".concat(substring) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf5.length() != 0 ? "get".concat(valueOf5) : new String("get"))) {
                    }
                }
                String valueOf6 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(substring.substring(1));
                String concat3 = valueOf7.length() != 0 ? valueOf6.concat(valueOf7) : new String(valueOf6);
                Method method4 = (Method) hashMap.get(substring.length() != 0 ? "get".concat(substring) : new String("get"));
                Method method5 = (Method) hashMap.get(substring.length() != 0 ? "has".concat(substring) : new String("has"));
                if (method4 != null) {
                    Object m14429j = ie3.m14429j(method4, mf3Var, new Object[0]);
                    if (method5 == null) {
                        if (m14429j instanceof Boolean) {
                            if (((Boolean) m14429j).booleanValue()) {
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            }
                        } else if (m14429j instanceof Integer) {
                            if (((Integer) m14429j).intValue() != 0) {
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            }
                        } else if (m14429j instanceof Float) {
                            if (((Float) m14429j).floatValue() != 0.0f) {
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            }
                        } else if (!(m14429j instanceof Double)) {
                            if (m14429j instanceof String) {
                                equals = m14429j.equals("");
                            } else if (m14429j instanceof zzgex) {
                                equals = m14429j.equals(zzgex.f34110d);
                            } else if (!(m14429j instanceof mf3)) {
                                if ((m14429j instanceof Enum) && ((Enum) m14429j).ordinal() == 0) {
                                }
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            } else if (m14429j != ((mf3) m14429j).mo12922g()) {
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            }
                            if (!equals) {
                                m12679b(sb, i, m12677d(concat3), m14429j);
                            }
                        } else if (((Double) m14429j).doubleValue() != 0.0d) {
                            m12679b(sb, i, m12677d(concat3), m14429j);
                        }
                    } else if (((Boolean) ie3.m14429j(method5, mf3Var, new Object[0])).booleanValue()) {
                        m12679b(sb, i, m12677d(concat3), m14429j);
                    }
                }
            }
        }
        if (mf3Var instanceof fe3) {
            fe3 fe3Var = (fe3) mf3Var;
            throw null;
        }
        sg3 sg3Var = ((ie3) mf3Var).zzc;
        if (sg3Var == null) {
            return;
        }
        sg3Var.m11031g(sb, i);
    }

    /* renamed from: d */
    private static final String m12677d(String str) {
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
}
