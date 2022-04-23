package androidx.work;

import androidx.work.d;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends i {
    private static Object a(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }

    @Override // androidx.work.i
    public final d a(List<d> list) {
        d.a aVar = new d.a();
        HashMap hashMap = new HashMap();
        for (d dVar : list) {
            for (Map.Entry entry : Collections.unmodifiableMap(dVar.f5978b).entrySet()) {
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
                        value = a(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = a(value, obj);
                    }
                } else if (!cls.isArray()) {
                    Object newInstance3 = Array.newInstance(value.getClass(), 1);
                    Array.set(newInstance3, 0, value);
                    value = newInstance3;
                }
                hashMap.put(str, value);
            }
        }
        aVar.a(hashMap);
        return aVar.a();
    }
}
