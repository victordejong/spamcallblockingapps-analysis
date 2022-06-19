package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.util.C11593a;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.extractor.h.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/r.class */
final class C11109r {

    /* renamed from: a */
    boolean f36372a;

    /* renamed from: b */
    public byte[] f36373b;

    /* renamed from: c */
    public int f36374c;

    /* renamed from: d */
    private final int f36375d;

    /* renamed from: e */
    private boolean f36376e;

    public C11109r(int i, int i2) {
        this.f36375d = i;
        byte[] bArr = new byte[i2 + 3];
        this.f36373b = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public final void m21462a() {
        this.f36376e = false;
        this.f36372a = false;
    }

    /* renamed from: a */
    public final void m21461a(int i) {
        boolean z = true;
        C11593a.m20019b(!this.f36376e);
        if (i != this.f36375d) {
            z = false;
        }
        this.f36376e = z;
        if (z) {
            this.f36374c = 3;
            this.f36372a = false;
        }
    }

    /* renamed from: a */
    public final void m21460a(byte[] bArr, int i, int i2) {
        if (!this.f36376e) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f36373b;
        int length = bArr2.length;
        int i4 = this.f36374c;
        if (length < i4 + i3) {
            this.f36373b = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f36373b, this.f36374c, i3);
        this.f36374c += i3;
    }

    /* renamed from: b */
    public final boolean m21459b(int i) {
        if (!this.f36376e) {
            return false;
        }
        this.f36374c -= i;
        this.f36376e = false;
        this.f36372a = true;
        return true;
    }
}
