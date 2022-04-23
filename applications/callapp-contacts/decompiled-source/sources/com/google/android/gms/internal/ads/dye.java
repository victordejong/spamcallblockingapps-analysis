package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dye.class */
final class dye implements dyj {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f27392a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final Stack<dyg> f27393b = new Stack<>();

    /* renamed from: c  reason: collision with root package name */
    private final dyo f27394c = new dyo();

    /* renamed from: d  reason: collision with root package name */
    private dyi f27395d;
    private int e;
    private int f;
    private long g;

    private final long a(dxt dxtVar, int i) throws IOException, InterruptedException {
        dxtVar.b(this.f27392a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f27392a[i2] & 255);
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.dyj
    public final void a() {
        this.e = 0;
        this.f27393b.clear();
        this.f27394c.a();
    }

    @Override // com.google.android.gms.internal.ads.dyj
    public final void a(dyi dyiVar) {
        this.f27395d = dyiVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.dyj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.dxt r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dye.a(com.google.android.gms.internal.ads.dxt):boolean");
    }
}
