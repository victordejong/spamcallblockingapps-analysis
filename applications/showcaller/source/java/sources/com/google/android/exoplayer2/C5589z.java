package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.AbstractC5528q;
import com.google.android.exoplayer2.util.C5501a0;
/* renamed from: com.google.android.exoplayer2.z */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/z.class */
final class C5589z implements AbstractC5528q {

    /* renamed from: d */
    private final C5501a0 f18194d;

    /* renamed from: e */
    private final AbstractC5590a f18195e;

    /* renamed from: f */
    private AbstractC5187r0 f18196f;

    /* renamed from: g */
    private AbstractC5528q f18197g;

    /* renamed from: h */
    private boolean f18198h = true;

    /* renamed from: i */
    private boolean f18199i;

    /* renamed from: com.google.android.exoplayer2.z$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/z$a.class */
    public interface AbstractC5590a {
        void onPlaybackParametersChanged(C5102l0 c5102l0);
    }

    public C5589z(AbstractC5590a abstractC5590a, AbstractC5510f abstractC5510f) {
        this.f18195e = abstractC5590a;
        this.f18194d = new C5501a0(abstractC5510f);
    }

    /* renamed from: e */
    private boolean m18325e(boolean z) {
        AbstractC5187r0 abstractC5187r0 = this.f18196f;
        return abstractC5187r0 == null || abstractC5187r0.mo18506c() || (!this.f18196f.mo18505e() && (z || this.f18196f.mo19257j()));
    }

    /* renamed from: j */
    private void m18320j(boolean z) {
        if (m18325e(z)) {
            this.f18198h = true;
            if (!this.f18199i) {
                return;
            }
            this.f18194d.m18926b();
            return;
        }
        long mo18319n = this.f18197g.mo18319n();
        if (this.f18198h) {
            if (mo18319n < this.f18194d.mo18319n()) {
                this.f18194d.m18925c();
                return;
            }
            this.f18198h = false;
            if (this.f18199i) {
                this.f18194d.m18926b();
            }
        }
        this.f18194d.m18927a(mo18319n);
        C5102l0 mo18326d = this.f18197g.mo18326d();
        if (mo18326d.equals(this.f18194d.mo18326d())) {
            return;
        }
        this.f18194d.mo18322h(mo18326d);
        this.f18195e.onPlaybackParametersChanged(mo18326d);
    }

    /* renamed from: a */
    public void m18329a(AbstractC5187r0 abstractC5187r0) {
        if (abstractC5187r0 == this.f18196f) {
            this.f18197g = null;
            this.f18196f = null;
            this.f18198h = true;
        }
    }

    /* renamed from: b */
    public void m18328b(AbstractC5187r0 abstractC5187r0) {
        AbstractC5528q abstractC5528q;
        AbstractC5528q mo19246x = abstractC5187r0.mo19246x();
        if (mo19246x == null || mo19246x == (abstractC5528q = this.f18197g)) {
            return;
        }
        if (abstractC5528q != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f18197g = mo19246x;
        this.f18196f = abstractC5187r0;
        mo19246x.mo18322h(this.f18194d.mo18326d());
    }

    /* renamed from: c */
    public void m18327c(long j) {
        this.f18194d.m18927a(j);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: d */
    public C5102l0 mo18326d() {
        AbstractC5528q abstractC5528q = this.f18197g;
        return abstractC5528q != null ? abstractC5528q.mo18326d() : this.f18194d.mo18326d();
    }

    /* renamed from: f */
    public void m18324f() {
        this.f18199i = true;
        this.f18194d.m18926b();
    }

    /* renamed from: g */
    public void m18323g() {
        this.f18199i = false;
        this.f18194d.m18925c();
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: h */
    public void mo18322h(C5102l0 c5102l0) {
        AbstractC5528q abstractC5528q = this.f18197g;
        C5102l0 c5102l02 = c5102l0;
        if (abstractC5528q != null) {
            abstractC5528q.mo18322h(c5102l0);
            c5102l02 = this.f18197g.mo18326d();
        }
        this.f18194d.mo18322h(c5102l02);
    }

    /* renamed from: i */
    public long m18321i(boolean z) {
        m18320j(z);
        return mo18319n();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: n */
    public long mo18319n() {
        return this.f18198h ? this.f18194d.mo18319n() : this.f18197g.mo18319n();
    }
}
