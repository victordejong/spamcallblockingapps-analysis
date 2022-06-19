package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jw3.class */
final class jw3 {

    /* renamed from: a */
    private static final byte[] f25009a = {0, 0, 1};

    /* renamed from: b */
    private boolean f25010b;

    /* renamed from: c */
    private int f25011c;

    /* renamed from: d */
    public int f25012d;

    /* renamed from: e */
    public int f25013e;

    /* renamed from: f */
    public byte[] f25014f = new byte[128];

    public jw3(int i) {
    }

    /* renamed from: a */
    public final void m14026a() {
        this.f25010b = false;
        this.f25012d = 0;
        this.f25011c = 0;
    }

    /* renamed from: b */
    public final boolean m14025b(int i, int i2) {
        int i3 = this.f25011c;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i == 179 || i == 181) {
                            this.f25012d -= i2;
                            this.f25010b = false;
                            return true;
                        }
                    } else if ((i & 240) != 32) {
                        Log.w("H263Reader", "Unexpected start code value");
                        m14026a();
                    } else {
                        this.f25013e = this.f25012d;
                        this.f25011c = 4;
                    }
                } else if (i > 31) {
                    Log.w("H263Reader", "Unexpected start code value");
                    m14026a();
                } else {
                    this.f25011c = 3;
                }
            } else if (i != 181) {
                Log.w("H263Reader", "Unexpected start code value");
                m14026a();
            } else {
                this.f25011c = 2;
            }
        } else if (i == 176) {
            this.f25011c = 1;
            this.f25010b = true;
        }
        m14024c(f25009a, 0, 3);
        return false;
    }

    /* renamed from: c */
    public final void m14024c(byte[] bArr, int i, int i2) {
        if (!this.f25010b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f25014f;
        int length = bArr2.length;
        int i4 = this.f25012d + i3;
        if (length < i4) {
            this.f25014f = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f25014f, this.f25012d, i3);
        this.f25012d += i3;
    }
}
