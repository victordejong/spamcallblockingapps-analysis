package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bqi.class */
public final class bqi implements axs {

    /* renamed from: c  reason: collision with root package name */
    private final String f24892c;

    /* renamed from: d  reason: collision with root package name */
    private final cty f24893d;

    /* renamed from: a  reason: collision with root package name */
    private boolean f24890a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f24891b = false;
    private final zzf e = zzr.zzkz().d();

    public bqi(String str, cty ctyVar) {
        this.f24892c = str;
        this.f24893d = ctyVar;
    }

    private final ctz c(String str) {
        return ctz.a(str).a("tms", Long.toString(zzr.zzlc().b(), 10)).a("tid", this.e.zzzn() ? "" : this.f24892c);
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a() {
        synchronized (this) {
            if (!this.f24890a) {
                this.f24893d.a(c("init_started"));
                this.f24890a = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a(String str) {
        this.f24893d.a(c("adapter_init_started").a("ancn", str));
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void a(String str, String str2) {
        this.f24893d.a(c("adapter_init_finished").a("ancn", str).a("rqe", str2));
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void b() {
        synchronized (this) {
            if (!this.f24891b) {
                this.f24893d.a(c("init_finished"));
                this.f24891b = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.axs
    public final void b(String str) {
        this.f24893d.a(c("adapter_init_finished").a("ancn", str));
    }
}
