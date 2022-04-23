package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.resource.bitmap.e;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/f.class */
public final class f implements l<c> {

    /* renamed from: b  reason: collision with root package name */
    private final l<Bitmap> f7721b;

    public f(l<Bitmap> lVar) {
        this.f7721b = (l) j.a(lVar, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.l
    public final u<c> a(Context context, u<c> uVar, int i, int i2) {
        c b2 = uVar.b();
        u<Bitmap> eVar = new e(b2.a(), c.a(context).f7232a);
        u<Bitmap> a2 = this.f7721b.a(context, eVar, i, i2);
        if (!eVar.equals(a2)) {
            eVar.d();
        }
        Bitmap b3 = a2.b();
        b2.f7716a.f7720a.a(this.f7721b, b3);
        return uVar;
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f7721b.equals(((f) obj).f7721b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return this.f7721b.hashCode();
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f7721b.updateDiskCacheKey(messageDigest);
    }
}
