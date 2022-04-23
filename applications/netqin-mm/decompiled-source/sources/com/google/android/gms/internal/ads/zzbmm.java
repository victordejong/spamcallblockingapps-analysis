package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmm.class */
public final class zzbmm implements zzeoy<zzbmh> {

    /* renamed from: a */
    public final zzeph<Context> f25178a;

    /* renamed from: b */
    public final zzeph<Executor> f25179b;

    /* renamed from: c */
    public final zzeph<ScheduledExecutorService> f25180c;

    /* renamed from: d */
    public final zzeph<zzdog> f25181d;

    /* renamed from: e */
    public final zzeph<zzdnv> f25182e;

    /* renamed from: f */
    public final zzeph<zzdsr> f25183f;

    /* renamed from: g */
    public final zzeph<zzdor> f25184g;

    /* renamed from: h */
    public final zzeph<View> f25185h;

    /* renamed from: i */
    public final zzeph<zzeg> f25186i;

    /* renamed from: j */
    public final zzeph<zzacb> f25187j;

    /* renamed from: k */
    public final zzeph<zzacg> f25188k;

    public zzbmm(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<ScheduledExecutorService> zzephVar3, zzeph<zzdog> zzephVar4, zzeph<zzdnv> zzephVar5, zzeph<zzdsr> zzephVar6, zzeph<zzdor> zzephVar7, zzeph<View> zzephVar8, zzeph<zzeg> zzephVar9, zzeph<zzacb> zzephVar10, zzeph<zzacg> zzephVar11) {
        this.f25178a = zzephVar;
        this.f25179b = zzephVar2;
        this.f25180c = zzephVar3;
        this.f25181d = zzephVar4;
        this.f25182e = zzephVar5;
        this.f25183f = zzephVar6;
        this.f25184g = zzephVar7;
        this.f25185h = zzephVar8;
        this.f25186i = zzephVar9;
        this.f25187j = zzephVar10;
        this.f25188k = zzephVar11;
    }

    /* renamed from: a */
    public static zzbmm m15311a(zzeph<Context> zzephVar, zzeph<Executor> zzephVar2, zzeph<ScheduledExecutorService> zzephVar3, zzeph<zzdog> zzephVar4, zzeph<zzdnv> zzephVar5, zzeph<zzdsr> zzephVar6, zzeph<zzdor> zzephVar7, zzeph<View> zzephVar8, zzeph<zzeg> zzephVar9, zzeph<zzacb> zzephVar10, zzeph<zzacg> zzephVar11) {
        return new zzbmm(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6, zzephVar7, zzephVar8, zzephVar9, zzephVar10, zzephVar11);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbmh(this.f25178a.get(), this.f25179b.get(), this.f25180c.get(), this.f25181d.get(), this.f25182e.get(), this.f25183f.get(), this.f25184g.get(), this.f25185h.get(), this.f25186i.get(), this.f25187j.get(), this.f25188k.get());
    }
}
