package com.allinone.callerid.callscreen.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "ActionInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/bean/ActionInfo.class */
public class ActionInfo {
    @Column(name = "data_id")
    private String data_id;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8429id;
    @Column(name = "isLike")
    private boolean isLike;
    @Column(name = "isReport")
    private boolean isReport;
    @Column(name = "like_counts")
    private int like_counts;

    public String getData_id() {
        return this.data_id;
    }

    public int getId() {
        return this.f8429id;
    }

    public int getLike_counts() {
        return this.like_counts;
    }

    public boolean isLike() {
        return this.isLike;
    }

    public boolean isReport() {
        return this.isReport;
    }

    public void setData_id(String str) {
        this.data_id = str;
    }

    public void setId(int i) {
        this.f8429id = i;
    }

    public void setLike(boolean z) {
        this.isLike = z;
    }

    public void setLike_counts(int i) {
        this.like_counts = i;
    }

    public void setReport(boolean z) {
        this.isReport = z;
    }

    public String toString() {
        return "ActionInfo{id=" + this.f8429id + ", data_id='" + this.data_id + "', isLike=" + this.isLike + ", like_counts=" + this.like_counts + ", isReport=" + this.isReport + '}';
    }
}
