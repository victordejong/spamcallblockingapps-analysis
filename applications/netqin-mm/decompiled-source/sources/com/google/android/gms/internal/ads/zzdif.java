package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdic;
import com.google.android.gms.internal.ads.zzdif;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdif.class */
public final class zzdif implements zzdgx<zzdic> {

    /* renamed from: a */
    public zztg f27369a;

    /* renamed from: b */
    public zzdzb f27370b;

    /* renamed from: c */
    public Context f27371c;

    public zzdif(zztg zztgVar, zzdzb zzdzbVar, Context context) {
        this.f27369a = zztgVar;
        this.f27370b = zzdzbVar;
        this.f27371c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdic> mo13576a() {
        return this.f27370b.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.bv

            /* renamed from: a */
            public final zzdif f12501a;

            {
                this.f12501a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdif zzdifVar = this.f12501a;
                return new zzdic(zzdifVar.f27369a.mo11437a(zzdifVar.f27371c));
            }
        });
    }
}
