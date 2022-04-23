package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brc.class */
public final class brc implements cto {

    /* renamed from: a  reason: collision with root package name */
    private final brb f24930a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public brc(brb brbVar) {
        this.f24930a = brbVar;
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str) {
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && ctj.RENDERER == ctjVar) {
            this.f24930a.a(zzr.zzlc().b());
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(ctj ctjVar, String str, Throwable th) {
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && ctj.RENDERER == ctjVar && this.f24930a.c() != 0) {
            this.f24930a.b(zzr.zzlc().b() - this.f24930a.c());
        }
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.cto
    public final void b(ctj ctjVar, String str) {
        if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && ctj.RENDERER == ctjVar && this.f24930a.c() != 0) {
            this.f24930a.b(zzr.zzlc().b() - this.f24930a.c());
        }
    }
}
