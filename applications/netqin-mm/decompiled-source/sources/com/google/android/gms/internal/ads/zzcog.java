package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcog.class */
public final class zzcog implements zzeoy<zzcnu> {

    /* renamed from: a */
    public final zzeph<Executor> f26332a;

    /* renamed from: b */
    public final zzeph<Context> f26333b;

    /* renamed from: c */
    public final zzeph<WeakReference<Context>> f26334c;

    /* renamed from: d */
    public final zzeph<Executor> f26335d;

    /* renamed from: e */
    public final zzeph<zzcku> f26336e;

    /* renamed from: f */
    public final zzeph<ScheduledExecutorService> f26337f;

    /* renamed from: g */
    public final zzeph<zzcne> f26338g;

    /* renamed from: h */
    public final zzeph<zzbbx> f26339h;

    public zzcog(zzeph<Executor> zzephVar, zzeph<Context> zzephVar2, zzeph<WeakReference<Context>> zzephVar3, zzeph<Executor> zzephVar4, zzeph<zzcku> zzephVar5, zzeph<ScheduledExecutorService> zzephVar6, zzeph<zzcne> zzephVar7, zzeph<zzbbx> zzephVar8) {
        this.f26332a = zzephVar;
        this.f26333b = zzephVar2;
        this.f26334c = zzephVar3;
        this.f26335d = zzephVar4;
        this.f26336e = zzephVar5;
        this.f26337f = zzephVar6;
        this.f26338g = zzephVar7;
        this.f26339h = zzephVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcnu(this.f26332a.get(), this.f26333b.get(), this.f26334c.get(), this.f26335d.get(), this.f26336e.get(), this.f26337f.get(), this.f26338g.get(), this.f26339h.get());
    }
}
