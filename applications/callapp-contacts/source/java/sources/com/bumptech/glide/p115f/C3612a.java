package com.bumptech.glide.p115f;

import android.content.Context;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.p116g.C3644k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.f.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/a.class */
public final class C3612a implements AbstractC3818f {

    /* renamed from: b */
    private final int f13721b;

    /* renamed from: c */
    private final AbstractC3818f f13722c;

    private C3612a(int i, AbstractC3818f abstractC3818f) {
        this.f13721b = i;
        this.f13722c = abstractC3818f;
    }

    /* renamed from: a */
    public static AbstractC3818f m37619a(Context context) {
        return new C3612a(context.getResources().getConfiguration().uiMode & 48, C3613b.m37618a(context));
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final boolean equals(Object obj) {
        if (obj instanceof C3612a) {
            C3612a c3612a = (C3612a) obj;
            return this.f13721b == c3612a.f13721b && this.f13722c.equals(c3612a.f13722c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final int hashCode() {
        return C3644k.m37578a(this.f13722c, this.f13721b);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f13722c.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f13721b).array());
    }
}
