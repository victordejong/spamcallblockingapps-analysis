package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnh.class */
public final class zzcnh implements zzeoy<Set<zzcab<zzbuh>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26296a;

    /* renamed from: b */
    public final zzeph<Executor> f26297b;

    public zzcnh(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26296a = zzephVar;
        this.f26297b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnh m14024a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnh(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuh>> e = zzcni.m14018e(this.f26296a.get(), this.f26297b.get());
        zzepe.m12187a(e, "Cannot return null from a non-@Nullable @Provides method");
        return e;
    }
}
