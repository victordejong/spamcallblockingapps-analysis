package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3661d;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/e.class */
final class C3767e<DataType> implements AbstractC3731a.AbstractC3733b {

    /* renamed from: a */
    private final AbstractC3661d<DataType> f13986a;

    /* renamed from: b */
    private final DataType f13987b;

    /* renamed from: c */
    private final C3822h f13988c;

    public C3767e(AbstractC3661d<DataType> abstractC3661d, DataType datatype, C3822h c3822h) {
        this.f13986a = abstractC3661d;
        this.f13987b = datatype;
        this.f13988c = c3822h;
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3731a.AbstractC3733b
    /* renamed from: a */
    public final boolean mo37406a(File file) {
        return this.f13986a.encode(this.f13987b, file, this.f13988c);
    }
}
