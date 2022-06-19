package com.google.android.gms.internal.ads;

import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.sn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sn.class */
final class C3495sn implements crh<Void> {

    /* renamed from: a */
    private final /* synthetic */ crt f17338a;

    public C3495sn(C3492sk c3492sk, crt crtVar) {
        this.f17338a = crtVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(Void r4) {
        List list;
        list = C3492sk.f17321a;
        list.remove(this.f17338a);
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        List list;
        list = C3492sk.f17321a;
        list.remove(this.f17338a);
    }
}
