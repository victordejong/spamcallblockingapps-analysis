package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.c0.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/e.class */
final class C4904e {

    /* renamed from: a */
    private final C4905f f15049a = new C4905f();

    /* renamed from: b */
    private final C5536v f15050b = new C5536v(new byte[65025], 0);

    /* renamed from: c */
    private int f15051c = -1;

    /* renamed from: d */
    private int f15052d;

    /* renamed from: e */
    private boolean f15053e;

    /* renamed from: a */
    private int m21233a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f15052d = 0;
        do {
            int i5 = this.f15052d;
            C4905f c4905f = this.f15049a;
            i2 = i4;
            if (i + i5 >= c4905f.f15060g) {
                break;
            }
            int[] iArr = c4905f.f15063j;
            this.f15052d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: b */
    public C4905f m21232b() {
        return this.f15049a;
    }

    /* renamed from: c */
    public C5536v m21231c() {
        return this.f15050b;
    }

    /* renamed from: d */
    public boolean m21230d(AbstractC4979i abstractC4979i) {
        int i;
        C5508e.m18910f(abstractC4979i != null);
        if (this.f15053e) {
            this.f15053e = false;
            this.f15050b.m18685H();
        }
        while (!this.f15053e) {
            if (this.f15051c < 0) {
                if (!this.f15049a.m21227a(abstractC4979i, true)) {
                    return false;
                }
                C4905f c4905f = this.f15049a;
                int i2 = c4905f.f15061h;
                if ((c4905f.f15055b & 1) == 1 && this.f15050b.m18675d() == 0) {
                    i2 += m21233a(0);
                    i = this.f15052d + 0;
                } else {
                    i = 0;
                }
                abstractC4979i.mo21002h(i2);
                this.f15051c = i;
            }
            int m21233a = m21233a(this.f15051c);
            int i3 = this.f15051c + this.f15052d;
            if (m21233a > 0) {
                if (this.f15050b.m18677b() < this.f15050b.m18675d() + m21233a) {
                    C5536v c5536v = this.f15050b;
                    c5536v.f17941a = Arrays.copyOf(c5536v.f17941a, c5536v.m18675d() + m21233a);
                }
                C5536v c5536v2 = this.f15050b;
                abstractC4979i.readFully(c5536v2.f17941a, c5536v2.m18675d(), m21233a);
                C5536v c5536v3 = this.f15050b;
                c5536v3.m18681L(c5536v3.m18675d() + m21233a);
                this.f15053e = this.f15049a.f15063j[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f15049a.f15060g) {
                i4 = -1;
            }
            this.f15051c = i4;
        }
        return true;
    }

    /* renamed from: e */
    public void m21229e() {
        this.f15049a.m21226b();
        this.f15050b.m18685H();
        this.f15051c = -1;
        this.f15053e = false;
    }

    /* renamed from: f */
    public void m21228f() {
        C5536v c5536v = this.f15050b;
        byte[] bArr = c5536v.f17941a;
        if (bArr.length == 65025) {
            return;
        }
        c5536v.f17941a = Arrays.copyOf(bArr, Math.max(65025, c5536v.m18675d()));
    }
}
