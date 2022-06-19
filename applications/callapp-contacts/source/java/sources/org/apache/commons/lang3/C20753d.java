package org.apache.commons.lang3;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
/* renamed from: org.apache.commons.lang3.d */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d.class */
public final class C20753d {

    /* renamed from: a */
    public static final String f67242a = ".";

    /* renamed from: b */
    public static final String f67243b = "$";

    /* renamed from: c */
    private static final Map<String, Class<?>> f67244c;

    /* renamed from: d */
    private static final Map<Class<?>, Class<?>> f67245d;

    /* renamed from: e */
    private static final Map<Class<?>, Class<?>> f67246e = new HashMap();

    /* renamed from: f */
    private static final Map<String, String> f67247f;

    /* renamed from: g */
    private static final Map<String, String> f67248g;

    static {
        HashMap hashMap = new HashMap();
        f67244c = hashMap;
        hashMap.put("boolean", Boolean.TYPE);
        hashMap.put("byte", Byte.TYPE);
        hashMap.put("char", Character.TYPE);
        hashMap.put("short", Short.TYPE);
        hashMap.put("int", Integer.TYPE);
        hashMap.put("long", Long.TYPE);
        hashMap.put("double", Double.TYPE);
        hashMap.put("float", Float.TYPE);
        hashMap.put("void", Void.TYPE);
        HashMap hashMap2 = new HashMap();
        f67245d = hashMap2;
        hashMap2.put(Boolean.TYPE, Boolean.class);
        hashMap2.put(Byte.TYPE, Byte.class);
        hashMap2.put(Character.TYPE, Character.class);
        hashMap2.put(Short.TYPE, Short.class);
        hashMap2.put(Integer.TYPE, Integer.class);
        hashMap2.put(Long.TYPE, Long.class);
        hashMap2.put(Double.TYPE, Double.class);
        hashMap2.put(Float.TYPE, Float.class);
        Class cls = Void.TYPE;
        hashMap2.put(cls, cls);
        for (Map.Entry entry : hashMap2.entrySet()) {
            Class<?> cls2 = (Class) entry.getKey();
            Class<?> cls3 = (Class) entry.getValue();
            if (!cls2.equals(cls3)) {
                f67246e.put(cls3, cls2);
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("int", "I");
        hashMap3.put("boolean", "Z");
        hashMap3.put("float", "F");
        hashMap3.put("long", "J");
        hashMap3.put("short", "S");
        hashMap3.put("byte", "B");
        hashMap3.put("double", "D");
        hashMap3.put("char", "C");
        HashMap hashMap4 = new HashMap();
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            hashMap4.put(entry2.getValue(), entry2.getKey());
        }
        f67247f = Collections.unmodifiableMap(hashMap3);
        f67248g = Collections.unmodifiableMap(hashMap4);
    }

    /* renamed from: a */
    public static String m531a(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        String name = cls.getName();
        if (StringUtils.isEmpty(name)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        String str = name;
        if (name.startsWith("[")) {
            String str2 = name;
            while (str2.charAt(0) == '[') {
                str2 = str2.substring(1);
                sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            }
            String str3 = str2;
            if (str2.charAt(0) == 'L') {
                str3 = str2;
                if (str2.charAt(str2.length() - 1) == ';') {
                    str3 = str2.substring(1, str2.length() - 1);
                }
            }
            Map<String, String> map = f67248g;
            str = str3;
            if (map.containsKey(str3)) {
                str = map.get(str3);
            }
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            i = lastIndexOf + 1;
        }
        int indexOf = str.indexOf(36, i);
        String substring = str.substring(lastIndexOf + 1);
        String str4 = substring;
        if (indexOf != -1) {
            str4 = substring.replace('$', '.');
        }
        return str4 + ((Object) sb);
    }

    /* renamed from: b */
    public static boolean m530b(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || f67246e.containsKey(cls);
    }

    /* renamed from: c */
    public static Class<?> m529c(Class<?> cls) {
        return f67246e.get(cls);
    }
}
