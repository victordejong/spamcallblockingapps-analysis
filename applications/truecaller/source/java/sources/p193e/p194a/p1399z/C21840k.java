package p193e.p194a.p1399z;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Provider;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.z.k */
/* loaded from: classes11-dex2jar.jar:e/a/z/k.class */
public final class C21840k implements Object<SharedPreferences> {

    /* renamed from: a */
    public final Provider<Context> f60711a;

    public C21840k(Provider<Context> provider) {
        this.f60711a = provider;
    }

    public Object get() {
        return C22128a.m8731B0((Context) this.f60711a.get(), AnalyticsConstants.CONTEXT, "personal_safety.settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)");
    }
}
