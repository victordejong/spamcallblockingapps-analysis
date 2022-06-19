package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.engine.AbstractC3768f;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v.class */
public final class C3812v implements AbstractC3673d.AbstractC3674a<Object>, AbstractC3768f {

    /* renamed from: a */
    private final AbstractC3768f.AbstractC3769a f14146a;

    /* renamed from: b */
    private final C3770g<?> f14147b;

    /* renamed from: c */
    private int f14148c;

    /* renamed from: d */
    private int f14149d = -1;

    /* renamed from: e */
    private AbstractC3818f f14150e;

    /* renamed from: f */
    private List<ModelLoader<File, ?>> f14151f;

    /* renamed from: g */
    private int f14152g;

    /* renamed from: h */
    private volatile ModelLoader.LoadData<?> f14153h;

    /* renamed from: i */
    private File f14154i;

    /* renamed from: j */
    private C3813w f14155j;

    public C3812v(C3770g<?> c3770g, AbstractC3768f.AbstractC3769a abstractC3769a) {
        this.f14147b = c3770g;
        this.f14146a = abstractC3769a;
    }

    /* renamed from: c */
    private boolean m37333c() {
        return this.f14152g < this.f14151f.size();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: a */
    public final boolean mo37331a() {
        List<AbstractC3818f> m37398d = this.f14147b.m37398d();
        boolean z = false;
        if (m37398d.isEmpty()) {
            return false;
        }
        C3770g<?> c3770g = this.f14147b;
        List<Class<?>> m37787b = c3770g.f13989a.f13582c.m37787b(c3770g.f13990b.getClass(), c3770g.f13993e, c3770g.f13997i);
        if (m37787b.isEmpty()) {
            if (File.class.equals(this.f14147b.f13997i)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f14147b.f13990b.getClass() + " to " + this.f14147b.f13997i);
        }
        while (true) {
            if (this.f14151f != null && m37333c()) {
                this.f14153h = null;
                while (!z && m37333c()) {
                    List<ModelLoader<File, ?>> list = this.f14151f;
                    int i = this.f14152g;
                    this.f14152g = i + 1;
                    this.f14153h = list.get(i).buildLoadData(this.f14154i, this.f14147b.f13991c, this.f14147b.f13992d, this.f14147b.f13995g);
                    if (this.f14153h != null && this.f14147b.m37403a(this.f14153h.fetcher.getDataClass())) {
                        this.f14153h.fetcher.loadData(this.f14147b.f13999k, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f14149d + 1;
            this.f14149d = i2;
            if (i2 >= m37787b.size()) {
                int i3 = this.f14148c + 1;
                this.f14148c = i3;
                if (i3 >= m37398d.size()) {
                    return false;
                }
                this.f14149d = 0;
            }
            AbstractC3818f abstractC3818f = m37398d.get(this.f14148c);
            Class<?> cls = m37787b.get(this.f14149d);
            this.f14155j = new C3813w(this.f14147b.f13989a.f13581b, abstractC3818f, this.f14147b.f13998j, this.f14147b.f13991c, this.f14147b.f13992d, this.f14147b.m37399c(cls), cls, this.f14147b.f13995g);
            File mo37435a = this.f14147b.m37402b().mo37435a(this.f14155j);
            this.f14154i = mo37435a;
            if (mo37435a != null) {
                this.f14150e = abstractC3818f;
                this.f14151f = this.f14147b.m37404a(mo37435a);
                this.f14152g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: b */
    public final void mo37327b() {
        ModelLoader.LoadData<?> loadData = this.f14153h;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
    public final void onDataReady(Object obj) {
        this.f14146a.mo37329a(this.f14150e, obj, this.f14153h.fetcher, EnumC3658a.RESOURCE_DISK_CACHE, this.f14155j);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
    public final void onLoadFailed(Exception exc) {
        this.f14146a.mo37330a(this.f14155j, exc, this.f14153h.fetcher, EnumC3658a.RESOURCE_DISK_CACHE);
    }
}
