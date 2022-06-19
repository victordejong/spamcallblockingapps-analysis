package com.appnext.base;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.moments.p014b.C0490b;
import com.appnext.base.moments.p014b.C0492c;
import com.appnext.base.p010b.C0480a;
import com.appnext.base.p010b.C0481b;
import com.appnext.core.C0551g;
import com.appnext.core.C0564o;
/* loaded from: classes-dex2jar.jar:com/appnext/base/Appnext.class */
public class Appnext {

    /* renamed from: bN */
    private static final Appnext f1657bN = new Appnext();

    /* renamed from: bM */
    private Context f1658bM = null;

    /* renamed from: bO */
    private boolean f1659bO = false;

    private Appnext() {
    }

    /* renamed from: b */
    public static /* synthetic */ void m42578b(Appnext appnext) {
        try {
            String m42380b = C0551g.m42380b(appnext.f1658bM, true);
            String m42555d = C0481b.m42559ak().m42555d("google_ads_id", "");
            if (TextUtils.isEmpty(m42380b) || m42380b.equals(m42555d)) {
                return;
            }
            C0481b.m42559ak().m42558al();
            C0481b.m42559ak().m42554e("google_ads_id", m42380b);
        } catch (Throwable th) {
            C0472a.m42577a("Appnext$checkAdsID", th);
        }
    }

    public static void init(Context context) {
        Appnext appnext = f1657bN;
        if (context == null) {
            return;
        }
        try {
            if (appnext.f1659bO && appnext.f1658bM != null) {
                appnext.f1658bM = context.getApplicationContext();
                return;
            }
            appnext.f1659bO = true;
            C0480a.init(context);
            appnext.f1658bM = context.getApplicationContext();
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.base.Appnext.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C0481b.m42559ak().init(Appnext.this.f1658bM);
                        if (C0492c.m42522d(Appnext.this.f1658bM)) {
                            Appnext.this.f1659bO = false;
                            C0481b.m42559ak().m42556b("lat", true);
                            return;
                        }
                        C0480a.init(Appnext.this.f1658bM);
                        Appnext.m42578b(Appnext.this);
                    } catch (Throwable th) {
                    }
                }
            });
        } catch (Throwable th) {
            C0472a.m42577a("Appnext$libInit", th);
        }
    }

    public static void setParam(String str, String str2) {
        try {
            if (C0480a.getContext() == null || str.hashCode() != 951500826) {
                return;
            }
            C0492c.m42525a("isAidDisabled", str2, C0490b.EnumC0491a.Boolean);
        } catch (Throwable th) {
            C0472a.m42577a("Appnext$setParam", th);
        }
    }
}
