package com.iab.omid.library.pubnativenet.p441d;

import android.text.TextUtils;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
/* renamed from: com.iab.omid.library.pubnativenet.d.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/d/d.class */
public final class C16448d {
    /* renamed from: a */
    public static void m7224a(C16427k c16427k) {
        if (!c16427k.f57918e) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: a */
    public static void m7223a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m7222a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m7221b(C16427k c16427k) {
        m7218d(c16427k);
        m7224a(c16427k);
    }

    /* renamed from: b */
    public static void m7220b(String str, String str2) {
        if (str.length() <= 256) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: c */
    public static void m7219c(C16427k c16427k) {
        if (c16427k.f57914a.isNativeImpressionOwner()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: d */
    private static void m7218d(C16427k c16427k) {
        if (c16427k.f57917d) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}
