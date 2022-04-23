package org.apache.commons.lang3;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f39168a = ".";

    /* renamed from: b  reason: collision with root package name */
    public static final String f39169b = "$";

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Class<?>> f39170c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f39171d;
    private static final Map<Class<?>, Class<?>> e = new HashMap();
    private static final Map<String, String> f;
    private static final Map<String, String> g;

    static {
        HashMap hashMap = new HashMap();
        f39170c = hashMap;
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
        f39171d = hashMap2;
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
                e.put(cls3, cls2);
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
        f = Collections.unmodifiableMap(hashMap3);
        g = Collections.unmodifiableMap(hashMap4);
    }

    public static String a(Class<?> cls) {
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
            Map<String, String> map = g;
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

    public static boolean b(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || e.containsKey(cls);
    }

    public static Class<?> c(Class<?> cls) {
        return e.get(cls);
    }
}
