package com.callerid.block.bean;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/EZBlackList.class */
public class EZBlackList implements Serializable {
    public static final String FORMATNUMBER = "formatnumber";

    /* renamed from: ID */
    public static final String f4115ID = "_id";
    public static final String NAME = "name";
    public static final String NUMBER = "number";
    private String format_number;

    /* renamed from: id */
    private String f4116id;
    private String name;
    private String number;

    public String getFormat_number() {
        return this.format_number;
    }

    public String getId() {
        return this.f4116id;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public void setFormat_number(String str) {
        this.format_number = str;
    }

    public void setId(String str) {
        this.f4116id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public String toString() {
        return "EZBlackList{id='" + this.f4116id + "', name='" + this.name + "', number='" + this.number + "', format_number='" + this.format_number + "'}";
    }
}
