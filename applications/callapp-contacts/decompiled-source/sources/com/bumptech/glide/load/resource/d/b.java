package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.engine.a.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/b.class */
public final class b implements a.AbstractC0137a {

    /* renamed from: a  reason: collision with root package name */
    private final e f7714a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.a.b f7715b;

    public b(e eVar) {
        this(eVar, null);
    }

    public b(e eVar, com.bumptech.glide.load.engine.a.b bVar) {
        this.f7714a = eVar;
        this.f7715b = bVar;
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f7714a.b(i, i2, config);
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final void a(Bitmap bitmap) {
        this.f7714a.a(bitmap);
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final void a(byte[] bArr) {
        com.bumptech.glide.load.engine.a.b bVar = this.f7715b;
        if (bVar != null) {
            bVar.a((com.bumptech.glide.load.engine.a.b) bArr);
        }
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final void a(int[] iArr) {
        com.bumptech.glide.load.engine.a.b bVar = this.f7715b;
        if (bVar != null) {
            bVar.a((com.bumptech.glide.load.engine.a.b) iArr);
        }
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final byte[] a(int i) {
        com.bumptech.glide.load.engine.a.b bVar = this.f7715b;
        return bVar == null ? new byte[i] : (byte[]) bVar.a(i, byte[].class);
    }

    @Override // com.bumptech.glide.b.a.AbstractC0137a
    public final int[] b(int i) {
        com.bumptech.glide.load.engine.a.b bVar = this.f7715b;
        return bVar == null ? new int[i] : (int[]) bVar.a(i, int[].class);
    }
}
