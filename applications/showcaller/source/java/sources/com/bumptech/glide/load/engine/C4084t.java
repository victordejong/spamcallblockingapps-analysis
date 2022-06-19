package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.engine.AbstractC4049e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.t */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/t.class */
public class C4084t implements AbstractC4049e, AbstractC4007d.AbstractC4008a<Object> {

    /* renamed from: d */
    private final AbstractC4049e.AbstractC4050a f12881d;

    /* renamed from: e */
    private final C4051f<?> f12882e;

    /* renamed from: f */
    private int f12883f;

    /* renamed from: g */
    private int f12884g = -1;

    /* renamed from: h */
    private AbstractC3999c f12885h;

    /* renamed from: i */
    private List<AbstractC4191n<File, ?>> f12886i;

    /* renamed from: j */
    private int f12887j;

    /* renamed from: k */
    private volatile AbstractC4191n.C4192a<?> f12888k;

    /* renamed from: l */
    private File f12889l;

    /* renamed from: m */
    private C4085u f12890m;

    public C4084t(C4051f<?> c4051f, AbstractC4049e.AbstractC4050a abstractC4050a) {
        this.f12882e = c4051f;
        this.f12881d = abstractC4050a;
    }

    /* renamed from: a */
    private boolean m23315a() {
        return this.f12887j < this.f12886i.size();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    /* renamed from: b */
    public boolean mo23311b() {
        List<AbstractC3999c> m23402c = this.f12882e.m23402c();
        boolean z = false;
        if (m23402c.isEmpty()) {
            return false;
        }
        List<Class<?>> m23392m = this.f12882e.m23392m();
        if (m23392m.isEmpty()) {
            if (File.class.equals(this.f12882e.m23388q())) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f12882e.m23396i() + " to " + this.f12882e.m23388q());
        }
        while (true) {
            if (this.f12886i != null && m23315a()) {
                this.f12888k = null;
                while (!z && m23315a()) {
                    List<AbstractC4191n<File, ?>> list = this.f12886i;
                    int i = this.f12887j;
                    this.f12887j = i + 1;
                    this.f12888k = list.get(i).mo23081b(this.f12889l, this.f12882e.m23386s(), this.f12882e.m23399f(), this.f12882e.m23394k());
                    if (this.f12888k != null && this.f12882e.m23385t(this.f12888k.f13061c.mo23090a())) {
                        this.f12888k.f13061c.mo23086e(this.f12882e.m23393l(), this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f12884g + 1;
            this.f12884g = i2;
            if (i2 >= m23392m.size()) {
                int i3 = this.f12883f + 1;
                this.f12883f = i3;
                if (i3 >= m23402c.size()) {
                    return false;
                }
                this.f12884g = 0;
            }
            AbstractC3999c abstractC3999c = m23402c.get(this.f12883f);
            Class<?> cls = m23392m.get(this.f12884g);
            this.f12890m = new C4085u(this.f12882e.m23403b(), abstractC3999c, this.f12882e.m23390o(), this.f12882e.m23386s(), this.f12882e.m23399f(), this.f12882e.m23387r(cls), cls, this.f12882e.m23394k());
            File mo23219b = this.f12882e.m23401d().mo23219b(this.f12890m);
            this.f12889l = mo23219b;
            if (mo23219b != null) {
                this.f12885h = abstractC3999c;
                this.f12886i = this.f12882e.m23395j(mo23219b);
                this.f12887j = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
    /* renamed from: c */
    public void mo23127c(Exception exc) {
        this.f12881d.mo23312a(this.f12890m, exc, this.f12888k.f13061c, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4049e
    public void cancel() {
        AbstractC4191n.C4192a<?> c4192a = this.f12888k;
        if (c4192a != null) {
            c4192a.f13061c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d.AbstractC4008a
    /* renamed from: f */
    public void mo23126f(Object obj) {
        this.f12881d.mo23308e(this.f12885h, obj, this.f12888k.f13061c, DataSource.RESOURCE_DISK_CACHE, this.f12890m);
    }
}
