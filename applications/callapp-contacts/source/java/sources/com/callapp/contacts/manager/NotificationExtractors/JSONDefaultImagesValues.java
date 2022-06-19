package com.callapp.contacts.manager.NotificationExtractors;

import com.callapp.contacts.model.Constants;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/NotificationExtractors/JSONDefaultImagesValues.class */
public class JSONDefaultImagesValues {
    @JsonProperty(Constants.SIGNAL_ACCOUNT_TYPE)
    private List<Integer> signal;
    @JsonProperty(Constants.VIBER_ACCOUNT_TYPE)
    private List<Integer> viber;
    @JsonProperty(Constants.WHATSAPP_ACCOUNT_TYPE)
    private List<Integer> whatsapp;
    @JsonProperty("com.whatsapp.dark")
    private List<Integer> whatsappDark;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONDefaultImagesValues jSONDefaultImagesValues = (JSONDefaultImagesValues) obj;
        return Objects.equals(this.whatsapp, jSONDefaultImagesValues.whatsapp) && Objects.equals(this.whatsappDark, jSONDefaultImagesValues.whatsappDark) && Objects.equals(this.viber, jSONDefaultImagesValues.viber) && Objects.equals(this.signal, jSONDefaultImagesValues.signal);
    }

    public List<Integer> getSignal() {
        return this.signal;
    }

    public List<Integer> getViber() {
        return this.viber;
    }

    public List<Integer> getWhatsapp() {
        return this.whatsapp;
    }

    public List<Integer> getWhatsappDark() {
        return this.whatsappDark;
    }

    public int hashCode() {
        return Objects.hash(this.whatsapp, this.whatsappDark, this.viber, this.signal);
    }

    public void setSignal(List<Integer> list) {
        this.signal = list;
    }

    public void setViber(List<Integer> list) {
        this.viber = list;
    }

    public void setWhatsapp(List<Integer> list) {
        this.whatsapp = list;
    }

    public void setWhatsappDark(List<Integer> list) {
        this.whatsappDark = list;
    }
}
