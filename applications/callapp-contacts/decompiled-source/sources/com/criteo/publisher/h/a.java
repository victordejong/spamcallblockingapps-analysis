package com.criteo.publisher.h;

import com.criteo.publisher.Bid;
import com.criteo.publisher.c;
import com.criteo.publisher.logging.e;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/a.class */
public final class a {
    static {
        new a();
    }

    private a() {
    }

    public static final e a(Bid bid) {
        StringBuilder sb = new StringBuilder("Attempting to set bids as AppBidding from bid ");
        sb.append(bid != null ? c.a(bid) : null);
        return new e(0, sb.toString(), null, null, 13, null);
    }

    public static final e a(com.criteo.publisher.i.a integration) {
        p.c(integration, "integration");
        return new e(0, "Failed to set bids as " + integration + ": No bid found", null, null, 13, null);
    }

    public static final e a(com.criteo.publisher.i.a integration, String enrichment) {
        p.c(integration, "integration");
        p.c(enrichment, "enrichment");
        return new e(0, integration + " bid set as targeting: " + enrichment, null, null, 13, null);
    }

    public static final e a(Object obj) {
        StringBuilder sb = new StringBuilder("Failed to set bids: unknown '");
        sb.append(obj != null ? obj.getClass() : null);
        sb.append("' object given");
        return new e(6, sb.toString(), null, "onUnknownAdObjectEnriched", 4, null);
    }
}
