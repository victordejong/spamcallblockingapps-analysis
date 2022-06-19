package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.engine.AbstractC4049e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p223p.C4377f;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w.class */
public class C4088w implements AbstractC4049e, AbstractC4049e.AbstractC4050a {

    /* renamed from: d */
    private final C4051f<?> f12902d;

    /* renamed from: e */
    private final AbstractC4049e.AbstractC4050a f12903e;

    /* renamed from: f */
    private int f12904f;

    /* renamed from: g */
    private C4046b f12905g;

    /* renamed from: h */
    private Object f12906h;

    /* renamed from: i */
    private volatile AbstractC4191n.C4192a<?> f12907i;

    /* renamed from: j */
    private C4047c f12908j;

    /* renamed from: com.bumptech.glide.load.engine.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/w$a.class */
    public class C4089a implements AbstractC4007d.AbstractC4008a<Object> {

        /* renamed from: d */
        final /* synthetic */ AbstractC4191n.C4192a f12909d;

        C4089a(AbstractC4191n.C4192a c4192a) {
            C4088w.this = r4;
            this.f12909d = c4192a;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
        /* renamed from: c */
        public void mo23127c(Exception exc) {
            if (C4088w.this.m23306g(this.f12909d)) {
                C4088w.this.m23304i(this.f12909d, exc);
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
        /* renamed from: f */
        public void mo23126f(Object obj) {
            if (C4088w.this.m23306g(this.f12909d)) {
                C4088w.this.m23305h(this.f12909d, obj);
            }
        }
    }

    public C4088w(C4051f<?> c4051f, AbstractC4049e.AbstractC4050a abstractC4050a) {
        this.f12902d = c4051f;
        this.f12903e = abstractC4050a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private void m23310c(Object obj) {
        long m22735b = C4377f.m22735b();
        try {
            AbstractC3990a<X> m23389p = this.f12902d.m23389p(obj);
            C4048d c4048d = new C4048d(m23389p, obj, this.f12902d.m23394k());
            this.f12908j = new C4047c(this.f12907i.f13059a, this.f12902d.m23390o());
            this.f12902d.m23401d().mo23220a(this.f12908j, c4048d);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.f12908j + ", data: " + obj + ", encoder: " + m23389p + ", duration: " + C4377f.m22736a(m22735b));
            }
            this.f12907i.f13061c.mo23089b();
            this.f12905g = new C4046b(Collections.singletonList(this.f12907i.f13059a), this.f12902d, this);
        } catch (Throwable th) {
            this.f12907i.f13061c.mo23089b();
            throw th;
        }
    }

    /* renamed from: f */
    private boolean m23307f() {
        return this.f12904f < this.f12902d.m23398g().size();
    }

    /* renamed from: j */
    private void m23303j(AbstractC4191n.C4192a<?> c4192a) {
        this.f12907i.f13061c.mo23086e(this.f12902d.m23393l(), new C4089a(c4192a));
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: a */
    public void mo23312a(AbstractC3999c abstractC3999c, Exception exc, AbstractC4007d<?> abstractC4007d, DataSource dataSource) {
        this.f12903e.mo23312a(abstractC3999c, exc, abstractC4007d, this.f12907i.f13061c.mo23087d());
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    /* renamed from: b */
    public boolean mo23311b() {
        Object obj = this.f12906h;
        if (obj != null) {
            this.f12906h = null;
            m23310c(obj);
        }
        C4046b c4046b = this.f12905g;
        if (c4046b == null || !c4046b.mo23311b()) {
            this.f12905g = null;
            this.f12907i = null;
            boolean z = false;
            while (!z && m23307f()) {
                List<AbstractC4191n.C4192a<?>> m23398g = this.f12902d.m23398g();
                int i = this.f12904f;
                this.f12904f = i + 1;
                this.f12907i = m23398g.get(i);
                if (this.f12907i != null && (this.f12902d.m23400e().mo23374c(this.f12907i.f13061c.mo23087d()) || this.f12902d.m23385t(this.f12907i.f13061c.mo23090a()))) {
                    m23303j(this.f12907i);
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    public void cancel() {
        AbstractC4191n.C4192a<?> c4192a = this.f12907i;
        if (c4192a != null) {
            c4192a.f13061c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: d */
    public void mo23309d() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e.AbstractC4050a
    /* renamed from: e */
    public void mo23308e(AbstractC3999c abstractC3999c, Object obj, AbstractC4007d<?> abstractC4007d, DataSource dataSource, AbstractC3999c abstractC3999c2) {
        this.f12903e.mo23308e(abstractC3999c, obj, abstractC4007d, this.f12907i.f13061c.mo23087d(), abstractC3999c);
    }

    /* renamed from: g */
    boolean m23306g(AbstractC4191n.C4192a<?> c4192a) {
        AbstractC4191n.C4192a<?> c4192a2 = this.f12907i;
        return c4192a2 != null && c4192a2 == c4192a;
    }

    /* renamed from: h */
    void m23305h(AbstractC4191n.C4192a<?> c4192a, Object obj) {
        AbstractC4054h m23400e = this.f12902d.m23400e();
        if (obj != null && m23400e.mo23374c(c4192a.f13061c.mo23087d())) {
            this.f12906h = obj;
            this.f12903e.mo23309d();
            return;
        }
        AbstractC4049e.AbstractC4050a abstractC4050a = this.f12903e;
        AbstractC3999c abstractC3999c = c4192a.f13059a;
        AbstractC4007d<?> abstractC4007d = c4192a.f13061c;
        abstractC4050a.mo23308e(abstractC3999c, obj, abstractC4007d, abstractC4007d.mo23087d(), this.f12908j);
    }

    /* renamed from: i */
    void m23304i(AbstractC4191n.C4192a<?> c4192a, Exception exc) {
        AbstractC4049e.AbstractC4050a abstractC4050a = this.f12903e;
        C4047c c4047c = this.f12908j;
        AbstractC4007d<?> abstractC4007d = c4192a.f13061c;
        abstractC4050a.mo23312a(c4047c, exc, abstractC4007d, abstractC4007d.mo23087d());
    }
}
