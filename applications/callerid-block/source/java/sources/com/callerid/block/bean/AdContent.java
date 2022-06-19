package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/AdContent.class */
public class AdContent {
    private String adname;

    /* renamed from: id */
    private int f4108id;
    private boolean isSelected;

    public String getAdname() {
        return this.adname;
    }

    public int getId() {
        return this.f4108id;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setAdname(String str) {
        this.adname = str;
    }

    public void setId(int i) {
        this.f4108id = i;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public String toString() {
        return "AdContent{id=" + this.f4108id + ", isSelected=" + this.isSelected + ", adname='" + this.adname + "'}";
    }
}
