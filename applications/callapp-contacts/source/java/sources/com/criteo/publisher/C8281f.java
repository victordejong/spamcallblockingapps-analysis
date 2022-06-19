package com.criteo.publisher;

import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8498n;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f.class */
public final class C8281f {
    static {
        new C8281f();
    }

    private C8281f() {
    }

    /* renamed from: a */
    public static final C8400e m25925a(int i) {
        return new C8400e(0, "Silent mode is enabled, no requests will be fired for the next " + i + " seconds", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25924a(AdUnit adUnit, Bid bid) {
        C18524p.m3841c(adUnit, "adUnit");
        StringBuilder sb = new StringBuilder("Getting bid response for ");
        sb.append(adUnit);
        sb.append(". Bid: ");
        sb.append(bid != null ? C8258c.m25959a(bid) : null);
        sb.append(", price: ");
        Double d = null;
        if (bid != null) {
            d = Double.valueOf(bid.getPrice());
        }
        sb.append(d);
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25923a(C8498n adUnit) {
        C18524p.m3841c(adUnit, "adUnit");
        return new C8400e(5, "Found an invalid AdUnit: ".concat(String.valueOf(adUnit)), null, "onInvalidAdUnit", 4, null);
    }
}
