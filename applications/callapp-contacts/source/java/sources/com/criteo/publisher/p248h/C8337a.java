package com.criteo.publisher.p248h;

import com.criteo.publisher.Bid;
import com.criteo.publisher.C8258c;
import com.criteo.publisher.logging.C8400e;
import com.criteo.publisher.p249i.EnumC8347a;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.h.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/a.class */
public final class C8337a {
    static {
        new C8337a();
    }

    private C8337a() {
    }

    /* renamed from: a */
    public static final C8400e m25828a(Bid bid) {
        StringBuilder sb = new StringBuilder("Attempting to set bids as AppBidding from bid ");
        sb.append(bid != null ? C8258c.m25959a(bid) : null);
        return new C8400e(0, sb.toString(), null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25827a(EnumC8347a integration) {
        C18524p.m3841c(integration, "integration");
        return new C8400e(0, "Failed to set bids as " + integration + ": No bid found", null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25826a(EnumC8347a integration, String enrichment) {
        C18524p.m3841c(integration, "integration");
        C18524p.m3841c(enrichment, "enrichment");
        return new C8400e(0, integration + " bid set as targeting: " + enrichment, null, null, 13, null);
    }

    /* renamed from: a */
    public static final C8400e m25825a(Object obj) {
        StringBuilder sb = new StringBuilder("Failed to set bids: unknown '");
        sb.append(obj != null ? obj.getClass() : null);
        sb.append("' object given");
        return new C8400e(6, sb.toString(), null, "onUnknownAdObjectEnriched", 4, null);
    }
}
