package com.bumptech.glide.p222o;

import android.content.Context;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.p223p.C4383k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.o.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/a.class */
public final class C4364a implements AbstractC3999c {

    /* renamed from: b */
    private final int f13361b;

    /* renamed from: c */
    private final AbstractC3999c f13362c;

    private C4364a(int i, AbstractC3999c abstractC3999c) {
        this.f13361b = i;
        this.f13362c = abstractC3999c;
    }

    /* renamed from: c */
    public static AbstractC3999c m22760c(Context context) {
        return new C4364a(context.getResources().getConfiguration().uiMode & 48, C4365b.m22757c(context));
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        this.f13362c.mo22754a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f13361b).array());
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4364a) {
            C4364a c4364a = (C4364a) obj;
            z = false;
            if (this.f13361b == c4364a.f13361b) {
                z = false;
                if (this.f13362c.equals(c4364a.f13362c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        return C4383k.m22704n(this.f13362c, this.f13361b);
    }
}
