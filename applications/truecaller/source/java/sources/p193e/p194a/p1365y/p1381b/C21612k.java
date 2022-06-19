package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import javax.inject.Provider;
/* renamed from: e.a.y.b.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/k.class */
public final class C21612k implements Object<C21611j> {

    /* renamed from: a */
    public final Provider<Context> f60268a;

    /* renamed from: b */
    public final Provider<AbstractC21607h> f60269b;

    public C21612k(Provider<Context> provider, Provider<AbstractC21607h> provider2) {
        this.f60268a = provider;
        this.f60269b = provider2;
    }

    public Object get() {
        return new C21611j((Context) this.f60268a.get(), (AbstractC21607h) this.f60269b.get());
    }
}
