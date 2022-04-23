package com.callapp.contacts.activity.marketplace.catalog;

import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner.class */
public class JSONStoreItemBanner extends JsonStickyData {
    @JsonProperty("actionColor")
    private String actionColor;
    @JsonProperty("hideIfPremium")
    private boolean hideIfPremium;
    @JsonProperty("textActionColor")
    private String textActionColor;
    @JsonProperty("textColor")
    private String textColor;

    @Override // com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        JSONStoreItemBanner jSONStoreItemBanner = (JSONStoreItemBanner) obj;
        if (Objects.equals(this.textColor, jSONStoreItemBanner.textColor) && Objects.equals(this.actionColor, jSONStoreItemBanner.actionColor)) {
            return Objects.equals(this.textActionColor, jSONStoreItemBanner.textActionColor);
        }
        return false;
    }

    public String getActionColor() {
        return this.actionColor;
    }

    public boolean getHideIfPremium() {
        return this.hideIfPremium;
    }

    public String getTextActionColor() {
        return this.textActionColor;
    }

    public String getTextColor() {
        return this.textColor;
    }

    @Override // com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.textColor;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.actionColor;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.textActionColor;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public void setActionColor(String str) {
        this.actionColor = str;
    }

    public void setHideIfPremium(boolean z) {
        this.hideIfPremium = z;
    }

    public void setTextActionColor(String str) {
        this.textActionColor = str;
    }

    public void setTextColor(String str) {
        this.textColor = str;
    }

    @Override // com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData
    public String toString() {
        return "JSONStoreItemBanner{textColor='" + this.textColor + "', actionColor='" + this.actionColor + "', textActionColor='" + this.textActionColor + "'}";
    }
}
