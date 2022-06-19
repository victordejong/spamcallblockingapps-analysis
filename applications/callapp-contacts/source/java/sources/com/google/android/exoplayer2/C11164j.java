package com.google.android.exoplayer2;

import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.upstream.AbstractC11533b;
import com.google.android.exoplayer2.upstream.C11573k;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.mopub.volley.DefaultRetryPolicy;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* renamed from: com.google.android.exoplayer2.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/j.class */
public final class C11164j implements AbstractC11260s {

    /* renamed from: a */
    private final C11573k f36573a;

    /* renamed from: b */
    private final long f36574b;

    /* renamed from: c */
    private final long f36575c;

    /* renamed from: d */
    private final long f36576d;

    /* renamed from: e */
    private final long f36577e;

    /* renamed from: f */
    private final int f36578f;

    /* renamed from: g */
    private final boolean f36579g;

    /* renamed from: h */
    private final long f36580h;

    /* renamed from: i */
    private final boolean f36581i;

    /* renamed from: j */
    private int f36582j;

    /* renamed from: k */
    private boolean f36583k;

    public C11164j() {
        this(new C11573k(true, 65536), ApiErrorData.ErrorCodes.InternalServerError.InternalError, ApiErrorData.ErrorCodes.InternalServerError.InternalError, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 5000, -1, false, 0, false);
    }

    protected C11164j(C11573k c11573k, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        m21356a(i3, 0, "bufferForPlaybackMs", "0");
        m21356a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m21356a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        m21356a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m21356a(i2, i, "maxBufferMs", "minBufferMs");
        m21356a(i6, 0, "backBufferDurationMs", "0");
        this.f36573a = c11573k;
        this.f36574b = C11158f.m21372b(i);
        this.f36575c = C11158f.m21372b(i2);
        this.f36576d = C11158f.m21372b(i3);
        this.f36577e = C11158f.m21372b(i4);
        this.f36578f = i5;
        this.f36582j = i5 == -1 ? 13107200 : i5;
        this.f36579g = z;
        this.f36580h = C11158f.m21372b(i6);
        this.f36581i = z2;
    }

    /* renamed from: a */
    private static void m21356a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        C11593a.m20021a(z, str + " cannot be less than " + str2);
    }

    /* renamed from: a */
    private void m21355a(boolean z) {
        int i = this.f36578f;
        int i2 = i;
        if (i == -1) {
            i2 = 13107200;
        }
        this.f36582j = i2;
        this.f36583k = false;
        if (z) {
            this.f36573a.m20065d();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: a */
    public final void mo21024a() {
        m21355a(false);
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: a */
    public final void mo21021a(AbstractC10851af[] abstractC10851afArr, AbstractC11436c[] abstractC11436cArr) {
        int i;
        int i2 = this.f36578f;
        int i3 = i2;
        if (i2 == -1) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i4 >= abstractC10851afArr.length) {
                    i3 = Math.max(13107200, i6);
                    break;
                }
                int i7 = i6;
                if (abstractC11436cArr[i4] != null) {
                    int mo21812a = abstractC10851afArr[i4].mo21812a();
                    if (mo21812a != 0) {
                        i = 13107200;
                        if (mo21812a != 1) {
                            if (mo21812a == 2) {
                                i = 131072000;
                            } else if (mo21812a == 3 || mo21812a == 5 || mo21812a == 6) {
                                i = 131072;
                            } else if (mo21812a != 7) {
                                throw new IllegalArgumentException();
                            } else {
                                i = 0;
                            }
                        }
                    } else {
                        i = 144310272;
                    }
                    i7 = i6 + i;
                }
                i4++;
                i5 = i7;
            }
        }
        this.f36582j = i3;
        this.f36573a.m20070a(i3);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: a */
    public final boolean mo21023a(long j, float f) {
        boolean z = this.f36573a.m20064e() >= this.f36582j;
        ?? r0 = this.f36574b;
        char c = r0;
        if (f > 1.0f) {
            c = Math.min(C11599af.m19995a((long) r0, f), this.f36575c);
        }
        if (j < Math.max((long) c, 500000L)) {
            boolean z2 = true;
            if (!this.f36579g) {
                z2 = !z;
            }
            this.f36583k = z2;
            if (!z2 && j < 500000) {
                C11617n.m19863a("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j >= this.f36575c || z) {
            this.f36583k = false;
        }
        return this.f36583k;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: a */
    public final boolean mo21022a(long j, float f, boolean z, long j2) {
        long m19948b = C11599af.m19948b(j, f);
        char c = z ? this.f36577e : this.f36576d;
        char c2 = c;
        if (j2 != -9223372036854775807L) {
            c2 = Math.min(j2 / 2, (long) c);
        }
        if (c2 <= 0 || m19948b >= c2) {
            return true;
        }
        return !this.f36579g && this.f36573a.m20064e() >= this.f36582j;
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: b */
    public final void mo21020b() {
        m21355a(true);
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: c */
    public final void mo21019c() {
        m21355a(true);
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: d */
    public final AbstractC11533b mo21018d() {
        return this.f36573a;
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: e */
    public final long mo21017e() {
        return this.f36580h;
    }

    @Override // com.google.android.exoplayer2.AbstractC11260s
    /* renamed from: f */
    public final boolean mo21016f() {
        return this.f36581i;
    }
}
