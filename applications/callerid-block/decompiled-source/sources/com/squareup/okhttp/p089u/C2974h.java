package com.squareup.okhttp.p089u;

import com.squareup.okhttp.C2963t;
import java.util.LinkedHashSet;
import java.util.Set;
/* renamed from: com.squareup.okhttp.u.h */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/h.class */
public final class C2974h {

    /* renamed from: a */
    private final Set<C2963t> f12518a = new LinkedHashSet();

    /* renamed from: a */
    public void m662a(C2963t tVar) {
        synchronized (this) {
            this.f12518a.remove(tVar);
        }
    }

    /* renamed from: b */
    public void m661b(C2963t tVar) {
        synchronized (this) {
            this.f12518a.add(tVar);
        }
    }

    /* renamed from: c */
    public boolean m660c(C2963t tVar) {
        boolean contains;
        synchronized (this) {
            contains = this.f12518a.contains(tVar);
        }
        return contains;
    }
}
