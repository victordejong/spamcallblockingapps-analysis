package p193e.p194a.p1365y.p1382c.p1383x.p1385b;

import android.app.NotificationManager;
import android.content.Context;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Provider;
import s1.z.c.l;
/* renamed from: e.a.y.c.x.b.k */
/* loaded from: classes9-dex2jar.jar:e/a/y/c/x/b/k.class */
public final class C21691k implements Object<NotificationManager> {

    /* renamed from: a */
    public final C21681a f60454a;

    /* renamed from: b */
    public final Provider<Context> f60455b;

    public C21691k(C21681a c21681a, Provider<Context> provider) {
        this.f60454a = c21681a;
        this.f60455b = provider;
    }

    public Object get() {
        C21681a c21681a = this.f60454a;
        Context context = (Context) this.f60455b.get();
        Objects.requireNonNull(c21681a);
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService(RemoteMessageConst.NOTIFICATION);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }
}
