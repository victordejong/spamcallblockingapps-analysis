package com.revenuecat.purchases;

import com.revenuecat.purchases.common.attribution.AttributionNetwork;
import java.util.NoSuchElementException;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesKt.class */
public final class PurchasesKt {
    public static final AttributionNetwork convert(Purchases$AttributionNetwork purchases$AttributionNetwork) {
        AttributionNetwork[] values;
        k.f(purchases$AttributionNetwork, "$this$convert");
        for (AttributionNetwork attributionNetwork : AttributionNetwork.values()) {
            if (attributionNetwork.getServerValue() == purchases$AttributionNetwork.getServerValue()) {
                return attributionNetwork;
            }
        }
        throw new NoSuchElementException("Array contains no element matching the predicate.");
    }
}
