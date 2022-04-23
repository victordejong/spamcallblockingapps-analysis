package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmu.class */
public final class zzcmu {

    /* renamed from: a */
    public final zzcmz f26263a;

    /* renamed from: b */
    public final Executor f26264b;

    /* renamed from: c */
    public final Map<String, String> f26265c;

    public zzcmu(zzcmz zzcmzVar, Executor executor) {
        this.f26263a = zzcmzVar;
        this.f26265c = zzcmzVar.m14037a();
        this.f26264b = executor;
    }

    /* renamed from: a */
    public final zzcmt m14042a() {
        zzcmt zzcmtVar = new zzcmt(this);
        zzcmt.m14049a(zzcmtVar);
        return zzcmtVar;
    }
}
