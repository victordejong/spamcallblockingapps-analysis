package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eax.class */
final class eax implements eat {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ int f27550a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ eav f27551b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eax(eav eavVar, int i) {
        this.f27551b = eavVar;
        this.f27550a = i;
    }

    @Override // com.google.android.gms.internal.ads.eat
    public final void a(dwe dweVar, Object obj) {
        zznh zznhVar;
        eav eavVar = this.f27551b;
        int i = this.f27550a;
        if (eavVar.h == null) {
            int a2 = dweVar.a();
            for (int i2 = 0; i2 < a2; i2++) {
                dweVar.a(i2, eavVar.f27544c);
            }
            if (eavVar.g == -1) {
                eavVar.g = dweVar.b();
            } else if (dweVar.b() != eavVar.g) {
                zznhVar = new zznh(1);
                eavVar.h = zznhVar;
            }
            zznhVar = null;
            eavVar.h = zznhVar;
        }
        if (eavVar.h == null) {
            eavVar.f27543b.remove(eavVar.f27542a[i]);
            if (i == 0) {
                eavVar.e = dweVar;
                eavVar.f = obj;
            }
            if (eavVar.f27543b.isEmpty()) {
                eavVar.f27545d.a(eavVar.e, eavVar.f);
            }
        }
    }
}
