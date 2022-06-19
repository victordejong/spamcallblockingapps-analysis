package p193e.p194a.p1060m4.p1061c.p1062i.p1063a;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p1727n3.p1872x.p1873a.C27062a;
import s1.z.c.l;
/* renamed from: e.a.m4.c.i.a.f */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/i/a/f.class */
public final class C18229f implements AbstractC18228e {

    /* renamed from: a */
    public final Context f51534a;

    @Inject
    public C18229f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f51534a = context;
    }

    @Override // p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e
    /* renamed from: a */
    public void mo15389a(String str, boolean z) {
        Intent intent = new Intent("BizProfileRefreshNotifier.ACTION_BIZ_PROFILE_REFRESHED");
        intent.putExtra("KEY_BIZ_NAME", str);
        intent.putExtra("KEY_BIZ_DELETED", z);
        C27062a.m968b(this.f51534a).m966d(intent);
    }
}
