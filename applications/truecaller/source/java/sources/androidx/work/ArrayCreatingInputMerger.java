package androidx.work;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p1727n3.p1834m0.AbstractC26835k;
import p1727n3.p1834m0.C26829f;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends AbstractC26835k {
    @Override // p1727n3.p1834m0.AbstractC26835k
    /* renamed from: a */
    public C26829f mo1297a(List<C26829f> list) {
        C26829f.C26830a c26830a = new C26829f.C26830a();
        HashMap hashMap = new HashMap();
        for (C26829f c26829f : list) {
            for (Map.Entry<String, Object> entry : c26829f.m1303d().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = hashMap.get(key);
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
                        value = m42612b(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = m42612b(value, obj);
                    }
                } else if (!cls.isArray()) {
                    Object newInstance3 = Array.newInstance(value.getClass(), 1);
                    Array.set(newInstance3, 0, value);
                    value = newInstance3;
                }
                hashMap.put(key, value);
            }
        }
        c26830a.m1298b(hashMap);
        return c26830a.m1299a();
    }

    /* renamed from: b */
    public final Object m42612b(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }
}
