package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalVenue.class */
public class JSONCHLocalVenue implements Serializable {
    private static final long serialVersionUID = -6174171292352976141L;
    private List<JSONCHLocalKeyValue<String, String>> ambiance;
    private List<JSONCHLocalKeyValue<String, String>> foodtypes;
    private JSONCHLocalKeyValue<String, String> pricelevel;
    private List<JSONCHLocalKeyValue<String, String>> services;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalVenue jSONCHLocalVenue = (JSONCHLocalVenue) obj;
        JSONCHLocalKeyValue<String, String> jSONCHLocalKeyValue = this.pricelevel;
        if (jSONCHLocalKeyValue != null) {
            if (!jSONCHLocalKeyValue.equals(jSONCHLocalVenue.pricelevel)) {
                return false;
            }
        } else if (jSONCHLocalVenue.pricelevel != null) {
            return false;
        }
        List<JSONCHLocalKeyValue<String, String>> list = this.foodtypes;
        if (list != null) {
            if (!list.equals(jSONCHLocalVenue.foodtypes)) {
                return false;
            }
        } else if (jSONCHLocalVenue.foodtypes != null) {
            return false;
        }
        List<JSONCHLocalKeyValue<String, String>> list2 = this.ambiance;
        if (list2 != null) {
            if (!list2.equals(jSONCHLocalVenue.ambiance)) {
                return false;
            }
        } else if (jSONCHLocalVenue.ambiance != null) {
            return false;
        }
        List<JSONCHLocalKeyValue<String, String>> list3 = this.services;
        List<JSONCHLocalKeyValue<String, String>> list4 = jSONCHLocalVenue.services;
        return list3 != null ? list3.equals(list4) : list4 == null;
    }

    public List<JSONCHLocalKeyValue<String, String>> getAmbiance() {
        return this.ambiance;
    }

    public List<JSONCHLocalKeyValue<String, String>> getFoodtypes() {
        return this.foodtypes;
    }

    public JSONCHLocalKeyValue<String, String> getPricelevel() {
        return this.pricelevel;
    }

    public List<JSONCHLocalKeyValue<String, String>> getServices() {
        return this.services;
    }

    public int hashCode() {
        JSONCHLocalKeyValue<String, String> jSONCHLocalKeyValue = this.pricelevel;
        int i = 0;
        int hashCode = jSONCHLocalKeyValue != null ? jSONCHLocalKeyValue.hashCode() : 0;
        List<JSONCHLocalKeyValue<String, String>> list = this.foodtypes;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<JSONCHLocalKeyValue<String, String>> list2 = this.ambiance;
        int hashCode3 = list2 != null ? list2.hashCode() : 0;
        List<JSONCHLocalKeyValue<String, String>> list3 = this.services;
        if (list3 != null) {
            i = list3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setAmbiance(List<JSONCHLocalKeyValue<String, String>> list) {
        this.ambiance = list;
    }

    public void setFoodtypes(List<JSONCHLocalKeyValue<String, String>> list) {
        this.foodtypes = list;
    }

    public void setPricelevel(JSONCHLocalKeyValue<String, String> jSONCHLocalKeyValue) {
        this.pricelevel = jSONCHLocalKeyValue;
    }

    public void setServices(List<JSONCHLocalKeyValue<String, String>> list) {
        this.services = list;
    }
}
