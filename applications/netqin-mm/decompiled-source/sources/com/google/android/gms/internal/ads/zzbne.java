package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbne.class */
public final class zzbne implements zzeoy<Set<zzcab<zzp>>> {

    /* renamed from: a */
    public final zzeph<zzbmu> f25238a;

    /* renamed from: b */
    public final zzeph<Executor> f25239b;

    /* renamed from: c */
    public final zzeph<JSONObject> f25240c;

    public zzbne(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        this.f25238a = zzephVar;
        this.f25239b = zzephVar2;
        this.f25240c = zzephVar3;
    }

    /* renamed from: a */
    public static zzbne m15289a(zzeph<zzbmu> zzephVar, zzeph<Executor> zzephVar2, zzeph<JSONObject> zzephVar3) {
        return new zzbne(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = this.f25240c.get() == null ? Collections.emptySet() : Collections.singleton(new zzcab(this.f25238a.get(), this.f25239b.get()));
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
