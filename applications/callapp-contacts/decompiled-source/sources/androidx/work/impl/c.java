package androidx.work.impl;

import androidx.lifecycle.t;
import androidx.work.n;
import com.google.common.util.concurrent.a;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/c.class */
public final class c implements n {

    /* renamed from: c  reason: collision with root package name */
    private final t<n.a> f6073c = new t<>();

    /* renamed from: d  reason: collision with root package name */
    private final androidx.work.impl.utils.a.c<n.a.c> f6074d = androidx.work.impl.utils.a.c.a();

    public c() {
        a(n.f6233b);
    }

    @Override // androidx.work.n
    public final a<n.a.c> a() {
        return this.f6074d;
    }

    public final void a(n.a aVar) {
        this.f6073c.a((t<n.a>) aVar);
        if (aVar instanceof n.a.c) {
            this.f6074d.a((androidx.work.impl.utils.a.c<n.a.c>) ((n.a.c) aVar));
        } else if (aVar instanceof n.a.C0123a) {
            this.f6074d.a(((n.a.C0123a) aVar).f6234a);
        }
    }
}
