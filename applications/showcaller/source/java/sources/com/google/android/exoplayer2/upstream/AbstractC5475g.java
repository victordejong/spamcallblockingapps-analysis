package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C5515h0;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/g.class */
public abstract class AbstractC5475g implements AbstractC5478j {

    /* renamed from: b */
    private final boolean f17732b;

    /* renamed from: c */
    private final ArrayList<AbstractC5497x> f17733c = new ArrayList<>(1);

    /* renamed from: d */
    private int f17734d;

    /* renamed from: e */
    private C5481l f17735e;

    public AbstractC5475g(boolean z) {
        this.f17732b = z;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: a */
    public final void mo18950a(AbstractC5497x abstractC5497x) {
        if (!this.f17733c.contains(abstractC5497x)) {
            this.f17733c.add(abstractC5497x);
            this.f17734d++;
        }
    }

    /* renamed from: d */
    public final void m19026d(int i) {
        C5481l c5481l = (C5481l) C5515h0.m18833g(this.f17735e);
        for (int i2 = 0; i2 < this.f17734d; i2++) {
            this.f17733c.get(i2).mo18941f(this, c5481l, this.f17732b, i);
        }
    }

    /* renamed from: e */
    public final void m19025e() {
        C5481l c5481l = (C5481l) C5515h0.m18833g(this.f17735e);
        for (int i = 0; i < this.f17734d; i++) {
            this.f17733c.get(i).mo18943a(this, c5481l, this.f17732b);
        }
        this.f17735e = null;
    }

    /* renamed from: f */
    public final void m19024f(C5481l c5481l) {
        for (int i = 0; i < this.f17734d; i++) {
            this.f17733c.get(i).mo18940h(this, c5481l, this.f17732b);
        }
    }

    /* renamed from: g */
    public final void m19023g(C5481l c5481l) {
        this.f17735e = c5481l;
        for (int i = 0; i < this.f17734d; i++) {
            this.f17733c.get(i).mo18942b(this, c5481l, this.f17732b);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public /* synthetic */ Map getResponseHeaders() {
        return C5477i.m19022a(this);
    }
}
