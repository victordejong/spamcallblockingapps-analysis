package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/PostableAnalyticsEvent.class */
public class PostableAnalyticsEvent implements Serializable {
    private static final String BAR = "|";
    @SerializedName(Name.MARK)
    @Expose

    /* renamed from: id */
    private int f13610id;
    @SerializedName("ts")
    @Expose

    /* renamed from: ts */
    private String f13611ts;
    @SerializedName("val")
    @Expose
    private String val;

    public static PostableAnalyticsEvent fromAnalyticsEvent(AnalyticsEvent analyticsEvent) {
        PostableAnalyticsEvent postableAnalyticsEvent = new PostableAnalyticsEvent();
        postableAnalyticsEvent.f13610id = analyticsEvent.getId();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        postableAnalyticsEvent.f13611ts = simpleDateFormat.format(new Date(analyticsEvent.getTime()));
        postableAnalyticsEvent.val = analyticsEvent.getEventType() + BAR + analyticsEvent.getEventBody();
        return postableAnalyticsEvent;
    }

    public void setId(int i) {
        this.f13610id = i;
    }

    public void setTs(String str) {
        this.f13611ts = str;
    }

    public void setVal(String str) {
        this.val = str;
    }
}
