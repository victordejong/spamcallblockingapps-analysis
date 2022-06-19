package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/AdSmsContent.class */
public class AdSmsContent {
    private String adname;

    /* renamed from: id */
    private int f4109id;
    private boolean isSelected;

    public String getAdname() {
        return this.adname;
    }

    public int getId() {
        return this.f4109id;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setAdname(String str) {
        this.adname = str;
    }

    public void setId(int i) {
        this.f4109id = i;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public String toString() {
        return "AdContent{id=" + this.f4109id + ", isSelected=" + this.isSelected + ", adname='" + this.adname + "'}";
    }
}
