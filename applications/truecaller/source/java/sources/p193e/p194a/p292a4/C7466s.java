package p193e.p194a.p292a4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.FutureTask;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1221t.p1222a.p1224u.C20306a;
import p193e.p194a.p1221t.p1222a.p1224u.C20313h;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import p193e.p194a.p1221t.p1222a.p1224u.CallableC20312g;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a4.s */
/* loaded from: classes10-dex2jar.jar:e/a/a4/s.class */
public final class C7466s implements AbstractC7428a {

    /* renamed from: a */
    public final f f23721a;

    @Inject
    public C7466s(@Named("CPU") f fVar) {
        l.e(fVar, "cpuContext");
        this.f23721a = fVar;
    }

    @Override // p193e.p194a.p292a4.AbstractC7428a
    /* renamed from: a */
    public void mo29580a(Context context) {
        l.e(context, "appContext");
        f fVar = this.f23721a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "coroutineContext");
        C20306a c20306a = new C20306a(context);
        l.e(fVar, "coroutineContext");
        l.e(c20306a, "loader");
        C20314i.f57127a = new FutureTask<>(new CallableC20312g(c20306a));
        d.w2(h1.a, fVar, (j0) null, new C20313h(null), 2, (Object) null);
    }
}
