package com.allinone.callerid.bean;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/ShortCut.class */
public class ShortCut implements Serializable {

    /* renamed from: ID */
    public static final String f8130ID = "_id";
    public static final String NAME = "name";
    public static final String NUMBER = "number";

    /* renamed from: id */
    private String f8131id;
    private String name;
    private String number;

    public String getId() {
        return this.f8131id;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public void setId(String str) {
        this.f8131id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public String toString() {
        return "ShortCut{id='" + this.f8131id + "', name='" + this.name + "', number='" + this.number + "'}";
    }
}
