package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.C21599d;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/b.class */
public final class C21682b implements Object<AbstractC21597c> {

    /* renamed from: a */
    public final C21681a f60437a;

    /* renamed from: b */
    public final Provider<Context> f60438b;

    public C21682b(C21681a c21681a, Provider<Context> provider) {
        this.f60437a = c21681a;
        this.f60438b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60437a;
        Context context = (Context) this.f60438b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C21599d(context);
    }
}
