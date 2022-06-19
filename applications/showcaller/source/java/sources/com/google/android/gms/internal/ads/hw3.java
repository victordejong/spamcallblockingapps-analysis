package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hw3.class */
final class hw3 {

    /* renamed from: a */
    private static final byte[] f24063a = {0, 0, 1};

    /* renamed from: b */
    private boolean f24064b;

    /* renamed from: c */
    public int f24065c;

    /* renamed from: d */
    public int f24066d;

    /* renamed from: e */
    public byte[] f24067e = new byte[128];

    public hw3(int i) {
    }

    /* renamed from: a */
    public final void m14529a() {
        this.f24064b = false;
        this.f24065c = 0;
        this.f24066d = 0;
    }

    /* renamed from: b */
    public final boolean m14528b(int i, int i2) {
        if (this.f24064b) {
            int i3 = this.f24065c - i2;
            this.f24065c = i3;
            if (this.f24066d != 0 || i != 181) {
                this.f24064b = false;
                return true;
            }
            this.f24066d = i3;
        } else if (i == 179) {
            this.f24064b = true;
        }
        m14527c(f24063a, 0, 3);
        return false;
    }

    /* renamed from: c */
    public final void m14527c(byte[] bArr, int i, int i2) {
        if (!this.f24064b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f24067e;
        int length = bArr2.length;
        int i4 = this.f24065c + i3;
        if (length < i4) {
            this.f24067e = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.f24067e, this.f24065c, i3);
        this.f24065c += i3;
    }
}
