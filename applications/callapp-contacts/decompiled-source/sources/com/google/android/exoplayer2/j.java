package com.google.android.exoplayer2;

import com.google.android.exoplayer2.trackselection.c;
import com.google.android.exoplayer2.upstream.b;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.a;
import com.mopub.volley.DefaultRetryPolicy;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/j.class */
public final class j implements s {

    /* renamed from: a  reason: collision with root package name */
    private final k f21374a;

    /* renamed from: b  reason: collision with root package name */
    private final long f21375b;

    /* renamed from: c  reason: collision with root package name */
    private final long f21376c;

    /* renamed from: d  reason: collision with root package name */
    private final long f21377d;
    private final long e;
    private final int f;
    private final boolean g;
    private final long h;
    private final boolean i;
    private int j;
    private boolean k;

    public j() {
        this(new k(true, 65536), ApiErrorData.ErrorCodes.InternalServerError.InternalError, ApiErrorData.ErrorCodes.InternalServerError.InternalError, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 5000, -1, false, 0, false);
    }

    protected j(k kVar, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        a(i3, 0, "bufferForPlaybackMs", "0");
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        a(i6, 0, "backBufferDurationMs", "0");
        this.f21374a = kVar;
        this.f21375b = f.b(i);
        this.f21376c = f.b(i2);
        this.f21377d = f.b(i3);
        this.e = f.b(i4);
        this.f = i5;
        this.j = i5 == -1 ? 13107200 : i5;
        this.g = z;
        this.h = f.b(i6);
        this.i = z2;
    }

    private static void a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        a.a(z, str + " cannot be less than " + str2);
    }

    private void a(boolean z) {
        int i = this.f;
        int i2 = i;
        if (i == -1) {
            i2 = 13107200;
        }
        this.j = i2;
        this.k = false;
        if (z) {
            this.f21374a.d();
        }
    }

    @Override // com.google.android.exoplayer2.s
    public final void a() {
        a(false);
    }

    @Override // com.google.android.exoplayer2.s
    public final void a(af[] afVarArr, c[] cVarArr) {
        int i = this.f;
        int i2 = i;
        if (i == -1) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = 13107200;
                if (i3 >= afVarArr.length) {
                    i2 = Math.max(13107200, i4);
                    break;
                }
                i4 = i4;
                if (cVarArr[i3] != null) {
                    int a2 = afVarArr[i3].a();
                    if (a2 == 0) {
                        i5 = 144310272;
                    } else if (a2 != 1) {
                        if (a2 == 2) {
                            i5 = 131072000;
                        } else if (a2 == 3 || a2 == 5 || a2 == 6) {
                            i5 = 131072;
                        } else if (a2 == 7) {
                            i5 = 0;
                        } else {
                            throw new IllegalArgumentException();
                        }
                    }
                    i4 += i5;
                }
                i3++;
            }
        }
        this.j = i2;
        this.f21374a.a(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r8, float r10) {
        /*
            r7 = this;
            r0 = r7
            com.google.android.exoplayer2.upstream.k r0 = r0.f21374a
            int r0 = r0.e()
            r11 = r0
            r0 = r7
            int r0 = r0.j
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r11
            r1 = r12
            if (r0 < r1) goto L_0x001f
            r0 = 1
            r11 = r0
            goto L_0x0022
        L_0x001f:
            r0 = 0
            r11 = r0
        L_0x0022:
            r0 = r7
            long r0 = r0.f21375b
            r14 = r0
            r0 = r14
            r16 = r0
            r0 = r10
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0041
            r0 = r14
            r1 = r10
            long r0 = com.google.android.exoplayer2.util.af.a(r0, r1)
            r1 = r7
            long r1 = r1.f21376c
            long r0 = java.lang.Math.min(r0, r1)
            r16 = r0
        L_0x0041:
            r0 = r8
            r1 = r16
            r2 = 500000(0x7a120, double:2.47033E-318)
            long r1 = java.lang.Math.max(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0085
            r0 = r13
            r18 = r0
            r0 = r7
            boolean r0 = r0.g
            if (r0 != 0) goto L_0x0068
            r0 = r11
            if (r0 != 0) goto L_0x0065
            r0 = r13
            r18 = r0
            goto L_0x0068
        L_0x0065:
            r0 = 0
            r18 = r0
        L_0x0068:
            r0 = r7
            r1 = r18
            r0.k = r1
            r0 = r18
            if (r0 != 0) goto L_0x0098
            r0 = r8
            r1 = 500000(0x7a120, double:2.47033E-318)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0098
            java.lang.String r0 = "DefaultLoadControl"
            java.lang.String r1 = "Target buffer size reached with less than 500ms of buffered media data."
            com.google.android.exoplayer2.util.n.a(r0, r1)
            goto L_0x0098
        L_0x0085:
            r0 = r8
            r1 = r7
            long r1 = r1.f21376c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0093
            r0 = r11
            if (r0 == 0) goto L_0x0098
        L_0x0093:
            r0 = r7
            r1 = 0
            r0.k = r1
        L_0x0098:
            r0 = r7
            boolean r0 = r0.k
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.j.a(long, float):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r6, float r8, boolean r9, long r10) {
        /*
            r5 = this;
            r0 = r6
            r1 = r8
            long r0 = com.google.android.exoplayer2.util.af.b(r0, r1)
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0014
            r0 = r5
            long r0 = r0.e
            r6 = r0
            goto L_0x0019
        L_0x0014:
            r0 = r5
            long r0 = r0.f21377d
            r6 = r0
        L_0x0019:
            r0 = r6
            r14 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0031
            r0 = r10
            r1 = 2
            long r0 = r0 / r1
            r1 = r6
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
        L_0x0031:
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x005a
            r0 = r12
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005a
            r0 = r5
            boolean r0 = r0.g
            if (r0 != 0) goto L_0x0058
            r0 = r5
            com.google.android.exoplayer2.upstream.k r0 = r0.f21374a
            int r0 = r0.e()
            r1 = r5
            int r1 = r1.j
            if (r0 < r1) goto L_0x0058
            goto L_0x005a
        L_0x0058:
            r0 = 0
            return r0
        L_0x005a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.j.a(long, float, boolean, long):boolean");
    }

    @Override // com.google.android.exoplayer2.s
    public final void b() {
        a(true);
    }

    @Override // com.google.android.exoplayer2.s
    public final void c() {
        a(true);
    }

    @Override // com.google.android.exoplayer2.s
    public final b d() {
        return this.f21374a;
    }

    @Override // com.google.android.exoplayer2.s
    public final long e() {
        return this.h;
    }

    @Override // com.google.android.exoplayer2.s
    public final boolean f() {
        return this.i;
    }
}
