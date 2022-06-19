package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.AbstractC11619p;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11635z;
/* renamed from: com.google.android.exoplayer2.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/k.class */
final class C11165k implements AbstractC11619p {

    /* renamed from: a */
    private final C11635z f36584a;

    /* renamed from: b */
    private final AbstractC11166a f36585b;

    /* renamed from: c */
    private AbstractC10851af f36586c;

    /* renamed from: d */
    private AbstractC11619p f36587d;

    /* renamed from: e */
    private boolean f36588e = true;

    /* renamed from: f */
    private boolean f36589f;

    /* renamed from: com.google.android.exoplayer2.k$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/k$a.class */
    public interface AbstractC11166a {
        /* renamed from: a */
        void mo21101a(C10840aa c10840aa);
    }

    public C11165k(AbstractC11166a abstractC11166a, AbstractC11603c abstractC11603c) {
        this.f36585b = abstractC11166a;
        this.f36584a = new C11635z(abstractC11603c);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: B_ */
    public final long mo19763B_() {
        return this.f36588e ? this.f36584a.mo19763B_() : ((AbstractC11619p) C11593a.m20020b(this.f36587d)).mo19763B_();
    }

    /* renamed from: a */
    public final long m21351a(boolean z) {
        AbstractC10851af abstractC10851af = this.f36586c;
        if (abstractC10851af == null || abstractC10851af.mo19746z() || (!this.f36586c.mo19681y() && (z || this.f36586c.mo21799g()))) {
            this.f36588e = true;
            if (this.f36589f) {
                this.f36584a.m19762a();
            }
        } else {
            AbstractC11619p abstractC11619p = (AbstractC11619p) C11593a.m20020b(this.f36587d);
            long mo19763B_ = abstractC11619p.mo19763B_();
            if (this.f36588e) {
                if (mo19763B_ < this.f36584a.mo19763B_()) {
                    this.f36584a.m19759b();
                } else {
                    this.f36588e = false;
                    if (this.f36589f) {
                        this.f36584a.m19762a();
                    }
                }
            }
            this.f36584a.m19761a(mo19763B_);
            C10840aa mo19758d = abstractC11619p.mo19758d();
            if (!mo19758d.equals(this.f36584a.f38753a)) {
                this.f36584a.mo19760a(mo19758d);
                this.f36585b.mo21101a(mo19758d);
            }
        }
        return mo19763B_();
    }

    /* renamed from: a */
    public final void m21354a() {
        this.f36589f = true;
        this.f36584a.m19762a();
    }

    /* renamed from: a */
    public final void m21353a(long j) {
        this.f36584a.m19761a(j);
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: a */
    public final void mo19760a(C10840aa c10840aa) {
        AbstractC11619p abstractC11619p = this.f36587d;
        C10840aa c10840aa2 = c10840aa;
        if (abstractC11619p != null) {
            abstractC11619p.mo19760a(c10840aa);
            c10840aa2 = this.f36587d.mo19758d();
        }
        this.f36584a.mo19760a(c10840aa2);
    }

    /* renamed from: a */
    public final void m21352a(AbstractC10851af abstractC10851af) throws ExoPlaybackException {
        AbstractC11619p abstractC11619p;
        AbstractC11619p mo21802c = abstractC10851af.mo21802c();
        if (mo21802c == null || mo21802c == (abstractC11619p = this.f36587d)) {
            return;
        }
        if (abstractC11619p != null) {
            throw ExoPlaybackException.m22323a((RuntimeException) new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f36587d = mo21802c;
        this.f36586c = abstractC10851af;
        mo21802c.mo19760a(this.f36584a.f38753a);
    }

    /* renamed from: b */
    public final void m21350b() {
        this.f36589f = false;
        this.f36584a.m19759b();
    }

    /* renamed from: b */
    public final void m21349b(AbstractC10851af abstractC10851af) {
        if (abstractC10851af == this.f36586c) {
            this.f36587d = null;
            this.f36586c = null;
            this.f36588e = true;
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: d */
    public final C10840aa mo19758d() {
        AbstractC11619p abstractC11619p = this.f36587d;
        return abstractC11619p != null ? abstractC11619p.mo19758d() : this.f36584a.f38753a;
    }
}
