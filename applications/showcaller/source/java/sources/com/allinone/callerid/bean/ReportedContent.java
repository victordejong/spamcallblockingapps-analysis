package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_BlockCall")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/ReportedContent.class */
public class ReportedContent {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8128id;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "time")
    private long time;
    @Column(name = "type")
    private String type;

    public int getId() {
        return this.f8128id;
    }

    public String getNumber() {
        return this.number;
    }

    public long getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    public void setId(int i) {
        this.f8128id = i;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "ReportedContent{id=" + this.f8128id + ", number='" + this.number + "', type='" + this.type + "', time=" + this.time + '}';
    }
}
