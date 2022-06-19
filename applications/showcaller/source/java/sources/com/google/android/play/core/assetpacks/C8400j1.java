package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* renamed from: com.google.android.play.core.assetpacks.j1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/j1.class */
public final class C8400j1 {

    /* renamed from: a */
    private byte[] f37805a = new byte[4096];

    /* renamed from: b */
    private int f37806b;

    /* renamed from: c */
    private long f37807c;

    /* renamed from: d */
    private long f37808d;

    /* renamed from: e */
    private int f37809e;

    /* renamed from: f */
    private int f37810f;

    /* renamed from: g */
    private int f37811g;

    /* renamed from: h */
    private boolean f37812h;

    /* renamed from: i */
    private String f37813i;

    public C8400j1() {
        m3725d();
    }

    /* renamed from: e */
    private final int m3724e(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.f37806b;
        if (i4 < i) {
            int min = Math.min(i3, i - i4);
            System.arraycopy(bArr, i2, this.f37805a, this.f37806b, min);
            int i5 = this.f37806b + min;
            this.f37806b = i5;
            if (i5 >= i) {
                return min;
            }
            return -1;
        }
        return 0;
    }

    /* renamed from: a */
    public final int m3728a(byte[] bArr, int i, int i2) {
        int m3724e = m3724e(30, bArr, i, i2);
        if (m3724e != -1) {
            if (this.f37807c == -1) {
                long m3741b = C8392h1.m3741b(this.f37805a, 0);
                this.f37807c = m3741b;
                if (m3741b == 67324752) {
                    this.f37812h = false;
                    this.f37808d = C8392h1.m3741b(this.f37805a, 18);
                    this.f37811g = C8392h1.m3740c(this.f37805a, 8);
                    this.f37809e = C8392h1.m3740c(this.f37805a, 26);
                    int m3740c = this.f37809e + 30 + C8392h1.m3740c(this.f37805a, 28);
                    this.f37810f = m3740c;
                    int length = this.f37805a.length;
                    if (length < m3740c) {
                        do {
                            length += length;
                        } while (length < m3740c);
                        this.f37805a = Arrays.copyOf(this.f37805a, length);
                    }
                } else {
                    this.f37812h = true;
                }
            }
            int m3724e2 = m3724e(this.f37810f, bArr, i + m3724e, i2 - m3724e);
            if (m3724e2 == -1) {
                return -1;
            }
            if (!this.f37812h && this.f37813i == null) {
                this.f37813i = new String(this.f37805a, 30, this.f37809e);
            }
            return m3724e + m3724e2;
        }
        return -1;
    }

    /* renamed from: b */
    public final C8368b2 m3727b() {
        int i = this.f37806b;
        int i2 = this.f37810f;
        if (i < i2) {
            return C8368b2.m3780a(this.f37813i, this.f37808d, this.f37811g, true, Arrays.copyOf(this.f37805a, i), this.f37812h);
        }
        C8368b2 m3780a = C8368b2.m3780a(this.f37813i, this.f37808d, this.f37811g, false, Arrays.copyOf(this.f37805a, i2), this.f37812h);
        m3725d();
        return m3780a;
    }

    /* renamed from: c */
    public final int m3726c() {
        return this.f37810f;
    }

    /* renamed from: d */
    public final void m3725d() {
        this.f37806b = 0;
        this.f37809e = -1;
        this.f37807c = -1L;
        this.f37812h = false;
        this.f37810f = 30;
        this.f37808d = -1L;
        this.f37811g = -1;
        this.f37813i = null;
    }
}
