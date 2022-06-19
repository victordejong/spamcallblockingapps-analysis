package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxr.class */
public final class dxr implements dxt {

    /* renamed from: a */
    private static final byte[] f47977a = new byte[4096];

    /* renamed from: b */
    private final ecb f47978b;

    /* renamed from: c */
    private final long f47979c;

    /* renamed from: d */
    private long f47980d;

    /* renamed from: e */
    private byte[] f47981e = new byte[65536];

    /* renamed from: f */
    private int f47982f;

    /* renamed from: g */
    private int f47983g;

    public dxr(ecb ecbVar, long j, long j2) {
        this.f47978b = ecbVar;
        this.f47980d = j;
        this.f47979c = j2;
    }

    /* renamed from: a */
    private final int m15505a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int mo15278a = this.f47978b.mo15278a(bArr, i + i3, i2 - i3);
            if (mo15278a != -1) {
                return i3 + mo15278a;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: d */
    private final int m15503d(byte[] bArr, int i, int i2) {
        int i3 = this.f47983g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f47981e, 0, bArr, i, min);
        m15501f(min);
        return min;
    }

    /* renamed from: d */
    private final boolean m15504d(int i) throws IOException, InterruptedException {
        int i2 = this.f47982f + i;
        byte[] bArr = this.f47981e;
        if (i2 > bArr.length) {
            this.f47981e = Arrays.copyOf(this.f47981e, ede.m15197a(bArr.length << 1, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.f47983g - this.f47982f, i);
        while (min < i) {
            int m15505a = m15505a(this.f47981e, this.f47982f, i, min, false);
            min = m15505a;
            if (m15505a == -1) {
                return false;
            }
        }
        int i3 = this.f47982f + i;
        this.f47982f = i3;
        this.f47983g = Math.max(this.f47983g, i3);
        return true;
    }

    /* renamed from: e */
    private final int m15502e(int i) {
        int min = Math.min(this.f47983g, i);
        m15501f(min);
        return min;
    }

    /* renamed from: f */
    private final void m15501f(int i) {
        int i2 = this.f47983g - i;
        this.f47983g = i2;
        this.f47982f = 0;
        byte[] bArr = this.f47981e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f47981e = bArr2;
    }

    /* renamed from: g */
    private final void m15500g(int i) {
        if (i != -1) {
            this.f47980d += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: a */
    public final int mo15498a(int i) throws IOException, InterruptedException {
        int m15502e = m15502e(i);
        int i2 = m15502e;
        if (m15502e == 0) {
            byte[] bArr = f47977a;
            i2 = m15505a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m15500g(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: a */
    public final int mo15497a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int m15503d = m15503d(bArr, i, i2);
        int i3 = m15503d;
        if (m15503d == 0) {
            i3 = m15505a(bArr, i, i2, 0, true);
        }
        m15500g(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: a */
    public final void mo15499a() {
        this.f47982f = 0;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: a */
    public final boolean mo15496a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int m15503d = m15503d(bArr, i, i2);
        while (true) {
            i3 = m15503d;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m15503d = m15505a(bArr, i, i2, i3, z);
        }
        m15500g(i3);
        return i3 != -1;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: b */
    public final long mo15495b() {
        return this.f47980d;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: b */
    public final void mo15494b(int i) throws IOException, InterruptedException {
        int i2;
        int m15502e = m15502e(i);
        while (true) {
            i2 = m15502e;
            if (i2 >= i || i2 == -1) {
                break;
            }
            byte[] bArr = f47977a;
            m15502e = m15505a(bArr, -i2, Math.min(i, bArr.length + i2), i2, false);
        }
        m15500g(i2);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: b */
    public final void mo15493b(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo15496a(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: c */
    public final long mo15492c() {
        return this.f47979c;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: c */
    public final void mo15491c(int i) throws IOException, InterruptedException {
        m15504d(i);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    /* renamed from: c */
    public final void mo15490c(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        if (m15504d(i2)) {
            System.arraycopy(this.f47981e, this.f47982f - i2, bArr, i, i2);
        }
    }
}
