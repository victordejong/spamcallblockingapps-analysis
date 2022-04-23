package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzded.class */
public final class zzded implements zzeoy<zzddz> {

    /* renamed from: a */
    public final zzeph<zzams> f27199a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27200b;

    /* renamed from: c */
    public final zzeph<zzayr> f27201c;

    /* renamed from: d */
    public final zzeph<ApplicationInfo> f27202d;

    /* renamed from: e */
    public final zzeph<zzdok> f27203e;

    public zzded(zzeph<zzams> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<zzayr> zzephVar3, zzeph<ApplicationInfo> zzephVar4, zzeph<zzdok> zzephVar5) {
        this.f27199a = zzephVar;
        this.f27200b = zzephVar2;
        this.f27201c = zzephVar3;
        this.f27202d = zzephVar4;
        this.f27203e = zzephVar5;
    }

    /* renamed from: a */
    public static zzded m13637a(zzeph<zzams> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<zzayr> zzephVar3, zzeph<ApplicationInfo> zzephVar4, zzeph<zzdok> zzephVar5) {
        return new zzded(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzddz(this.f27199a.get(), this.f27200b.get(), this.f27201c.get(), this.f27202d.get(), this.f27203e.get());
    }
}
