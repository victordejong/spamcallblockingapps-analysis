package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qi.class */
public final class qi extends fc {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ qg f28333a;

    private qi(qg qgVar) {
        this.f28333a = qgVar;
    }

    @Override // com.google.android.gms.internal.ads.ey
    public final void a(eo eoVar, String str) {
        if (this.f28333a.f28330b != null) {
            this.f28333a.f28330b.onCustomClick(this.f28333a.a(eoVar), str);
        }
    }
}
