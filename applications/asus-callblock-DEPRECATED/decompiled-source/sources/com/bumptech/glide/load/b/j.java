package com.bumptech.glide.load.b;

import com.bumptech.glide.load.c;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/j.class */
final class j implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3553a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3554b;

    public j(String str, c cVar) {
        this.f3553a = str;
        this.f3554b = cVar;
    }

    @Override // com.bumptech.glide.load.c
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(this.f3553a.getBytes("UTF-8"));
        this.f3554b.a(messageDigest);
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                j jVar = (j) obj;
                if (!this.f3553a.equals(jVar.f3553a)) {
                    z = false;
                } else if (!this.f3554b.equals(jVar.f3554b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return (this.f3553a.hashCode() * 31) + this.f3554b.hashCode();
    }
}
