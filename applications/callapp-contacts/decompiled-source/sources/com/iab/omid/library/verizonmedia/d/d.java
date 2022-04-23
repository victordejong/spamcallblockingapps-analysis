package com.iab.omid.library.verizonmedia.d;

import android.text.TextUtils;
import com.iab.omid.library.verizonmedia.adsession.k;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/d.class */
public final class d {
    public static void a(k kVar) {
        if (kVar.e) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void b(k kVar) {
        d(kVar);
        a(kVar);
    }

    public static void c(k kVar) {
        if (!kVar.f33445a.isNativeImpressionOwner()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }

    private static void d(k kVar) {
        if (!kVar.f33448d) {
            throw new IllegalStateException("AdSession is not started");
        }
    }
}
