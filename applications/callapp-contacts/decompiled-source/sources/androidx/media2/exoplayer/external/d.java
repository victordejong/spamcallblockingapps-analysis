package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.trackselection.f;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.upstream.i;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import com.mopub.volley.DefaultRetryPolicy;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/d.class */
public final class d implements y {

    /* renamed from: a  reason: collision with root package name */
    private final i f2962a;

    /* renamed from: b  reason: collision with root package name */
    private final long f2963b;

    /* renamed from: c  reason: collision with root package name */
    private final long f2964c;

    /* renamed from: d  reason: collision with root package name */
    private final long f2965d;
    private final long e;
    private final long f;
    private final int g;
    private final boolean h;
    private final long i;
    private final boolean j;
    private int k;
    private boolean l;
    private boolean m;

    public d() {
        this(new i(true, 65536));
    }

    @Deprecated
    public d(i iVar) {
        this(iVar, 15000, ApiErrorData.ErrorCodes.InternalServerError.InternalError, ApiErrorData.ErrorCodes.InternalServerError.InternalError, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 5000, -1, true, 0, false);
    }

    protected d(i iVar, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        a(i4, 0, "bufferForPlaybackMs", "0");
        a(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        a(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        a(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        a(i3, i, "maxBufferMs", "minBufferAudioMs");
        a(i3, i2, "maxBufferMs", "minBufferVideoMs");
        a(i7, 0, "backBufferDurationMs", "0");
        this.f2962a = iVar;
        this.f2963b = c.b(i);
        this.f2964c = c.b(i2);
        this.f2965d = c.b(i3);
        this.e = c.b(i4);
        this.f = c.b(i5);
        this.g = i6;
        this.h = z;
        this.i = c.b(i7);
        this.j = z2;
    }

    @Deprecated
    public d(i iVar, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(iVar, i, i, i2, i3, i4, i5, z, 0, false);
    }

    private static void a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        a.a(z, sb.toString());
    }

    private void a(boolean z) {
        this.k = 0;
        this.l = false;
        if (z) {
            this.f2962a.d();
        }
    }

    @Override // androidx.media2.exoplayer.external.y
    public final void a() {
        a(false);
    }

    @Override // androidx.media2.exoplayer.external.y
    public final void a(ag[] agVarArr, f fVar) {
        boolean z;
        int i = 0;
        while (true) {
            if (i < agVarArr.length) {
                if (agVarArr[i].a() == 2 && fVar.f3984b[i] != null) {
                    z = true;
                    break;
                }
                i++;
            } else {
                z = false;
                break;
            }
        }
        this.m = z;
        int i2 = this.g;
        int i3 = i2;
        if (i2 == -1) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 < agVarArr.length) {
                    i4 = i4;
                    if (fVar.f3984b[i5] != null) {
                        int i6 = 131072;
                        switch (agVarArr[i5].a()) {
                            case 0:
                                i6 = 36438016;
                                break;
                            case 1:
                                i6 = 3538944;
                                break;
                            case 2:
                                i6 = 32768000;
                                break;
                            case 3:
                            case 4:
                            case 5:
                                break;
                            case 6:
                                i6 = 0;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        i4 += i6;
                    }
                    i5++;
                }
            }
        }
        this.k = i3;
        this.f2962a.a(i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(long r6, float r8) {
        /*
            r5 = this;
            r0 = r5
            androidx.media2.exoplayer.external.upstream.i r0 = r0.f2962a
            int r0 = r0.e()
            r9 = r0
            r0 = r5
            int r0 = r0.k
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 < r1) goto L_0x001f
            r0 = 1
            r9 = r0
            goto L_0x0022
        L_0x001f:
            r0 = 0
            r9 = r0
        L_0x0022:
            r0 = r5
            boolean r0 = r0.m
            if (r0 == 0) goto L_0x0032
            r0 = r5
            long r0 = r0.f2964c
            r12 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            long r0 = r0.f2963b
            r12 = r0
        L_0x0038:
            r0 = r12
            r14 = r0
            r0 = r8
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = r12
            r1 = r8
            long r0 = androidx.media2.exoplayer.external.util.ac.a(r0, r1)
            r1 = r5
            long r1 = r1.f2965d
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
        L_0x0051:
            r0 = r6
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x007b
            r0 = r11
            r16 = r0
            r0 = r5
            boolean r0 = r0.h
            if (r0 != 0) goto L_0x0072
            r0 = r9
            if (r0 != 0) goto L_0x006f
            r0 = r11
            r16 = r0
            goto L_0x0072
        L_0x006f:
            r0 = 0
            r16 = r0
        L_0x0072:
            r0 = r5
            r1 = r16
            r0.l = r1
            goto L_0x008e
        L_0x007b:
            r0 = r6
            r1 = r5
            long r1 = r1.f2965d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0089
            r0 = r9
            if (r0 == 0) goto L_0x008e
        L_0x0089:
            r0 = r5
            r1 = 0
            r0.l = r1
        L_0x008e:
            r0 = r5
            boolean r0 = r0.l
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.d.a(long, float):boolean");
    }

    @Override // androidx.media2.exoplayer.external.y
    public final boolean a(long j, float f, boolean z) {
        long b2 = ac.b(j, f);
        long j2 = z ? this.f : this.e;
        if (j2 <= 0 || b2 >= j2) {
            return true;
        }
        return !this.h && this.f2962a.e() >= this.k;
    }

    @Override // androidx.media2.exoplayer.external.y
    public final void b() {
        a(true);
    }

    @Override // androidx.media2.exoplayer.external.y
    public final void c() {
        a(true);
    }

    @Override // androidx.media2.exoplayer.external.y
    public final b d() {
        return this.f2962a;
    }

    @Override // androidx.media2.exoplayer.external.y
    public final long e() {
        return this.i;
    }

    @Override // androidx.media2.exoplayer.external.y
    public final boolean f() {
        return this.j;
    }
}
