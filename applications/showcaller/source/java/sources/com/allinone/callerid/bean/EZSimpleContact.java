package com.allinone.callerid.bean;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/EZSimpleContact.class */
public class EZSimpleContact implements Serializable {

    /* renamed from: id */
    private int f8123id;
    private String name;
    private String number;
    private String photo_id;
    private String type;

    public int getId() {
        return this.f8123id;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getPhoto_id() {
        return this.photo_id;
    }

    public String getType() {
        return this.type;
    }

    public void setId(int i) {
        this.f8123id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setPhoto_id(String str) {
        this.photo_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
