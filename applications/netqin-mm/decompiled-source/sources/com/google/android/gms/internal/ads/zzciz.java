package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciz.class */
public final class zzciz implements zzeoy<zzciy> {

    /* renamed from: a */
    public final zzeph<Context> f26099a;

    /* renamed from: b */
    public final zzeph<Executor> f26100b;

    /* renamed from: c */
    public final zzeph<zzeg> f26101c;

    /* renamed from: d */
    public final zzeph<zzbbx> f26102d;

    /* renamed from: e */
    public final zzeph<zzb> f26103e;

    /* renamed from: f */
    public final zzeph<zzbgr> f26104f;

    public zzciz(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<zzeg> zzephVar3, zzeph<zzbbx> zzephVar4, zzeph<zzb> zzephVar5, zzeph<zzbgr> zzephVar6) {
        this.f26099a = zzephVar;
        this.f26100b = zzephVar2;
        this.f26101c = zzephVar3;
        this.f26102d = zzephVar4;
        this.f26103e = zzephVar5;
        this.f26104f = zzephVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzciy(this.f26099a.get(), this.f26100b.get(), this.f26101c.get(), this.f26102d.get(), this.f26103e.get(), this.f26104f.get());
    }
}
