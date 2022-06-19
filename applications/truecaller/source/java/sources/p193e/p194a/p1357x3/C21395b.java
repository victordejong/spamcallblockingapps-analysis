package p193e.p194a.p1357x3;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.forcedupdate.C3986R;
import com.truecaller.forcedupdate.UpdateType;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p678d4.AbstractC12595a;
import s1.f0.r;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.x3.b */
/* loaded from: classes9-dex2jar.jar:e/a/x3/b.class */
public final class C21395b implements AbstractC21394a {

    /* renamed from: a */
    public final AbstractC19462a f59858a;

    /* renamed from: b */
    public final AbstractC12595a f59859b;

    @Inject
    public C21395b(AbstractC19462a abstractC19462a, AbstractC12595a abstractC12595a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC12595a, "appMarketUtil");
        this.f59858a = abstractC19462a;
        this.f59859b = abstractC12595a;
    }

    @Override // p193e.p194a.p1357x3.AbstractC21394a
    /* renamed from: a */
    public void mo9779a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        context.startActivity(new Intent("android.intent.action.UNINSTALL_PACKAGE", Uri.fromParts("package", context.getPackageName(), null)));
    }

    @Override // p193e.p194a.p1357x3.AbstractC21394a
    /* renamed from: b */
    public void mo9778b(UpdateType updateType) {
        Object obj;
        l.e(updateType, "type");
        AbstractC19462a abstractC19462a = this.f59858a;
        int ordinal = updateType.ordinal();
        if (ordinal == 0) {
            obj = "NO_UPGRADE";
        } else if (ordinal == 1) {
            obj = "OPTIONAL";
        } else if (ordinal == 2) {
            obj = "MANDATORY";
        } else if (ordinal != 3) {
            throw new i();
        } else {
            obj = "RETIRED_VERSION";
        }
        HashMap hashMap = new HashMap();
        hashMap.put("Type", obj);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("UpdateShow", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1357x3.AbstractC21394a
    /* renamed from: c */
    public void mo9777c(Context context, String str, String str2) {
        l.e(context, "androidContext");
        l.e(str2, "callContext");
        if ((str == null || r.p(str)) || !m9776d(context, str)) {
            str = this.f59859b.mo22844c();
            if (!m9776d(context, str)) {
                Toast.makeText(context, C3986R.string.StrAppNotFound, 0).show();
                str = null;
            }
        }
        if (str == null) {
            str = "FAIL";
        }
        this.f59858a.mo13271e(new C21400g(str, str2));
    }

    /* renamed from: d */
    public final boolean m9776d(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
            context.startActivity(intent);
            return true;
        }
        return false;
    }
}
