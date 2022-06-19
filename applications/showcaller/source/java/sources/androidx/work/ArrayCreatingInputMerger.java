package androidx.work;

import androidx.work.C1238d;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends AbstractC1243h {
    /* renamed from: c */
    private Object m30622c(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }

    /* renamed from: d */
    private Object m30621d(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2);
        Object newInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        System.arraycopy(obj, 0, newInstance, 0, length);
        System.arraycopy(obj2, 0, newInstance, length, length2);
        return newInstance;
    }

    /* renamed from: e */
    private Object m30620e(Object obj, Object obj2) {
        Object newInstance = Array.newInstance(obj.getClass(), 2);
        Array.set(newInstance, 0, obj);
        Array.set(newInstance, 1, obj2);
        return newInstance;
    }

    /* renamed from: f */
    private Object m30619f(Object obj) {
        Object newInstance = Array.newInstance(obj.getClass(), 1);
        Array.set(newInstance, 0, obj);
        return newInstance;
    }

    @Override // androidx.work.AbstractC1243h
    /* renamed from: b */
    public C1238d mo30537b(List<C1238d> list) {
        C1238d.C1239a c1239a = new C1238d.C1239a();
        HashMap hashMap = new HashMap();
        for (C1238d c1238d : list) {
            for (Map.Entry<String, Object> entry : c1238d.m30551h().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = hashMap.get(key);
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        value = cls2.isArray() ? m30621d(obj, value) : m30620e(obj, value);
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        value = m30622c(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = m30622c(value, obj);
                    }
                } else if (!cls.isArray()) {
                    value = m30619f(value);
                }
                hashMap.put(key, value);
            }
        }
        c1239a.m30544d(hashMap);
        return c1239a.m30547a();
    }
}
