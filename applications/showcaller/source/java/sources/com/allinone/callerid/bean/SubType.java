package com.allinone.callerid.bean;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/SubType.class */
public class SubType {

    /* renamed from: cc */
    private String f8133cc;
    private int count;
    private boolean is_custom;
    private boolean is_has_bg;
    private String subtype;
    private String subtype_id;
    private String tel_number;
    private String type;

    public String getCc() {
        return this.f8133cc;
    }

    public int getCount() {
        return this.count;
    }

    public String getSubtype() {
        return this.subtype;
    }

    public String getSubtype_id() {
        return this.subtype_id;
    }

    public String getTel_number() {
        return this.tel_number;
    }

    public String getType() {
        return this.type;
    }

    public boolean isIs_custom() {
        return this.is_custom;
    }

    public boolean isIs_has_bg() {
        return this.is_has_bg;
    }

    public void setCc(String str) {
        this.f8133cc = str;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setIs_custom(boolean z) {
        this.is_custom = z;
    }

    public void setIs_has_bg(boolean z) {
        this.is_has_bg = z;
    }

    public void setSubtype(String str) {
        this.subtype = str;
    }

    public void setSubtype_id(String str) {
        this.subtype_id = str;
    }

    public void setTel_number(String str) {
        this.tel_number = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "SubType{subtype='" + this.subtype + "', count='" + this.count + "', subtype_id='" + this.subtype_id + "', type='" + this.type + "', tel_number='" + this.tel_number + "', cc='" + this.f8133cc + "'}";
    }
}
