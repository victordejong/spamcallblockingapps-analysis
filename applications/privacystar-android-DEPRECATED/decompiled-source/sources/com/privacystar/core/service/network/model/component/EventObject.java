package com.privacystar.core.service.network.model.component;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.AnalyticsEventFields;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/EventObject.class */
public class EventObject implements Serializable {
    private String eventBody;
    private int eventType;
    @SerializedName("val")
    @Expose
    private String eventValue;
    @SerializedName("id")
    @Expose

    /* renamed from: id */
    private int f284id;
    @SerializedName(AnalyticsEventFields.f254TS)
    @Expose

    /* renamed from: ts */
    private Date f285ts;

    public String getEventBody() {
        return this.eventBody;
    }

    public int getEventType() {
        return this.eventType;
    }

    public String getEventValue() {
        int eventType = getEventType();
        String eventBody = getEventBody();
        String str = eventBody;
        if (eventBody == null) {
            str = "";
        }
        return String.valueOf(eventType) + '|' + str;
    }

    public int getId() {
        return this.f284id;
    }

    public Date getTs() {
        return this.f285ts;
    }

    public void setEventBody(String str) {
        this.eventBody = str;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setId(int i) {
        this.f284id = i;
    }

    public void setTs(Date date) {
        this.f285ts = date;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }
}
