package com.google.android.gms.internal.measurement;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.cd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cd.class */
final class C3842cd<T> implements AbstractC3836by<T> {

    /* renamed from: a */
    private volatile AbstractC3836by<T> f17920a;

    /* renamed from: b */
    private volatile boolean f17921b;
    @NullableDecl

    /* renamed from: c */
    private T f17922c;

    public C3842cd(AbstractC3836by<T> abstractC3836by) {
        this.f17920a = (AbstractC3836by) C3834bw.m5851a(abstractC3836by);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3836by
    /* renamed from: a */
    public final T mo4957a() {
        T t;
        if (!this.f17921b) {
            synchronized (this) {
                if (!this.f17921b) {
                    t = this.f17920a.mo4957a();
                    this.f17922c = t;
                    this.f17921b = true;
                    this.f17920a = null;
                }
            }
            return t;
        }
        t = this.f17922c;
        return t;
    }

    public final String toString() {
        AbstractC3836by<T> abstractC3836by = this.f17920a;
        String str = abstractC3836by;
        if (abstractC3836by == null) {
            String valueOf = String.valueOf(this.f17922c);
            str = new StringBuilder(String.valueOf(valueOf).length() + 25).append("<supplier that returned ").append(valueOf).append(">").toString();
        }
        String valueOf2 = String.valueOf(str);
        return new StringBuilder(String.valueOf(valueOf2).length() + 19).append("Suppliers.memoize(").append(valueOf2).append(")").toString();
    }
}
