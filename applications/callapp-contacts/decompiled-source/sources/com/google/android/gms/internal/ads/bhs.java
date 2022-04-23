package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhs.class */
public final class bhs implements hy {

    /* renamed from: a  reason: collision with root package name */
    private final asp f24476a;

    /* renamed from: b  reason: collision with root package name */
    private final zzavy f24477b;

    /* renamed from: c  reason: collision with root package name */
    private final String f24478c;

    /* renamed from: d  reason: collision with root package name */
    private final String f24479d;

    public bhs(asp aspVar, cov covVar) {
        this.f24476a = aspVar;
        this.f24477b = covVar.l;
        this.f24478c = covVar.j;
        this.f24479d = covVar.k;
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void a() {
        this.f24476a.d();
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void a(zzavy zzavyVar) {
        int i;
        String str;
        zzavy zzavyVar2 = this.f24477b;
        if (zzavyVar2 != null) {
            zzavyVar = zzavyVar2;
        }
        if (zzavyVar != null) {
            str = zzavyVar.type;
            i = zzavyVar.zzean;
        } else {
            str = "";
            i = 1;
        }
        this.f24476a.a(new tn(str, i), this.f24478c, this.f24479d);
    }

    @Override // com.google.android.gms.internal.ads.hy
    public final void b() {
        this.f24476a.e();
    }
}
