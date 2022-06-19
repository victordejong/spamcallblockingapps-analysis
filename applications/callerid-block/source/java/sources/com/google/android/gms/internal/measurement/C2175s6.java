package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.gms.internal.measurement.s6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s6.class */
public final class C2175s6 {
    /* renamed from: a */
    static String m4186a(q6 q6Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m4184c(q6Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m4185b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m4185b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m4185b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C2157o7.m4225a(zzgr.zzk((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgr) {
                sb.append(": \"");
                sb.append(C2157o7.m4225a((zzgr) obj));
                sb.append('\"');
            } else if (obj instanceof q5) {
                sb.append(" {");
                m4184c((q5) obj, sb, i + 2);
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
                m4185b(sb, i4, "key", entry2.getKey());
                m4185b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m4184c(q6 q6Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        zzgr zzgrVar;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : q6Var.getClass().getDeclaredMethods()) {
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
                    m4185b(sb, i, m4183d(concat), q5.j(method2, q6Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m4185b(sb, i, m4183d(concat2), q5.j(method3, q6Var, new Object[0]));
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
                    Object j = q5.j(method4, q6Var, new Object[0]);
                    if (method5 == null) {
                        if (j instanceof Boolean) {
                            if (((Boolean) j).booleanValue()) {
                                m4185b(sb, i, m4183d(concat3), j);
                            }
                        } else if (j instanceof Integer) {
                            if (((Integer) j).intValue() != 0) {
                                m4185b(sb, i, m4183d(concat3), j);
                            }
                        } else if (j instanceof Float) {
                            if (((Float) j).floatValue() != 0.0f) {
                                m4185b(sb, i, m4183d(concat3), j);
                            }
                        } else if (!(j instanceof Double)) {
                            if (j instanceof String) {
                                zzgrVar = "";
                            } else if (j instanceof zzgr) {
                                zzgrVar = zzgr.f9861b;
                            } else if (!(j instanceof q6)) {
                                if ((j instanceof Enum) && ((Enum) j).ordinal() == 0) {
                                }
                                m4185b(sb, i, m4183d(concat3), j);
                            } else if (j != ((q6) j).m4193e()) {
                                m4185b(sb, i, m4183d(concat3), j);
                            }
                            if (!j.equals(zzgrVar)) {
                                m4185b(sb, i, m4183d(concat3), j);
                            }
                        } else if (((Double) j).doubleValue() != 0.0d) {
                            m4185b(sb, i, m4183d(concat3), j);
                        }
                    } else if (((Boolean) q5.j(method5, q6Var, new Object[0])).booleanValue()) {
                        m4185b(sb, i, m4183d(concat3), j);
                    }
                }
            }
        }
        if (q6Var instanceof o5) {
            C2134j5 c2134j5 = ((o5) q6Var).zza;
            throw null;
        }
        C2164q7 c2164q7 = ((q5) q6Var).zzc;
        if (c2164q7 == null) {
            return;
        }
        c2164q7.m4204g(sb, i);
    }

    /* renamed from: d */
    private static final String m4183d(String str) {
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
