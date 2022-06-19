package com.callapp.contacts.util.serializer;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/ArraysAsListSerializer.class */
public class ArraysAsListSerializer extends AbstractC9413h<List<?>> {

    /* renamed from: a */
    private Field f28351a;

    public ArraysAsListSerializer() {
        try {
            Field declaredField = Class.forName("java.util.Arrays$ArrayList").getDeclaredField("a");
            this.f28351a = declaredField;
            declaredField.setAccessible(true);
            setImmutable(true);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private static List<?> m26936a(C9380c c9380c, C9374a c9374a) {
        int m24459a = c9374a.m24459a(true);
        Class cls = c9380c.m24393a(c9374a).f32360a;
        Class cls2 = cls;
        if (cls.isPrimitive()) {
            cls2 = cls;
            if (cls.isPrimitive()) {
                if (cls.equals(Long.TYPE)) {
                    cls2 = Long.class;
                } else if (cls.equals(Integer.TYPE)) {
                    cls2 = Integer.class;
                } else if (cls.equals(Double.TYPE)) {
                    cls2 = Double.class;
                } else if (cls.equals(Float.TYPE)) {
                    cls2 = Float.class;
                } else if (cls.equals(Boolean.TYPE)) {
                    cls2 = Boolean.class;
                } else if (cls.equals(Character.TYPE)) {
                    cls2 = Character.class;
                } else if (cls.equals(Short.TYPE)) {
                    cls2 = Short.class;
                } else {
                    cls2 = cls;
                    if (cls.equals(Byte.TYPE)) {
                        cls2 = Byte.class;
                    }
                }
            }
        }
        try {
            Object newInstance = Array.newInstance(cls2, m24459a);
            for (int i = 0; i < m24459a; i++) {
                Array.set(newInstance, i, c9380c.m24379b(c9374a));
            }
            return Arrays.asList((Object[]) newInstance);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ List<?> read(C9380c c9380c, C9374a c9374a, Class<? extends List<?>> cls) {
        return m26936a(c9380c, c9374a);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, List<?> list) {
        try {
            Object[] objArr = (Object[]) this.f28351a.get(list);
            c9376c.m24419a(objArr.length, true);
            c9380c.m24389a(c9376c, (Class) objArr.getClass().getComponentType());
            for (Object obj : objArr) {
                c9380c.m24388a(c9376c, obj);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
