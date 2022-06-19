package com.iab.omid.library.mopub.p428a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.iab.omid.library.mopub.a.a */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/a/a.class */
public final class C16340a {
    /* renamed from: a */
    public static float m7383a(int i, int i2) {
        if (i2 <= 0 || i <= 0) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float f = i / i2;
        float f2 = f;
        if (f > 1.0f) {
            f2 = 1.0f;
        }
        return f2;
    }
}
