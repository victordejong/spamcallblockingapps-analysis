package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.AbstractC1731e;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/u.class */
public class C1772u implements AbstractC1475d.AbstractC1476a<Object>, AbstractC1731e {

    /* renamed from: a */
    private final AbstractC1731e.AbstractC1732a f5382a;

    /* renamed from: b */
    private final C1733f<?> f5383b;

    /* renamed from: c */
    private int f5384c;

    /* renamed from: d */
    private int f5385d = -1;

    /* renamed from: e */
    private AbstractC1777f f5386e;

    /* renamed from: f */
    private List<AbstractC1546n<File, ?>> f5387f;

    /* renamed from: g */
    private int f5388g;

    /* renamed from: h */
    private volatile AbstractC1546n.C1547a<?> f5389h;

    /* renamed from: i */
    private File f5390i;

    /* renamed from: j */
    private C1773v f5391j;

    public C1772u(C1733f<?> c1733f, AbstractC1731e.AbstractC1732a abstractC1732a) {
        this.f5383b = c1733f;
        this.f5382a = abstractC1732a;
    }

    /* renamed from: c */
    private boolean m16344c() {
        return this.f5388g < this.f5387f.size();
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16338a(Exception exc) {
        this.f5382a.mo16340a(this.f5391j, exc, this.f5389h.f4905c, EnumC1464a.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16337a(Object obj) {
        this.f5382a.mo16339a(this.f5386e, obj, this.f5389h.f4905c, EnumC1464a.RESOURCE_DISK_CACHE, this.f5391j);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: a */
    public boolean mo16341a() {
        boolean z;
        List<AbstractC1777f> m16444n = this.f5383b.m16444n();
        if (m16444n.isEmpty()) {
            z = false;
        } else {
            List<Class<?>> m16447k = this.f5383b.m16447k();
            if (!m16447k.isEmpty() || !File.class.equals(this.f5383b.m16448j())) {
                while (true) {
                    if (this.f5387f != null && m16344c()) {
                        this.f5389h = null;
                        boolean z2 = false;
                        while (true) {
                            z = z2;
                            if (z2) {
                                break;
                            }
                            z = z2;
                            if (!m16344c()) {
                                break;
                            }
                            List<AbstractC1546n<File, ?>> list = this.f5387f;
                            int i = this.f5388g;
                            this.f5388g = i + 1;
                            this.f5389h = list.get(i).mo16802a(this.f5390i, this.f5383b.m16451g(), this.f5383b.m16450h(), this.f5383b.m16453e());
                            if (this.f5389h != null && this.f5383b.m16461a(this.f5389h.f4905c.mo16813a())) {
                                z2 = true;
                                this.f5389h.f4905c.mo16812a(this.f5383b.m16454d(), this);
                            }
                        }
                    } else {
                        this.f5385d++;
                        if (this.f5385d >= m16447k.size()) {
                            this.f5384c++;
                            if (this.f5384c >= m16444n.size()) {
                                z = false;
                                break;
                            }
                            this.f5385d = 0;
                        }
                        AbstractC1777f abstractC1777f = m16444n.get(this.f5384c);
                        Class<?> cls = m16447k.get(this.f5385d);
                        this.f5391j = new C1773v(this.f5383b.m16449i(), abstractC1777f, this.f5383b.m16452f(), this.f5383b.m16451g(), this.f5383b.m16450h(), this.f5383b.m16455c(cls), cls, this.f5383b.m16453e());
                        this.f5390i = this.f5383b.m16459b().mo16503a(this.f5391j);
                        if (this.f5390i != null) {
                            this.f5386e = abstractC1777f;
                            this.f5387f = this.f5383b.m16462a(this.f5390i);
                            this.f5388g = 0;
                        }
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: b */
    public void mo16336b() {
        AbstractC1546n.C1547a<?> c1547a = this.f5389h;
        if (c1547a != null) {
            c1547a.f4905c.mo16810c();
        }
    }
}
