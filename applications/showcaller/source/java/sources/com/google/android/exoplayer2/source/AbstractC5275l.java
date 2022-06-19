package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.upstream.AbstractC5497x;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.google.android.exoplayer2.source.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/l.class */
public abstract class AbstractC5275l implements AbstractC5294v {

    /* renamed from: a */
    private final ArrayList<AbstractC5294v.AbstractC5296b> f16736a = new ArrayList<>(1);

    /* renamed from: b */
    private final HashSet<AbstractC5294v.AbstractC5296b> f16737b = new HashSet<>(1);

    /* renamed from: c */
    private final AbstractC5297w.C5298a f16738c = new AbstractC5297w.C5298a();

    /* renamed from: d */
    private Looper f16739d;

    /* renamed from: e */
    private AbstractC5585y0 f16740e;

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: b */
    public final void mo19848b(AbstractC5294v.AbstractC5296b abstractC5296b) {
        this.f16736a.remove(abstractC5296b);
        if (!this.f16736a.isEmpty()) {
            mo19845f(abstractC5296b);
            return;
        }
        this.f16739d = null;
        this.f16740e = null;
        this.f16737b.clear();
        mo19721s();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: d */
    public final void mo19847d(Handler handler, AbstractC5297w abstractC5297w) {
        this.f16738c.m19820a(handler, abstractC5297w);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: e */
    public final void mo19846e(AbstractC5297w abstractC5297w) {
        this.f16738c.m19822K(abstractC5297w);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: f */
    public final void mo19845f(AbstractC5294v.AbstractC5296b abstractC5296b) {
        boolean isEmpty = this.f16737b.isEmpty();
        this.f16737b.remove(abstractC5296b);
        if (!(!isEmpty) || !this.f16737b.isEmpty()) {
            return;
        }
        mo19864n();
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: j */
    public final void mo19844j(AbstractC5294v.AbstractC5296b abstractC5296b, AbstractC5497x abstractC5497x) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f16739d;
        C5508e.m18915a(looper == null || looper == myLooper);
        AbstractC5585y0 abstractC5585y0 = this.f16740e;
        this.f16736a.add(abstractC5296b);
        if (this.f16739d == null) {
            this.f16739d = myLooper;
            this.f16737b.add(abstractC5296b);
            mo19722q(abstractC5497x);
        } else if (abstractC5585y0 == null) {
        } else {
            mo19843k(abstractC5296b);
            abstractC5296b.mo19841a(this, abstractC5585y0);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5294v
    /* renamed from: k */
    public final void mo19843k(AbstractC5294v.AbstractC5296b abstractC5296b) {
        C5508e.m18911e(this.f16739d);
        boolean isEmpty = this.f16737b.isEmpty();
        this.f16737b.add(abstractC5296b);
        if (isEmpty) {
            mo19863o();
        }
    }

    /* renamed from: l */
    public final AbstractC5297w.C5298a m19875l(int i, AbstractC5294v.C5295a c5295a, long j) {
        return this.f16738c.m19821L(i, c5295a, j);
    }

    /* renamed from: m */
    public final AbstractC5297w.C5298a m19874m(AbstractC5294v.C5295a c5295a) {
        return this.f16738c.m19821L(0, c5295a, 0L);
    }

    /* renamed from: n */
    protected void mo19864n() {
    }

    /* renamed from: o */
    protected void mo19863o() {
    }

    /* renamed from: p */
    public final boolean m19873p() {
        return !this.f16737b.isEmpty();
    }

    /* renamed from: q */
    protected abstract void mo19722q(AbstractC5497x abstractC5497x);

    /* renamed from: r */
    public final void m19872r(AbstractC5585y0 abstractC5585y0) {
        this.f16740e = abstractC5585y0;
        Iterator<AbstractC5294v.AbstractC5296b> it = this.f16736a.iterator();
        while (it.hasNext()) {
            it.next().mo19841a(this, abstractC5585y0);
        }
    }

    /* renamed from: s */
    protected abstract void mo19721s();
}
