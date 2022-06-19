package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.C21605g;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/c.class */
public final class C21683c implements Object<AbstractC21603f> {

    /* renamed from: a */
    public final C21681a f60439a;

    /* renamed from: b */
    public final Provider<Context> f60440b;

    public C21683c(C21681a c21681a, Provider<Context> provider) {
        this.f60439a = c21681a;
        this.f60440b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60439a;
        Context context = (Context) this.f60440b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C21605g(context);
    }
}
