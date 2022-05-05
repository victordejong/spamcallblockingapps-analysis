package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/FullShortNameResponse.class */
public class FullShortNameResponse implements Serializable {
    @SerializedName("controlnum")
    @Expose
    private Long controlNumber;
    @SerializedName("shortname")
    @Expose
    private String shortName;

    public Long getControlNumber() {
        return this.controlNumber;
    }

    public String getShortName() {
        return this.shortName;
    }

    public void setControlNumber(Long l) {
        this.controlNumber = l;
    }

    public void setShortName(String str) {
        this.shortName = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public FullShortNameResponse withControlNumber(Long l) {
        this.controlNumber = l;
        return this;
    }

    public FullShortNameResponse withShortName(String str) {
        this.shortName = str;
        return this;
    }
}
