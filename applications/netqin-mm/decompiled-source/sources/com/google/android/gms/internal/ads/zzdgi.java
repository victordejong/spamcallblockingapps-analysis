package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzdgi;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgi.class */
public final class zzdgi implements zzdgx<zzdgj> {

    /* renamed from: a */
    public final zzdzb f27282a;

    /* renamed from: b */
    public final Context f27283b;

    /* renamed from: c */
    public final zzbbx f27284c;

    public zzdgi(zzdzb zzdzbVar, Context context, zzbbx zzbbxVar) {
        this.f27282a = zzdzbVar;
        this.f27283b = context;
        this.f27284c = zzbbxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdgj> mo13576a() {
        return this.f27282a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.gu

            /* renamed from: a */
            public final zzdgi f13224a;

            {
                this.f13224a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13224a.m13610b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdgj m13610b() throws Exception {
        boolean a = Wrappers.m17026b(this.f27283b).m17036a();
        zzp.m17969c();
        boolean k = zzayu.m16083k(this.f27283b);
        String str = this.f27284c.f24759a;
        zzp.m17967e();
        boolean e = zzazd.m16044e();
        zzp.m17969c();
        return new zzdgj(a, k, str, e, zzayu.m16086h(this.f27283b), DynamiteModule.m16986b(this.f27283b, ModuleDescriptor.MODULE_ID), DynamiteModule.m16992a(this.f27283b, ModuleDescriptor.MODULE_ID));
    }
}
