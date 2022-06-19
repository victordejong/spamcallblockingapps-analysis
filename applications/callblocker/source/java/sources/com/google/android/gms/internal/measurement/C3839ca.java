package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* renamed from: com.google.android.gms.internal.measurement.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ca.class */
final class C3839ca<T> implements AbstractC3836by<T>, Serializable {

    /* renamed from: a */
    private final AbstractC3836by<T> f17916a;

    /* renamed from: b */
    private volatile transient boolean f17917b;
    @NullableDecl

    /* renamed from: c */
    private transient T f17918c;

    public C3839ca(AbstractC3836by<T> abstractC3836by) {
        this.f17916a = (AbstractC3836by) C3834bw.m5851a(abstractC3836by);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3836by
    /* renamed from: a */
    public final T mo4957a() {
        T t;
        if (!this.f17917b) {
            synchronized (this) {
                if (!this.f17917b) {
                    t = this.f17916a.mo4957a();
                    this.f17918c = t;
                    this.f17917b = true;
                }
            }
            return t;
        }
        t = this.f17918c;
        return t;
    }

    public final String toString() {
        String str;
        if (this.f17917b) {
            String valueOf = String.valueOf(this.f17918c);
            str = new StringBuilder(String.valueOf(valueOf).length() + 25).append("<supplier that returned ").append(valueOf).append(">").toString();
        } else {
            str = this.f17916a;
        }
        String valueOf2 = String.valueOf(str);
        return new StringBuilder(String.valueOf(valueOf2).length() + 19).append("Suppliers.memoize(").append(valueOf2).append(")").toString();
    }
}
