package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalOpeningHours.class */
public class JSONCHLocalOpeningHours implements Serializable {
    private static final long serialVersionUID = 8262819774718099888L;
    private String is_now_open;
    private List<JSONCHLocalOpeningHoursRows> rows;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalOpeningHours jSONCHLocalOpeningHours = (JSONCHLocalOpeningHours) obj;
        List<JSONCHLocalOpeningHoursRows> list = this.rows;
        if (list != null) {
            if (!list.equals(jSONCHLocalOpeningHours.rows)) {
                return false;
            }
        } else if (jSONCHLocalOpeningHours.rows != null) {
            return false;
        }
        String str = this.is_now_open;
        String str2 = jSONCHLocalOpeningHours.is_now_open;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public String getIs_now_open() {
        return this.is_now_open;
    }

    public List<JSONCHLocalOpeningHoursRows> getRows() {
        return this.rows;
    }

    public int hashCode() {
        List<JSONCHLocalOpeningHoursRows> list = this.rows;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.is_now_open;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setIs_now_open(String str) {
        this.is_now_open = str;
    }

    public void setRows(List<JSONCHLocalOpeningHoursRows> list) {
        this.rows = list;
    }
}
