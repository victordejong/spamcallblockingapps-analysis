package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4982l;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.c0.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/d.class */
public class C4903d implements AbstractC4978h {

    /* renamed from: a */
    public static final AbstractC4982l f15045a = C4897a.f15026a;

    /* renamed from: b */
    private AbstractC4980j f15046b;

    /* renamed from: c */
    private AbstractC4908i f15047c;

    /* renamed from: d */
    private boolean f15048d;

    /* renamed from: a */
    public static /* synthetic */ AbstractC4978h[] m21236a() {
        return new AbstractC4978h[]{new C4903d()};
    }

    /* renamed from: d */
    private static C5536v m21235d(C5536v c5536v) {
        c5536v.m18680M(0);
        return c5536v;
    }

    /* renamed from: e */
    private boolean m21234e(AbstractC4979i abstractC4979i) {
        C4905f c4905f = new C4905f();
        if (!c4905f.m21227a(abstractC4979i, true) || (c4905f.f15055b & 2) != 2) {
            return false;
        }
        int min = Math.min(c4905f.f15062i, 8);
        C5536v c5536v = new C5536v(min);
        abstractC4979i.mo21000j(c5536v.f17941a, 0, min);
        if (C4901c.m21238o(m21235d(c5536v))) {
            this.f15047c = new C4901c();
            return true;
        } else if (C4912j.m21204p(m21235d(c5536v))) {
            this.f15047c = new C4912j();
            return true;
        } else if (!C4907h.m21223n(m21235d(c5536v))) {
            return false;
        } else {
            this.f15047c = new C4907h();
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        try {
            return m21234e(abstractC4979i);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        if (this.f15047c == null) {
            if (!m21234e(abstractC4979i)) {
                throw new ParserException("Failed to determine bitstream type");
            }
            abstractC4979i.mo21003g();
        }
        if (!this.f15048d) {
            AbstractC4996v mo19748t = this.f15046b.mo19748t(0, 1);
            this.f15046b.mo19752o();
            this.f15047c.m21220c(this.f15046b, mo19748t);
            this.f15048d = true;
        }
        return this.f15047c.m21219f(abstractC4979i, c4991s);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f15046b = abstractC4980j;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        AbstractC4908i abstractC4908i = this.f15047c;
        if (abstractC4908i != null) {
            abstractC4908i.m21216k(j, j2);
        }
    }
}
