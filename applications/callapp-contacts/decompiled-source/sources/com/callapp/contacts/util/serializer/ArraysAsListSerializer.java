package com.callapp.contacts.util.serializer;

import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/ArraysAsListSerializer.class */
public class ArraysAsListSerializer extends h<List<?>> {

    /* renamed from: a  reason: collision with root package name */
    private Field f16266a;

    public ArraysAsListSerializer() {
        try {
            Field declaredField = Class.forName("java.util.Arrays$ArrayList").getDeclaredField("a");
            this.f16266a = declaredField;
            declaredField.setAccessible(true);
            setImmutable(true);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static List<?> a(c cVar, a aVar) {
        int a2 = aVar.a(true);
        Class cls = cVar.a(aVar).f19039a;
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
            Object newInstance = Array.newInstance(cls2, a2);
            for (int i = 0; i < a2; i++) {
                Array.set(newInstance, i, cVar.b(aVar));
            }
            return Arrays.asList((Object[]) newInstance);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ List<?> read(c cVar, a aVar, Class<? extends List<?>> cls) {
        return a(cVar, aVar);
    }

    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, List<?> list) {
        try {
            Object[] objArr = (Object[]) this.f16266a.get(list);
            cVar2.a(objArr.length, true);
            cVar.a(cVar2, (Class) objArr.getClass().getComponentType());
            for (Object obj : objArr) {
                cVar.a(cVar2, obj);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
