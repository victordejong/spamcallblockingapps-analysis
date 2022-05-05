package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.d.g;
import com.bumptech.glide.d.m;
import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.c.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public final class d<ModelType, DataType, ResourceType> extends c<ModelType, DataType, ResourceType, ResourceType> {
    private final j<ModelType, DataType> h;
    private final Class<DataType> i;
    private final Class<ResourceType> j;
    private final h.b k;

    public d(Context context, e eVar, Class<ModelType> cls, j<ModelType, DataType> jVar, Class<DataType> cls2, Class<ResourceType> cls3, m mVar, g gVar, h.b bVar) {
        super(context, cls, new e(jVar, com.bumptech.glide.load.resource.e.e.b(), eVar.a(cls2, cls3)), cls3, eVar, mVar, gVar);
        this.h = jVar;
        this.i = cls2;
        this.j = cls3;
        this.k = bVar;
    }
}
