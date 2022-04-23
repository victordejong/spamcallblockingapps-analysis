package io.bidmachine;

import io.bidmachine.models.IPriceFloorParams;
import io.bidmachine.models.RequestParams;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/PriceFloorParams.class */
public final class PriceFloorParams extends RequestParams implements IPriceFloorParams<PriceFloorParams> {
    private Map<String, Double> priceFloorsMap;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IPriceFloorParams
    public final PriceFloorParams addPriceFloor(double d2) {
        addPriceFloor(UUID.randomUUID().toString(), d2);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.models.IPriceFloorParams
    public final PriceFloorParams addPriceFloor(String str, double d2) {
        if (this.priceFloorsMap == null) {
            this.priceFloorsMap = new HashMap();
        }
        this.priceFloorsMap.put(str, Double.valueOf(d2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, Double> getPriceFloors() {
        return this.priceFloorsMap;
    }

    @Override // io.bidmachine.models.RequestParams
    public final void merge(RequestParams requestParams) {
    }
}
