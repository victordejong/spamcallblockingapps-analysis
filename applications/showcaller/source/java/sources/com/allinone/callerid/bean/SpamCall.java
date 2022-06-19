package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_SpamCall")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/SpamCall.class */
public class SpamCall {
    @Column(name = "address")
    private String address;
    @Column(name = "avatar")
    private String avatar;
    @Column(name = "belong_area")
    private String belong_area;
    @Column(name = "calltype")
    private int calltype;
    @Column(name = "comment_tags")
    private String comment_tags;
    @Column(name = "country")
    private String country;
    @Column(name = "date")
    private String date;
    @Column(name = "format_tel_number")
    private String format_tel_number;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8132id;
    @Column(name = "isSelected")
    private boolean isSelected;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "name_tags")
    private String name_tags;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "operator")
    private String operator;
    @Column(name = "reportcounts")
    private String reportcounts;
    @Column(name = "tel_number")
    private String tel_number;
    @Column(name = "type")
    private String type;
    @Column(name = "type_tags")
    private String type_tags;
    @Column(name = "typelabel")
    private String typelabel;

    public String getAddress() {
        return this.address;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getBelong_area() {
        return this.belong_area;
    }

    public int getCalltype() {
        return this.calltype;
    }

    public String getComment_tags() {
        return this.comment_tags;
    }

    public String getCountry() {
        return this.country;
    }

    public String getDate() {
        return this.date;
    }

    public String getFormat_tel_number() {
        return this.format_tel_number;
    }

    public int getId() {
        return this.f8132id;
    }

    public String getName() {
        return this.name;
    }

    public String getName_tags() {
        return this.name_tags;
    }

    public String getNumber() {
        return this.number;
    }

    public String getOperator() {
        return this.operator;
    }

    public String getReportcounts() {
        return this.reportcounts;
    }

    public String getTel_number() {
        return this.tel_number;
    }

    public String getType() {
        return this.type;
    }

    public String getType_tags() {
        return this.type_tags;
    }

    public String getTypelabel() {
        return this.typelabel;
    }

    public boolean isSelected() {
        return this.isSelected;
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

    public void setCalltype(int i) {
        this.calltype = i;
    }

    public void setComment_tags(String str) {
        this.comment_tags = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setFormat_tel_number(String str) {
        this.format_tel_number = str;
    }

    public void setId(int i) {
        this.f8132id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setName_tags(String str) {
        this.name_tags = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public void setReportcounts(String str) {
        this.reportcounts = str;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public void setTel_number(String str) {
        this.tel_number = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setType_tags(String str) {
        this.type_tags = str;
    }

    public void setTypelabel(String str) {
        this.typelabel = str;
    }

    public String toString() {
        return "SpamCall{id=" + this.f8132id + ", calltype=" + this.calltype + ", number='" + this.number + "', reportcounts='" + this.reportcounts + "', typelabel='" + this.typelabel + "', type='" + this.type + "', date='" + this.date + "', isSelected=" + this.isSelected + ", tel_number='" + this.tel_number + "', format_tel_number='" + this.format_tel_number + "', operator='" + this.operator + "', name='" + this.name + "', address='" + this.address + "', belong_area='" + this.belong_area + "', avatar='" + this.avatar + "', type_tags='" + this.type_tags + "', name_tags='" + this.name_tags + "', comment_tags='" + this.comment_tags + "', country='" + this.country + "'}";
    }
}
