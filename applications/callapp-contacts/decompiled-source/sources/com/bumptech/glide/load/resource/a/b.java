package com.bumptech.glide.load.resource.a;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/b.class */
public final class b implements u<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f7632a;

    public b(byte[] bArr) {
        this.f7632a = (byte[]) j.a(bArr, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<byte[]> a() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final /* bridge */ /* synthetic */ byte[] b() {
        return this.f7632a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return this.f7632a.length;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
    }
}
