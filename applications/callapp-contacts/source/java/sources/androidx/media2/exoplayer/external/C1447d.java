package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.trackselection.C1943f;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.C1972i;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import com.mopub.volley.DefaultRetryPolicy;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* renamed from: androidx.media2.exoplayer.external.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/d.class */
public final class C1447d implements AbstractC2059y {

    /* renamed from: a */
    private final C1972i f5519a;

    /* renamed from: b */
    private final long f5520b;

    /* renamed from: c */
    private final long f5521c;

    /* renamed from: d */
    private final long f5522d;

    /* renamed from: e */
    private final long f5523e;

    /* renamed from: f */
    private final long f5524f;

    /* renamed from: g */
    private final int f5525g;

    /* renamed from: h */
    private final boolean f5526h;

    /* renamed from: i */
    private final long f5527i;

    /* renamed from: j */
    private final boolean f5528j;

    /* renamed from: k */
    private int f5529k;

    /* renamed from: l */
    private boolean f5530l;

    /* renamed from: m */
    private boolean f5531m;

    public C1447d() {
        this(new C1972i(true, 65536));
    }

    @Deprecated
    public C1447d(C1972i c1972i) {
        this(c1972i, 15000, ApiErrorData.ErrorCodes.InternalServerError.InternalError, ApiErrorData.ErrorCodes.InternalServerError.InternalError, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 5000, -1, true, 0, false);
    }

    protected C1447d(C1972i c1972i, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        m42892a(i4, 0, "bufferForPlaybackMs", "0");
        m42892a(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m42892a(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        m42892a(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        m42892a(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m42892a(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m42892a(i3, i, "maxBufferMs", "minBufferAudioMs");
        m42892a(i3, i2, "maxBufferMs", "minBufferVideoMs");
        m42892a(i7, 0, "backBufferDurationMs", "0");
        this.f5519a = c1972i;
        this.f5520b = C1446c.m42893b(i);
        this.f5521c = C1446c.m42893b(i2);
        this.f5522d = C1446c.m42893b(i3);
        this.f5523e = C1446c.m42893b(i4);
        this.f5524f = C1446c.m42893b(i5);
        this.f5525g = i6;
        this.f5526h = z;
        this.f5527i = C1446c.m42893b(i7);
        this.f5528j = z2;
    }

    @Deprecated
    public C1447d(C1972i c1972i, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(c1972i, i, i, i2, i3, i4, i5, z, 0, false);
    }

    /* renamed from: a */
    private static void m42892a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        C1993a.m41687a(z, sb.toString());
    }

    /* renamed from: a */
    private void m42891a(boolean z) {
        this.f5529k = 0;
        this.f5530l = false;
        if (z) {
            this.f5519a.m41728d();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: a */
    public final void mo41417a() {
        m42891a(false);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: a */
    public final void mo41414a(AbstractC1375ag[] abstractC1375agArr, C1943f c1943f) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= abstractC1375agArr.length) {
                z = false;
                break;
            } else if (abstractC1375agArr[i].mo42938a() == 2 && c1943f.f7821b[i] != null) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        this.f5531m = z;
        int i2 = this.f5525g;
        int i3 = i2;
        if (i2 == -1) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 < abstractC1375agArr.length) {
                    int i6 = i4;
                    if (c1943f.f7821b[i5] != null) {
                        int i7 = 131072;
                        switch (abstractC1375agArr[i5].mo42938a()) {
                            case 0:
                                i7 = 36438016;
                                break;
                            case 1:
                                i7 = 3538944;
                                break;
                            case 2:
                                i7 = 32768000;
                                break;
                            case 3:
                            case 4:
                            case 5:
                                break;
                            case 6:
                                i7 = 0;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        i6 = i4 + i7;
                    }
                    i5++;
                    i4 = i6;
                }
            }
        }
        this.f5529k = i3;
        this.f5519a.m41733a(i3);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: a */
    public final boolean mo41416a(long j, float f) {
        boolean z = this.f5519a.m41727e() >= this.f5529k;
        char c = this.f5531m ? this.f5521c : this.f5520b;
        char c2 = c;
        if (f > 1.0f) {
            c2 = Math.min(C1996ac.m41673a((long) c, f), this.f5522d);
        }
        if (j < c2) {
            boolean z2 = true;
            if (!this.f5526h) {
                z2 = !z;
            }
            this.f5530l = z2;
        } else if (j >= this.f5522d || z) {
            this.f5530l = false;
        }
        return this.f5530l;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: a */
    public final boolean mo41415a(long j, float f, boolean z) {
        long m41636b = C1996ac.m41636b(j, f);
        char c = z ? this.f5524f : this.f5523e;
        if (c <= 0 || m41636b >= c) {
            return true;
        }
        return !this.f5526h && this.f5519a.m41727e() >= this.f5529k;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: b */
    public final void mo41413b() {
        m42891a(true);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: c */
    public final void mo41412c() {
        m42891a(true);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: d */
    public final AbstractC1963b mo41411d() {
        return this.f5519a;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: e */
    public final long mo41410e() {
        return this.f5527i;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC2059y
    /* renamed from: f */
    public final boolean mo41409f() {
        return this.f5528j;
    }
}
