package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.AbstractC1731e;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p077h.C1452e;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x.class */
public class C1776x implements AbstractC1475d.AbstractC1476a<Object>, AbstractC1731e, AbstractC1731e.AbstractC1732a {

    /* renamed from: a */
    private final C1733f<?> f5403a;

    /* renamed from: b */
    private final AbstractC1731e.AbstractC1732a f5404b;

    /* renamed from: c */
    private int f5405c;

    /* renamed from: d */
    private C1696b f5406d;

    /* renamed from: e */
    private Object f5407e;

    /* renamed from: f */
    private volatile AbstractC1546n.C1547a<?> f5408f;

    /* renamed from: g */
    private C1719c f5409g;

    public C1776x(C1733f<?> c1733f, AbstractC1731e.AbstractC1732a abstractC1732a) {
        this.f5403a = c1733f;
        this.f5404b = abstractC1732a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    private void m16335b(Object obj) {
        long m17002a = C1452e.m17002a();
        try {
            AbstractC1664d<X> m16460a = this.f5403a.m16460a((C1733f<?>) obj);
            C1729d c1729d = new C1729d(m16460a, obj, this.f5403a.m16453e());
            this.f5409g = new C1719c(this.f5408f.f4903a, this.f5403a.m16452f());
            this.f5403a.m16459b().mo16502a(this.f5409g, c1729d);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.f5409g + ", data: " + obj + ", encoder: " + m16460a + ", duration: " + C1452e.m17001a(m17002a));
            }
            this.f5408f.f4905c.mo16811b();
            this.f5406d = new C1696b(Collections.singletonList(this.f5408f.f4903a), this.f5403a, this);
        } catch (Throwable th) {
            this.f5408f.f4905c.mo16811b();
            throw th;
        }
    }

    /* renamed from: d */
    private boolean m16333d() {
        return this.f5405c < this.f5403a.m16445m().size();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: a */
    public void mo16340a(AbstractC1777f abstractC1777f, Exception exc, AbstractC1475d<?> abstractC1475d, EnumC1464a enumC1464a) {
        this.f5404b.mo16340a(abstractC1777f, exc, abstractC1475d, this.f5408f.f4905c.mo16809d());
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: a */
    public void mo16339a(AbstractC1777f abstractC1777f, Object obj, AbstractC1475d<?> abstractC1475d, EnumC1464a enumC1464a, AbstractC1777f abstractC1777f2) {
        this.f5404b.mo16339a(abstractC1777f, obj, abstractC1475d, this.f5408f.f4905c.mo16809d(), abstractC1777f);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16338a(Exception exc) {
        this.f5404b.mo16340a(this.f5409g, exc, this.f5408f.f4905c, this.f5408f.f4905c.mo16809d());
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16337a(Object obj) {
        AbstractC1745i m16456c = this.f5403a.m16456c();
        if (obj == null || !m16456c.mo16404a(this.f5408f.f4905c.mo16809d())) {
            this.f5404b.mo16339a(this.f5408f.f4903a, obj, this.f5408f.f4905c, this.f5408f.f4905c.mo16809d(), this.f5409g);
            return;
        }
        this.f5407e = obj;
        this.f5404b.mo16334c();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: a */
    public boolean mo16341a() {
        boolean z;
        if (this.f5407e != null) {
            Object obj = this.f5407e;
            this.f5407e = null;
            m16335b(obj);
        }
        if (this.f5406d == null || !this.f5406d.mo16341a()) {
            this.f5406d = null;
            this.f5408f = null;
            z = false;
            while (!z && m16333d()) {
                List<AbstractC1546n.C1547a<?>> m16445m = this.f5403a.m16445m();
                int i = this.f5405c;
                this.f5405c = i + 1;
                this.f5408f = m16445m.get(i);
                if (this.f5408f != null && (this.f5403a.m16456c().mo16404a(this.f5408f.f4905c.mo16809d()) || this.f5403a.m16461a(this.f5408f.f4905c.mo16813a()))) {
                    this.f5408f.f4905c.mo16812a(this.f5403a.m16454d(), this);
                    z = true;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: b */
    public void mo16336b() {
        AbstractC1546n.C1547a<?> c1547a = this.f5408f;
        if (c1547a != null) {
            c1547a.f4905c.mo16810c();
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e.AbstractC1732a
    /* renamed from: c */
    public void mo16334c() {
        throw new UnsupportedOperationException();
    }
}
