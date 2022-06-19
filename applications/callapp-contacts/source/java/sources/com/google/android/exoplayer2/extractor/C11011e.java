package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.upstream.AbstractC11563e;
import com.google.android.exoplayer2.util.C11599af;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e.class */
public final class C11011e implements AbstractC11121i {

    /* renamed from: b */
    private final AbstractC11563e f35736b;

    /* renamed from: c */
    private final long f35737c;

    /* renamed from: d */
    private long f35738d;

    /* renamed from: f */
    private int f35740f;

    /* renamed from: g */
    private int f35741g;

    /* renamed from: e */
    private byte[] f35739e = new byte[65536];

    /* renamed from: a */
    private final byte[] f35735a = new byte[4096];

    public C11011e(AbstractC11563e abstractC11563e, long j, long j2) {
        this.f35736b = abstractC11563e;
        this.f35738d = j;
        this.f35737c = j2;
    }

    /* renamed from: a */
    private int m21708a(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int mo20033a = this.f35736b.mo20033a(bArr, i + i3, i2 - i3);
            if (mo20033a != -1) {
                return i3 + mo20033a;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedIOException();
    }

    /* renamed from: d */
    private void m21707d(int i) {
        int i2 = this.f35740f + i;
        byte[] bArr = this.f35739e;
        if (i2 > bArr.length) {
            this.f35739e = Arrays.copyOf(this.f35739e, C11599af.m19997a(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: e */
    private int m21706e(int i) {
        int min = Math.min(this.f35741g, i);
        m21704f(min);
        return min;
    }

    /* renamed from: e */
    private int m21705e(byte[] bArr, int i, int i2) {
        int i3 = this.f35741g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f35739e, 0, bArr, i, min);
        m21704f(min);
        return min;
    }

    /* renamed from: f */
    private void m21704f(int i) {
        int i2 = this.f35741g - i;
        this.f35741g = i2;
        this.f35740f = 0;
        byte[] bArr = this.f35739e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f35739e = bArr2;
    }

    /* renamed from: g */
    private void m21703g(int i) {
        if (i != -1) {
            this.f35738d += i;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: a */
    public final int mo21405a(int i) throws IOException {
        int m21706e = m21706e(i);
        int i2 = m21706e;
        if (m21706e == 0) {
            byte[] bArr = this.f35735a;
            i2 = m21708a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m21703g(i2);
        return i2;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i, com.google.android.exoplayer2.upstream.AbstractC11563e
    /* renamed from: a */
    public final int mo20033a(byte[] bArr, int i, int i2) throws IOException {
        int m21705e = m21705e(bArr, i, i2);
        int i3 = m21705e;
        if (m21705e == 0) {
            i3 = m21708a(bArr, i, i2, 0, true);
        }
        m21703g(i3);
        return i3;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: a */
    public final void mo21406a() {
        this.f35740f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: a */
    public final boolean mo21404a(int i, boolean z) throws IOException {
        m21707d(i);
        int i2 = this.f35741g - this.f35740f;
        while (i2 < i) {
            i2 = m21708a(this.f35739e, this.f35740f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f35741g = this.f35740f + i2;
        }
        this.f35740f += i;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: a */
    public final boolean mo21403a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int i3;
        int m21705e = m21705e(bArr, i, i2);
        while (true) {
            i3 = m21705e;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m21705e = m21708a(bArr, i, i2, i3, z);
        }
        m21703g(i3);
        return i3 != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: b */
    public final long mo21402b() {
        return this.f35738d + this.f35740f;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: b */
    public final void mo21401b(int i) throws IOException {
        int i2;
        int m21706e = m21706e(i);
        while (true) {
            i2 = m21706e;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m21706e = m21708a(this.f35735a, -i2, Math.min(i, this.f35735a.length + i2), i2, false);
        }
        m21703g(i2);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: b */
    public final void mo21400b(byte[] bArr, int i, int i2) throws IOException {
        mo21403a(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: b */
    public final boolean mo21399b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!mo21404a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f35739e, this.f35740f - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: c */
    public final int mo21396c(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        m21707d(i2);
        int i4 = this.f35741g;
        int i5 = this.f35740f;
        int i6 = i4 - i5;
        if (i6 == 0) {
            i3 = m21708a(this.f35739e, i5, i2, 0, true);
            if (i3 == -1) {
                return -1;
            }
            this.f35741g += i3;
        } else {
            i3 = Math.min(i2, i6);
        }
        System.arraycopy(this.f35739e, this.f35740f, bArr, i, i3);
        this.f35740f += i3;
        return i3;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: c */
    public final long mo21398c() {
        return this.f35738d;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: c */
    public final void mo21397c(int i) throws IOException {
        mo21404a(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: d */
    public final long mo21395d() {
        return this.f35737c;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11121i
    /* renamed from: d */
    public final void mo21394d(byte[] bArr, int i, int i2) throws IOException {
        mo21399b(bArr, i, i2, false);
    }
}
