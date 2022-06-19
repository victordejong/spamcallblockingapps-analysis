package com.google.android.exoplayer2.p243c1.p247d0;

import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.d0.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/d0/f0.class */
final class C4927f0 {

    /* renamed from: c */
    private boolean f15123c;

    /* renamed from: d */
    private boolean f15124d;

    /* renamed from: e */
    private boolean f15125e;

    /* renamed from: a */
    private final C5509e0 f15121a = new C5509e0(0);

    /* renamed from: f */
    private long f15126f = -9223372036854775807L;

    /* renamed from: g */
    private long f15127g = -9223372036854775807L;

    /* renamed from: h */
    private long f15128h = -9223372036854775807L;

    /* renamed from: b */
    private final C5536v f15122b = new C5536v();

    /* renamed from: a */
    private int m21196a(AbstractC4979i abstractC4979i) {
        this.f15122b.m18683J(C5515h0.f17881f);
        this.f15123c = true;
        abstractC4979i.mo21003g();
        return 0;
    }

    /* renamed from: f */
    private int m21191f(AbstractC4979i abstractC4979i, C4991s c4991s, int i) {
        int min = (int) Math.min(112800L, abstractC4979i.getLength());
        long j = 0;
        if (abstractC4979i.mo20999k() != j) {
            c4991s.f15517a = j;
            return 1;
        }
        this.f15122b.m18684I(min);
        abstractC4979i.mo21003g();
        abstractC4979i.mo21000j(this.f15122b.f17941a, 0, min);
        this.f15126f = m21190g(this.f15122b, i);
        this.f15124d = true;
        return 0;
    }

    /* renamed from: g */
    private long m21190g(C5536v c5536v, int i) {
        int m18675d = c5536v.m18675d();
        for (int m18676c = c5536v.m18676c(); m18676c < m18675d; m18676c++) {
            if (c5536v.f17941a[m18676c] == 71) {
                long m21151b = C4939i0.m21151b(c5536v, m18676c, i);
                if (m21151b != -9223372036854775807L) {
                    return m21151b;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: h */
    private int m21189h(AbstractC4979i abstractC4979i, C4991s c4991s, int i) {
        long length = abstractC4979i.getLength();
        int min = (int) Math.min(112800L, length);
        long j = length - min;
        if (abstractC4979i.mo20999k() != j) {
            c4991s.f15517a = j;
            return 1;
        }
        this.f15122b.m18684I(min);
        abstractC4979i.mo21003g();
        abstractC4979i.mo21000j(this.f15122b.f17941a, 0, min);
        this.f15127g = m21188i(this.f15122b, i);
        this.f15125e = true;
        return 0;
    }

    /* renamed from: i */
    private long m21188i(C5536v c5536v, int i) {
        int m18676c = c5536v.m18676c();
        for (int m18675d = c5536v.m18675d() - 1; m18675d >= m18676c; m18675d--) {
            if (c5536v.f17941a[m18675d] == 71) {
                long m21151b = C4939i0.m21151b(c5536v, m18675d, i);
                if (m21151b != -9223372036854775807L) {
                    return m21151b;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public long m21195b() {
        return this.f15128h;
    }

    /* renamed from: c */
    public C5509e0 m21194c() {
        return this.f15121a;
    }

    /* renamed from: d */
    public boolean m21193d() {
        return this.f15123c;
    }

    /* renamed from: e */
    public int m21192e(AbstractC4979i abstractC4979i, C4991s c4991s, int i) {
        if (i <= 0) {
            return m21196a(abstractC4979i);
        }
        if (!this.f15125e) {
            return m21189h(abstractC4979i, c4991s, i);
        }
        if (this.f15127g == -9223372036854775807L) {
            return m21196a(abstractC4979i);
        }
        if (!this.f15124d) {
            return m21191f(abstractC4979i, c4991s, i);
        }
        long j = this.f15126f;
        if (j == -9223372036854775807L) {
            return m21196a(abstractC4979i);
        }
        this.f15128h = this.f15121a.m18905b(this.f15127g) - this.f15121a.m18905b(j);
        return m21196a(abstractC4979i);
    }
}
