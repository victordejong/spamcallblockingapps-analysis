package com.truecaller.ads.p133db;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.ads.db.AdsDatabase$a */
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/db/AdsDatabase$a.class */
public final class AdsDatabase$a {
    public AdsDatabase$a(f fVar) {
    }

    /* renamed from: a */
    public final AdsDatabase m35990a(Context context) {
        AdsDatabase adsDatabase;
        synchronized (this) {
            l.e(context, AnalyticsConstants.CONTEXT);
            if (AdsDatabase.a == null) {
                AbstractC25677q.C25678a m43274R = MediaSessionCompat.m43274R(context.getApplicationContext(), AdsDatabase.class, "tc_ads.db");
                AdsDatabase adsDatabase2 = AdsDatabase.a;
                AbstractC25649a[] abstractC25649aArr = AdsDatabase.b;
                m43274R.m3065b((AbstractC25649a[]) Arrays.copyOf(abstractC25649aArr, abstractC25649aArr.length));
                m43274R.m3063d();
                AdsDatabase.a = m43274R.m3064c();
            }
            adsDatabase = AdsDatabase.a;
        }
        return adsDatabase;
    }
}
