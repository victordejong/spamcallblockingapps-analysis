package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONDate.class */
public class JSONDate implements Serializable {
    private static final long serialVersionUID = 1503603701672806056L;
    private int formattedDay;
    private int formattedMonth;
    private int formattedYear;

    public JSONDate() {
    }

    public JSONDate(int i, int i2, int i3) {
        this.formattedYear = i;
        this.formattedMonth = i2;
        this.formattedDay = i3;
    }

    public JSONDate(JSONDate jSONDate) {
        this(jSONDate.getFormattedYear(), jSONDate.getFormattedMonth(), jSONDate.getFormattedDay());
    }

    public JSONDate(Date date) {
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        this.formattedYear = instance.get(1);
        this.formattedMonth = instance.get(2) + 1;
        this.formattedDay = instance.get(5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONDate jSONDate = (JSONDate) obj;
        return this.formattedYear == jSONDate.formattedYear && this.formattedMonth == jSONDate.formattedMonth && this.formattedDay == jSONDate.formattedDay;
    }

    public int getFormattedDay() {
        return this.formattedDay;
    }

    public int getFormattedMonth() {
        return this.formattedMonth;
    }

    public int getFormattedYear() {
        return this.formattedYear;
    }

    public int hashCode() {
        int i = this.formattedYear;
        int i2 = this.formattedMonth;
        int i3 = this.formattedDay;
        return ((((i ^ (i >>> 32)) * 31) + (i2 ^ (i2 >>> 32))) * 31) + (i3 ^ (i3 >>> 32));
    }

    public void setFormattedDay(int i) {
        this.formattedDay = i;
    }

    public void setFormattedMonth(int i) {
        this.formattedMonth = i;
    }

    public void setFormattedYear(int i) {
        this.formattedYear = i;
    }

    public Calendar toCalendar() {
        Calendar instance = Calendar.getInstance();
        instance.set(this.formattedYear, this.formattedMonth - 1, this.formattedDay, 0, 0, 0);
        return instance;
    }

    public String toString() {
        return "JSONDate{year=" + this.formattedYear + ", month=" + this.formattedMonth + ", day=" + this.formattedDay + '}';
    }
}
