package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.util.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/r.class */
final class r {

    /* renamed from: a  reason: collision with root package name */
    boolean f21254a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f21255b;

    /* renamed from: c  reason: collision with root package name */
    public int f21256c;

    /* renamed from: d  reason: collision with root package name */
    private final int f21257d;
    private boolean e;

    public r(int i, int i2) {
        this.f21257d = i;
        byte[] bArr = new byte[i2 + 3];
        this.f21255b = bArr;
        bArr[2] = (byte) 1;
    }

    public final void a() {
        this.e = false;
        this.f21254a = false;
    }

    public final void a(int i) {
        boolean z = true;
        a.b(!this.e);
        if (i != this.f21257d) {
            z = false;
        }
        this.e = z;
        if (z) {
            this.f21256c = 3;
            this.f21254a = false;
        }
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.e) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f21255b;
            int length = bArr2.length;
            int i4 = this.f21256c;
            if (length < i4 + i3) {
                this.f21255b = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f21255b, this.f21256c, i3);
            this.f21256c += i3;
        }
    }

    public final boolean b(int i) {
        if (!this.e) {
            return false;
        }
        this.f21256c -= i;
        this.e = false;
        this.f21254a = true;
        return true;
    }
}
