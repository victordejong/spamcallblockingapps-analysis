package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "NoDistur")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/NoDisturbBean.class */
public class NoDisturbBean {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8124id;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = ShortCut.NUMBER)
    private String number;

    public int getId() {
        return this.f8124id;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public void setId(int i) {
        this.f8124id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }
}
