package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/FeatureState.class */
public class FeatureState {
    @SerializedName("nap_features")
    @Expose
    String napFeatures;
    @SerializedName("napFeatures")
    @Expose
    String napFeatures2;
    @SerializedName("privacystar_features")
    @Expose
    String pstarFeatures;
    @SerializedName("state")
    @Expose
    String state;

    @Nonnull
    public String getActualNapFeatures() {
        return getNapFeatures() != null ? getNapFeatures() : getNapFeatures2() != null ? getNapFeatures2() : "";
    }

    @Nullable
    public String getNapFeatures() {
        return this.napFeatures;
    }

    @Nullable
    public String getNapFeatures2() {
        return this.napFeatures2;
    }

    @Nullable
    public String getPstarFeatures() {
        return this.pstarFeatures;
    }

    public String getState() {
        return this.state;
    }

    public void setNapFeatures(String str) {
        this.napFeatures = str;
    }

    public void setState(String str) {
        this.state = str;
    }
}
