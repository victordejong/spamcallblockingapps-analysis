package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_bean_NumberContent")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/NumberContent.class */
public class NumberContent {
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8125id;
    @Column(name = "is_reported")
    private boolean is_reported;
    @Column(name = "is_reported_wrong")
    private boolean is_reported_wrong;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "reported_time")
    private long reported_time;
    @Column(name = "show_submit_comment_time")
    private long show_submit_comment_time;
    @Column(name = "submit_commentst_time")
    private long submit_commentst_time;
    @Column(name = "subtype_mark_time")
    private long subtype_mark_time;
    @Column(name = "suggest_time")
    private long suggest_time;

    public int getId() {
        return this.f8125id;
    }

    public String getNumber() {
        return this.number;
    }

    public long getReported_time() {
        return this.reported_time;
    }

    public long getShow_submit_comment_time() {
        return this.show_submit_comment_time;
    }

    public long getSubmit_commentst_time() {
        return this.submit_commentst_time;
    }

    public long getSubtype_mark_time() {
        return this.subtype_mark_time;
    }

    public long getSuggest_time() {
        return this.suggest_time;
    }

    public boolean is_reported() {
        return this.is_reported;
    }

    public boolean is_reported_wrong() {
        return this.is_reported_wrong;
    }

    public void setId(int i) {
        this.f8125id = i;
    }

    public void setIs_reported(boolean z) {
        this.is_reported = z;
    }

    public void setIs_reported_wrong(boolean z) {
        this.is_reported_wrong = z;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setReported_time(long j) {
        this.reported_time = j;
    }

    public void setShow_submit_comment_time(long j) {
        this.show_submit_comment_time = j;
    }

    public void setSubmit_commentst_time(long j) {
        this.submit_commentst_time = j;
    }

    public void setSubtype_mark_time(long j) {
        this.subtype_mark_time = j;
    }

    public void setSuggest_time(long j) {
        this.suggest_time = j;
    }

    public String toString() {
        return "NumberContent{id=" + this.f8125id + ", number='" + this.number + "', is_reported=" + this.is_reported + ", is_reported_wrong=" + this.is_reported_wrong + ", suggest_time=" + this.suggest_time + ", reported_time=" + this.reported_time + ", submit_commentst_time=" + this.submit_commentst_time + ", subtype_mark_time=" + this.subtype_mark_time + ", show_submit_comment_time=" + this.show_submit_comment_time + '}';
    }
}
