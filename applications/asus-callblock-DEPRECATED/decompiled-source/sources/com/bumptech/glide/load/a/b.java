package com.bumptech.glide.load.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/b.class */
public final class b implements c<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f3478a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3479b;

    public b(byte[] bArr, String str) {
        this.f3478a = bArr;
        this.f3479b = str;
    }

    @Override // com.bumptech.glide.load.a.c
    public final /* synthetic */ InputStream a(int i) {
        return new ByteArrayInputStream(this.f3478a);
    }

    @Override // com.bumptech.glide.load.a.c
    public final void a() {
    }

    @Override // com.bumptech.glide.load.a.c
    public final String b() {
        return this.f3479b;
    }

    @Override // com.bumptech.glide.load.a.c
    public final void c() {
    }
}
