package p193e.p194a.p1365y.p1390h;

import android.content.Context;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import s1.w.f;
/* renamed from: e.a.y.h.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/h/c.class */
public final class C21750c implements Object<C21748b> {

    /* renamed from: a */
    public final Provider<f> f60573a;

    /* renamed from: b */
    public final Provider<Context> f60574b;

    /* renamed from: c */
    public final Provider<AbstractC21597c> f60575c;

    /* renamed from: d */
    public final Provider<AbstractC21603f> f60576d;

    /* renamed from: e */
    public final Provider<AbstractC21606g0> f60577e;

    public C21750c(Provider<f> provider, Provider<Context> provider2, Provider<AbstractC21597c> provider3, Provider<AbstractC21603f> provider4, Provider<AbstractC21606g0> provider5) {
        this.f60573a = provider;
        this.f60574b = provider2;
        this.f60575c = provider3;
        this.f60576d = provider4;
        this.f60577e = provider5;
    }

    public Object get() {
        return new C21748b((f) this.f60573a.get(), (Context) this.f60574b.get(), (AbstractC21597c) this.f60575c.get(), (AbstractC21603f) this.f60576d.get(), (AbstractC21606g0) this.f60577e.get());
    }
}
