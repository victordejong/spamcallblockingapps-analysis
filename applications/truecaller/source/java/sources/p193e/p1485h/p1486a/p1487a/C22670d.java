package p193e.p1485h.p1486a.p1487a;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.a.d */
/* loaded from: classes-dex2jar.jar:e/h/a/a/d.class */
public class C22670d implements AbstractC22672f {

    /* renamed from: a */
    public final Context f62734a;

    /* renamed from: b */
    public final CleverTapInstanceConfig f62735b;

    public C22670d(Context context, CleverTapInstanceConfig cleverTapInstanceConfig) {
        this.f62734a = context.getApplicationContext();
        this.f62735b = cleverTapInstanceConfig;
    }

    /* renamed from: a */
    public String m7981a() {
        String str;
        try {
            str = AGConnectServicesConfig.fromContext(this.f62734a).getString("client/app_id");
        } catch (Throwable th) {
            CleverTapInstanceConfig cleverTapInstanceConfig = this.f62735b;
            cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("PushProvider"), C22128a.m8618h(new StringBuilder(), AbstractC22668b.f62733a, "HMS availability check failed."));
            str = null;
        }
        return str;
    }
}
