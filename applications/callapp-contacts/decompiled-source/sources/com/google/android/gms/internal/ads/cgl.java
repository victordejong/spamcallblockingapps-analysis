package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgl.class */
public final class cgl implements chb<cgm> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25792a;

    /* renamed from: b  reason: collision with root package name */
    final zzbar f25793b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f25794c;

    public cgl(dbs dbsVar, Context context, zzbar zzbarVar) {
        this.f25794c = dbsVar;
        this.f25792a = context;
        this.f25793b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgm> a() {
        return this.f25794c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cgo

            /* renamed from: a  reason: collision with root package name */
            private final cgl f25802a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25802a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cgl cglVar = this.f25802a;
                boolean a2 = c.a(cglVar.f25792a).a();
                zzr.zzkv();
                boolean zzax = zzj.zzax(cglVar.f25792a);
                String str = cglVar.f25793b.zzbrz;
                zzr.zzkx();
                boolean zzzx = com.google.android.gms.ads.internal.util.zzr.zzzx();
                zzr.zzkv();
                return new cgm(a2, zzax, str, zzzx, zzj.zzau(cglVar.f25792a), DynamiteModule.b(cglVar.f25792a, ModuleDescriptor.MODULE_ID), DynamiteModule.a(cglVar.f25792a, ModuleDescriptor.MODULE_ID));
            }
        });
    }
}
