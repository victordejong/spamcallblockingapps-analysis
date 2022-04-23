package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONReferAndEarnRewards.class */
public class JSONReferAndEarnRewards implements Serializable {
    private static final long serialVersionUID = -5058015902229232252L;
    @JsonProperty("image")
    private String image;
    private boolean isChecked;
    @JsonProperty("isMilestone")
    private boolean isMilestone;
    @JsonProperty("key")
    private int key;
    @JsonProperty("sku")
    private String[] sku;
    @JsonProperty("subtitle")
    private String subtitle;
    @JsonProperty("title")
    private String title;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONReferAndEarnRewards jSONReferAndEarnRewards = (JSONReferAndEarnRewards) obj;
        return this.key == jSONReferAndEarnRewards.key && this.isMilestone == jSONReferAndEarnRewards.isMilestone && Objects.equals(this.title, jSONReferAndEarnRewards.title) && Objects.equals(this.subtitle, jSONReferAndEarnRewards.subtitle) && Objects.equals(this.image, jSONReferAndEarnRewards.image) && Arrays.equals(this.sku, jSONReferAndEarnRewards.sku);
    }

    public String getImage() {
        return this.image;
    }

    public int getKey() {
        return this.key;
    }

    public String[] getSku() {
        return this.sku;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (Objects.hash(Integer.valueOf(this.key), this.title, this.subtitle, this.image, Boolean.valueOf(this.isMilestone)) * 31) + Arrays.hashCode(this.sku);
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public boolean isMilestone() {
        return this.isMilestone;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setImage(String str) {
        this.image = str;
    }

    public void setKey(int i) {
        this.key = i;
    }

    public void setMilestone(boolean z) {
        this.isMilestone = z;
    }

    public void setSku(String[] strArr) {
        this.sku = strArr;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "JSONReferAndEarnRewards{key=" + this.key + ", title='" + this.title + "', subtitle='" + this.subtitle + "', image='" + this.image + "', sku=" + Arrays.toString(this.sku) + ", isMilestone=" + this.isMilestone + '}';
    }
}
