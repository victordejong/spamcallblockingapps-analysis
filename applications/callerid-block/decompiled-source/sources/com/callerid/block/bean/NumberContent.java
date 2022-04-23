package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/NumberContent.class */
public class NumberContent {

    /* renamed from: id */
    private int f4121id;
    private boolean is_reported;
    private String number;
    private long reported_time;
    private long suggest_time;

    public int getId() {
        return this.f4121id;
    }

    public String getNumber() {
        return this.number;
    }

    public long getReported_time() {
        return this.reported_time;
    }

    public long getSuggest_time() {
        return this.suggest_time;
    }

    public boolean isIs_reported() {
        return this.is_reported;
    }

    public boolean is_reported() {
        return this.is_reported;
    }

    public void setId(int i) {
        this.f4121id = i;
    }

    public void setIs_reported(boolean z) {
        this.is_reported = z;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setReported_time(long j) {
        this.reported_time = j;
    }

    public void setSuggest_time(long j) {
        this.suggest_time = j;
    }

    public String toString() {
        return "NumberContent{id=" + this.f4121id + ", number='" + this.number + "', is_reported=" + this.is_reported + ", reported_time=" + this.reported_time + ", suggest_time=" + this.suggest_time + '}';
    }
}
