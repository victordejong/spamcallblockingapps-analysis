package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalOpeningHoursRows.class */
public class JSONCHLocalOpeningHoursRows implements Serializable {
    public static final int INVALID_DAY_INDEX = -1;
    private static final String TYPE_DAY_OF_WEEK = "dow";
    private static final String TYPE_EXTRA = "extra";
    private static final long serialVersionUID = -1671802403863677916L;
    private String day;
    private String end;
    private int index = -1;
    private String start;
    private String text;
    private String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalOpeningHoursRows jSONCHLocalOpeningHoursRows = (JSONCHLocalOpeningHoursRows) obj;
        if (this.index != jSONCHLocalOpeningHoursRows.index) {
            return false;
        }
        String str = this.type;
        if (str != null) {
            if (!str.equals(jSONCHLocalOpeningHoursRows.type)) {
                return false;
            }
        } else if (jSONCHLocalOpeningHoursRows.type != null) {
            return false;
        }
        String str2 = this.day;
        if (str2 != null) {
            if (!str2.equals(jSONCHLocalOpeningHoursRows.day)) {
                return false;
            }
        } else if (jSONCHLocalOpeningHoursRows.day != null) {
            return false;
        }
        String str3 = this.start;
        if (str3 != null) {
            if (!str3.equals(jSONCHLocalOpeningHoursRows.start)) {
                return false;
            }
        } else if (jSONCHLocalOpeningHoursRows.start != null) {
            return false;
        }
        String str4 = this.end;
        if (str4 != null) {
            if (!str4.equals(jSONCHLocalOpeningHoursRows.end)) {
                return false;
            }
        } else if (jSONCHLocalOpeningHoursRows.end != null) {
            return false;
        }
        String str5 = this.text;
        String str6 = jSONCHLocalOpeningHoursRows.text;
        return str5 != null ? str5.equals(str6) : str6 == null;
    }

    public String getDay() {
        return this.day;
    }

    public String getEnd() {
        return this.end;
    }

    public int getIndex() {
        return this.index;
    }

    public String getStart() {
        return this.start;
    }

    public String getText() {
        return this.text;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.index;
        String str2 = this.day;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.start;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.end;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.text;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public boolean isDayOfWeek() {
        return StringUtils.b(this.type, TYPE_DAY_OF_WEEK);
    }

    public void setDay(String str) {
        this.day = str;
    }

    public void setEnd(String str) {
        this.end = str;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setStart(String str) {
        this.start = str;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
