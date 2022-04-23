package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bl.class */
final class bl {

    /* renamed from: a  reason: collision with root package name */
    int f31179a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f31180b = new byte[4096];

    /* renamed from: c  reason: collision with root package name */
    private int f31181c;

    /* renamed from: d  reason: collision with root package name */
    private long f31182d;
    private long e;
    private int f;
    private int g;
    private boolean h;
    private String i;

    public bl() {
        b();
    }

    private final int a(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.f31181c;
        if (i4 >= i) {
            return 0;
        }
        int min = Math.min(i3, i - i4);
        System.arraycopy(bArr, i2, this.f31180b, this.f31181c, min);
        int i5 = this.f31181c + min;
        this.f31181c = i5;
        if (i5 < i) {
            return -1;
        }
        return min;
    }

    private void b() {
        this.f31181c = 0;
        this.f = -1;
        this.f31182d = -1L;
        this.h = false;
        this.f31179a = 30;
        this.e = -1L;
        this.g = -1;
        this.i = null;
    }

    public final int a(byte[] bArr, int i, int i2) {
        int a2 = a(30, bArr, i, i2);
        if (a2 == -1) {
            return -1;
        }
        if (this.f31182d == -1) {
            long a3 = bj.a(this.f31180b, 0);
            this.f31182d = a3;
            if (a3 == 67324752) {
                this.h = false;
                this.e = bj.a(this.f31180b, 18);
                this.g = bj.b(this.f31180b, 8);
                this.f = bj.b(this.f31180b, 26);
                int b2 = this.f + 30 + bj.b(this.f31180b, 28);
                this.f31179a = b2;
                int length = this.f31180b.length;
                if (length < b2) {
                    do {
                        length += length;
                    } while (length < b2);
                    this.f31180b = Arrays.copyOf(this.f31180b, length);
                }
            } else {
                this.h = true;
            }
        }
        int a4 = a(this.f31179a, bArr, i + a2, i2 - a2);
        if (a4 == -1) {
            return -1;
        }
        if (!this.h && this.i == null) {
            this.i = new String(this.f31180b, 30, this.f);
        }
        return a2 + a4;
    }

    public final cd a() {
        int i = this.f31181c;
        int i2 = this.f31179a;
        if (i < i2) {
            return cd.a(this.i, this.e, this.g, true, Arrays.copyOf(this.f31180b, i), this.h);
        }
        cd a2 = cd.a(this.i, this.e, this.g, false, Arrays.copyOf(this.f31180b, i2), this.h);
        b();
        return a2;
    }
}
