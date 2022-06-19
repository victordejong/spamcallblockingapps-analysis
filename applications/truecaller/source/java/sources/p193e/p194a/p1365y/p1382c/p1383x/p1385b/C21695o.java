package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21607h;
import p193e.p194a.p1365y.p1381b.C21610i;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.o */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/o.class */
public final class C21695o implements Object<AbstractC21607h> {

    /* renamed from: a */
    public final C21681a f60462a;

    /* renamed from: b */
    public final Provider<Context> f60463b;

    public C21695o(C21681a c21681a, Provider<Context> provider) {
        this.f60462a = c21681a;
        this.f60463b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60462a;
        Context context = (Context) this.f60463b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        return new C21610i(context);
    }
}
