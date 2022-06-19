package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1381b.C21600d0;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.q */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/q.class */
public final class C21697q implements Object<AbstractC21629z<String>> {

    /* renamed from: a */
    public final C21681a f60467a;

    /* renamed from: b */
    public final Provider<Context> f60468b;

    /* renamed from: c */
    public final Provider<AbstractC21626w> f60469c;

    public C21697q(C21681a c21681a, Provider<Context> provider, Provider<AbstractC21626w> provider2) {
        this.f60467a = c21681a;
        this.f60468b = provider;
        this.f60469c = provider2;
    }

    public Object get() {
        C21681a c21681a = this.f60467a;
        Context context = (Context) this.f60468b.get();
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60469c.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21626w, "preferenceUtil");
        return new C21600d0(context, abstractC21626w);
    }
}
