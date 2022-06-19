package p193e.p194a.p1114o5.p1122f2;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.facebook.login.C1284v;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
@Deprecated
/* renamed from: e.a.o5.f2.a */
/* loaded from: classes15-dex2jar.jar:e/a/o5/f2/a.class */
public class C19024a extends AbstractC19027c {

    /* renamed from: b */
    public static final List<String> f53148b = Collections.singletonList(AnalyticsConstants.EMAIL);

    public C19024a(Application application) {
        super(application, 1);
    }

    /* renamed from: b */
    public static void m14249b(Context context, String str) {
        boolean z;
        String m8543z2 = C22128a.m8543z2("https://www.facebook.com/", str);
        try {
            if (context.getPackageManager().getPackageInfo(SupportMessenger.FACEBOOK, 0).versionCode >= 3002850) {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("fb://facewebmodal/f?href=" + m8543z2)));
            } else {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("fb://profile/" + str)));
            }
            z = true;
        } catch (ActivityNotFoundException | PackageManager.NameNotFoundException e) {
            C10480a.m26061I1(e);
            z = false;
        }
        if (!z) {
            C12864a2.m22575S(context, m8543z2, false);
        }
    }

    @Override // p193e.p194a.p1114o5.p1122f2.AbstractC19027c
    /* renamed from: a */
    public void mo14248a() {
        C1284v.m41550b().m41546f();
    }
}
