package io.objectbox.p502b;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.objectbox.b.f */
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/f.class */
public final class C17954f {

    /* renamed from: a */
    private static final C17954f f62742a = new C17954f();

    /* renamed from: b */
    private final Map<Class<?>, Map<String, Field>> f62743b = new HashMap();

    /* renamed from: a */
    public static C17954f m4683a() {
        return f62742a;
    }

    /* renamed from: a */
    public final Field m4682a(Class<?> cls, String str) {
        Field field;
        synchronized (this) {
            Map<String, Field> map = this.f62743b.get(cls);
            Map<String, Field> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f62743b.put(cls, map2);
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
