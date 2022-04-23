package com.criteo.publisher;

import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.n;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f.class */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    public static final e a(int i) {
        return new e(0, "Silent mode is enabled, no requests will be fired for the next " + i + " seconds", null, null, 13, null);
    }

    public static final e a(AdUnit adUnit, Bid bid) {
        p.c(adUnit, "adUnit");
        StringBuilder sb = new StringBuilder("Getting bid response for ");
        sb.append(adUnit);
        sb.append(". Bid: ");
        Double d2 = null;
        sb.append(bid != null ? c.a(bid) : null);
        sb.append(", price: ");
        if (bid != null) {
            d2 = Double.valueOf(bid.getPrice());
        }
        sb.append(d2);
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e a(n adUnit) {
        p.c(adUnit, "adUnit");
        return new e(5, "Found an invalid AdUnit: ".concat(String.valueOf(adUnit)), null, "onInvalidAdUnit", 4, null);
    }
}
