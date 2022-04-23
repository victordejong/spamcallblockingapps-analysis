package com.iab.omid.library.pubnativenet.adsession.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.adsession.k;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final k f33336a;

    public b(k kVar) {
        this.f33336a = kVar;
    }

    public static void a(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }
}
