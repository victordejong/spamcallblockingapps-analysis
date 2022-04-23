package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahu.class */
final class ahu implements cat {

    /* renamed from: a  reason: collision with root package name */
    private aqz f23377a;

    /* renamed from: b  reason: collision with root package name */
    private cbj f23378b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ago f23379c;

    private ahu(ago agoVar) {
        this.f23379c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cat
    public final /* synthetic */ cat a(aqz aqzVar) {
        this.f23377a = (aqz) dso.a(aqzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    @Deprecated
    public final /* synthetic */ cat a(awm awmVar) {
        dso.a(awmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    public final /* synthetic */ cat a(cbj cbjVar) {
        this.f23378b = (cbj) dso.a(cbjVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cat
    public final cau a() {
        dso.a(this.f23377a, aqz.class);
        dso.a(this.f23378b, cbj.class);
        return new aht(this.f23379c, this.f23378b, new aow(), new blv(), this.f23377a, new cqo());
    }
}
