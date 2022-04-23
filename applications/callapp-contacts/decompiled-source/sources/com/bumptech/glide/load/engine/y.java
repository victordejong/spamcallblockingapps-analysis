package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y.class */
public final class y implements f, f.a {

    /* renamed from: a  reason: collision with root package name */
    final g<?> f7613a;

    /* renamed from: b  reason: collision with root package name */
    final f.a f7614b;

    /* renamed from: c  reason: collision with root package name */
    Object f7615c;

    /* renamed from: d  reason: collision with root package name */
    d f7616d;
    private int e;
    private c f;
    private volatile ModelLoader.LoadData<?> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(g<?> gVar, f.a aVar) {
        this.f7613a = gVar;
        this.f7614b = aVar;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void a(com.bumptech.glide.load.f fVar, Exception exc, d<?> dVar, a aVar) {
        this.f7614b.a(fVar, exc, dVar, this.g.fetcher.getDataSource());
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void a(com.bumptech.glide.load.f fVar, Object obj, d<?> dVar, a aVar, com.bumptech.glide.load.f fVar2) {
        this.f7614b.a(fVar, obj, dVar, this.g.fetcher.getDataSource(), fVar);
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.engine.f
    public final boolean a() {
        Object obj = this.f7615c;
        if (obj != null) {
            this.f7615c = null;
            long a2 = com.bumptech.glide.g.f.a();
            try {
                com.bumptech.glide.load.d a3 = this.f7613a.f7531a.f7263c.f7188a.a(obj.getClass());
                if (a3 != null) {
                    e eVar = new e(a3, obj, this.f7613a.g);
                    this.f7616d = new d(this.g.sourceKey, this.f7613a.j);
                    this.f7613a.b().a(this.f7616d, eVar);
                    if (Log.isLoggable("SourceGenerator", 2)) {
                        StringBuilder sb = new StringBuilder("Finished encoding source to cache, key: ");
                        sb.append(this.f7616d);
                        sb.append(", data: ");
                        sb.append(obj);
                        sb.append(", encoder: ");
                        sb.append(a3);
                        sb.append(", duration: ");
                        sb.append(com.bumptech.glide.g.f.a(a2));
                    }
                    this.g.fetcher.cleanup();
                    this.f = new c(Collections.singletonList(this.g.sourceKey), this.f7613a, this);
                } else {
                    throw new Registry.NoSourceEncoderAvailableException(obj.getClass());
                }
            } catch (Throwable th) {
                this.g.fetcher.cleanup();
                throw th;
            }
        }
        c cVar = this.f;
        if (cVar != null && cVar.a()) {
            return true;
        }
        this.f = null;
        this.g = null;
        boolean z = false;
        while (!z) {
            if (!(this.e < this.f7613a.c().size())) {
                break;
            }
            List<ModelLoader.LoadData<?>> c2 = this.f7613a.c();
            int i = this.e;
            this.e = i + 1;
            this.g = c2.get(i);
            if (this.g != null && (this.f7613a.l.a(this.g.fetcher.getDataSource()) || this.f7613a.a(this.g.fetcher.getDataClass()))) {
                final ModelLoader.LoadData<?> loadData = this.g;
                this.g.fetcher.loadData(this.f7613a.k, new d.a<Object>() { // from class: com.bumptech.glide.load.engine.y.1
                    @Override // com.bumptech.glide.load.data.d.a
                    public final void onDataReady(Object obj2) {
                        if (y.this.a(loadData)) {
                            y yVar = y.this;
                            ModelLoader.LoadData loadData2 = loadData;
                            j jVar = yVar.f7613a.l;
                            if (obj2 == null || !jVar.a(loadData2.fetcher.getDataSource())) {
                                yVar.f7614b.a(loadData2.sourceKey, obj2, loadData2.fetcher, loadData2.fetcher.getDataSource(), yVar.f7616d);
                                return;
                            }
                            yVar.f7615c = obj2;
                            yVar.f7614b.c();
                        }
                    }

                    @Override // com.bumptech.glide.load.data.d.a
                    public final void onLoadFailed(Exception exc) {
                        if (y.this.a(loadData)) {
                            y yVar = y.this;
                            ModelLoader.LoadData loadData2 = loadData;
                            yVar.f7614b.a(yVar.f7616d, exc, loadData2.fetcher, loadData2.fetcher.getDataSource());
                        }
                    }
                });
                z = true;
            }
        }
        return z;
    }

    final boolean a(ModelLoader.LoadData<?> loadData) {
        ModelLoader.LoadData<?> loadData2 = this.g;
        return loadData2 != null && loadData2 == loadData;
    }

    @Override // com.bumptech.glide.load.engine.f
    public final void b() {
        ModelLoader.LoadData<?> loadData = this.g;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public final void c() {
        throw new UnsupportedOperationException();
    }
}
