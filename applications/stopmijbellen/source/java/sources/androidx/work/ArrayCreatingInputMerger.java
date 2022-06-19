package androidx.work;

import androidx.work.C0680b;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p186o1.AbstractC3822f;
/* loaded from: classes-dex2jar.jar:androidx/work/ArrayCreatingInputMerger.class */
public final class ArrayCreatingInputMerger extends AbstractC3822f {
    @Override // p186o1.AbstractC3822f
    /* renamed from: a */
    public C0680b mo1775a(List<C0680b> list) {
        C0680b.C0681a c0681a = new C0680b.C0681a();
        HashMap hashMap = new HashMap();
        for (C0680b c0680b : list) {
            for (Map.Entry entry : Collections.unmodifiableMap(c0680b.f2640a).entrySet()) {
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
                        value = m7488b(obj, value);
                    } else if (!cls.isArray() || !cls.getComponentType().equals(cls2)) {
                        throw new IllegalArgumentException();
                    } else {
                        value = m7488b(value, obj);
                    }
                } else if (!cls.isArray()) {
                    Object newInstance3 = Array.newInstance(value.getClass(), 1);
                    Array.set(newInstance3, 0, value);
                    value = newInstance3;
                }
                hashMap.put(str, value);
            }
        }
        c0681a.m7481b(hashMap);
        return c0681a.m7482a();
    }

    /* renamed from: b */
    public final Object m7488b(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object newInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, newInstance, 0, length);
        Array.set(newInstance, length, obj2);
        return newInstance;
    }
}
