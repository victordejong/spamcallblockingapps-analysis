package com.criteo.publisher.k.a;

import com.criteo.publisher.m0.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/a/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final q f17403a;

    public h(q qVar) {
        this.f17403a = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a() {
        f fVar = new f(this.f17403a);
        if (fVar.d()) {
            return fVar;
        }
        e eVar = new e(this.f17403a);
        if (eVar.d()) {
            return eVar;
        }
        return null;
    }
}
