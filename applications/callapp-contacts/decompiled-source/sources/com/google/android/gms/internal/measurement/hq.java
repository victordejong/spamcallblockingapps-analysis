package com.google.android.gms.internal.measurement;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hq.class */
public final class hq {
    private static final String a(String str) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ho hoVar, StringBuilder sb, int i) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : hoVar.getClass().getDeclaredMethods()) {
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
                    a(sb, i, a(concat), gl.a(method2, hoVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    a(sb, i, a(concat2), gl.a(method3, hoVar, new Object[0]));
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
                    Object a2 = gl.a(method4, hoVar, new Object[0]);
                    if (method5 == null) {
                        if (a2 instanceof Boolean) {
                            if (((Boolean) a2).booleanValue()) {
                                a(sb, i, a(concat3), a2);
                            }
                        } else if (a2 instanceof Integer) {
                            if (((Integer) a2).intValue() != 0) {
                                a(sb, i, a(concat3), a2);
                            }
                        } else if (a2 instanceof Float) {
                            if (((Float) a2).floatValue() != BitmapDescriptorFactory.HUE_RED) {
                                a(sb, i, a(concat3), a2);
                            }
                        } else if (!(a2 instanceof Double)) {
                            if (a2 instanceof String) {
                                equals = a2.equals("");
                            } else if (a2 instanceof fm) {
                                equals = a2.equals(fm.f29017b);
                            } else if (!(a2 instanceof ho)) {
                                if ((a2 instanceof Enum) && ((Enum) a2).ordinal() == 0) {
                                }
                                a(sb, i, a(concat3), a2);
                            } else if (a2 != ((ho) a2).C()) {
                                a(sb, i, a(concat3), a2);
                            }
                            if (!equals) {
                                a(sb, i, a(concat3), a2);
                            }
                        } else if (((Double) a2).doubleValue() != 0.0d) {
                            a(sb, i, a(concat3), a2);
                        }
                    } else if (((Boolean) gl.a(method5, hoVar, new Object[0])).booleanValue()) {
                        a(sb, i, a(concat3), a2);
                    }
                }
            }
        }
        if (!(hoVar instanceof gj)) {
            in inVar = ((gl) hoVar).zzc;
            if (inVar != null) {
                inVar.a(sb, i);
                return;
            }
            return;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                a(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                a(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(il.a(fm.a((String) obj)));
                sb.append('\"');
            } else if (obj instanceof fm) {
                sb.append(": \"");
                sb.append(il.a((fm) obj));
                sb.append('\"');
            } else if (obj instanceof gl) {
                sb.append(" {");
                a((gl) obj, sb, i + 2);
                sb.append(StringUtils.LF);
                for (int i3 = 0; i3 < i; i3++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                a(sb, i4, "key", entry2.getKey());
                a(sb, i4, "value", entry2.getValue());
                sb.append(StringUtils.LF);
                for (int i5 = 0; i5 < i; i5++) {
                    sb.append(' ');
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }
}
