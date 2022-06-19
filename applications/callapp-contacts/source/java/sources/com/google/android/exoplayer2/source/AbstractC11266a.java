package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.google.android.exoplayer2.source.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/a.class */
public abstract class AbstractC11266a implements AbstractC11315r {

    /* renamed from: a */
    private final ArrayList<AbstractC11315r.AbstractC11317b> f36966a = new ArrayList<>(1);

    /* renamed from: b */
    private final HashSet<AbstractC11315r.AbstractC11317b> f36967b = new HashSet<>(1);

    /* renamed from: c */
    private final AbstractC11318s.C11319a f36968c = new AbstractC11318s.C11319a();

    /* renamed from: d */
    private final AbstractC10955c.C10956a f36969d = new AbstractC10955c.C10956a();

    /* renamed from: e */
    private Looper f36970e;

    /* renamed from: f */
    private AbstractC10864al f36971f;

    /* renamed from: a */
    public final AbstractC11318s.C11319a m21014a(int i, AbstractC11315r.C11316a c11316a) {
        return this.f36968c.m20933a(i, c11316a, 0L);
    }

    /* renamed from: a */
    public final AbstractC11318s.C11319a m21012a(AbstractC11315r.C11316a c11316a) {
        return this.f36968c.m20933a(0, c11316a, 0L);
    }

    /* renamed from: a */
    protected void mo20980a() {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20943a(Handler handler, AbstractC10955c abstractC10955c) {
        C11593a.m20020b(handler);
        C11593a.m20020b(abstractC10955c);
        this.f36969d.m21862a(handler, abstractC10955c);
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20942a(Handler handler, AbstractC11318s abstractC11318s) {
        C11593a.m20020b(handler);
        C11593a.m20020b(abstractC11318s);
        this.f36968c.m20931a(handler, abstractC11318s);
    }

    /* renamed from: a */
    public final void m21013a(AbstractC10864al abstractC10864al) {
        this.f36971f = abstractC10864al;
        Iterator<AbstractC11315r.AbstractC11317b> it2 = this.f36966a.iterator();
        while (it2.hasNext()) {
            it2.next().onSourceInfoRefreshed(this, abstractC10864al);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20941a(AbstractC11315r.AbstractC11317b abstractC11317b) {
        C11593a.m20020b(this.f36970e);
        boolean isEmpty = this.f36967b.isEmpty();
        this.f36967b.add(abstractC11317b);
        if (isEmpty) {
            mo20980a();
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20940a(AbstractC11315r.AbstractC11317b abstractC11317b, AbstractC11590v abstractC11590v) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f36970e;
        C11593a.m20022a(looper == null || looper == myLooper);
        AbstractC10864al abstractC10864al = this.f36971f;
        this.f36966a.add(abstractC11317b);
        if (this.f36970e == null) {
            this.f36970e = myLooper;
            this.f36967b.add(abstractC11317b);
            mo20858a(abstractC11590v);
        } else if (abstractC10864al == null) {
        } else {
            mo20941a(abstractC11317b);
            abstractC11317b.onSourceInfoRefreshed(this, abstractC10864al);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: a */
    public final void mo20939a(AbstractC11318s abstractC11318s) {
        AbstractC11318s.C11319a c11319a = this.f36968c;
        Iterator<AbstractC11318s.C11319a.C11320a> it2 = c11319a.f37155c.iterator();
        while (it2.hasNext()) {
            AbstractC11318s.C11319a.C11320a next = it2.next();
            if (next.f37158b == abstractC11318s) {
                c11319a.f37155c.remove(next);
            }
        }
    }

    /* renamed from: a */
    protected abstract void mo20858a(AbstractC11590v abstractC11590v);

    /* renamed from: b */
    public final AbstractC10955c.C10956a m21011b(int i, AbstractC11315r.C11316a c11316a) {
        return this.f36969d.m21863a(i, c11316a);
    }

    /* renamed from: b */
    public final AbstractC10955c.C10956a m21010b(AbstractC11315r.C11316a c11316a) {
        return this.f36969d.m21863a(0, c11316a);
    }

    /* renamed from: b */
    protected void mo20976b() {
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: b */
    public final void mo20938b(AbstractC11315r.AbstractC11317b abstractC11317b) {
        boolean isEmpty = this.f36967b.isEmpty();
        this.f36967b.remove(abstractC11317b);
        if (!(!isEmpty) || !this.f36967b.isEmpty()) {
            return;
        }
        mo20976b();
    }

    /* renamed from: c */
    protected abstract void mo20857c();

    @Override // com.google.android.exoplayer2.source.AbstractC11315r
    /* renamed from: c */
    public final void mo20937c(AbstractC11315r.AbstractC11317b abstractC11317b) {
        this.f36966a.remove(abstractC11317b);
        if (!this.f36966a.isEmpty()) {
            mo20938b(abstractC11317b);
            return;
        }
        this.f36970e = null;
        this.f36971f = null;
        this.f36967b.clear();
        mo20857c();
    }

    /* renamed from: d */
    public final boolean m21009d() {
        return !this.f36967b.isEmpty();
    }
}
