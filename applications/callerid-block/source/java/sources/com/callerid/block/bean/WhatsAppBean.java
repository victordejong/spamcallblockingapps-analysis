package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/WhatsAppBean.class */
public class WhatsAppBean {

    /* renamed from: id */
    private int f4124id;
    private long lastcalltime;
    private String name;
    private String number;
    private int type;

    public int getId() {
        return this.f4124id;
    }

    public long getLastcalltime() {
        return this.lastcalltime;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public int getType() {
        return this.type;
    }

    public void setId(int i) {
        this.f4124id = i;
    }

    public void setLastcalltime(long j) {
        this.lastcalltime = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "WhatsAppBean{id=" + this.f4124id + ", name='" + this.name + "', number='" + this.number + "', lastcalltime=" + this.lastcalltime + ", type=" + this.type + '}';
    }
}
