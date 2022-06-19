package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1381b.AbstractC21626w;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1381b.C21598c0;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.p */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/p.class */
public final class C21696p implements Object<AbstractC21629z<String>> {

    /* renamed from: a */
    public final C21681a f60464a;

    /* renamed from: b */
    public final Provider<Context> f60465b;

    /* renamed from: c */
    public final Provider<AbstractC21626w> f60466c;

    public C21696p(C21681a c21681a, Provider<Context> provider, Provider<AbstractC21626w> provider2) {
        this.f60464a = c21681a;
        this.f60465b = provider;
        this.f60466c = provider2;
    }

    public Object get() {
        C21681a c21681a = this.f60464a;
        Context context = (Context) this.f60465b.get();
        AbstractC21626w abstractC21626w = (AbstractC21626w) this.f60466c.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21626w, "preferenceUtil");
        return new C21598c0(context, abstractC21626w);
    }
}
