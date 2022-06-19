package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Collection;
/* renamed from: com.google.android.play.core.internal.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/c0.class */
public final class C8477c0<T> {

    /* renamed from: a */
    private final Object f38028a;

    /* renamed from: b */
    private final Field f38029b;

    /* renamed from: c */
    private final Class<T> f38030c;

    public C8477c0(Object obj, Field field, Class<T> cls) {
        this.f38028a = obj;
        this.f38029b = field;
        this.f38030c = cls;
    }

    public C8477c0(Object obj, Field field, Class cls, byte[] bArr) {
        this(obj, field, Array.newInstance(cls, 0).getClass());
    }

    /* renamed from: f */
    private Class m3552f() {
        return m3555c().getType().getComponentType();
    }

    /* renamed from: a */
    public final T m3557a() {
        try {
            return this.f38030c.cast(this.f38029b.get(this.f38028a));
        } catch (Exception e) {
            throw new C8474bi(String.format("Failed to get value of field %s of type %s on object of type %s", this.f38029b.getName(), this.f38028a.getClass().getName(), this.f38030c.getName()), e);
        }
    }

    /* renamed from: b */
    public final void m3556b(T t) {
        try {
            this.f38029b.set(this.f38028a, t);
        } catch (Exception e) {
            throw new C8474bi(String.format("Failed to set value of field %s of type %s on object of type %s", this.f38029b.getName(), this.f38028a.getClass().getName(), this.f38030c.getName()), e);
        }
    }

    /* renamed from: c */
    protected final Field m3555c() {
        return this.f38029b;
    }

    /* renamed from: d */
    public void m3554d(Collection collection) {
        Object[] objArr = (Object[]) m3557a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(m3552f(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        for (Object obj : collection) {
            objArr2[length] = obj;
            length++;
        }
        m3556b(objArr2);
    }

    /* renamed from: e */
    public void m3553e(Collection collection) {
        Object[] objArr = (Object[]) m3557a();
        Object[] objArr2 = (Object[]) Array.newInstance(m3552f(), (objArr == null ? 0 : objArr.length) + collection.size());
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, collection.size(), objArr.length);
        }
        int i = 0;
        for (Object obj : collection) {
            objArr2[i] = obj;
            i++;
        }
        m3556b(objArr2);
    }
}
