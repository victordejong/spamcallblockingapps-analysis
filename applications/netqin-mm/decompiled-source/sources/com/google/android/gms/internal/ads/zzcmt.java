package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcmt;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmt.class */
public final class zzcmt {

    /* renamed from: a */
    public final Map<String, String> f26261a = new ConcurrentHashMap();

    /* renamed from: b */
    public final /* synthetic */ zzcmu f26262b;

    @VisibleForTesting
    public zzcmt(zzcmu zzcmuVar) {
        this.f26262b = zzcmuVar;
    }

    /* renamed from: a */
    public static /* synthetic */ zzcmt m14049a(zzcmt zzcmtVar) {
        zzcmtVar.m14050a();
        return zzcmtVar;
    }

    /* renamed from: a */
    public final zzcmt m14050a() {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = this.f26261a;
        map = this.f26262b.f26265c;
        map2.putAll(map);
        return this;
    }

    /* renamed from: a */
    public final zzcmt m14048a(zzdnv zzdnvVar) {
        this.f26261a.put("aai", zzdnvVar.f27606v);
        return this;
    }

    /* renamed from: a */
    public final zzcmt m14047a(zzdnw zzdnwVar) {
        this.f26261a.put("gqi", zzdnwVar.f27612b);
        return this;
    }

    /* renamed from: a */
    public final zzcmt m14046a(String str, String str2) {
        this.f26261a.put(str, str2);
        return this;
    }

    /* renamed from: b */
    public final void m14045b() {
        Executor executor;
        executor = this.f26262b.f26264b;
        executor.execute(new Runnable(this) { // from class: c.d.b.d.g.a.el

            /* renamed from: a */
            public final zzcmt f12847a;

            {
                this.f12847a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f12847a.m14043d();
            }
        });
    }

    /* renamed from: c */
    public final String m14044c() {
        zzcmz zzcmzVar;
        zzcmzVar = this.f26262b.f26263a;
        return zzcmzVar.m14033b(this.f26261a);
    }

    /* renamed from: d */
    public final /* synthetic */ void m14043d() {
        zzcmz zzcmzVar;
        zzcmzVar = this.f26262b.f26263a;
        zzcmzVar.m14035a(this.f26261a);
    }
}
