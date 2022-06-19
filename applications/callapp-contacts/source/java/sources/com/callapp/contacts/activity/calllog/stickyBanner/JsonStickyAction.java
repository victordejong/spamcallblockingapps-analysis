package com.callapp.contacts.activity.calllog.stickyBanner;

import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction.class */
public class JsonStickyAction {
    @JsonProperty("actionText")
    private String actionText;
    @JsonProperty("cta")
    private String cta;
    @JsonProperty("newCta")
    private String newCta;

    private void setCta(String str) {
        this.cta = str;
    }

    private void setNewCta(String str) {
        this.newCta = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JsonStickyAction jsonStickyAction = (JsonStickyAction) obj;
        if (Objects.equals(this.actionText, jsonStickyAction.actionText)) {
            return Objects.equals(this.cta, jsonStickyAction.cta);
        }
        return false;
    }

    public String getActionText() {
        return this.actionText;
    }

    public String getCta() {
        return StringUtils.m26045b((CharSequence) this.newCta) ? this.newCta : this.cta;
    }

    public int hashCode() {
        String str = this.actionText;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.cta;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setActionText(String str) {
        this.actionText = str;
    }

    public String toString() {
        return "JsonStickyAction{actionText='" + this.actionText + "', cta='" + this.cta + "'}";
    }
}
