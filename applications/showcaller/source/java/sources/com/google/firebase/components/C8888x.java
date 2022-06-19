package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9246a;
import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.components.x */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/x.class */
public class C8888x<T> implements AbstractC9247b<T> {

    /* renamed from: a */
    private static final AbstractC9246a<Object> f38851a = C8886v.m2427b();

    /* renamed from: b */
    private static final AbstractC9247b<Object> f38852b = C8887w.m2426a();

    /* renamed from: c */
    private AbstractC9246a<T> f38853c;

    /* renamed from: d */
    private volatile AbstractC9247b<T> f38854d;

    private C8888x(AbstractC9246a<T> abstractC9246a, AbstractC9247b<T> abstractC9247b) {
        this.f38853c = abstractC9246a;
        this.f38854d = abstractC9247b;
    }

    /* renamed from: a */
    public static <T> C8888x<T> m2425a() {
        return new C8888x<>(f38851a, f38852b);
    }

    /* renamed from: b */
    public static /* synthetic */ void m2424b(AbstractC9247b abstractC9247b) {
    }

    /* renamed from: c */
    public static /* synthetic */ Object m2423c() {
        return null;
    }

    /* renamed from: d */
    public void m2422d(AbstractC9247b<T> abstractC9247b) {
        AbstractC9246a<T> abstractC9246a;
        if (this.f38854d == f38852b) {
            synchronized (this) {
                abstractC9246a = this.f38853c;
                this.f38853c = null;
                this.f38854d = abstractC9247b;
            }
            abstractC9246a.mo1416a(abstractC9247b);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    @Override // com.google.firebase.p313k.AbstractC9247b
    public T get() {
        return this.f38854d.get();
    }
}
