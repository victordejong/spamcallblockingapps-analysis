package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/d.class */
class C4048d<DataType> implements AbstractC4114a.AbstractC4116b {

    /* renamed from: a */
    private final AbstractC3990a<DataType> f12764a;

    /* renamed from: b */
    private final DataType f12765b;

    /* renamed from: c */
    private final C4032e f12766c;

    public C4048d(AbstractC3990a<DataType> abstractC3990a, DataType datatype, C4032e c4032e) {
        this.f12764a = abstractC3990a;
        this.f12765b = datatype;
        this.f12766c = c4032e;
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4114a.AbstractC4116b
    /* renamed from: a */
    public boolean mo23226a(File file) {
        return this.f12764a.mo22950a(this.f12765b, file, this.f12766c);
    }
}
