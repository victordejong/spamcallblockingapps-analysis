package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.gms.internal.measurement.hq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hq.class */
public final class C13558hq {
    /* renamed from: a */
    private static final String m12702a(String str) {
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
    public static void m12703a(AbstractC13556ho abstractC13556ho, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : abstractC13556ho.getClass().getDeclaredMethods()) {
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
                    m12701a(sb, i, m12702a(concat), AbstractC13526gl.m12762a(method2, abstractC13556ho, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m12701a(sb, i, m12702a(concat2), AbstractC13526gl.m12762a(method3, abstractC13556ho, new Object[0]));
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
                    Object m12762a = AbstractC13526gl.m12762a(method4, abstractC13556ho, new Object[0]);
                    if (method5 == null) {
                        if (m12762a instanceof Boolean) {
                            if (((Boolean) m12762a).booleanValue()) {
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            }
                        } else if (m12762a instanceof Integer) {
                            if (((Integer) m12762a).intValue() != 0) {
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            }
                        } else if (m12762a instanceof Float) {
                            if (((Float) m12762a).floatValue() != BitmapDescriptorFactory.HUE_RED) {
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            }
                        } else if (!(m12762a instanceof Double)) {
                            if (m12762a instanceof String) {
                                equals = m12762a.equals("");
                            } else if (m12762a instanceof AbstractC13500fm) {
                                equals = m12762a.equals(AbstractC13500fm.f50716b);
                            } else if (!(m12762a instanceof AbstractC13556ho)) {
                                if ((m12762a instanceof Enum) && ((Enum) m12762a).ordinal() == 0) {
                                }
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            } else if (m12762a != ((AbstractC13556ho) m12762a).mo12704C()) {
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            }
                            if (!equals) {
                                m12701a(sb, i, m12702a(concat3), m12762a);
                            }
                        } else if (((Double) m12762a).doubleValue() != 0.0d) {
                            m12701a(sb, i, m12702a(concat3), m12762a);
                        }
                    } else if (((Boolean) AbstractC13526gl.m12762a(method5, abstractC13556ho, new Object[0])).booleanValue()) {
                        m12701a(sb, i, m12702a(concat3), m12762a);
                    }
                }
            }
        }
        if (!(abstractC13556ho instanceof AbstractC13524gj)) {
            C13582in c13582in = ((AbstractC13526gl) abstractC13556ho).zzc;
            if (c13582in == null) {
                return;
            }
            c13582in.m12569a(sb, i);
            return;
        }
        throw null;
    }

    /* renamed from: a */
    public static final void m12701a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m12701a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m12701a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C13580il.m12574a(AbstractC13500fm.m12861a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC13500fm) {
                sb.append(": \"");
                sb.append(C13580il.m12574a((AbstractC13500fm) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC13526gl) {
                sb.append(" {");
                m12703a((AbstractC13526gl) obj, sb, i + 2);
                sb.append(StringUtils.f67179LF);
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
                m12701a(sb, i4, "key", entry2.getKey());
                m12701a(sb, i4, "value", entry2.getValue());
                sb.append(StringUtils.f67179LF);
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            }
        }
    }
}
