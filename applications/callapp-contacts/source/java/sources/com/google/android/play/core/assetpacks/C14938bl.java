package com.google.android.play.core.assetpacks;

import java.util.Arrays;
/* renamed from: com.google.android.play.core.assetpacks.bl */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bl.class */
public final class C14938bl {

    /* renamed from: a */
    int f54531a;

    /* renamed from: b */
    private byte[] f54532b = new byte[4096];

    /* renamed from: c */
    private int f54533c;

    /* renamed from: d */
    private long f54534d;

    /* renamed from: e */
    private long f54535e;

    /* renamed from: f */
    private int f54536f;

    /* renamed from: g */
    private int f54537g;

    /* renamed from: h */
    private boolean f54538h;

    /* renamed from: i */
    private String f54539i;

    public C14938bl() {
        m9737b();
    }

    /* renamed from: a */
    private final int m9739a(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.f54533c;
        if (i4 < i) {
            int min = Math.min(i3, i - i4);
            System.arraycopy(bArr, i2, this.f54532b, this.f54533c, min);
            int i5 = this.f54533c + min;
            this.f54533c = i5;
            if (i5 >= i) {
                return min;
            }
            return -1;
        }
        return 0;
    }

    /* renamed from: b */
    private void m9737b() {
        this.f54533c = 0;
        this.f54536f = -1;
        this.f54534d = -1L;
        this.f54538h = false;
        this.f54531a = 30;
        this.f54535e = -1L;
        this.f54537g = -1;
        this.f54539i = null;
    }

    /* renamed from: a */
    public final int m9738a(byte[] bArr, int i, int i2) {
        int m9739a = m9739a(30, bArr, i, i2);
        if (m9739a != -1) {
            if (this.f54534d == -1) {
                long m9745a = C14936bj.m9745a(this.f54532b, 0);
                this.f54534d = m9745a;
                if (m9745a == 67324752) {
                    this.f54538h = false;
                    this.f54535e = C14936bj.m9745a(this.f54532b, 18);
                    this.f54537g = C14936bj.m9743b(this.f54532b, 8);
                    this.f54536f = C14936bj.m9743b(this.f54532b, 26);
                    int m9743b = this.f54536f + 30 + C14936bj.m9743b(this.f54532b, 28);
                    this.f54531a = m9743b;
                    int length = this.f54532b.length;
                    if (length < m9743b) {
                        do {
                            length += length;
                        } while (length < m9743b);
                        this.f54532b = Arrays.copyOf(this.f54532b, length);
                    }
                } else {
                    this.f54538h = true;
                }
            }
            int m9739a2 = m9739a(this.f54531a, bArr, i + m9739a, i2 - m9739a);
            if (m9739a2 == -1) {
                return -1;
            }
            if (!this.f54538h && this.f54539i == null) {
                this.f54539i = new String(this.f54532b, 30, this.f54536f);
            }
            return m9739a + m9739a2;
        }
        return -1;
    }

    /* renamed from: a */
    public final C14957cd m9740a() {
        int i = this.f54533c;
        int i2 = this.f54531a;
        if (i < i2) {
            return C14957cd.m9710a(this.f54539i, this.f54535e, this.f54537g, true, Arrays.copyOf(this.f54532b, i), this.f54538h);
        }
        C14957cd m9710a = C14957cd.m9710a(this.f54539i, this.f54535e, this.f54537g, false, Arrays.copyOf(this.f54532b, i2), this.f54538h);
        m9737b();
        return m9710a;
    }
}
