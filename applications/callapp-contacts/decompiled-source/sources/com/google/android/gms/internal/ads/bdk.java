package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdk.class */
public final class bdk implements dsi<bcr> {

    /* renamed from: a  reason: collision with root package name */
    private final bde f24214a;

    private bdk(bde bdeVar) {
        this.f24214a = bdeVar;
    }

    public static bdk a(bde bdeVar) {
        return new bdk(bdeVar);
    }

    public static bcr b(bde bdeVar) {
        return (bcr) dso.b(bdeVar.f24202a);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return b(this.f24214a);
    }
}
