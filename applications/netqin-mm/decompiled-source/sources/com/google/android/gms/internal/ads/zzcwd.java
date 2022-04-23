package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwd.class */
public final class zzcwd extends zzcwe<zzboq> {

    /* renamed from: a */
    public final zzbix f26629a;

    /* renamed from: b */
    public final zzbtp.zza f26630b;

    /* renamed from: c */
    public final zzcyn f26631c;

    /* renamed from: d */
    public final zzbys f26632d;

    /* renamed from: e */
    public final zzccw f26633e;

    /* renamed from: f */
    public final zzbwk f26634f;

    /* renamed from: g */
    public final ViewGroup f26635g;

    public zzcwd(zzbix zzbixVar, zzbtp.zza zzaVar, zzcyn zzcynVar, zzbys zzbysVar, zzccw zzccwVar, zzbwk zzbwkVar, ViewGroup viewGroup) {
        this.f26629a = zzbixVar;
        this.f26630b = zzaVar;
        this.f26631c = zzcynVar;
        this.f26632d = zzbysVar;
        this.f26633e = zzccwVar;
        this.f26634f = zzbwkVar;
        this.f26635g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzcwe
    /* renamed from: a */
    public final zzdzc<zzboq> mo13823a(zzdok zzdokVar, Bundle bundle) {
        zzbpl h = this.f26629a.mo15381h();
        zzbtp.zza zzaVar = this.f26630b;
        zzaVar.m15061a(zzdokVar);
        zzaVar.m15064a(bundle);
        return h.mo15209c(zzaVar.m15066a()).mo15212a(this.f26632d).mo15210b(this.f26631c).mo15211a(this.f26633e).mo15213a(new zzbqh(this.f26634f)).mo15214a(new zzbol(this.f26635g)).mo15208e().mo15207a().m15123b();
    }
}
