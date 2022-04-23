package com.bumptech.glide;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.d.m;
import com.bumptech.glide.f.f;
import com.bumptech.glide.g.b.j;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.c.g;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.resource.a.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a.class */
public class a<ModelType> extends c<ModelType, g, com.bumptech.glide.load.resource.d.a, b> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, Class<ModelType> cls, f<ModelType, g, com.bumptech.glide.load.resource.d.a, b> fVar, e eVar, m mVar, com.bumptech.glide.d.g gVar) {
        super(context, cls, fVar, b.class, eVar, mVar, gVar);
        this.g = new com.bumptech.glide.g.a.a();
    }

    public final a<ModelType> a(int i) {
        super.d(i);
        return this;
    }

    public final a<ModelType> a(ModelType modeltype) {
        super.b((a<ModelType>) modeltype);
        return this;
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(int i, int i2) {
        super.a(i, i2);
        return this;
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(com.bumptech.glide.load.b.b bVar) {
        super.a(bVar);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(com.bumptech.glide.load.b<g> bVar) {
        super.a((com.bumptech.glide.load.b) bVar);
        return this;
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(c cVar) {
        super.a(cVar);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(e<g, com.bumptech.glide.load.resource.d.a> eVar) {
        super.a((e) eVar);
        return this;
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(boolean z) {
        super.a(z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c a(com.bumptech.glide.load.g<com.bumptech.glide.load.resource.d.a>[] gVarArr) {
        super.a((com.bumptech.glide.load.g[]) gVarArr);
        return this;
    }

    @Override // com.bumptech.glide.c
    public final j<b> a(ImageView imageView) {
        return super.a(imageView);
    }

    @Override // com.bumptech.glide.c
    final void a() {
        super.a((com.bumptech.glide.load.g[]) new com.bumptech.glide.load.g[]{this.c.f});
    }

    public final a<ModelType> b(int i) {
        super.c(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c b(Object obj) {
        super.b((a<ModelType>) obj);
        return this;
    }

    @Override // com.bumptech.glide.c
    final void b() {
        super.a((com.bumptech.glide.load.g[]) new com.bumptech.glide.load.g[]{this.c.e});
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c c() {
        return (a) super.clone();
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c c(int i) {
        super.c(i);
        return this;
    }

    @Override // com.bumptech.glide.c
    public /* synthetic */ Object clone() {
        return (a) super.clone();
    }

    @Override // com.bumptech.glide.c
    public final /* bridge */ /* synthetic */ c d(int i) {
        super.d(i);
        return this;
    }
}
