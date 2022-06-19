package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5543v;
/* renamed from: com.google.android.exoplayer2.util.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/a0.class */
public final class C5501a0 implements AbstractC5528q {

    /* renamed from: d */
    private final AbstractC5510f f17852d;

    /* renamed from: e */
    private boolean f17853e;

    /* renamed from: f */
    private long f17854f;

    /* renamed from: g */
    private long f17855g;

    /* renamed from: h */
    private C5102l0 f17856h = C5102l0.f15984a;

    public C5501a0(AbstractC5510f abstractC5510f) {
        this.f17852d = abstractC5510f;
    }

    /* renamed from: a */
    public void m18927a(long j) {
        this.f17854f = j;
        if (this.f17853e) {
            this.f17855g = this.f17852d.mo18896b();
        }
    }

    /* renamed from: b */
    public void m18926b() {
        if (!this.f17853e) {
            this.f17855g = this.f17852d.mo18896b();
            this.f17853e = true;
        }
    }

    /* renamed from: c */
    public void m18925c() {
        if (this.f17853e) {
            m18927a(mo18319n());
            this.f17853e = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: d */
    public C5102l0 mo18326d() {
        return this.f17856h;
    }

    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: h */
    public void mo18322h(C5102l0 c5102l0) {
        if (this.f17853e) {
            m18927a(mo18319n());
        }
        this.f17856h = c5102l0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // com.google.android.exoplayer2.util.AbstractC5528q
    /* renamed from: n */
    public long mo18319n() {
        ?? r0 = this.f17854f;
        char c = r0;
        if (this.f17853e) {
            long mo18896b = this.f17852d.mo18896b() - this.f17855g;
            C5102l0 c5102l0 = this.f17856h;
            c = r0 + (c5102l0.f15985b == 1.0f ? C5543v.m18630a(mo18896b) : c5102l0.m20515a(mo18896b));
        }
        return c;
    }
}
