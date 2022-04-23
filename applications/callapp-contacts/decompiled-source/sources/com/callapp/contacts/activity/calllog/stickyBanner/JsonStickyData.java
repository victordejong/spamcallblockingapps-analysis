package com.callapp.contacts.activity.calllog.stickyBanner;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData.class */
public class JsonStickyData {
    @JsonProperty("action")
    private JsonStickyAction action;
    @JsonProperty("background")
    private String background;
    @JsonProperty("id")
    private String id;
    @JsonProperty("img")
    private String img;
    @JsonProperty("needsBilling")
    private boolean needsBilling;
    @JsonProperty("overWrite")
    private boolean overWrite;
    @JsonProperty("subTitle")
    private String subTitle;
    @JsonProperty("title")
    private String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JsonStickyData jsonStickyData = (JsonStickyData) obj;
        return this.overWrite == jsonStickyData.overWrite && this.needsBilling == jsonStickyData.needsBilling && Objects.equals(this.id, jsonStickyData.id) && Objects.equals(this.title, jsonStickyData.title) && Objects.equals(this.subTitle, jsonStickyData.subTitle) && Objects.equals(this.action, jsonStickyData.action) && Objects.equals(this.img, jsonStickyData.img) && Objects.equals(this.background, jsonStickyData.background);
    }

    public JsonStickyAction getAction() {
        return this.action;
    }

    public String getBackground() {
        return this.background;
    }

    public String getId() {
        return this.id;
    }

    public String getImg() {
        return this.img;
    }

    public boolean getNeedBilling() {
        return this.needsBilling;
    }

    public boolean getOverWrite() {
        return this.overWrite;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Objects.hash(this.id, this.title, this.subTitle, this.action, this.img, this.background, Boolean.valueOf(this.overWrite), Boolean.valueOf(this.needsBilling));
    }

    public void setAction(JsonStickyAction jsonStickyAction) {
        this.action = jsonStickyAction;
    }

    public void setBackground(String str) {
        this.background = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setNeedBilling(boolean z) {
        this.needsBilling = z;
    }

    public void setOverWrite(boolean z) {
        this.overWrite = z;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "JsonStickyData{id='" + this.id + "', title='" + this.title + "', subTitle='" + this.subTitle + "', action=" + this.action + ", img='" + this.img + "', background='" + this.background + "', overWrite=" + this.overWrite + ", needsBilling=" + this.needsBilling + '}';
    }
}
