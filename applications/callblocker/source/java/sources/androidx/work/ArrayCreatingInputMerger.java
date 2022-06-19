package androidx.work;

import androidx.work.C1133e;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends AbstractC1290j {
    /* renamed from: a */
    private Object m17981a(Object obj) {
        Object newInstance = Array.newInstance(obj.getClass(), 1);
        Array.set(newInstance, 0, obj);
        return newInstance;
    }

    /* renamed from: a */
    private Object m17980a(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        System.arraycopy(obj, 0, newInstance, 0, length);
        System.arraycopy(obj2, 0, newInstance, length, length2);
        return newInstance;
    }

    /* renamed from: b */
    private Object m17979b(Object obj, Object obj2) {
        Object newInstance = Array.newInstance(obj.getClass(), 2);
        Array.set(newInstance, 0, obj);
        Array.set(newInstance, 1, obj2);
        return newInstance;
    }

    /* renamed from: c */
    private Object m17978c(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }

    @Override // androidx.work.AbstractC1290j
    /* renamed from: a */
    public C1133e mo17547a(List<C1133e> list) {
        C1133e.C1134a c1134a = new C1133e.C1134a();
        HashMap hashMap = new HashMap();
        for (C1133e c1133e : list) {
            for (Map.Entry<String, Object> entry : c1133e.m17923a().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = hashMap.get(key);
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        value = cls2.isArray() ? m17980a(obj, value) : m17979b(obj, value);
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        value = m17978c(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = m17978c(value, obj);
                    }
                } else if (!cls.isArray()) {
                    value = m17981a(value);
                }
                hashMap.put(key, value);
            }
        }
        c1134a.m17908a(hashMap);
        return c1134a.m17912a();
    }
}
