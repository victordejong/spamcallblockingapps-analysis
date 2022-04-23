package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbto.class */
public final class zzbto implements zzeoy<zzbtm> {

    /* renamed from: a */
    public final zzeph<zzdsi> f25514a;

    /* renamed from: b */
    public final zzeph<zzbbx> f25515b;

    /* renamed from: c */
    public final zzeph<ApplicationInfo> f25516c;

    /* renamed from: d */
    public final zzeph<String> f25517d;

    /* renamed from: e */
    public final zzeph<List<String>> f25518e;

    /* renamed from: f */
    public final zzeph<PackageInfo> f25519f;

    /* renamed from: g */
    public final zzeph<zzdzc<String>> f25520g;

    /* renamed from: h */
    public final zzeph<zzayr> f25521h;

    /* renamed from: i */
    public final zzeph<String> f25522i;

    /* renamed from: j */
    public final zzeph<zzdgw<Bundle>> f25523j;

    public zzbto(zzeph<zzdsi> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<ApplicationInfo> zzephVar3, zzeph<String> zzephVar4, zzeph<List<String>> zzephVar5, zzeph<PackageInfo> zzephVar6, zzeph<zzdzc<String>> zzephVar7, zzeph<zzayr> zzephVar8, zzeph<String> zzephVar9, zzeph<zzdgw<Bundle>> zzephVar10) {
        this.f25514a = zzephVar;
        this.f25515b = zzephVar2;
        this.f25516c = zzephVar3;
        this.f25517d = zzephVar4;
        this.f25518e = zzephVar5;
        this.f25519f = zzephVar6;
        this.f25520g = zzephVar7;
        this.f25521h = zzephVar8;
        this.f25522i = zzephVar9;
        this.f25523j = zzephVar10;
    }

    /* renamed from: a */
    public static zzbto m15073a(zzeph<zzdsi> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<ApplicationInfo> zzephVar3, zzeph<String> zzephVar4, zzeph<List<String>> zzephVar5, zzeph<PackageInfo> zzephVar6, zzeph<zzdzc<String>> zzephVar7, zzeph<zzayr> zzephVar8, zzeph<String> zzephVar9, zzeph<zzdgw<Bundle>> zzephVar10) {
        return new zzbto(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5, zzephVar6, zzephVar7, zzephVar8, zzephVar9, zzephVar10);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbtm(this.f25514a.get(), this.f25515b.get(), this.f25516c.get(), this.f25517d.get(), this.f25518e.get(), this.f25519f.get(), zzeov.m12197b(this.f25520g), this.f25521h.get(), this.f25522i.get(), this.f25523j.get());
    }
}
