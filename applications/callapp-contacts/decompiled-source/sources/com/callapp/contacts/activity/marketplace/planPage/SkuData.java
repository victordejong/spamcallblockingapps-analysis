package com.callapp.contacts.activity.marketplace.planPage;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/SkuData.class */
public class SkuData {
    @JsonProperty("disclaimer")
    private String disclaimer;
    @JsonProperty("disclaimerColor")
    private String disclaimerColor;
    @JsonProperty("disclaimerSize")
    private float disclaimerSize;
    @JsonProperty("fillColor")
    private String fillColor;
    @JsonProperty("markWithStar")
    private boolean markWithStar;
    @JsonProperty("outlineColor")
    private String outlineColor;
    @JsonProperty("priceBeforeColor")
    private String priceBeforeColor;
    @JsonProperty("priceColor")
    private String priceColor;
    @JsonProperty("priceSize")
    private float priceSize;
    @JsonProperty("showDisclaimer")
    boolean showDisclaimer;
    @JsonProperty("skuId")
    private String skuId;
    @JsonProperty("skuLocation")
    private int skuLocation;
    @JsonProperty("strike")
    private boolean strike;

    public String getDisclaimer() {
        return this.disclaimer;
    }

    public String getDisclaimerColor() {
        return this.disclaimerColor;
    }

    public float getDisclaimerSize() {
        return this.disclaimerSize;
    }

    public String getFillColor() {
        return this.fillColor;
    }

    public String getOutlineColor() {
        return this.outlineColor;
    }

    public String getPriceBeforeColor() {
        return this.priceBeforeColor;
    }

    public String getPriceColor() {
        return this.priceColor;
    }

    public float getPriceSize() {
        return this.priceSize;
    }

    public String getSkuId() {
        return this.skuId;
    }

    public int getSkuLocation() {
        return this.skuLocation;
    }

    public boolean isMarkWithStar() {
        return this.markWithStar;
    }

    public boolean isStrike() {
        return this.strike;
    }
}
