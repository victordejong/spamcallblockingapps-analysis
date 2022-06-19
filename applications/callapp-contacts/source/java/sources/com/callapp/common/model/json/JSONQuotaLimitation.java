package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONQuotaLimitation.class */
public class JSONQuotaLimitation implements Serializable {
    private static final long serialVersionUID = 4893768220925123412L;
    @JsonIgnore
    private Calendar creationTimeStamp;
    private Map<String, QuotaLimitPOJO> quotaLimitationMap;

    public JSONQuotaLimitation() {
        initTimeStamp();
    }

    public JSONQuotaLimitation(Map<String, QuotaLimitPOJO> map) {
        this();
        this.quotaLimitationMap = map;
    }

    private void initTimeStamp() {
        this.creationTimeStamp = Calendar.getInstance();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONQuotaLimitation jSONQuotaLimitation = (JSONQuotaLimitation) obj;
        Calendar calendar = this.creationTimeStamp;
        if (calendar == null) {
            if (jSONQuotaLimitation.creationTimeStamp != null) {
                return false;
            }
        } else if (!calendar.equals(jSONQuotaLimitation.creationTimeStamp)) {
            return false;
        }
        Map<String, QuotaLimitPOJO> map = this.quotaLimitationMap;
        return map == null ? jSONQuotaLimitation.quotaLimitationMap == null : map.equals(jSONQuotaLimitation.quotaLimitationMap);
    }

    public Map<String, QuotaLimitPOJO> getQuotaLimitationMap() {
        return this.quotaLimitationMap;
    }

    public int hashCode() {
        Calendar calendar = this.creationTimeStamp;
        int i = 0;
        int hashCode = calendar == null ? 0 : calendar.hashCode();
        Map<String, QuotaLimitPOJO> map = this.quotaLimitationMap;
        if (map != null) {
            i = map.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public boolean isExpired() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(12, -1440);
        return this.creationTimeStamp.before(calendar);
    }

    public void setQuotaLimitationMap(Map<String, QuotaLimitPOJO> map) {
        this.quotaLimitationMap = map;
    }
}
