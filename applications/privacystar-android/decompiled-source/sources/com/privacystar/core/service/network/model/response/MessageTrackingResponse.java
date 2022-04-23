package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/MessageTrackingResponse.class */
public class MessageTrackingResponse implements Serializable {
    @SerializedName("messageHtml")
    @Expose
    private String messageHtml;
    @SerializedName("notificationMessage")
    @Expose
    private String notificationMessage;
    @SerializedName("notificationTitle")
    @Expose
    private String notificationTitle;

    public String getMessageHtml() {
        return this.messageHtml;
    }

    public String getNotificationMessage() {
        return this.notificationMessage;
    }

    public String getNotificationTitle() {
        return this.notificationTitle;
    }

    public void setMessageHtml(String str) {
        this.messageHtml = str;
    }

    public void setNotificationMessage(String str) {
        this.notificationMessage = str;
    }

    public void setNotificationTitle(String str) {
        this.notificationTitle = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public MessageTrackingResponse withMessageHtml(String str) {
        this.messageHtml = str;
        return this;
    }

    public MessageTrackingResponse withNotificationMessage(String str) {
        this.notificationMessage = str;
        return this;
    }

    public MessageTrackingResponse withNotificationTitle(String str) {
        this.notificationTitle = str;
        return this;
    }
}
