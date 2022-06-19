package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/d.class */
class C1729d<DataType> implements AbstractC1697a.AbstractC1699b {

    /* renamed from: a */
    private final AbstractC1664d<DataType> f5218a;

    /* renamed from: b */
    private final DataType f5219b;

    /* renamed from: c */
    private final C1781h f5220c;

    public C1729d(AbstractC1664d<DataType> abstractC1664d, DataType datatype, C1781h c1781h) {
        this.f5218a = abstractC1664d;
        this.f5219b = datatype;
        this.f5220c = c1781h;
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1697a.AbstractC1699b
    /* renamed from: a */
    public boolean mo16467a(File file) {
        return this.f5218a.mo16612a(this.f5219b, file, this.f5220c);
    }
}
