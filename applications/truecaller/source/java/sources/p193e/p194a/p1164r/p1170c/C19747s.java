package p193e.p194a.p1164r.p1170c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.razorpay.AnalyticsConstants;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.r.c.s */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/s.class */
public final class C19747s {
    /* renamed from: a */
    public void m12916a(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "url");
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(new C25691a(null, null, null, null).m3053a());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        intent.putExtra(DeepLink.REFERRER_URI, Uri.parse("android-app://" + context.getPackageName()));
        intent.setData(Uri.parse(str));
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1794b(context, intent, null);
    }
}
