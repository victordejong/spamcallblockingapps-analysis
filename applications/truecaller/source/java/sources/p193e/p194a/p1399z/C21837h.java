package p193e.p194a.p1399z;

import android.content.Context;
import javax.inject.Provider;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1399z.p1404m.AbstractC21843a;
import p193e.p194a.p372b0.p430q.C8601l0;
/* renamed from: e.a.z.h */
/* loaded from: classes11-dex2jar.jar:e/a/z/h.class */
public final class C21837h implements Object<C21835g> {

    /* renamed from: a */
    public final Provider<Context> f60704a;

    /* renamed from: b */
    public final Provider<AbstractC21843a> f60705b;

    /* renamed from: c */
    public final Provider<C8601l0> f60706c;

    /* renamed from: d */
    public final Provider<C20592g> f60707d;

    public C21837h(Provider<Context> provider, Provider<AbstractC21843a> provider2, Provider<C8601l0> provider3, Provider<C20592g> provider4) {
        this.f60704a = provider;
        this.f60705b = provider2;
        this.f60706c = provider3;
        this.f60707d = provider4;
    }

    public Object get() {
        return new C21835g((Context) this.f60704a.get(), (AbstractC21843a) this.f60705b.get(), (C8601l0) this.f60706c.get(), (C20592g) this.f60707d.get());
    }
}
