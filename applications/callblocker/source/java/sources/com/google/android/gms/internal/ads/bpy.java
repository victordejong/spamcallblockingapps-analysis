package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bpy.class */
public final class bpy implements crh<T> {

    /* renamed from: a */
    private final /* synthetic */ String f11790a;

    /* renamed from: b */
    private final /* synthetic */ long f11791b;

    /* renamed from: c */
    private final /* synthetic */ cgr f11792c;

    /* renamed from: d */
    private final /* synthetic */ cgs f11793d;

    /* renamed from: e */
    private final /* synthetic */ bpv f11794e;

    public bpy(bpv bpvVar, String str, long j, cgr cgrVar, cgs cgsVar) {
        this.f11794e = bpvVar;
        this.f11790a = str;
        this.f11791b = j;
        this.f11792c = cgrVar;
        this.f11793d = cgsVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6719a(T t) {
        AbstractC2708e abstractC2708e;
        boolean z;
        bpx bpxVar;
        abstractC2708e = this.f11794e.f11780a;
        long mo13861b = abstractC2708e.mo13861b();
        this.f11794e.m11723a(this.f11790a, 0, mo13861b - this.f11791b, this.f11792c.f12978X);
        z = this.f11794e.f11783d;
        if (z) {
            bpxVar = this.f11794e.f11781b;
            bpxVar.m11720a(this.f11793d, this.f11792c, 0, null, mo13861b - this.f11791b);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        AbstractC2708e abstractC2708e;
        boolean z;
        bpx bpxVar;
        int i = 3;
        abstractC2708e = this.f11794e.f11780a;
        long mo13861b = abstractC2708e.mo13861b();
        if (th instanceof TimeoutException) {
            i = 2;
        } else if (!(th instanceof zzcpy)) {
            i = th instanceof CancellationException ? 4 : th instanceof zzdhk ? 5 : th instanceof zzcjk ? ((zzcjk) th).m6640a() == 3 ? 1 : 6 : 6;
        }
        this.f11794e.m11723a(this.f11790a, i, mo13861b - this.f11791b, this.f11792c.f12978X);
        z = this.f11794e.f11783d;
        if (z) {
            bpxVar = this.f11794e.f11781b;
            bpxVar.m11720a(this.f11793d, this.f11792c, i, th instanceof zzcnn ? (zzcnn) th : null, mo13861b - this.f11791b);
        }
    }
}
