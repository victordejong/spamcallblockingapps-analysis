package com.iab.omid.library.pubnativenet.adsession.p438a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/b.class */
public final class C16415b {

    /* renamed from: a */
    public final C16427k f57895a;

    public C16415b(C16427k c16427k) {
        this.f57895a = c16427k;
    }

    /* renamed from: a */
    public static void m7280a(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }
}
