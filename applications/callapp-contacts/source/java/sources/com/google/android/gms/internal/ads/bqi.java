package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqi.class */
public final class bqi implements axs {

    /* renamed from: c */
    private final String f44494c;

    /* renamed from: d */
    private final cty f44495d;

    /* renamed from: a */
    private boolean f44492a = false;

    /* renamed from: b */
    private boolean f44493b = false;

    /* renamed from: e */
    private final zzf f44496e = zzr.zzkz().m13975d();

    public bqi(String str, cty ctyVar) {
        this.f44494c = str;
        this.f44495d = ctyVar;
    }

    /* renamed from: c */
    private final ctz m17671c(String str) {
        return ctz.m17226a(str).m17225a("tms", Long.toString(zzr.zzlc().mo19038b(), 10)).m17225a("tid", this.f44496e.zzzn() ? "" : this.f44494c);
    }

    @Override // com.google.android.gms.internal.ads.axs
    /* renamed from: a */
    public final void mo17676a() {
        synchronized (this) {
            if (!this.f44492a) {
                this.f44495d.mo17215a(m17671c("init_started"));
                this.f44492a = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axs
    /* renamed from: a */
    public final void mo17675a(String str) {
        this.f44495d.mo17215a(m17671c("adapter_init_started").m17225a("ancn", str));
    }

    @Override // com.google.android.gms.internal.ads.axs
    /* renamed from: a */
    public final void mo17674a(String str, String str2) {
        this.f44495d.mo17215a(m17671c("adapter_init_finished").m17225a("ancn", str).m17225a("rqe", str2));
    }

    @Override // com.google.android.gms.internal.ads.axs
    /* renamed from: b */
    public final void mo17673b() {
        synchronized (this) {
            if (!this.f44493b) {
                this.f44495d.mo17215a(m17671c("init_finished"));
                this.f44493b = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axs
    /* renamed from: b */
    public final void mo17672b(String str) {
        this.f44495d.mo17215a(m17671c("adapter_init_finished").m17225a("ancn", str));
    }
}
