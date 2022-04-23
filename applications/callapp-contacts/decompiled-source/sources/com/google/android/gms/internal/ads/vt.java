package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vt.class */
final class vt implements dbi<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dbt f28452a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vt(vq vqVar, dbt dbtVar) {
        this.f28452a = dbtVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Void r4) {
        List list;
        list = vq.f28446c;
        list.remove(this.f28452a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        List list;
        list = vq.f28446c;
        list.remove(this.f28452a);
    }
}
