package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqi.class */
final class dqi extends dqh<dqj, dqj> {
    /* renamed from: a  reason: avoid collision after fix types in other method */
    private static void a2(Object obj, dqj dqjVar) {
        ((dnh) obj).zzitn = dqjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ dqj a() {
        return dqj.b();
    }

    @Override // com.google.android.gms.internal.ads.dqh
    final /* synthetic */ dqj a(dqj dqjVar) {
        dqj dqjVar2 = dqjVar;
        dqjVar2.e = false;
        return dqjVar2;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    final /* synthetic */ void a(dqj dqjVar, int i, int i2) {
        dqjVar.a((i << 3) | 5, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void a(dqj dqjVar, int i, long j) {
        dqjVar.a(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void a(dqj dqjVar, int i, dlw dlwVar) {
        dqjVar.a((i << 3) | 2, dlwVar);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    final /* synthetic */ void a(dqj dqjVar, int i, dqj dqjVar2) {
        dqjVar.a((i << 3) | 3, dqjVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void a(dqj dqjVar, drd drdVar) throws IOException {
        dqjVar.a(drdVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void a(Object obj, dqj dqjVar) {
        a2(obj, dqjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ dqj b(Object obj) {
        return ((dnh) obj).zzitn;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    final /* synthetic */ void b(dqj dqjVar, int i, long j) {
        dqjVar.a((i << 3) | 1, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void b(dqj dqjVar, drd drdVar) throws IOException {
        dqj dqjVar2 = dqjVar;
        if (drdVar.a() == drc.f27121b) {
            for (int i = dqjVar2.f27103a - 1; i >= 0; i--) {
                drdVar.a(dqjVar2.f27104b[i] >>> 3, dqjVar2.f27105c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < dqjVar2.f27103a; i2++) {
            drdVar.a(dqjVar2.f27104b[i2] >>> 3, dqjVar2.f27105c[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ void b(Object obj, dqj dqjVar) {
        a2(obj, dqjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ dqj c(Object obj) {
        dqj dqjVar = ((dnh) obj).zzitn;
        dqj dqjVar2 = dqjVar;
        if (dqjVar == dqj.a()) {
            dqjVar2 = dqj.b();
            a2(obj, dqjVar2);
        }
        return dqjVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ dqj c(dqj dqjVar, dqj dqjVar2) {
        dqj dqjVar3 = dqjVar;
        dqj dqjVar4 = dqjVar2;
        return dqjVar4.equals(dqj.a()) ? dqjVar3 : dqj.a(dqjVar3, dqjVar4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final void d(Object obj) {
        ((dnh) obj).zzitn.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ int e(dqj dqjVar) {
        dqj dqjVar2 = dqjVar;
        int i = dqjVar2.f27106d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < dqjVar2.f27103a; i3++) {
            i2 += zzemk.d(dqjVar2.f27104b[i3] >>> 3, (dlw) dqjVar2.f27105c[i3]);
        }
        dqjVar2.f27106d = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dqh
    public final /* synthetic */ int f(dqj dqjVar) {
        return dqjVar.c();
    }
}
