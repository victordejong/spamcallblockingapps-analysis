package com.bumptech.glide.load.engine;

import com.bumptech.glide.request.AbstractC0869f;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/j$d.class */
final class j$d {

    /* renamed from: a */
    final AbstractC0869f f3607a;

    /* renamed from: b */
    final Executor f3608b;

    public j$d(AbstractC0869f abstractC0869f, Executor executor) {
        this.f3607a = abstractC0869f;
        this.f3608b = executor;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j$d) {
            return this.f3607a.equals(((j$d) obj).f3607a);
        }
        return false;
    }

    public int hashCode() {
        return this.f3607a.hashCode();
    }
}
