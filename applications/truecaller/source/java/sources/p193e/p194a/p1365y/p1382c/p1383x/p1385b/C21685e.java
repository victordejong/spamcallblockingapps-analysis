package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1386d.AbstractC21712i;
import p193e.p194a.p1365y.p1386d.C21713j;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/e.class */
public final class C21685e implements Object<AbstractC21712i> {

    /* renamed from: a */
    public final C21681a f60443a;

    /* renamed from: b */
    public final Provider<Context> f60444b;

    /* renamed from: c */
    public final Provider<f> f60445c;

    /* renamed from: d */
    public final Provider<f> f60446d;

    public C21685e(C21681a c21681a, Provider<Context> provider, Provider<f> provider2, Provider<f> provider3) {
        this.f60443a = c21681a;
        this.f60444b = provider;
        this.f60445c = provider2;
        this.f60446d = provider3;
    }

    public Object get() {
        C21681a c21681a = this.f60443a;
        Context context = (Context) this.f60444b.get();
        f fVar = (f) this.f60445c.get();
        f fVar2 = (f) this.f60446d.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "cpuContext");
        l.e(fVar2, "uiContext");
        return new C21713j(context, fVar2, fVar);
    }
}
