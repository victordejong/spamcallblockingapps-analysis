package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC3661d;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.engine.AbstractC3768f;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p116g.C3638f;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.y */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y.class */
public final class C3816y implements AbstractC3768f, AbstractC3768f.AbstractC3769a {

    /* renamed from: a */
    final C3770g<?> f14167a;

    /* renamed from: b */
    final AbstractC3768f.AbstractC3769a f14168b;

    /* renamed from: c */
    Object f14169c;

    /* renamed from: d */
    C3766d f14170d;

    /* renamed from: e */
    private int f14171e;

    /* renamed from: f */
    private C3755c f14172f;

    /* renamed from: g */
    private volatile ModelLoader.LoadData<?> f14173g;

    public C3816y(C3770g<?> c3770g, AbstractC3768f.AbstractC3769a abstractC3769a) {
        this.f14167a = c3770g;
        this.f14168b = abstractC3769a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: a */
    public final void mo37330a(AbstractC3818f abstractC3818f, Exception exc, AbstractC3673d<?> abstractC3673d, EnumC3658a enumC3658a) {
        this.f14168b.mo37330a(abstractC3818f, exc, abstractC3673d, this.f14173g.fetcher.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: a */
    public final void mo37329a(AbstractC3818f abstractC3818f, Object obj, AbstractC3673d<?> abstractC3673d, EnumC3658a enumC3658a, AbstractC3818f abstractC3818f2) {
        this.f14168b.mo37329a(abstractC3818f, obj, abstractC3673d, this.f14173g.fetcher.getDataSource(), abstractC3818f);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: a */
    public final boolean mo37331a() {
        Object obj = this.f14169c;
        if (obj != null) {
            this.f14169c = null;
            long m37593a = C3638f.m37593a();
            try {
                AbstractC3661d m37712a = this.f14167a.f13989a.f13582c.f13429a.m37712a(obj.getClass());
                if (m37712a == null) {
                    throw new Registry.NoSourceEncoderAvailableException(obj.getClass());
                }
                C3767e c3767e = new C3767e(m37712a, obj, this.f14167a.f13995g);
                this.f14170d = new C3766d(this.f14173g.sourceKey, this.f14167a.f13998j);
                this.f14167a.m37402b().mo37434a(this.f14170d, c3767e);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    StringBuilder sb = new StringBuilder("Finished encoding source to cache, key: ");
                    sb.append(this.f14170d);
                    sb.append(", data: ");
                    sb.append(obj);
                    sb.append(", encoder: ");
                    sb.append(m37712a);
                    sb.append(", duration: ");
                    sb.append(C3638f.m37592a(m37593a));
                }
                this.f14173g.fetcher.cleanup();
                this.f14172f = new C3755c(Collections.singletonList(this.f14173g.sourceKey), this.f14167a, this);
            } catch (Throwable th) {
                this.f14173g.fetcher.cleanup();
                throw th;
            }
        }
        C3755c c3755c = this.f14172f;
        if (c3755c == null || !c3755c.mo37331a()) {
            this.f14172f = null;
            this.f14173g = null;
            boolean z = false;
            while (!z) {
                if (!(this.f14171e < this.f14167a.m37400c().size())) {
                    break;
                }
                List<ModelLoader.LoadData<?>> m37400c = this.f14167a.m37400c();
                int i = this.f14171e;
                this.f14171e = i + 1;
                this.f14173g = m37400c.get(i);
                if (this.f14173g != null && (this.f14167a.f14000l.mo37371a(this.f14173g.fetcher.getDataSource()) || this.f14167a.m37403a(this.f14173g.fetcher.getDataClass()))) {
                    final ModelLoader.LoadData<?> loadData = this.f14173g;
                    this.f14173g.fetcher.loadData(this.f14167a.f13999k, new AbstractC3673d.AbstractC3674a<Object>() { // from class: com.bumptech.glide.load.engine.y.1
                        @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
                        public final void onDataReady(Object obj2) {
                            if (C3816y.this.m37328a(loadData)) {
                                C3816y c3816y = C3816y.this;
                                ModelLoader.LoadData loadData2 = loadData;
                                AbstractC3782j abstractC3782j = c3816y.f14167a.f14000l;
                                if (obj2 == null || !abstractC3782j.mo37371a(loadData2.fetcher.getDataSource())) {
                                    c3816y.f14168b.mo37329a(loadData2.sourceKey, obj2, loadData2.fetcher, loadData2.fetcher.getDataSource(), c3816y.f14170d);
                                    return;
                                }
                                c3816y.f14169c = obj2;
                                c3816y.f14168b.mo37326c();
                            }
                        }

                        @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
                        public final void onLoadFailed(Exception exc) {
                            if (C3816y.this.m37328a(loadData)) {
                                C3816y c3816y = C3816y.this;
                                ModelLoader.LoadData loadData2 = loadData;
                                c3816y.f14168b.mo37330a(c3816y.f14170d, exc, loadData2.fetcher, loadData2.fetcher.getDataSource());
                            }
                        }
                    });
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    /* renamed from: a */
    final boolean m37328a(ModelLoader.LoadData<?> loadData) {
        ModelLoader.LoadData<?> loadData2 = this.f14173g;
        return loadData2 != null && loadData2 == loadData;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f
    /* renamed from: b */
    public final void mo37327b() {
        ModelLoader.LoadData<?> loadData = this.f14173g;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3768f.AbstractC3769a
    /* renamed from: c */
    public final void mo37326c() {
        throw new UnsupportedOperationException();
    }
}
