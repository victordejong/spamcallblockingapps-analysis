package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/v.class */
public final class v implements d.a<Object>, f {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f7604a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f7605b;

    /* renamed from: c  reason: collision with root package name */
    private int f7606c;

    /* renamed from: d  reason: collision with root package name */
    private int f7607d = -1;
    private com.bumptech.glide.load.f e;
    private List<ModelLoader<File, ?>> f;
    private int g;
    private volatile ModelLoader.LoadData<?> h;
    private File i;
    private w j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(g<?> gVar, f.a aVar) {
        this.f7605b = gVar;
        this.f7604a = aVar;
    }

    private boolean c() {
        return this.g < this.f.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public final boolean a() {
        List<com.bumptech.glide.load.f> d2 = this.f7605b.d();
        boolean z = false;
        if (d2.isEmpty()) {
            return false;
        }
        g<?> gVar = this.f7605b;
        List<Class<?>> b2 = gVar.f7531a.f7263c.b(gVar.f7532b.getClass(), gVar.e, gVar.i);
        if (!b2.isEmpty()) {
            while (true) {
                if (this.f == null || !c()) {
                    int i = this.f7607d + 1;
                    this.f7607d = i;
                    if (i >= b2.size()) {
                        int i2 = this.f7606c + 1;
                        this.f7606c = i2;
                        if (i2 >= d2.size()) {
                            return false;
                        }
                        this.f7607d = 0;
                    }
                    com.bumptech.glide.load.f fVar = d2.get(this.f7606c);
                    Class<?> cls = b2.get(this.f7607d);
                    this.j = new w(this.f7605b.f7531a.f7262b, fVar, this.f7605b.j, this.f7605b.f7533c, this.f7605b.f7534d, this.f7605b.c(cls), cls, this.f7605b.g);
                    File a2 = this.f7605b.b().a(this.j);
                    this.i = a2;
                    if (a2 != null) {
                        this.e = fVar;
                        this.f = this.f7605b.a(a2);
                        this.g = 0;
                    }
                } else {
                    this.h = null;
                    while (!z && c()) {
                        List<ModelLoader<File, ?>> list = this.f;
                        int i3 = this.g;
                        this.g = i3 + 1;
                        this.h = list.get(i3).buildLoadData(this.i, this.f7605b.f7533c, this.f7605b.f7534d, this.f7605b.g);
                        if (this.h != null && this.f7605b.a(this.h.fetcher.getDataClass())) {
                            this.h.fetcher.loadData(this.f7605b.k, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
        } else if (File.class.equals(this.f7605b.i)) {
            return false;
        } else {
            throw new IllegalStateException("Failed to find any load path from " + this.f7605b.f7532b.getClass() + " to " + this.f7605b.i);
        }
    }

    @Override // com.bumptech.glide.load.engine.f
    public final void b() {
        ModelLoader.LoadData<?> loadData = this.h;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void onDataReady(Object obj) {
        this.f7604a.a(this.e, obj, this.h.fetcher, a.RESOURCE_DISK_CACHE, this.j);
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void onLoadFailed(Exception exc) {
        this.f7604a.a(this.j, exc, this.h.fetcher, a.RESOURCE_DISK_CACHE);
    }
}
