package com.callapp.contacts.model.contact;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/TwilioTrustedCommData.class */
public class TwilioTrustedCommData extends CacheableData {
    private transient String callReason;
    private Integer logoBgColor;
    private String logoUrl;
    private String name;

    public TwilioTrustedCommData(String str) {
        this.name = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TwilioTrustedCommData twilioTrustedCommData = (TwilioTrustedCommData) obj;
        if (Objects.equals(this.name, twilioTrustedCommData.name)) {
            return Objects.equals(this.logoUrl, twilioTrustedCommData.logoUrl);
        }
        return false;
    }

    public String getCallReason() {
        return this.callReason;
    }

    public Integer getLogoBgColor() {
        return this.logoBgColor;
    }

    public String getLogoUrl() {
        return this.logoUrl;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.logoUrl;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public void setCallReason(String str) {
        this.callReason = str;
    }

    public void setLogoBgColor(Integer num) {
        this.logoBgColor = num;
    }

    public void setLogoUrl(String str) {
        this.logoUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }
}
