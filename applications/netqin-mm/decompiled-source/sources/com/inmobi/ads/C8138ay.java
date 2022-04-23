package com.inmobi.ads;

import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.Logger;
/* renamed from: com.inmobi.ads.ay */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ay.class */
public final class C8138ay {
    /* renamed from: a */
    public static AbstractC8137ax m6352a(int i, C8109ao aoVar, C8122au auVar) {
        if (i == 0) {
            return new C8112ap(aoVar, auVar);
        }
        if (i != 1) {
            return null;
        }
        try {
            return new NativeRecyclerViewAdapter(aoVar, auVar);
        } catch (NoClassDefFoundError e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Error rendering ad! RecyclerView not found. Please check if the recyclerview support library was included");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }
}
