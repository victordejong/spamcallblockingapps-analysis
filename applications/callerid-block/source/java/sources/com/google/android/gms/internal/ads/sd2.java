package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sd2.class */
public final class sd2 {
    /* renamed from: a */
    static String m5750a(qd2 qd2Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m5748c(qd2Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m5749b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m5749b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m5749b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(te2.m5528a(zzesf.zzu((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzesf) {
                sb.append(": \"");
                sb.append(te2.m5528a((zzesf) obj));
                sb.append('\"');
            } else if (obj instanceof oc2) {
                sb.append(" {");
                m5748c((oc2) obj, sb, i + 2);
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
                m5749b(sb, i4, "key", entry2.getKey());
                m5749b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m5748c(qd2 qd2Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        zzesf zzesfVar;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : qd2Var.getClass().getDeclaredMethods()) {
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
                    m5749b(sb, i, m5747d(concat), oc2.k(method2, qd2Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m5749b(sb, i, m5747d(concat2), oc2.k(method3, qd2Var, new Object[0]));
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
                    Object k = oc2.k(method4, qd2Var, new Object[0]);
                    if (method5 == null) {
                        if (k instanceof Boolean) {
                            if (((Boolean) k).booleanValue()) {
                                m5749b(sb, i, m5747d(concat3), k);
                            }
                        } else if (k instanceof Integer) {
                            if (((Integer) k).intValue() != 0) {
                                m5749b(sb, i, m5747d(concat3), k);
                            }
                        } else if (k instanceof Float) {
                            if (((Float) k).floatValue() != 0.0f) {
                                m5749b(sb, i, m5747d(concat3), k);
                            }
                        } else if (!(k instanceof Double)) {
                            if (k instanceof String) {
                                zzesfVar = "";
                            } else if (k instanceof zzesf) {
                                zzesfVar = zzesf.f9578b;
                            } else if (!(k instanceof qd2)) {
                                if ((k instanceof Enum) && ((Enum) k).ordinal() == 0) {
                                }
                                m5749b(sb, i, m5747d(concat3), k);
                            } else if (k != ((qd2) k).m5980f()) {
                                m5749b(sb, i, m5747d(concat3), k);
                            }
                            if (!k.equals(zzesfVar)) {
                                m5749b(sb, i, m5747d(concat3), k);
                            }
                        } else if (((Double) k).doubleValue() != 0.0d) {
                            m5749b(sb, i, m5747d(concat3), k);
                        }
                    } else if (((Boolean) oc2.k(method5, qd2Var, new Object[0])).booleanValue()) {
                        m5749b(sb, i, m5747d(concat3), k);
                    }
                }
            }
        }
        if (qd2Var instanceof mc2) {
            gc2 gc2Var = ((mc2) qd2Var).zzb;
            throw null;
        }
        ve2 ve2Var = ((oc2) qd2Var).zzc;
        if (ve2Var == null) {
            return;
        }
        ve2Var.m5257g(sb, i);
    }

    /* renamed from: d */
    private static final String m5747d(String str) {
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
