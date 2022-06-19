package p193e.p194a.p1221t.p1230b.p1231c.p1232k;

import android.content.Context;
import android.telecom.TelecomManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.t.b.c.k.c */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/k/c.class */
public final class C20369c implements AbstractC20367a {

    /* renamed from: a */
    public final TelecomManager f57229a;

    public C20369c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService("telecom");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telecom.TelecomManager");
        this.f57229a = (TelecomManager) systemService;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1232k.AbstractC20367a
    /* renamed from: a */
    public boolean mo11223a() {
        boolean z;
        try {
            z = this.f57229a.endCall();
        } catch (Exception e) {
            z = false;
        }
        return z;
    }
}
