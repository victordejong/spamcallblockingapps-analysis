package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmv.class */
final class bmv extends AbstractBinderC12643ir {

    /* renamed from: a */
    private final /* synthetic */ Object f44308a;

    /* renamed from: b */
    private final /* synthetic */ String f44309b;

    /* renamed from: c */
    private final /* synthetic */ long f44310c;

    /* renamed from: d */
    private final /* synthetic */ C13103zp f44311d;

    /* renamed from: e */
    private final /* synthetic */ bmi f44312e;

    public bmv(bmi bmiVar, Object obj, String str, long j, C13103zp c13103zp) {
        this.f44312e = bmiVar;
        this.f44308a = obj;
        this.f44309b = str;
        this.f44310c = j;
        this.f44311d = c13103zp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12640io
    /* renamed from: a */
    public final void mo14597a() {
        synchronized (this.f44308a) {
            this.f44312e.m17734a(this.f44309b, true, "", (int) (zzr.zzlc().mo19038b() - this.f44310c));
            this.f44312e.f44269k.m17754b(this.f44309b);
            this.f44312e.f44270l.mo17672b(this.f44309b);
            this.f44311d.set(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12640io
    /* renamed from: a */
    public final void mo14596a(String str) {
        synchronized (this.f44308a) {
            this.f44312e.m17734a(this.f44309b, false, str, (int) (zzr.zzlc().mo19038b() - this.f44310c));
            this.f44312e.f44269k.m17756a(this.f44309b, "error");
            this.f44312e.f44270l.mo17674a(this.f44309b, "error");
            this.f44311d.set(Boolean.FALSE);
        }
    }
}
