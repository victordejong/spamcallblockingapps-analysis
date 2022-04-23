package com.google.android.play.core.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ag.class */
public final class ag<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31345a;

    /* renamed from: b  reason: collision with root package name */
    private final Field f31346b;

    /* renamed from: c  reason: collision with root package name */
    private final Class<T> f31347c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(Object obj, Field field, Class<T> cls) {
        this.f31345a = obj;
        this.f31346b = field;
        this.f31347c = cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(Object obj, Field field, Class cls, byte[] bArr) {
        this(obj, field, Array.newInstance(cls, 0).getClass());
    }

    private Class b() {
        return this.f31346b.getType().getComponentType();
    }

    public final T a() {
        try {
            return this.f31347c.cast(this.f31346b.get(this.f31345a));
        } catch (Exception e) {
            throw new bi(String.format("Failed to get value of field %s of type %s on object of type %s", this.f31346b.getName(), this.f31345a.getClass().getName(), this.f31347c.getName()), e);
        }
    }

    public final void a(T t) {
        try {
            this.f31346b.set(this.f31345a, t);
        } catch (Exception e) {
            throw new bi(String.format("Failed to set value of field %s of type %s on object of type %s", this.f31346b.getName(), this.f31345a.getClass().getName(), this.f31347c.getName()), e);
        }
    }

    public final void a(Collection collection) {
        Object[] objArr = (Object[]) a();
        int length = objArr == null ? 0 : objArr.length;
        Object[] objArr2 = (Object[]) Array.newInstance(b(), collection.size() + length);
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
        for (Object obj : collection) {
            objArr2[length] = obj;
            length++;
        }
        a((ag<T>) objArr2);
    }

    public final void b(Collection collection) {
        Object[] objArr = (Object[]) a();
        int i = 0;
        Object[] objArr2 = (Object[]) Array.newInstance(b(), (objArr == null ? 0 : objArr.length) + collection.size());
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, collection.size(), objArr.length);
        }
        for (Object obj : collection) {
            objArr2[i] = obj;
            i++;
        }
        a((ag<T>) objArr2);
    }
}
