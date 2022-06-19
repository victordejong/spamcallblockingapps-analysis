package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgl.class */
public final class cgl implements chb<cgm> {

    /* renamed from: a */
    final Context f45735a;

    /* renamed from: b */
    final zzbar f45736b;

    /* renamed from: c */
    private final dbs f45737c;

    public cgl(dbs dbsVar, Context context, zzbar zzbarVar) {
        this.f45737c = dbsVar;
        this.f45735a = context;
        this.f45736b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgm> mo17449a() {
        return this.f45737c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgo

            /* renamed from: a */
            private final cgl f45748a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45748a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cgl cglVar = this.f45748a;
                boolean m19265a = C11946c.m19258a(cglVar.f45735a).m19265a();
                zzr.zzkv();
                boolean zzax = zzj.zzax(cglVar.f45735a);
                String str = cglVar.f45736b.zzbrz;
                zzr.zzkx();
                boolean zzzx = com.google.android.gms.ads.internal.util.zzr.zzzx();
                zzr.zzkv();
                return new cgm(m19265a, zzax, str, zzzx, zzj.zzau(cglVar.f45735a), DynamiteModule.m18968b(cglVar.f45735a, ModuleDescriptor.MODULE_ID), DynamiteModule.m18973a(cglVar.f45735a, ModuleDescriptor.MODULE_ID));
            }
        });
    }
}
