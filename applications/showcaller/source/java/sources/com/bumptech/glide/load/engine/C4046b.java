package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.engine.AbstractC4049e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b.class */
public class C4046b implements AbstractC4049e, AbstractC4007d.AbstractC4008a<Object> {

    /* renamed from: d */
    private final List<AbstractC3999c> f12753d;

    /* renamed from: e */
    private final C4051f<?> f12754e;

    /* renamed from: f */
    private final AbstractC4049e.AbstractC4050a f12755f;

    /* renamed from: g */
    private int f12756g;

    /* renamed from: h */
    private AbstractC3999c f12757h;

    /* renamed from: i */
    private List<AbstractC4191n<File, ?>> f12758i;

    /* renamed from: j */
    private int f12759j;

    /* renamed from: k */
    private volatile AbstractC4191n.C4192a<?> f12760k;

    /* renamed from: l */
    private File f12761l;

    public C4046b(C4051f<?> c4051f, AbstractC4049e.AbstractC4050a abstractC4050a) {
        this(c4051f.m23402c(), c4051f, abstractC4050a);
    }

    public C4046b(List<AbstractC3999c> list, C4051f<?> c4051f, AbstractC4049e.AbstractC4050a abstractC4050a) {
        this.f12756g = -1;
        this.f12753d = list;
        this.f12754e = c4051f;
        this.f12755f = abstractC4050a;
    }

    /* renamed from: a */
    private boolean m23405a() {
        return this.f12759j < this.f12758i.size();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    /* renamed from: b */
    public boolean mo23311b() {
        while (true) {
            boolean z = false;
            if (this.f12758i != null && m23405a()) {
                this.f12760k = null;
                while (!z && m23405a()) {
                    List<AbstractC4191n<File, ?>> list = this.f12758i;
                    int i = this.f12759j;
                    this.f12759j = i + 1;
                    this.f12760k = list.get(i).mo23081b(this.f12761l, this.f12754e.m23386s(), this.f12754e.m23399f(), this.f12754e.m23394k());
                    if (this.f12760k != null && this.f12754e.m23385t(this.f12760k.f13061c.mo23090a())) {
                        this.f12760k.f13061c.mo23086e(this.f12754e.m23393l(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f12756g + 1;
            this.f12756g = i2;
            if (i2 >= this.f12753d.size()) {
                return false;
            }
            AbstractC3999c abstractC3999c = this.f12753d.get(this.f12756g);
            File mo23219b = this.f12754e.m23401d().mo23219b(new C4047c(abstractC3999c, this.f12754e.m23390o()));
            this.f12761l = mo23219b;
            if (mo23219b != null) {
                this.f12757h = abstractC3999c;
                this.f12758i = this.f12754e.m23395j(mo23219b);
                this.f12759j = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
    /* renamed from: c */
    public void mo23127c(Exception exc) {
        this.f12755f.mo23312a(this.f12757h, exc, this.f12760k.f13061c, DataSource.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    public void cancel() {
        AbstractC4191n.C4192a<?> c4192a = this.f12760k;
        if (c4192a != null) {
            c4192a.f13061c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
    /* renamed from: f */
    public void mo23126f(Object obj) {
        this.f12755f.mo23308e(this.f12757h, obj, this.f12760k.f13061c, DataSource.DATA_DISK_CACHE, this.f12757h);
    }
}
