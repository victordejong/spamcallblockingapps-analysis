package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_BlockCall")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/BlockCall.class */
public class BlockCall {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8118id;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "time")
    private long time;

    public int getId() {
        return this.f8118id;
    }

    public String getNumber() {
        return this.number;
    }

    public long getTime() {
        return this.time;
    }

    public void setId(int i) {
        this.f8118id = i;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public String toString() {
        return "BlockCall{id=" + this.f8118id + ", number='" + this.number + "', time=" + this.time + '}';
    }
}
