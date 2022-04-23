package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceItem.class */
public class UserPreferenceItem implements Serializable {
    @SerializedName("commEventType")
    @Expose
    private int commEvent;
    @SerializedName("preferenceDisposition")
    @Expose
    private int disposition;
    @SerializedName("userPrefId")
    @Expose

    /* renamed from: id */
    private String f13612id;
    @SerializedName("callerName")
    @Expose
    private String name;
    @SerializedName("callerNumber")
    @Expose
    private String number;
    @SerializedName("prefUpdateDts")
    @Expose
    private String updatedDts;

    public int getCommEvent() {
        return this.commEvent;
    }

    public int getDisposition() {
        return this.disposition;
    }

    public String getId() {
        return this.f13612id;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getUpdatedDts() {
        return this.updatedDts;
    }

    public void setCommEvent(int i) {
        this.commEvent = i;
    }

    public void setDisposition(int i) {
        this.disposition = i;
    }

    public void setId(String str) {
        this.f13612id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setUpdatedDts(String str) {
        this.updatedDts = str;
    }
}
