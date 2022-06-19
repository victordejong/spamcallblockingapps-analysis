package p193e.p194a.p1399z;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p194a.p1399z.p1404m.AbstractC21843a;
import p193e.p194a.p1399z.p1404m.C21844b;
import s1.z.c.l;
/* renamed from: e.a.z.j */
/* loaded from: classes11-dex2jar.jar:e/a/z/j.class */
public final class C21839j implements Object<AbstractC21843a> {

    /* renamed from: a */
    public final Provider<Context> f60709a;

    /* renamed from: b */
    public final Provider<SharedPreferences> f60710b;

    public C21839j(Provider<Context> provider, Provider<SharedPreferences> provider2) {
        this.f60709a = provider;
        this.f60710b = provider2;
    }

    public Object get() {
        Context context = (Context) this.f60709a.get();
        SharedPreferences sharedPreferences = (SharedPreferences) this.f60710b.get();
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sharedPreferences, "sharedPreferences");
        C21844b c21844b = new C21844b(sharedPreferences);
        c21844b.m13467n3(context);
        return c21844b;
    }
}
