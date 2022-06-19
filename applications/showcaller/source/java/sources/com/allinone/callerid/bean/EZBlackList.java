package com.allinone.callerid.bean;

import java.io.Serializable;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "blacklist")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/EZBlackList.class */
public class EZBlackList implements Serializable {
    @Column(name = "address")
    private String address;
    @Column(name = "formatnumber")
    private String formatnumber;
    @Column(autoGen = true, isId = true, name = "_id")

    /* renamed from: id */
    private int f8122id;
    @Column(name = "ismyblocklist")
    private String ismyblocklist;
    @Column(name = "ismyblocklistfromspams")
    private String ismyblocklistfromspams;
    @Column(name = "isselected")
    private boolean isselected;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "operator")
    private String operator;
    @Column(name = "report_count")
    private String report_count;
    @Column(name = "score_level")
    private String score_level;
    @Column(name = "spam_type")
    private String spam_type;
    @Column(name = "type")
    private String type;

    public String getAddress() {
        return this.address;
    }

    public String getFormat_number() {
        return this.formatnumber;
    }

    public int getId() {
        return this.f8122id;
    }

    public String getIs_myblock() {
        return this.ismyblocklist;
    }

    public String getIsmyblocklistfromspams() {
        return this.ismyblocklistfromspams;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getOperator() {
        return this.operator;
    }

    public String getReport_count() {
        return this.report_count;
    }

    public String getScore_level() {
        return this.score_level;
    }

    public String getSpam_type() {
        return this.spam_type;
    }

    public String getType() {
        return this.type;
    }

    public boolean isselected() {
        return this.isselected;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setFormat_number(String str) {
        this.formatnumber = str;
    }

    public void setId(int i) {
        this.f8122id = i;
    }

    public void setIs_myblock(String str) {
        this.ismyblocklist = str;
    }

    public void setIsmyblocklistfromspams(String str) {
        this.ismyblocklistfromspams = str;
    }

    public void setIsselected(boolean z) {
        this.isselected = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public void setReport_count(String str) {
        this.report_count = str;
    }

    public void setScore_level(String str) {
        this.score_level = str;
    }

    public void setSpam_type(String str) {
        this.spam_type = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "EZBlackList{id='" + this.f8122id + "', name='" + this.name + "', number='" + this.number + "', formatnumber='" + this.formatnumber + "', ismyblocklistfromspams='" + this.ismyblocklistfromspams + "', ismyblocklist='" + this.ismyblocklist + "', type='" + this.type + "', spam_type='" + this.spam_type + "', operator='" + this.operator + "', address='" + this.address + "', report_count='" + this.report_count + "', score_level='" + this.score_level + "', isselected=" + this.isselected + '}';
    }
}
