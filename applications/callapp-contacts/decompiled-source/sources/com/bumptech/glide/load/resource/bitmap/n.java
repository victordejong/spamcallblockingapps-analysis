package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.l;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/n.class */
public final class n implements l<Drawable> {

    /* renamed from: b  reason: collision with root package name */
    private final l<Bitmap> f7676b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f7677c;

    public n(l<Bitmap> lVar, boolean z) {
        this.f7676b = lVar;
        this.f7677c = z;
    }

    @Override // com.bumptech.glide.load.l
    public final u<Drawable> a(Context context, u<Drawable> uVar, int i, int i2) {
        e eVar = c.a(context).f7232a;
        Drawable b2 = uVar.b();
        u<Bitmap> a2 = m.a(eVar, b2, i, i2);
        if (a2 != null) {
            u<Bitmap> a3 = this.f7676b.a(context, a2, i, i2);
            if (!a3.equals(a2)) {
                return t.a(context.getResources(), a3);
            }
            a3.d();
            return uVar;
        } else if (!this.f7677c) {
            return uVar;
        } else {
            throw new IllegalArgumentException("Unable to convert " + b2 + " to a Bitmap");
        }
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f7676b.equals(((n) obj).f7676b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return this.f7676b.hashCode();
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f7676b.updateDiskCacheKey(messageDigest);
    }
}
