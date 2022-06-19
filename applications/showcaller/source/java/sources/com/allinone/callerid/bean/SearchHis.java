package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_SearchHis")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/SearchHis.class */
public class SearchHis {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8129id;
    @Column(name = ShortCut.NUMBER)
    private String number;

    public int getId() {
        return this.f8129id;
    }

    public String getNumber() {
        return this.number;
    }

    public void setId(int i) {
        this.f8129id = i;
    }

    public void setNumber(String str) {
        this.number = str;
    }
}
