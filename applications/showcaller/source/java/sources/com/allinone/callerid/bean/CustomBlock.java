package com.allinone.callerid.bean;

import java.io.Serializable;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "customblock")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/CustomBlock.class */
public class CustomBlock implements Serializable {
    @Column(autoGen = true, isId = true, name = "_id")

    /* renamed from: id */
    private int f8121id;
    @Column(name = "isselected")
    private boolean isselected;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "type")
    private int type;

    public String getNumber() {
        return this.number;
    }

    public int getType() {
        return this.type;
    }

    public boolean isselected() {
        return this.isselected;
    }

    public void setIsselected(boolean z) {
        this.isselected = z;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "CustomBlock{id=" + this.f8121id + ", number='" + this.number + "', type=" + this.type + ", isselected=" + this.isselected + '}';
    }
}
