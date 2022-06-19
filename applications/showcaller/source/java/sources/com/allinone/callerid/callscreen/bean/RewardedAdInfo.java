package com.allinone.callerid.callscreen.bean;

import com.allinone.callerid.bean.ShortCut;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "RewardedAdInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/bean/RewardedAdInfo.class */
public class RewardedAdInfo {
    @Column(name = "dataId")
    private String dataId;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8433id;
    @Column(name = ShortCut.NAME)
    private String name;

    public String getDataId() {
        return this.dataId;
    }

    public int getId() {
        return this.f8433id;
    }

    public String getName() {
        return this.name;
    }

    public void setDataId(String str) {
        this.dataId = str;
    }

    public void setId(int i) {
        this.f8433id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "RewardedAdInfo{id=" + this.f8433id + ", name='" + this.name + "', dataId='" + this.dataId + "'}";
    }
}
