package com.iab.omid.library.mopub.p432d;

import android.text.TextUtils;
import com.iab.omid.library.mopub.adsession.C16360k;
/* renamed from: com.iab.omid.library.mopub.d.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/d.class */
public final class C16382d {
    /* renamed from: a */
    public static void m7326a(C16360k c16360k) {
        if (!c16360k.f57786e) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: a */
    public static void m7325a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m7324a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m7323b(C16360k c16360k) {
        m7320d(c16360k);
        m7326a(c16360k);
    }

    /* renamed from: b */
    public static void m7322b(String str, String str2) {
        if (str.length() <= 256) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: c */
    public static void m7321c(C16360k c16360k) {
        if (c16360k.f57782a.isNativeImpressionOwner()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: d */
    private static void m7320d(C16360k c16360k) {
        if (c16360k.f57785d) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}
