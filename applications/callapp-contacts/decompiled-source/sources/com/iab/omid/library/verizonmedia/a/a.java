package com.iab.omid.library.verizonmedia.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/a/a.class */
public final class a {
    public static float a(int i, int i2) {
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
