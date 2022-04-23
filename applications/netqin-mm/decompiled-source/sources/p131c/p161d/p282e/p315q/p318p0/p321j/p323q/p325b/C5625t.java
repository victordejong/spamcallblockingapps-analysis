package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.app.Application;
import com.squareup.picasso.Picasso;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5563k;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.t */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/t.class */
public final class C5625t implements AbstractC5544c<Picasso> {

    /* renamed from: a */
    public final C5623s f18695a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f18696b;

    /* renamed from: c */
    public final AbstractC9866a<C5563k> f18697c;

    public C5625t(C5623s sVar, AbstractC9866a<Application> aVar, AbstractC9866a<C5563k> aVar2) {
        this.f18695a = sVar;
        this.f18696b = aVar;
        this.f18697c = aVar2;
    }

    /* renamed from: a */
    public static C5625t m23387a(C5623s sVar, AbstractC9866a<Application> aVar, AbstractC9866a<C5563k> aVar2) {
        return new C5625t(sVar, aVar, aVar2);
    }

    /* renamed from: a */
    public static Picasso m23388a(C5623s sVar, Application application, C5563k kVar) {
        Picasso a = sVar.m23389a(application, kVar);
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public Picasso get() {
        return m23388a(this.f18695a, this.f18696b.get(), this.f18697c.get());
    }
}
