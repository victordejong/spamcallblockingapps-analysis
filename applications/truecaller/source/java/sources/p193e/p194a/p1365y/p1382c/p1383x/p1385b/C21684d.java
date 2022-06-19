package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.google.firebase.messaging.FirebaseMessaging;
import com.razorpay.AnalyticsConstants;
import e.m.d.g;
import java.util.Objects;
import javax.inject.Provider;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/d.class */
public final class C21684d implements Object<FirebaseMessaging> {

    /* renamed from: a */
    public final C21681a f60441a;

    /* renamed from: b */
    public final Provider<Context> f60442b;

    public C21684d(C21681a c21681a, Provider<Context> provider) {
        this.f60441a = c21681a;
        this.f60442b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60441a;
        Context context = (Context) this.f60442b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        g.e(context);
        FirebaseMessaging m38318c = FirebaseMessaging.m38318c();
        l.d(m38318c, "FirebaseMessaging.getInstance()");
        return m38318c;
    }
}
