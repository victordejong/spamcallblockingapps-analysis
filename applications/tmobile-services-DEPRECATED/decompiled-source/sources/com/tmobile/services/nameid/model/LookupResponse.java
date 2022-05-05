package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LookupResponse.class */
public class LookupResponse {
    @SerializedName("bucketId")
    @Expose
    private int bucketId;
    @SerializedName("callerName")
    @Expose
    private String name;
    @SerializedName("callerNumber")
    @Expose
    private String number;
    @SerializedName("callerSpamScore")
    @Expose
    private int spamScore;
    @SerializedName("callerType")
    @Expose
    private String type;

    public int getBucketId() {
        return this.bucketId;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public int getSpamScore() {
        return this.spamScore;
    }

    public String getType() {
        return this.type;
    }

    public void setBucketId(int i) {
        this.bucketId = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setSpamScore(int i) {
        this.spamScore = i;
    }

    public void setType(String str) {
        this.type = str;
    }
}
