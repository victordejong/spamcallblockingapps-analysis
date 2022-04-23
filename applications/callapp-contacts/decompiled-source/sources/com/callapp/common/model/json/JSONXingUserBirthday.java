package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONXingUserBirthday.class */
public class JSONXingUserBirthday implements Serializable {
    private static final long serialVersionUID = -6435681695786278732L;
    private Integer day;
    private Integer month;
    private Integer year;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONXingUserBirthday)) {
            return false;
        }
        JSONXingUserBirthday jSONXingUserBirthday = (JSONXingUserBirthday) obj;
        Integer num = this.day;
        if (num == null) {
            if (jSONXingUserBirthday.day != null) {
                return false;
            }
        } else if (!num.equals(jSONXingUserBirthday.day)) {
            return false;
        }
        Integer num2 = this.month;
        if (num2 == null) {
            if (jSONXingUserBirthday.month != null) {
                return false;
            }
        } else if (!num2.equals(jSONXingUserBirthday.month)) {
            return false;
        }
        Integer num3 = this.year;
        return num3 == null ? jSONXingUserBirthday.year == null : num3.equals(jSONXingUserBirthday.year);
    }

    public Integer getDay() {
        return this.day;
    }

    public Integer getMonth() {
        return this.month;
    }

    public Integer getYear() {
        return this.year;
    }

    public int hashCode() {
        Integer num = this.day;
        int i = 0;
        int hashCode = num == null ? 0 : num.hashCode();
        Integer num2 = this.month;
        int hashCode2 = num2 == null ? 0 : num2.hashCode();
        Integer num3 = this.year;
        if (num3 != null) {
            i = num3.hashCode();
        }
        return ((((hashCode + 31) * 31) + hashCode2) * 31) + i;
    }

    public void setDay(Integer num) {
        this.day = num;
    }

    public void setMonth(Integer num) {
        this.month = num;
    }

    public void setYear(Integer num) {
        this.year = num;
    }
}
