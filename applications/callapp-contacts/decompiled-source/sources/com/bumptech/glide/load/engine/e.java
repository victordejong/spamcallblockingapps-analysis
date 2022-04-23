package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.b.a;
import com.bumptech.glide.load.h;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/e.class */
final class e<DataType> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final d<DataType> f7528a;

    /* renamed from: b  reason: collision with root package name */
    private final DataType f7529b;

    /* renamed from: c  reason: collision with root package name */
    private final h f7530c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d<DataType> dVar, DataType datatype, h hVar) {
        this.f7528a = dVar;
        this.f7529b = datatype;
        this.f7530c = hVar;
    }

    @Override // com.bumptech.glide.load.engine.b.a.b
    public final boolean a(File file) {
        return this.f7528a.encode(this.f7529b, file, this.f7530c);
    }
}
