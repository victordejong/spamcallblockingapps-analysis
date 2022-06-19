package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eam.class */
final class eam implements ebc {

    /* renamed from: a */
    final int f48511a;

    /* renamed from: b */
    private final /* synthetic */ eah f48512b;

    public eam(eah eahVar, int i) {
        this.f48512b = eahVar;
        this.f48511a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0166, code lost:
        if (r0.length < r13) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0185, code lost:
        if (r0.length < r13) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v183, types: [long] */
    /* JADX WARN: Type inference failed for: r0v205, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    @Override // com.google.android.gms.internal.ads.ebc
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo15320a(com.google.android.gms.internal.ads.dvw r9, com.google.android.gms.internal.ads.dxm r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eam.mo15320a(com.google.android.gms.internal.ads.dvw, com.google.android.gms.internal.ads.dxm, boolean):int");
    }

    @Override // com.google.android.gms.internal.ads.ebc
    /* renamed from: a */
    public final void mo15321a(long j) {
        eah eahVar = this.f48512b;
        ebb valueAt = eahVar.f48479j.valueAt(this.f48511a);
        if (!eahVar.f48491v || j <= valueAt.f48581c.m15339f()) {
            valueAt.m15331a(j, true);
            return;
        }
        long m15338g = valueAt.f48581c.m15338g();
        if (m15338g == -1) {
            return;
        }
        valueAt.m15333a(m15338g);
    }

    @Override // com.google.android.gms.internal.ads.ebc
    /* renamed from: a */
    public final boolean mo15322a() {
        eah eahVar = this.f48512b;
        int i = this.f48511a;
        if (!eahVar.f48491v) {
            return !eahVar.m15371g() && eahVar.f48479j.valueAt(i).f48581c.m15341d();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ebc
    /* renamed from: b */
    public final void mo15319b() throws IOException {
        this.f48512b.f48474e.m15267c();
    }
}
