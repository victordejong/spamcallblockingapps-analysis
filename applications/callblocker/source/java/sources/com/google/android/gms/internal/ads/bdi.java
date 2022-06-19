package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdi.class */
public final class bdi<T> implements AbstractC3131fa<Object> {

    /* renamed from: a */
    private final WeakReference<T> f11010a;

    /* renamed from: b */
    private final String f11011b;

    /* renamed from: c */
    private final AbstractC3131fa<T> f11012c;

    /* renamed from: d */
    private final /* synthetic */ bcy f11013d;

    private bdi(bcy bcyVar, WeakReference<T> weakReference, String str, AbstractC3131fa<T> abstractC3131fa) {
        this.f11013d = bcyVar;
        this.f11010a = weakReference;
        this.f11011b = str;
        this.f11012c = abstractC3131fa;
    }

    public /* synthetic */ bdi(bcy bcyVar, WeakReference weakReference, String str, AbstractC3131fa abstractC3131fa, bcz bczVar) {
        this(bcyVar, weakReference, str, abstractC3131fa);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final void mo7414a(Object obj, Map<String, String> map) {
        T t = this.f11010a.get();
        if (t == null) {
            this.f11013d.m12082b(this.f11011b, this);
        } else {
            this.f11012c.mo7414a(t, map);
        }
    }
}
