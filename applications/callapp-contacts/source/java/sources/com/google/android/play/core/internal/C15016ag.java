package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Collection;
/* renamed from: com.google.android.play.core.internal.ag */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ag.class */
public final class C15016ag<T> {

    /* renamed from: a */
    private final Object f54747a;

    /* renamed from: b */
    private final Field f54748b;

    /* renamed from: c */
    private final Class<T> f54749c;

    public C15016ag(Object obj, Field field, Class<T> cls) {
        this.f54747a = obj;
        this.f54748b = field;
        this.f54749c = cls;
    }

    public C15016ag(Object obj, Field field, Class cls, byte[] bArr) {
        this(obj, field, Array.newInstance(cls, 0).getClass());
    }

    /* renamed from: b */
    private Class m9608b() {
        return this.f54748b.getType().getComponentType();
    }

    /* renamed from: a */
    public final T m9611a() {
        try {
            return this.f54749c.cast(this.f54748b.get(this.f54747a));
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to get value of field %s of type %s on object of type %s", this.f54748b.getName(), this.f54747a.getClass().getName(), this.f54749c.getName()), e);
        }
    }

    /* renamed from: a */
    public final void m9610a(T t) {
        try {
            this.f54748b.set(this.f54747a, t);
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to set value of field %s of type %s on object of type %s", this.f54748b.getName(), this.f54747a.getClass().getName(), this.f54749c.getName()), e);
        }
    }

    /* renamed from: a */
    public final void m9609a(Collection collection) {
        Object[] objArr = (Object[]) m9611a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(m9608b(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        for (Object obj : collection) {
            objArr2[length] = obj;
            length++;
        }
        m9610a((C15016ag<T>) objArr2);
    }

    /* renamed from: b */
    public final void m9607b(Collection collection) {
        Object[] objArr = (Object[]) m9611a();
        Object[] objArr2 = (Object[]) Array.newInstance(m9608b(), (objArr == null ? 0 : objArr.length) + collection.size());
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, collection.size(), objArr.length);
        }
        int i = 0;
        for (Object obj : collection) {
            objArr2[i] = obj;
            i++;
        }
        m9610a((C15016ag<T>) objArr2);
    }
}
