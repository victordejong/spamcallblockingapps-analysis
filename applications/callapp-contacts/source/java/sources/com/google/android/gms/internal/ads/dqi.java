package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqi.class */
final class dqi extends dqh<dqj, dqj> {
    /* renamed from: a */
    private static void m16021a(Object obj, dqj dqjVar) {
        ((dnh) obj).zzitn = dqjVar;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    public final /* synthetic */ dqj mo16027a() {
        return dqj.m16003b();
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    final /* synthetic */ dqj mo16026a(dqj dqjVar) {
        dqj dqjVar2 = dqjVar;
        dqjVar2.f47418e = false;
        return dqjVar2;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    final /* synthetic */ void mo16025a(dqj dqjVar, int i, int i2) {
        dqjVar.m16008a((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    public final /* synthetic */ void mo16024a(dqj dqjVar, int i, long j) {
        dqjVar.m16008a(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    public final /* synthetic */ void mo16023a(dqj dqjVar, int i, dlw dlwVar) {
        dqjVar.m16008a((i << 3) | 2, dlwVar);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    final /* synthetic */ void mo16022a(dqj dqjVar, int i, dqj dqjVar2) {
        dqjVar.m16008a((i << 3) | 3, dqjVar2);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    public final /* synthetic */ void mo16020a(dqj dqjVar, drd drdVar) throws IOException {
        dqjVar.m16005a(drdVar);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: a */
    public final /* synthetic */ void mo16019a(Object obj, dqj dqjVar) {
        m16021a(obj, dqjVar);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: b */
    public final /* synthetic */ dqj mo16018b(Object obj) {
        return ((dnh) obj).zzitn;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: b */
    final /* synthetic */ void mo16017b(dqj dqjVar, int i, long j) {
        dqjVar.m16008a((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: b */
    public final /* synthetic */ void mo16016b(dqj dqjVar, drd drdVar) throws IOException {
        dqj dqjVar2 = dqjVar;
        if (drdVar.mo15922a() == drc.f47452b) {
            for (int i = dqjVar2.f47414a - 1; i >= 0; i--) {
                drdVar.mo15914a(dqjVar2.f47415b[i] >>> 3, dqjVar2.f47416c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < dqjVar2.f47414a; i2++) {
            drdVar.mo15914a(dqjVar2.f47415b[i2] >>> 3, dqjVar2.f47416c[i2]);
        }
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: b */
    public final /* synthetic */ void mo16015b(Object obj, dqj dqjVar) {
        m16021a(obj, dqjVar);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: c */
    public final /* synthetic */ dqj mo16014c(Object obj) {
        dqj dqjVar = ((dnh) obj).zzitn;
        dqj dqjVar2 = dqjVar;
        if (dqjVar == dqj.m16009a()) {
            dqjVar2 = dqj.m16003b();
            m16021a(obj, dqjVar2);
        }
        return dqjVar2;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: c */
    public final /* synthetic */ dqj mo16013c(dqj dqjVar, dqj dqjVar2) {
        dqj dqjVar3 = dqjVar;
        dqj dqjVar4 = dqjVar2;
        return dqjVar4.equals(dqj.m16009a()) ? dqjVar3 : dqj.m16006a(dqjVar3, dqjVar4);
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: d */
    public final void mo16012d(Object obj) {
        ((dnh) obj).zzitn.f47418e = false;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: e */
    public final /* synthetic */ int mo16011e(dqj dqjVar) {
        dqj dqjVar2 = dqjVar;
        int i = dqjVar2.f47417d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < dqjVar2.f47414a; i3++) {
            i2 += zzemk.m13690d(dqjVar2.f47415b[i3] >>> 3, (dlw) dqjVar2.f47416c[i3]);
        }
        dqjVar2.f47417d = i2;
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dqh
    /* renamed from: f */
    public final /* synthetic */ int mo16010f(dqj dqjVar) {
        return dqjVar.m16002c();
    }
}
