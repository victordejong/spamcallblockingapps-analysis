package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* renamed from: com.google.android.gms.internal.measurement.a7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a7.class */
public final class C7296a7 {
    /* renamed from: a */
    public static String m7685a(AbstractC7623y6 abstractC7623y6, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m7683c(abstractC7623y6, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m7684b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m7684b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m7684b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C7598w7.m6793a(zzgr.zzk((String) obj)));
                sb.append('\"');
            } else if (obj instanceof zzgr) {
                sb.append(": \"");
                sb.append(C7598w7.m6793a((zzgr) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC7609x5) {
                sb.append(" {");
                m7683c((AbstractC7609x5) obj, sb, i + 2);
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
                m7684b(sb, i4, "key", entry2.getKey());
                m7684b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }

    /* renamed from: c */
    private static void m7683c(AbstractC7623y6 abstractC7623y6, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : abstractC7623y6.getClass().getDeclaredMethods()) {
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
                    m7684b(sb, i, m7682d(concat), AbstractC7609x5.m6768m(method2, abstractC7623y6, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m7684b(sb, i, m7682d(concat2), AbstractC7609x5.m6768m(method3, abstractC7623y6, new Object[0]));
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
                    Object m6768m = AbstractC7609x5.m6768m(method4, abstractC7623y6, new Object[0]);
                    if (method5 == null) {
                        if (m6768m instanceof Boolean) {
                            if (((Boolean) m6768m).booleanValue()) {
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            }
                        } else if (m6768m instanceof Integer) {
                            if (((Integer) m6768m).intValue() != 0) {
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            }
                        } else if (m6768m instanceof Float) {
                            if (((Float) m6768m).floatValue() != 0.0f) {
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            }
                        } else if (!(m6768m instanceof Double)) {
                            if (m6768m instanceof String) {
                                equals = m6768m.equals("");
                            } else if (m6768m instanceof zzgr) {
                                equals = m6768m.equals(zzgr.f34851d);
                            } else if (!(m6768m instanceof AbstractC7623y6)) {
                                if ((m6768m instanceof Enum) && ((Enum) m6768m).ordinal() == 0) {
                                }
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            } else if (m6768m != ((AbstractC7623y6) m6768m).mo6643h()) {
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            }
                            if (!equals) {
                                m7684b(sb, i, m7682d(concat3), m6768m);
                            }
                        } else if (((Double) m6768m).doubleValue() != 0.0d) {
                            m7684b(sb, i, m7682d(concat3), m6768m);
                        }
                    } else if (((Boolean) AbstractC7609x5.m6768m(method5, abstractC7623y6, new Object[0])).booleanValue()) {
                        m7684b(sb, i, m7682d(concat3), m6768m);
                    }
                }
            }
        }
        if (abstractC7623y6 instanceof AbstractC7583v5) {
            AbstractC7583v5 abstractC7583v5 = (AbstractC7583v5) abstractC7623y6;
            throw null;
        }
        C7624y7 c7624y7 = ((AbstractC7609x5) abstractC7623y6).zzc;
        if (c7624y7 == null) {
            return;
        }
        c7624y7.m6720g(sb, i);
    }

    /* renamed from: d */
    private static final String m7682d(String str) {
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
