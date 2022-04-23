package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c.class */
public final class c implements d.a<Object>, f {

    /* renamed from: a  reason: collision with root package name */
    private final List<f> f7505a;

    /* renamed from: b  reason: collision with root package name */
    private final g<?> f7506b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a f7507c;

    /* renamed from: d  reason: collision with root package name */
    private int f7508d;
    private com.bumptech.glide.load.f e;
    private List<ModelLoader<File, ?>> f;
    private int g;
    private volatile ModelLoader.LoadData<?> h;
    private File i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(g<?> gVar, f.a aVar) {
        this(gVar.d(), gVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(List<com.bumptech.glide.load.f> list, g<?> gVar, f.a aVar) {
        this.f7508d = -1;
        this.f7505a = list;
        this.f7506b = gVar;
        this.f7507c = aVar;
    }

    private boolean c() {
        return this.g < this.f.size();
    }

    @Override // com.bumptech.glide.load.engine.f
    public final boolean a() {
        while (true) {
            boolean z = false;
            if (this.f == null || !c()) {
                int i = this.f7508d + 1;
                this.f7508d = i;
                if (i >= this.f7505a.size()) {
                    return false;
                }
                com.bumptech.glide.load.f fVar = this.f7505a.get(this.f7508d);
                File a2 = this.f7506b.b().a(new d(fVar, this.f7506b.j));
                this.i = a2;
                if (a2 != null) {
                    this.e = fVar;
                    this.f = this.f7506b.a(a2);
                    this.g = 0;
                }
            } else {
                this.h = null;
                while (!z && c()) {
                    List<ModelLoader<File, ?>> list = this.f;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    this.h = list.get(i2).buildLoadData(this.i, this.f7506b.f7533c, this.f7506b.f7534d, this.f7506b.g);
                    if (this.h != null && this.f7506b.a(this.h.fetcher.getDataClass())) {
                        this.h.fetcher.loadData(this.f7506b.k, this);
                        z = true;
                    }
                }
                return z;
            }
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
        this.f7507c.a(this.e, obj, this.h.fetcher, a.DATA_DISK_CACHE, this.e);
    }

    @Override // com.bumptech.glide.load.data.d.a
    public final void onLoadFailed(Exception exc) {
        this.f7507c.a(this.e, exc, this.h.fetcher, a.DATA_DISK_CACHE);
    }
}
