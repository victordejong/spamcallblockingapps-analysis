package com.callapp.contacts.activity.marketplace.planPage;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/JsonPlanPageConfig.class */
public class JsonPlanPageConfig {
    @JsonProperty("badge")
    private String badge;
    @JsonProperty("badgePosition")
    private String badgePosition;
    @JsonProperty("bottomBackground")
    private String bottomBackground;
    @JsonProperty("bottomBackgroundAlpha")
    private int bottomBackgroundAlpha;
    @JsonProperty("bottomBackgroundColor")
    private String bottomBackgroundColor;
    @JsonProperty("containerBackground")
    private String containerBackground;
    @JsonProperty("containerBackgroundColor")
    private String containerBackgroundColor;
    @JsonProperty("id")

    /* renamed from: id */
    private String f23624id;
    @JsonProperty("middleBackground")
    private String middleBackground;
    @JsonProperty("shape")
    private String shape;
    @JsonProperty("showTopBackground")
    private boolean showTopBackground = true;
    @JsonProperty("skuInformation")
    private List<SkuData> skuInformation;
    @JsonProperty("topBackground")
    private String topBackground;
    @JsonProperty("viewType")
    private String viewType;

    public String getBadge() {
        return this.badge;
    }

    public String getBadgePosition() {
        return this.badgePosition;
    }

    public String getBottomBackground() {
        return this.bottomBackground;
    }

    public int getBottomBackgroundAlpha() {
        return this.bottomBackgroundAlpha;
    }

    public String getBottomBackgroundColor() {
        return this.bottomBackgroundColor;
    }

    public String getContainerBackground() {
        return this.containerBackground;
    }

    public String getContainerBackgroundColor() {
        return this.containerBackgroundColor;
    }

    public String getId() {
        return this.f23624id;
    }

    public String getMiddleBackground() {
        return this.middleBackground;
    }

    public String getShape() {
        return this.shape;
    }

    public boolean getShowTopBackground() {
        return this.showTopBackground;
    }

    public List<SkuData> getSkuInformation() {
        return this.skuInformation;
    }

    public String getTopBackground() {
        return this.topBackground;
    }

    public String getViewType() {
        return this.viewType;
    }

    public void setBadge(String str) {
        this.badge = str;
    }

    public void setBadgePosition(String str) {
        this.badgePosition = str;
    }

    public void setBottomBackground(String str) {
        this.bottomBackground = str;
    }

    public void setBottomBackgroundAlpha(int i) {
        this.bottomBackgroundAlpha = i;
    }

    public void setBottomBackgroundColor(String str) {
        this.bottomBackgroundColor = str;
    }

    public void setContainerBackground(String str) {
        this.containerBackground = str;
    }

    public void setContainerBackgroundColor(String str) {
        this.containerBackgroundColor = str;
    }

    public void setId(String str) {
        this.f23624id = str;
    }

    public void setMiddleBackground(String str) {
        this.middleBackground = str;
    }

    public void setShape(String str) {
        this.shape = str;
    }

    public void setShowTopBackground(boolean z) {
        this.showTopBackground = z;
    }

    public void setSkuInformation(List<SkuData> list) {
        this.skuInformation = list;
    }

    public void setTopBackground(String str) {
        this.topBackground = str;
    }

    public void setViewType(String str) {
        this.viewType = str;
    }
}
