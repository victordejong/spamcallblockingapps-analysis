package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnm.class */
public final class zzcnm implements zzeoy<Set<zzcab<zzbvs>>> {

    /* renamed from: a */
    public final zzcni f26302a;

    /* renamed from: b */
    public final zzeph<zzcns> f26303b;

    /* renamed from: c */
    public final zzeph<Executor> f26304c;

    public zzcnm(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26302a = zzcniVar;
        this.f26303b = zzephVar;
        this.f26304c = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnm m14009a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnm(zzcniVar, zzephVar, zzephVar2);
    }

    /* renamed from: a */
    public static Set<zzcab<zzbvs>> m14010a(zzcni zzcniVar, zzcns zzcnsVar, Executor executor) {
        Set<zzcab<zzbvs>> c = zzcni.m14020c(zzcnsVar, executor);
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14010a(this.f26302a, this.f26303b.get(), this.f26304c.get());
    }
}
