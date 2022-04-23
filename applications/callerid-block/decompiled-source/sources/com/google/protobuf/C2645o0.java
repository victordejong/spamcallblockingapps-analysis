package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.protobuf.o0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/o0.class */
public final class C2645o0 {
    /* renamed from: a */
    private static final String m2410a(String str) {
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

    /* renamed from: b */
    private static boolean m2409b(Object obj) {
        Object obj2;
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() != 0) {
                z5 = false;
            }
            return z5;
        } else if (obj instanceof Float) {
            if (((Float) obj).floatValue() != 0.0f) {
                z = false;
            }
            return z;
        } else if (obj instanceof Double) {
            if (((Double) obj).doubleValue() != 0.0d) {
                z2 = false;
            }
            return z2;
        } else {
            if (obj instanceof String) {
                obj2 = "";
            } else if (obj instanceof ByteString) {
                obj2 = ByteString.f10869b;
            } else if (obj instanceof AbstractC2639m0) {
                if (obj != ((AbstractC2639m0) obj).mo2414d()) {
                    z3 = false;
                }
                return z3;
            } else if (!(obj instanceof Enum)) {
                return false;
            } else {
                if (((Enum) obj).ordinal() != 0) {
                    z4 = false;
                }
                return z4;
            }
            return obj.equals(obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static final void m2408c(StringBuilder sb, int i, String str, Object obj) {
        String a;
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m2408c(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m2408c(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                a = C2603f1.m2739c((String) obj);
            } else if (obj instanceof ByteString) {
                sb.append(": \"");
                a = C2603f1.m2741a((ByteString) obj);
            } else {
                if (obj instanceof GeneratedMessageLite) {
                    sb.append(" {");
                    m2407d((GeneratedMessageLite) obj, sb, i + 2);
                    sb.append("\n");
                    for (int i3 = 0; i3 < i; i3++) {
                        sb.append(' ');
                    }
                } else if (obj instanceof Map.Entry) {
                    sb.append(" {");
                    Map.Entry entry2 = (Map.Entry) obj;
                    int i4 = i + 2;
                    m2408c(sb, i4, "key", entry2.getKey());
                    m2408c(sb, i4, "value", entry2.getValue());
                    sb.append("\n");
                    for (int i5 = 0; i5 < i; i5++) {
                        sb.append(' ');
                    }
                } else {
                    sb.append(": ");
                    sb.append(obj.toString());
                    return;
                }
                sb.append("}");
                return;
            }
            sb.append(a);
            sb.append('\"');
        }
    }

    /* renamed from: d */
    private static void m2407d(AbstractC2639m0 m0Var, StringBuilder sb, int i) {
        Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.C2553d, Object> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : m0Var.getClass().getDeclaredMethods()) {
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
            boolean z = true;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String str2 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 4);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m2408c(sb, i, m2410a(str2), GeneratedMessageLite.m3037H(method2, m0Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String str3 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m2408c(sb, i, m2410a(str3), GeneratedMessageLite.m3037H(method3, m0Var, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set" + substring)) != null) {
                if (substring.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + substring.substring(0, substring.length() - 5))) {
                    }
                }
                String str4 = substring.substring(0, 1).toLowerCase() + substring.substring(1);
                Method method4 = (Method) hashMap.get("get" + substring);
                Method method5 = (Method) hashMap.get("has" + substring);
                if (method4 != null) {
                    Object H = GeneratedMessageLite.m3037H(method4, m0Var, new Object[0]);
                    if (method5 != null) {
                        z = ((Boolean) GeneratedMessageLite.m3037H(method5, m0Var, new Object[0])).booleanValue();
                    } else if (m2409b(H)) {
                        z = false;
                    }
                    if (z) {
                        m2408c(sb, i, m2410a(str4), H);
                    }
                }
            }
        }
        if (m0Var instanceof GeneratedMessageLite.AbstractC2552c) {
            Iterator<Map.Entry<GeneratedMessageLite.C2553d, Object>> s = ((GeneratedMessageLite.AbstractC2552c) m0Var).extensions.m2298s();
            while (s.hasNext()) {
                m2408c(sb, i, "[" + next.getKey().getNumber() + "]", s.next().getValue());
            }
        }
        C2612h1 h1Var = ((GeneratedMessageLite) m0Var).unknownFields;
        if (h1Var != null) {
            h1Var.m2709l(sb, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static String m2406e(AbstractC2639m0 m0Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m2407d(m0Var, sb, 0);
        return sb.toString();
    }
}
