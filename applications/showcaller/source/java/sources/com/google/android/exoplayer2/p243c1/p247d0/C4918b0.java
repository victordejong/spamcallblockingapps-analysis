package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/b0.class */
public final class C4918b0 implements AbstractC4933h0 {

    /* renamed from: a */
    private final AbstractC4916a0 f15100a;

    /* renamed from: b */
    private final C5536v f15101b = new C5536v(32);

    /* renamed from: c */
    private int f15102c;

    /* renamed from: d */
    private int f15103d;

    /* renamed from: e */
    private boolean f15104e;

    /* renamed from: f */
    private boolean f15105f;

    public C4918b0(AbstractC4916a0 abstractC4916a0) {
        this.f15100a = abstractC4916a0;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: a */
    public void mo21061a(C5509e0 c5509e0, AbstractC4980j abstractC4980j, AbstractC4933h0.C4937d c4937d) {
        this.f15100a.mo21163a(c5509e0, abstractC4980j, c4937d);
        this.f15105f = true;
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: b */
    public void mo21060b(C5536v c5536v, int i) {
        boolean z = (i & 1) != 0;
        int m18676c = z ? c5536v.m18676c() + c5536v.m18653z() : -1;
        if (this.f15105f) {
            if (!z) {
                return;
            }
            this.f15105f = false;
            c5536v.m18680M(m18676c);
            this.f15103d = 0;
        }
        while (c5536v.m18678a() > 0) {
            int i2 = this.f15103d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m18653z = c5536v.m18653z();
                    c5536v.m18680M(c5536v.m18676c() - 1);
                    if (m18653z == 255) {
                        this.f15105f = true;
                        return;
                    }
                }
                int min = Math.min(c5536v.m18678a(), 3 - this.f15103d);
                c5536v.m18671h(this.f15101b.f17941a, this.f15103d, min);
                int i3 = this.f15103d + min;
                this.f15103d = i3;
                if (i3 == 3) {
                    this.f15101b.m18684I(3);
                    this.f15101b.m18679N(1);
                    int m18653z2 = this.f15101b.m18653z();
                    int m18653z3 = this.f15101b.m18653z();
                    this.f15104e = (m18653z2 & 128) != 0;
                    this.f15102c = (((m18653z2 & 15) << 8) | m18653z3) + 3;
                    int m18677b = this.f15101b.m18677b();
                    int i4 = this.f15102c;
                    if (m18677b < i4) {
                        C5536v c5536v2 = this.f15101b;
                        byte[] bArr = c5536v2.f17941a;
                        c5536v2.m18684I(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f15101b.f17941a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(c5536v.m18678a(), this.f15102c - this.f15103d);
                c5536v.m18671h(this.f15101b.f17941a, this.f15103d, min2);
                int i5 = this.f15103d + min2;
                this.f15103d = i5;
                int i6 = this.f15102c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f15104e) {
                        this.f15101b.m18684I(i6);
                    } else if (C5515h0.m18813q(this.f15101b.f17941a, 0, i6, -1) != 0) {
                        this.f15105f = true;
                        return;
                    } else {
                        this.f15101b.m18684I(this.f15102c - 4);
                    }
                    this.f15100a.mo21162b(this.f15101b);
                    this.f15103d = 0;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p247d0.AbstractC4933h0
    /* renamed from: c */
    public void mo21059c() {
        this.f15105f = true;
    }
}
