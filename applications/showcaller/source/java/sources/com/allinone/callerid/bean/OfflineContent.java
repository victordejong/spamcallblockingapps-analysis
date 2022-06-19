package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "android_spam")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/OfflineContent.class */
public class OfflineContent {
    @Column(name = "address")
    private String address;
    @Column(name = "avatar")
    private String avatar;
    @Column(name = "belong_area")
    private String belong_area;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8126id;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "operator")
    private String operator;
    @Column(name = "report_count")
    private String report_count;
    @Column(name = "tel_number")
    private String tel_number;
    @Column(name = "type")
    private String type;
    @Column(name = "type_label")
    private String type_label;
    @Column(name = "website")
    private String website;

    public String getAddress() {
        return this.address;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getBelong_area() {
        return this.belong_area;
    }

    public int getId() {
        return this.f8126id;
    }

    public String getName() {
        return this.name;
    }

    public String getOperator() {
        return this.operator;
    }

    public String getReport_count() {
        return this.report_count;
    }

    public String getTel_number() {
        return this.tel_number;
    }

    public String getType() {
        return this.type;
    }

    public String getType_label() {
        return this.type_label;
    }

    public String getWebsite() {
        return this.website;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBelong_area(String str) {
        this.belong_area = str;
    }

    public void setId(int i) {
        this.f8126id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public void setReport_count(String str) {
        this.report_count = str;
    }

    public void setTel_number(String str) {
        this.tel_number = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setType_label(String str) {
        this.type_label = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public String toString() {
        return "OfflineContent{id=" + this.f8126id + ", tel_number='" + this.tel_number + "', operator='" + this.operator + "', belong_area='" + this.belong_area + "', address='" + this.address + "', type='" + this.type + "', name='" + this.name + "', website='" + this.website + "', avatar='" + this.avatar + "', report_count='" + this.report_count + "', type_label='" + this.type_label + "'}";
    }
}
