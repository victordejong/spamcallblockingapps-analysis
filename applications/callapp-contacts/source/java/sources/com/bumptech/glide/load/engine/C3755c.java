package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.engine.AbstractC3768f;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c.class */
public final class C3755c implements AbstractC3673d.AbstractC3674a<Object>, AbstractC3768f {

    /* renamed from: a */
    private final List<AbstractC3818f> f13956a;

    /* renamed from: b */
    private final C3770g<?> f13957b;

    /* renamed from: c */
    private final AbstractC3768f.AbstractC3769a f13958c;

    /* renamed from: d */
    private int f13959d;

    /* renamed from: e */
    private AbstractC3818f f13960e;

    /* renamed from: f */
    private List<ModelLoader<File, ?>> f13961f;

    /* renamed from: g */
    private int f13962g;

    /* renamed from: h */
    private volatile ModelLoader.LoadData<?> f13963h;

    /* renamed from: i */
    private File f13964i;

    public C3755c(C3770g<?> c3770g, AbstractC3768f.AbstractC3769a abstractC3769a) {
        this(c3770g.m37398d(), c3770g, abstractC3769a);
    }

    public C3755c(List<AbstractC3818f> list, C3770g<?> c3770g, AbstractC3768f.AbstractC3769a abstractC3769a) {
        this.f13959d = -1;
        this.f13956a = list;
        this.f13957b = c3770g;
        this.f13958c = abstractC3769a;
    }

    /* renamed from: c */
    private boolean m37418c() {
        return this.f13962g < this.f13961f.size();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: a */
    public final boolean mo37331a() {
        while (true) {
            boolean z = false;
            if (this.f13961f != null && m37418c()) {
                this.f13963h = null;
                while (!z && m37418c()) {
                    List<ModelLoader<File, ?>> list = this.f13961f;
                    int i = this.f13962g;
                    this.f13962g = i + 1;
                    this.f13963h = list.get(i).buildLoadData(this.f13964i, this.f13957b.f13991c, this.f13957b.f13992d, this.f13957b.f13995g);
                    if (this.f13963h != null && this.f13957b.m37403a(this.f13963h.fetcher.getDataClass())) {
                        this.f13963h.fetcher.loadData(this.f13957b.f13999k, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.f13959d + 1;
            this.f13959d = i2;
            if (i2 >= this.f13956a.size()) {
                return false;
            }
            AbstractC3818f abstractC3818f = this.f13956a.get(this.f13959d);
            File mo37435a = this.f13957b.m37402b().mo37435a(new C3766d(abstractC3818f, this.f13957b.f13998j));
            this.f13964i = mo37435a;
            if (mo37435a != null) {
                this.f13960e = abstractC3818f;
                this.f13961f = this.f13957b.m37404a(mo37435a);
                this.f13962g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: b */
    public final void mo37327b() {
        ModelLoader.LoadData<?> loadData = this.f13963h;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
    public final void onDataReady(Object obj) {
        this.f13958c.mo37329a(this.f13960e, obj, this.f13963h.fetcher, EnumC3658a.DATA_DISK_CACHE, this.f13960e);
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
    public final void onLoadFailed(Exception exc) {
        this.f13958c.mo37330a(this.f13960e, exc, this.f13963h.fetcher, EnumC3658a.DATA_DISK_CACHE);
    }
}
