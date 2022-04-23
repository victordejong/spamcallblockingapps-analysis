package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eam.class */
final class eam implements ebc {

    /* renamed from: a  reason: collision with root package name */
    final int f27529a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ eah f27530b;

    public eam(eah eahVar, int i) {
        this.f27530b = eahVar;
        this.f27529a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0166, code lost:
        if (r0.length < r13) goto L_0x0169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0185, code lost:
        if (r0.length < r13) goto L_0x0188;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.internal.ads.ebb] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r16v10, types: [long] */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.ebc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.dvw r9, com.google.android.gms.internal.ads.dxm r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eam.a(com.google.android.gms.internal.ads.dvw, com.google.android.gms.internal.ads.dxm, boolean):int");
    }

    @Override // com.google.android.gms.internal.ads.ebc
    public final void a(long j) {
        eah eahVar = this.f27530b;
        ebb valueAt = eahVar.j.valueAt(this.f27529a);
        if (!eahVar.v || j <= valueAt.f27566c.f()) {
            valueAt.a(j, true);
            return;
        }
        long g = valueAt.f27566c.g();
        if (g != -1) {
            valueAt.a(g);
        }
    }

    @Override // com.google.android.gms.internal.ads.ebc
    public final boolean a() {
        eah eahVar = this.f27530b;
        int i = this.f27529a;
        if (!eahVar.v) {
            return !eahVar.g() && eahVar.j.valueAt(i).f27566c.d();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ebc
    public final void b() throws IOException {
        this.f27530b.e.c();
    }
}
