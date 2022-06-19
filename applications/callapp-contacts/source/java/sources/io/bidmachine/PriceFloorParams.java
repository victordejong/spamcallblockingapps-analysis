package io.bidmachine;

import io.bidmachine.models.IPriceFloorParams;
import io.bidmachine.models.RequestParams;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/PriceFloorParams.class */
public final class PriceFloorParams extends RequestParams implements IPriceFloorParams<PriceFloorParams> {
    private Map<String, Double> priceFloorsMap;

    @Override // io.bidmachine.models.IPriceFloorParams
    public final PriceFloorParams addPriceFloor(double d) {
        addPriceFloor(UUID.randomUUID().toString(), d);
        return this;
    }

    @Override // io.bidmachine.models.IPriceFloorParams
    public final PriceFloorParams addPriceFloor(String str, double d) {
        if (this.priceFloorsMap == null) {
            this.priceFloorsMap = new HashMap();
        }
        this.priceFloorsMap.put(str, Double.valueOf(d));
        return this;
    }

    public final Map<String, Double> getPriceFloors() {
        return this.priceFloorsMap;
    }

    @Override // io.bidmachine.models.RequestParams
    public final void merge(RequestParams requestParams) {
    }
}
