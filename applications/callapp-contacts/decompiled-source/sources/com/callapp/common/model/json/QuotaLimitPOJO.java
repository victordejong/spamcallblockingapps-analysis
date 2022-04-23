package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/QuotaLimitPOJO.class */
public class QuotaLimitPOJO implements Serializable {
    private static final long serialVersionUID = -7605874662446760032L;
    private Map<String, Integer> quotaLimitationMap;

    @JsonIgnore
    private boolean getBooleanValueFromMap(String str, boolean z) {
        Integer valueFromMap = getValueFromMap(str);
        if (valueFromMap != null) {
            z = valueFromMap.intValue() > 0;
        }
        return z;
    }

    @JsonIgnore
    private Integer getValueFromMap(String str) {
        Map<String, Integer> map = this.quotaLimitationMap;
        return map != null ? map.get(str) : null;
    }

    @JsonIgnore
    public int getDailyLimitForSearchNearBy(int i) {
        Integer valueFromMap = getValueFromMap("dailyLimitForSearchNearBy");
        Integer num = valueFromMap;
        if (valueFromMap == null) {
            num = Integer.valueOf(i);
        }
        return num.intValue();
    }

    @JsonIgnore
    public int getInterval() {
        return getValueFromMap("interval").intValue();
    }

    @JsonIgnore
    public int getMaximumGroup() {
        return getValueFromMap("max_group").intValue();
    }

    @JsonIgnore
    public int getMinimumGroup() {
        return getValueFromMap("min_group").intValue();
    }

    public Map<String, Integer> getQuotaLimitationMap() {
        return this.quotaLimitationMap;
    }

    @JsonIgnore
    public boolean isEnabled() {
        return getBooleanValueFromMap("enabled", true);
    }

    @JsonIgnore
    public boolean isMutuals() {
        return getBooleanValueFromMap("mutuals", true);
    }

    @JsonIgnore
    public boolean isSearchInContactDetails() {
        return getBooleanValueFromMap("searchInContactDetails", true);
    }

    @JsonIgnore
    public boolean isSearchInManual() {
        return getBooleanValueFromMap("searchInManual", true);
    }

    @JsonIgnore
    public boolean isSearchInSync() {
        return getBooleanValueFromMap("searchInSync", true);
    }

    @JsonIgnore
    public boolean isSearchWhenNotLoggedIn() {
        return getBooleanValueFromMap("searchWhenNotLoggedIn", true);
    }

    public void setQuotaLimitationMap(Map<String, Integer> map) {
        this.quotaLimitationMap = map;
    }
}
