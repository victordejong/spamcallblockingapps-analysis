package com.bumptech.glide.load.engine;

import com.bumptech.glide.Registry;
import com.bumptech.glide.e;
import com.bumptech.glide.load.engine.b.a;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/g.class */
public final class g<Transcode> {

    /* renamed from: a  reason: collision with root package name */
    e f7531a;

    /* renamed from: b  reason: collision with root package name */
    Object f7532b;

    /* renamed from: c  reason: collision with root package name */
    int f7533c;

    /* renamed from: d  reason: collision with root package name */
    int f7534d;
    Class<?> e;
    h.d f;
    com.bumptech.glide.load.h g;
    Map<Class<?>, l<?>> h;
    Class<Transcode> i;
    f j;
    com.bumptech.glide.h k;
    j l;
    boolean m;
    boolean n;
    private final List<ModelLoader.LoadData<?>> o = new ArrayList();
    private final List<f> p = new ArrayList();
    private boolean q;
    private boolean r;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<ModelLoader<File, ?>> a(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f7531a.f7263c.a((Registry) file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f7531a = null;
        this.f7532b = null;
        this.j = null;
        this.e = null;
        this.i = null;
        this.g = null;
        this.k = null;
        this.h = null;
        this.l = null;
        this.o.clear();
        this.q = false;
        this.p.clear();
        this.r = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(Class<?> cls) {
        return b(cls) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a b() {
        return this.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <Data> s<Data, ?, Transcode> b(Class<Data> cls) {
        return this.f7531a.f7263c.a(cls, this.e, this.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <Z> l<Z> c(Class<Z> cls) {
        l<?> lVar = this.h.get(cls);
        l<Z> lVar2 = (l<Z>) lVar;
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, l<?>>> it2 = this.h.entrySet().iterator();
            while (true) {
                lVar2 = (l<Z>) lVar;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, l<?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar2 = (l<Z>) next.getValue();
                    break;
                }
            }
        }
        if (lVar2 != null) {
            return lVar2;
        }
        if (!this.h.isEmpty() || !this.m) {
            return c.a();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<ModelLoader.LoadData<?>> c() {
        if (!this.q) {
            this.q = true;
            this.o.clear();
            List a2 = this.f7531a.f7263c.a((Registry) this.f7532b);
            int size = a2.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> buildLoadData = ((ModelLoader) a2.get(i)).buildLoadData(this.f7532b, this.f7533c, this.f7534d, this.g);
                if (buildLoadData != null) {
                    this.o.add(buildLoadData);
                }
            }
        }
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<f> d() {
        if (!this.r) {
            this.r = true;
            this.p.clear();
            List<ModelLoader.LoadData<?>> c2 = c();
            int size = c2.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> loadData = c2.get(i);
                if (!this.p.contains(loadData.sourceKey)) {
                    this.p.add(loadData.sourceKey);
                }
                for (int i2 = 0; i2 < loadData.alternateKeys.size(); i2++) {
                    if (!this.p.contains(loadData.alternateKeys.get(i2))) {
                        this.p.add(loadData.alternateKeys.get(i2));
                    }
                }
            }
        }
        return this.p;
    }
}
