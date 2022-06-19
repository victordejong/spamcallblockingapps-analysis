package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhs.class */
public final class bhs implements AbstractC12623hy {

    /* renamed from: a */
    private final asp f43985a;

    /* renamed from: b */
    private final zzavy f43986b;

    /* renamed from: c */
    private final String f43987c;

    /* renamed from: d */
    private final String f43988d;

    public bhs(asp aspVar, cov covVar) {
        this.f43985a = aspVar;
        this.f43986b = covVar.f46265l;
        this.f43987c = covVar.f46263j;
        this.f43988d = covVar.f46264k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: a */
    public final void mo14604a() {
        this.f43985a.m18424d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: a */
    public final void mo14603a(zzavy zzavyVar) {
        int i;
        String str;
        zzavy zzavyVar2 = this.f43986b;
        if (zzavyVar2 != null) {
            zzavyVar = zzavyVar2;
        }
        if (zzavyVar != null) {
            String str2 = zzavyVar.type;
            i = zzavyVar.zzean;
            str = str2;
        } else {
            str = "";
            i = 1;
        }
        this.f43985a.m18427a(new BinderC12937tn(str, i), this.f43987c, this.f43988d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12623hy
    /* renamed from: b */
    public final void mo14602b() {
        this.f43985a.m18423e();
    }
}
