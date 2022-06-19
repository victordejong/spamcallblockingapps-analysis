package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_AdContent")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/AdContent.class */
public class AdContent {
    @Column(name = "adname")
    private String adname;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8117id;
    @Column(name = "isSelected")
    private boolean isSelected;

    public String getAdname() {
        return this.adname;
    }

    public int getId() {
        return this.f8117id;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setAdname(String str) {
        this.adname = str;
    }

    public void setId(int i) {
        this.f8117id = i;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public String toString() {
        return "AdContent{id=" + this.f8117id + ", isSelected=" + this.isSelected + ", adname='" + this.adname + "'}";
    }
}
