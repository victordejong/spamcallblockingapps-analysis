package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/CollectInfo.class */
public class CollectInfo {

    /* renamed from: id */
    private int f4110id;
    private String number;
    private String user_blocked = "0";
    private String user_commented = "0";
    private String user_reported = "0";
    private String user_upload_recording = "0";

    public int getId() {
        return this.f4110id;
    }

    public String getNumber() {
        return this.number;
    }

    public String getUser_blocked() {
        return this.user_blocked;
    }

    public String getUser_commented() {
        return this.user_commented;
    }

    public String getUser_reported() {
        return this.user_reported;
    }

    public String getUser_upload_recording() {
        return this.user_upload_recording;
    }

    public void setId(int i) {
        this.f4110id = i;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setUser_blocked(String str) {
        this.user_blocked = str;
    }

    public void setUser_commented(String str) {
        this.user_commented = str;
    }

    public void setUser_reported(String str) {
        this.user_reported = str;
    }

    public void setUser_upload_recording(String str) {
        this.user_upload_recording = str;
    }

    public String toString() {
        return "CollectInfo{id=" + this.f4110id + ", number='" + this.number + "', user_blocked='" + this.user_blocked + "', user_commented='" + this.user_commented + "', user_reported='" + this.user_reported + "', user_upload_recording='" + this.user_upload_recording + "'}";
    }
}
