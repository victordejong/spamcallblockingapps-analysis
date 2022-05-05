package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferencePutItem.class */
public class UserPreferencePutItem implements Serializable {
    @SerializedName("preferenceDisposition")
    @Expose
    private int disposition;

    public int getDisposition() {
        return this.disposition;
    }

    public void setDisposition(int i) {
        this.disposition = i;
    }
}
