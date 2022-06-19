package com.appnext.core.adswatched;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.core.adswatched.database.AdWatched;
import com.appnext.core.adswatched.database.AdWatchedDatabase;
import com.appnext.core.p018ra.services.C0585a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.appnext.core.adswatched.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/adswatched/a.class */
public final class C0524a {

    /* renamed from: eu */
    private static C0524a f1742eu;

    /* renamed from: aM */
    private Context f1743aM;

    private C0524a(Context context) {
        this.f1743aM = context.getApplicationContext();
    }

    /* renamed from: o */
    public static C0524a m42455o(Context context) {
        if (f1742eu == null) {
            synchronized (C0585a.class) {
                try {
                    if (f1742eu == null) {
                        f1742eu = new C0524a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1742eu;
    }

    /* renamed from: B */
    public final List<String> m42458B(String str) {
        try {
            List<String> mo42454C = AdWatchedDatabase.getInstance(this.f1743aM).adWatchedDao().mo42454C(str);
            new StringBuilder("Watched ads = ").append(mo42454C.toString());
            return mo42454C;
        } catch (Throwable th) {
            C0472a.m42577a("AdsWatchedManager$getAdsWatchedIdsByPlacement", th);
            return new ArrayList();
        }
    }

    /* renamed from: k */
    public final void m42457k(String str, String str2) {
        try {
            StringBuilder sb = new StringBuilder("start setBannerWatched for -  ");
            sb.append(str);
            sb.append(" with ");
            sb.append(str2);
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            AdWatched adWatched = new AdWatched();
            adWatched.bannerId = str;
            adWatched.auid = str2;
            StringBuilder sb2 = new StringBuilder("setBannerWatched for -  ");
            sb2.append(str);
            sb2.append(" with ");
            sb2.append(adWatched.toString());
            new StringBuilder("AdWatched value - ").append(AdWatchedDatabase.getInstance(this.f1743aM).adWatchedDao().mo42452a(adWatched));
        } catch (Throwable th) {
            C0472a.m42577a("AdsWatchedManager$setBannerWatched", th);
        }
    }

    /* renamed from: l */
    public final void m42456l(String str, String str2) {
        try {
            AdWatchedDatabase.getInstance(this.f1743aM).adWatchedDao().mo42453D(str2);
            new StringBuilder("watched ads dao clean by placement  -  ").append(str);
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("watched ads dao clean by placement  -  ");
            sb.append(str);
            sb.append(" auid - ");
            sb.append(str2);
        }
    }
}
