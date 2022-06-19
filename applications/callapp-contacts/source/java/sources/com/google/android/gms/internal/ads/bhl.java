package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhl.class */
public final class bhl<T> implements AbstractC12607hi<Object> {

    /* renamed from: a */
    private final WeakReference<T> f43950a;

    /* renamed from: b */
    private final String f43951b;

    /* renamed from: c */
    private final AbstractC12607hi<T> f43952c;

    /* renamed from: d */
    private final /* synthetic */ bgy f43953d;

    private bhl(bgy bgyVar, WeakReference<T> weakReference, String str, AbstractC12607hi<T> abstractC12607hi) {
        this.f43953d = bgyVar;
        this.f43950a = weakReference;
        this.f43951b = str;
        this.f43952c = abstractC12607hi;
    }

    public /* synthetic */ bhl(bgy bgyVar, WeakReference weakReference, String str, AbstractC12607hi abstractC12607hi, bhd bhdVar) {
        this(bgyVar, weakReference, str, abstractC12607hi);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        T t = this.f43950a.get();
        if (t == null) {
            this.f43953d.m17864b(this.f43951b, this);
        } else {
            this.f43952c.mo14250a(t, map);
        }
    }
}
