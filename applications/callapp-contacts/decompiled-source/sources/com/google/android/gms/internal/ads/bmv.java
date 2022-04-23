package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmv.class */
final class bmv extends ir {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Object f24727a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f24728b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ long f24729c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ zp f24730d;
    private final /* synthetic */ bmi e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bmv(bmi bmiVar, Object obj, String str, long j, zp zpVar) {
        this.e = bmiVar;
        this.f24727a = obj;
        this.f24728b = str;
        this.f24729c = j;
        this.f24730d = zpVar;
    }

    @Override // com.google.android.gms.internal.ads.io
    public final void a() {
        synchronized (this.f24727a) {
            this.e.a(this.f24728b, true, "", (int) (zzr.zzlc().b() - this.f24729c));
            this.e.k.b(this.f24728b);
            this.e.l.b(this.f24728b);
            this.f24730d.set(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.io
    public final void a(String str) {
        synchronized (this.f24727a) {
            this.e.a(this.f24728b, false, str, (int) (zzr.zzlc().b() - this.f24729c));
            this.e.k.a(this.f24728b, "error");
            this.e.l.a(this.f24728b, "error");
            this.f24730d.set(Boolean.FALSE);
        }
    }
}
