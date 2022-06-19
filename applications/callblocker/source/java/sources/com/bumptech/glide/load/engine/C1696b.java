package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.AbstractC1731e;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b.class */
public class C1696b implements AbstractC1475d.AbstractC1476a<Object>, AbstractC1731e {

    /* renamed from: a */
    private final List<AbstractC1777f> f5160a;

    /* renamed from: b */
    private final C1733f<?> f5161b;

    /* renamed from: c */
    private final AbstractC1731e.AbstractC1732a f5162c;

    /* renamed from: d */
    private int f5163d;

    /* renamed from: e */
    private AbstractC1777f f5164e;

    /* renamed from: f */
    private List<AbstractC1546n<File, ?>> f5165f;

    /* renamed from: g */
    private int f5166g;

    /* renamed from: h */
    private volatile AbstractC1546n.C1547a<?> f5167h;

    /* renamed from: i */
    private File f5168i;

    public C1696b(C1733f<?> c1733f, AbstractC1731e.AbstractC1732a abstractC1732a) {
        this(c1733f.m16444n(), c1733f, abstractC1732a);
    }

    public C1696b(List<AbstractC1777f> list, C1733f<?> c1733f, AbstractC1731e.AbstractC1732a abstractC1732a) {
        this.f5163d = -1;
        this.f5160a = list;
        this.f5161b = c1733f;
        this.f5162c = abstractC1732a;
    }

    /* renamed from: c */
    private boolean m16510c() {
        return this.f5166g < this.f5165f.size();
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16338a(Exception exc) {
        this.f5162c.mo16340a(this.f5164e, exc, this.f5167h.f4905c, EnumC1464a.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d.AbstractC1476a
    /* renamed from: a */
    public void mo16337a(Object obj) {
        this.f5162c.mo16339a(this.f5164e, obj, this.f5167h.f4905c, EnumC1464a.DATA_DISK_CACHE, this.f5164e);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: a */
    public boolean mo16341a() {
        boolean z = false;
        boolean z2 = false;
        while (true) {
            if (this.f5165f != null && m16510c()) {
                this.f5167h = null;
                while (true) {
                    z2 = z;
                    if (z) {
                        break;
                    }
                    z2 = z;
                    if (!m16510c()) {
                        break;
                    }
                    List<AbstractC1546n<File, ?>> list = this.f5165f;
                    int i = this.f5166g;
                    this.f5166g = i + 1;
                    this.f5167h = list.get(i).mo16802a(this.f5168i, this.f5161b.m16451g(), this.f5161b.m16450h(), this.f5161b.m16453e());
                    if (this.f5167h != null && this.f5161b.m16461a(this.f5167h.f4905c.mo16813a())) {
                        z = true;
                        this.f5167h.f4905c.mo16812a(this.f5161b.m16454d(), this);
                    }
                }
            } else {
                this.f5163d++;
                if (this.f5163d >= this.f5160a.size()) {
                    break;
                }
                AbstractC1777f abstractC1777f = this.f5160a.get(this.f5163d);
                this.f5168i = this.f5161b.m16459b().mo16503a(new C1719c(abstractC1777f, this.f5161b.m16452f()));
                if (this.f5168i != null) {
                    this.f5164e = abstractC1777f;
                    this.f5165f = this.f5161b.m16462a(this.f5168i);
                    this.f5166g = 0;
                }
            }
        }
        return z2;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1731e
    /* renamed from: b */
    public void mo16336b() {
        AbstractC1546n.C1547a<?> c1547a = this.f5167h;
        if (c1547a != null) {
            c1547a.f4905c.mo16810c();
        }
    }
}
