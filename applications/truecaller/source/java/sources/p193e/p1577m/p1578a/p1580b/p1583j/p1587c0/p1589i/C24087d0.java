package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.content.Context;
import java.util.Objects;
import javax.inject.Provider;
/* renamed from: e.m.a.b.j.c0.i.d0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/d0.class */
public final class C24087d0 implements Object<String> {

    /* renamed from: a */
    public final Provider<Context> f66765a;

    public C24087d0(Provider<Context> provider) {
        this.f66765a = provider;
    }

    public Object get() {
        String packageName = ((Context) this.f66765a.get()).getPackageName();
        Objects.requireNonNull(packageName, "Cannot return null from a non-@Nullable @Provides method");
        return packageName;
    }
}
