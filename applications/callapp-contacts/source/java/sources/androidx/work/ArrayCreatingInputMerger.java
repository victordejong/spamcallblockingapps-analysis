package androidx.work;

import androidx.work.C2992d;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends AbstractC2998i {
    /* renamed from: a */
    private static Object m39520a(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }

    @Override // androidx.work.AbstractC2998i
    /* renamed from: a */
    public final C2992d mo39492a(List<C2992d> list) {
        C2992d.C2993a c2993a = new C2992d.C2993a();
        HashMap hashMap = new HashMap();
        for (C2992d c2992d : list) {
            for (Map.Entry entry : Collections.unmodifiableMap(c2992d.f11151b).entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = hashMap.get(str);
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        if (cls2.isArray()) {
                            int length = Array.getLength(obj);
                            int length2 = Array.getLength(value);
                            Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
                            System.arraycopy(obj, 0, newInstance, 0, length);
                            System.arraycopy(value, 0, newInstance, length, length2);
                            value = newInstance;
                        } else {
                            Object newInstance2 = Array.newInstance(obj.getClass(), 2);
                            Array.set(newInstance2, 0, obj);
                            Array.set(newInstance2, 1, value);
                            value = newInstance2;
                        }
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        value = m39520a(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = m39520a(value, obj);
                    }
                } else if (!cls.isArray()) {
                    Object newInstance3 = Array.newInstance(value.getClass(), 1);
                    Array.set(newInstance3, 0, value);
                    value = newInstance3;
                }
                hashMap.put(str, value);
            }
        }
        c2993a.m39494a(hashMap);
        return c2993a.m39502a();
    }
}
