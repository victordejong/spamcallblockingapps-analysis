package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eax.class */
final class eax implements eat {

    /* renamed from: a */
    private final /* synthetic */ int f48551a;

    /* renamed from: b */
    private final /* synthetic */ eav f48552b;

    public eax(eav eavVar, int i) {
        this.f48552b = eavVar;
        this.f48551a = i;
    }

    @Override // com.google.android.gms.internal.ads.eat
    /* renamed from: a */
    public final void mo15350a(dwe dweVar, Object obj) {
        zznh zznhVar;
        eav eavVar = this.f48552b;
        int i = this.f48551a;
        if (eavVar.f48543h == null) {
            int mo15313a = dweVar.mo15313a();
            for (int i2 = 0; i2 < mo15313a; i2++) {
                dweVar.mo15312a(i2, eavVar.f48538c);
            }
            if (eavVar.f48542g == -1) {
                eavVar.f48542g = dweVar.mo15309b();
            } else if (dweVar.mo15309b() != eavVar.f48542g) {
                zznhVar = new zznh(1);
                eavVar.f48543h = zznhVar;
            }
            zznhVar = null;
            eavVar.f48543h = zznhVar;
        }
        if (eavVar.f48543h == null) {
            eavVar.f48537b.remove(eavVar.f48536a[i]);
            if (i == 0) {
                eavVar.f48540e = dweVar;
                eavVar.f48541f = obj;
            }
            if (!eavVar.f48537b.isEmpty()) {
                return;
            }
            eavVar.f48539d.mo15350a(eavVar.f48540e, eavVar.f48541f);
        }
    }
}
