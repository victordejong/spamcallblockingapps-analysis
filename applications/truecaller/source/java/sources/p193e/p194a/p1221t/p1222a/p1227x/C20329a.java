package p193e.p194a.p1221t.p1222a.p1227x;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1221t.p1222a.AbstractC20278d;
import p193e.p194a.p1221t.p1222a.AbstractC20279e;
/* renamed from: e.a.t.a.x.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/a.class */
public final class C20329a implements Provider<AbstractC20279e> {

    /* renamed from: a */
    public final AbstractC20278d f57153a;

    public C20329a(AbstractC20278d abstractC20278d) {
        this.f57153a = abstractC20278d;
    }

    public Object get() {
        AbstractC20279e mo11286J2 = this.f57153a.mo11286J2();
        Objects.requireNonNull(mo11286J2, "Cannot return null from a non-@Nullable component method");
        return mo11286J2;
    }
}
