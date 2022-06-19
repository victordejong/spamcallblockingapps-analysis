package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brc.class */
public final class brc implements cto {

    /* renamed from: a */
    private final brb f44537a;

    public brc(brb brbVar) {
        this.f44537a = brbVar;
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17238a(ctj ctjVar, String str) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() || ctj.RENDERER != ctjVar) {
            return;
        }
        this.f44537a.m17655a(zzr.zzlc().mo19038b());
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17237a(ctj ctjVar, String str, Throwable th) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() || ctj.RENDERER != ctjVar || this.f44537a.m17652c() == 0) {
            return;
        }
        this.f44537a.m17653b(zzr.zzlc().mo19038b() - this.f44537a.m17652c());
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: a */
    public final void mo17236a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    /* renamed from: b */
    public final void mo17235b(ctj ctjVar, String str) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() || ctj.RENDERER != ctjVar || this.f44537a.m17652c() == 0) {
            return;
        }
        this.f44537a.m17653b(zzr.zzlc().mo19038b() - this.f44537a.m17652c());
    }
}
