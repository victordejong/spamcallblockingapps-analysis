package io.objectbox.b;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final f f36199a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, Map<String, Field>> f36200b = new HashMap();

    public static f a() {
        return f36199a;
    }

    public final Field a(Class<?> cls, String str) {
        Field field;
        synchronized (this) {
            Map<String, Field> map = this.f36200b.get(cls);
            Map<String, Field> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f36200b.put(cls, map2);
            }
            Field field2 = map2.get(str);
            field = field2;
            if (field2 == null) {
                try {
                    field = cls.getDeclaredField(str);
                    field.setAccessible(true);
                    map2.put(str, field);
                } catch (NoSuchFieldException e) {
                    throw new IllegalStateException(e);
                }
            }
        }
        return field;
    }
}
