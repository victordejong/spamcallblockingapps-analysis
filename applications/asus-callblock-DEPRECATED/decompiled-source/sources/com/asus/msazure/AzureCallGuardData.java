package com.asus.msazure;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/asus/msazure/AzureCallGuardData.class */
public class AzureCallGuardData {
    @SerializedName("id")
    private String mId;
    @SerializedName("key")
    private String mKey;
    @SerializedName("value")
    private String mValue;
    @SerializedName("key_minmatch")
    private String mini_match;

    public AzureCallGuardData() {
    }

    public AzureCallGuardData(String str, String str2) {
        setKey(str);
        setValue(str2);
    }

    public boolean equals(Object obj) {
        return (obj instanceof AzureCallGuardData) && ((AzureCallGuardData) obj).mKey == this.mKey;
    }

    public String getId() {
        return this.mId;
    }

    public String getKey() {
        return this.mKey;
    }

    public String getMini_match() {
        return this.mini_match;
    }

    public String getValue() {
        return this.mValue;
    }

    public final void setId(String str) {
        this.mId = str;
    }

    public final void setKey(String str) {
        this.mKey = str;
    }

    public void setMini_match(String str) {
        this.mini_match = str;
    }

    public final void setValue(String str) {
        this.mValue = str;
    }

    public String toString() {
        return getValue();
    }
}
