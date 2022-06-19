package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "WeekInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/WeekInfo.class */
public class WeekInfo {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8134id;
    @Column(name = "isSelect")
    private boolean isSelect;
    @Column(name = "week")
    private String week;
    @Column(name = "weekId")
    private int weekId;

    public String getWeek() {
        return this.week;
    }

    public int getWeekId() {
        return this.weekId;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public void setWeek(String str) {
        this.week = str;
    }

    public void setWeekId(int i) {
        this.weekId = i;
    }

    public String toString() {
        return "WeekInfo{id=" + this.f8134id + ", week='" + this.week + "', isSelect=" + this.isSelect + ", weekId=" + this.weekId + '}';
    }
}
