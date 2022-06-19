package com.bumptech.glide.load.engine;

import com.bumptech.glide.C3571e;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.RunnableC3771h;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.C3902c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g.class */
public final class C3770g<Transcode> {

    /* renamed from: a */
    C3571e f13989a;

    /* renamed from: b */
    Object f13990b;

    /* renamed from: c */
    int f13991c;

    /* renamed from: d */
    int f13992d;

    /* renamed from: e */
    Class<?> f13993e;

    /* renamed from: f */
    RunnableC3771h.AbstractC3776d f13994f;

    /* renamed from: g */
    C3822h f13995g;

    /* renamed from: h */
    Map<Class<?>, AbstractC3826l<?>> f13996h;

    /* renamed from: i */
    Class<Transcode> f13997i;

    /* renamed from: j */
    AbstractC3818f f13998j;

    /* renamed from: k */
    EnumC3646h f13999k;

    /* renamed from: l */
    AbstractC3782j f14000l;

    /* renamed from: m */
    boolean f14001m;

    /* renamed from: n */
    boolean f14002n;

    /* renamed from: o */
    private final List<ModelLoader.LoadData<?>> f14003o = new ArrayList();

    /* renamed from: p */
    private final List<AbstractC3818f> f14004p = new ArrayList();

    /* renamed from: q */
    private boolean f14005q;

    /* renamed from: r */
    private boolean f14006r;

    /* renamed from: a */
    public final List<ModelLoader<File, ?>> m37404a(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f13989a.f13582c.m37791a((Registry) file);
    }

    /* renamed from: a */
    public final void m37405a() {
        this.f13989a = null;
        this.f13990b = null;
        this.f13998j = null;
        this.f13993e = null;
        this.f13997i = null;
        this.f13995g = null;
        this.f13999k = null;
        this.f13996h = null;
        this.f14000l = null;
        this.f14003o.clear();
        this.f14005q = false;
        this.f14004p.clear();
        this.f14006r = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final boolean m37403a(Class<?> cls) {
        return m37401b(cls) != null;
    }

    /* renamed from: b */
    public final AbstractC3731a m37402b() {
        return this.f13994f.mo37364a();
    }

    /* renamed from: b */
    public final <Data> C3808s<Data, ?, Transcode> m37401b(Class<Data> cls) {
        return this.f13989a.f13582c.m37792a(cls, this.f13993e, this.f13997i);
    }

    /* renamed from: c */
    public final <Z> AbstractC3826l<Z> m37399c(Class<Z> cls) {
        AbstractC3826l<?> abstractC3826l = this.f13996h.get(cls);
        AbstractC3826l<?> abstractC3826l2 = abstractC3826l;
        if (abstractC3826l == null) {
            Iterator<Map.Entry<Class<?>, AbstractC3826l<?>>> it2 = this.f13996h.entrySet().iterator();
            while (true) {
                abstractC3826l2 = abstractC3826l;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC3826l<?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC3826l2 = next.getValue();
                    break;
                }
            }
        }
        if (abstractC3826l2 == null) {
            if (!this.f13996h.isEmpty() || !this.f14001m) {
                return C3902c.m37234a();
            }
            throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        }
        return (AbstractC3826l<Z>) abstractC3826l2;
    }

    /* renamed from: c */
    public final List<ModelLoader.LoadData<?>> m37400c() {
        if (!this.f14005q) {
            this.f14005q = true;
            this.f14003o.clear();
            List m37791a = this.f13989a.f13582c.m37791a((Registry) this.f13990b);
            int size = m37791a.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> buildLoadData = ((ModelLoader) m37791a.get(i)).buildLoadData(this.f13990b, this.f13991c, this.f13992d, this.f13995g);
                if (buildLoadData != null) {
                    this.f14003o.add(buildLoadData);
                }
            }
        }
        return this.f14003o;
    }

    /* renamed from: d */
    public final List<AbstractC3818f> m37398d() {
        if (!this.f14006r) {
            this.f14006r = true;
            this.f14004p.clear();
            List<ModelLoader.LoadData<?>> m37400c = m37400c();
            int size = m37400c.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> loadData = m37400c.get(i);
                if (!this.f14004p.contains(loadData.sourceKey)) {
                    this.f14004p.add(loadData.sourceKey);
                }
                for (int i2 = 0; i2 < loadData.alternateKeys.size(); i2++) {
                    if (!this.f14004p.contains(loadData.alternateKeys.get(i2))) {
                        this.f14004p.add(loadData.alternateKeys.get(i2));
                    }
                }
            }
        }
        return this.f14004p;
    }
}
