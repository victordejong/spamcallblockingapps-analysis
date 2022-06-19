package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1381b.C21608h0;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.m */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/m.class */
public final class C21693m implements Object<AbstractC21606g0> {

    /* renamed from: a */
    public final C21681a f60458a;

    /* renamed from: b */
    public final Provider<Context> f60459b;

    public C21693m(C21681a c21681a, Provider<Context> provider) {
        this.f60458a = c21681a;
        this.f60459b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60458a;
        Context context = (Context) this.f60459b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C21608h0(context);
    }
}
