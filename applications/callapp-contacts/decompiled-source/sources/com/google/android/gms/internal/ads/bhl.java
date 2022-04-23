package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhl.class */
public final class bhl<T> implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<T> f24456a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24457b;

    /* renamed from: c  reason: collision with root package name */
    private final hi<T> f24458c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ bgy f24459d;

    private bhl(bgy bgyVar, WeakReference<T> weakReference, String str, hi<T> hiVar) {
        this.f24459d = bgyVar;
        this.f24456a = weakReference;
        this.f24457b = str;
        this.f24458c = hiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bhl(bgy bgyVar, WeakReference weakReference, String str, hi hiVar, bhd bhdVar) {
        this(bgyVar, weakReference, str, hiVar);
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        T t = this.f24456a.get();
        if (t == null) {
            this.f24459d.b(this.f24457b, this);
        } else {
            this.f24458c.a(t, map);
        }
    }
}
