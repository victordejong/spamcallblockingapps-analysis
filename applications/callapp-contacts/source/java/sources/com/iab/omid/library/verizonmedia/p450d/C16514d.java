package com.iab.omid.library.verizonmedia.p450d;

import android.text.TextUtils;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
/* renamed from: com.iab.omid.library.verizonmedia.d.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/d/d.class */
public final class C16514d {
    /* renamed from: a */
    public static void m7103a(C16492k c16492k) {
        if (!c16492k.f58047e) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: a */
    public static void m7102a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: a */
    public static void m7101a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* renamed from: b */
    public static void m7100b(C16492k c16492k) {
        m7098d(c16492k);
        m7103a(c16492k);
    }

    /* renamed from: c */
    public static void m7099c(C16492k c16492k) {
        if (c16492k.f58043a.isNativeImpressionOwner()) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: d */
    private static void m7098d(C16492k c16492k) {
        if (c16492k.f58046d) {
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }
}
