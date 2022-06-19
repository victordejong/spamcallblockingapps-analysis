package com.google.android.gms.internal.ads;

import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.vt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vt.class */
final class C12997vt implements dbi<Void> {

    /* renamed from: a */
    private final /* synthetic */ dbt f49947a;

    public C12997vt(C12994vq c12994vq, dbt dbtVar) {
        this.f49947a = dbtVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(Void r4) {
        List list;
        list = C12994vq.f49931c;
        list.remove(this.f49947a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        List list;
        list = C12994vq.f49931c;
        list.remove(this.f49947a);
    }
}
