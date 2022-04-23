package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eai.class */
final class eai implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ean f27520a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ eah f27521b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eai(eah eahVar, ean eanVar) {
        this.f27521b = eahVar;
        this.f27520a = eanVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ean eanVar = this.f27520a;
        if (eanVar.f27531a != null) {
            eanVar.f27531a = null;
        }
        int size = this.f27521b.j.size();
        for (int i = 0; i < size; i++) {
            this.f27521b.j.valueAt(i).a();
        }
    }
}
