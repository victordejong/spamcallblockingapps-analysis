package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.C21627x;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/l.class */
public final class C21692l implements Object<AbstractC21626w> {

    /* renamed from: a */
    public final C21681a f60456a;

    /* renamed from: b */
    public final Provider<Context> f60457b;

    public C21692l(C21681a c21681a, Provider<Context> provider) {
        this.f60456a = c21681a;
        this.f60457b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60456a;
        Context context = (Context) this.f60457b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C21627x(context);
    }
}
