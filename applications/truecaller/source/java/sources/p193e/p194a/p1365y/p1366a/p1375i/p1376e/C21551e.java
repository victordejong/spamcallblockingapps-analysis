package p193e.p194a.p1365y.p1366a.p1375i.p1376e;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b;
import p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d;
import p193e.p194a.p1365y.p1366a.p1375i.C21545c;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import s1.z.c.l;
/* renamed from: e.a.y.a.i.e.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/i/e/e.class */
public final class C21551e implements Object<AbstractC21544b> {

    /* renamed from: a */
    public final C21549c f60146a;

    /* renamed from: b */
    public final Provider<AbstractC21546d> f60147b;

    /* renamed from: c */
    public final Provider<AbstractC21626w> f60148c;

    /* renamed from: d */
    public final Provider<AbstractC21606g0> f60149d;

    public C21551e(C21549c c21549c, Provider<AbstractC21546d> provider, Provider<AbstractC21626w> provider2, Provider<AbstractC21606g0> provider3) {
        this.f60146a = c21549c;
        this.f60147b = provider;
        this.f60148c = provider2;
        this.f60149d = provider3;
    }

    public Object get() {
        C21549c c21549c = this.f60146a;
        AbstractC21546d abstractC21546d = (AbstractC21546d) this.f60147b.get();
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60148c.get();
        AbstractC21606g0 abstractC21606g0 = (AbstractC21606g0) this.f60149d.get();
        Objects.requireNonNull(c21549c);
        l.e(abstractC21546d, "flashOnBoardingView");
        l.e(abstractC21626w, "preferenceUtil");
        l.e(abstractC21606g0, "resourceProvider");
        return new C21545c(abstractC21546d, abstractC21626w, abstractC21606g0);
    }
}
