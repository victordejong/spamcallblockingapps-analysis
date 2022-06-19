package io.bidmachine;

import io.bidmachine.models.IExtraParams;
import io.bidmachine.models.RequestParams;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ExtraParams.class */
public class ExtraParams extends RequestParams<ExtraParams> implements IExtraParams<ExtraParams> {
    private Map<String, String> extrasMap;

    @Override // io.bidmachine.models.IExtraParams
    public ExtraParams addExtra(String str, String str2) {
        if (this.extrasMap == null) {
            this.extrasMap = new HashMap();
        }
        this.extrasMap.put(str, str2);
        return this;
    }

    Map<String, String> getExtrasMap() {
        return this.extrasMap;
    }

    public void merge(ExtraParams extraParams) {
        Map<String, String> map = extraParams.extrasMap;
        if (map != null) {
            Map<String, String> map2 = this.extrasMap;
            if (map2 == null) {
                this.extrasMap = new HashMap(extraParams.extrasMap);
            } else {
                map2.putAll(map);
            }
        }
    }
}
