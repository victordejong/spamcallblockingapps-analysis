package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
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
        ByteString byteString;
        boolean z = true;
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() != 0) {
                z = false;
            }
            return z;
        } else if (obj instanceof Float) {
            return ((Float) obj).floatValue() == 0.0f;
        } else if (obj instanceof Double) {
            return ((Double) obj).doubleValue() == 0.0d;
        } else {
            if (obj instanceof String) {
                byteString = "";
            } else if (!(obj instanceof ByteString)) {
                if (obj instanceof AbstractC2639m0) {
                    return obj == ((AbstractC2639m0) obj).mo2414d();
                } else if (!(obj instanceof Enum)) {
                    return false;
                } else {
                    return ((Enum) obj).ordinal() == 0;
                }
            } else {
                byteString = ByteString.f10869b;
            }
            return obj.equals(byteString);
        }
    }

    /* renamed from: c */
    public static final void m2408c(StringBuilder sb, int i, String str, Object obj) {
        String m2741a;
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
                m2741a = C2603f1.m2739c((String) obj);
            } else if (!(obj instanceof ByteString)) {
                if (obj instanceof GeneratedMessageLite) {
                    sb.append(" {");
                    m2407d((GeneratedMessageLite) obj, sb, i + 2);
                    sb.append("\n");
                    for (int i3 = 0; i3 < i; i3++) {
                        sb.append(' ');
                    }
                } else if (!(obj instanceof Map.Entry)) {
                    sb.append(": ");
                    sb.append(obj.toString());
                    return;
                } else {
                    sb.append(" {");
                    Map.Entry entry2 = (Map.Entry) obj;
                    int i4 = i + 2;
                    m2408c(sb, i4, "key", entry2.getKey());
                    m2408c(sb, i4, "value", entry2.getValue());
                    sb.append("\n");
                    for (int i5 = 0; i5 < i; i5++) {
                        sb.append(' ');
                    }
                }
                sb.append("}");
                return;
            } else {
                sb.append(": \"");
                m2741a = C2603f1.m2741a((ByteString) obj);
            }
            sb.append(m2741a);
            sb.append('\"');
        }
    }

    /* renamed from: d */
    private static void m2407d(AbstractC2639m0 abstractC2639m0, StringBuilder sb, int i) {
        Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.C2553d, Object> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : abstractC2639m0.getClass().getDeclaredMethods()) {
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
                    m2408c(sb, i, m2410a(str2), GeneratedMessageLite.m3037H(method2, abstractC2639m0, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String str3 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m2408c(sb, i, m2410a(str3), GeneratedMessageLite.m3037H(method3, abstractC2639m0, new Object[0]));
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
                    Object m3037H = GeneratedMessageLite.m3037H(method4, abstractC2639m0, new Object[0]);
                    if (method5 != null) {
                        z = ((Boolean) GeneratedMessageLite.m3037H(method5, abstractC2639m0, new Object[0])).booleanValue();
                    } else if (m2409b(m3037H)) {
                        z = false;
                    }
                    if (z) {
                        m2408c(sb, i, m2410a(str4), m3037H);
                    }
                }
            }
        }
        if (abstractC2639m0 instanceof GeneratedMessageLite.AbstractC2552c) {
            Iterator<Map.Entry<GeneratedMessageLite.C2553d, Object>> m2298s = ((GeneratedMessageLite.AbstractC2552c) abstractC2639m0).extensions.m2298s();
            while (m2298s.hasNext()) {
                m2408c(sb, i, "[" + next.getKey().getNumber() + "]", m2298s.next().getValue());
            }
        }
        C2612h1 c2612h1 = ((GeneratedMessageLite) abstractC2639m0).unknownFields;
        if (c2612h1 != null) {
            c2612h1.m2709l(sb, i);
        }
    }

    /* renamed from: e */
    public static String m2406e(AbstractC2639m0 abstractC2639m0, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m2407d(abstractC2639m0, sb, 0);
        return sb.toString();
    }
}
