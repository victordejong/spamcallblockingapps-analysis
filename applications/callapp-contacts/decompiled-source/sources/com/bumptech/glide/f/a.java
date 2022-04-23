package com.bumptech.glide.f;

import android.content.Context;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.f;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a.class */
public final class a implements f {

    /* renamed from: b  reason: collision with root package name */
    private final int f7325b;

    /* renamed from: c  reason: collision with root package name */
    private final f f7326c;

    private a(int i, f fVar) {
        this.f7325b = i;
        this.f7326c = fVar;
    }

    public static f a(Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.a(context));
    }

    @Override // com.bumptech.glide.load.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f7325b == aVar.f7325b && this.f7326c.equals(aVar.f7326c);
    }

    @Override // com.bumptech.glide.load.f
    public final int hashCode() {
        return k.a(this.f7326c, this.f7325b);
    }

    @Override // com.bumptech.glide.load.f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f7326c.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f7325b).array());
    }
}
