package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/ReportRequest.class */
public class ReportRequest implements Serializable {
    @SerializedName("clientIdentifier")
    @Expose
    private String clientIdentifier;
    @SerializedName("userReportItems")
    @Expose
    private List<ReportItem> reportItems;
    @SerializedName("reportTimestamp")
    @Expose
    private String reportTimestamp;
    @SerializedName("reportTimezone")
    @Expose
    private String reportTimezone;
    @SerializedName("reportTimezoneDst")
    @Expose
    private Boolean reportTimezoneDst;

    public void setClientIdentifier(String str) {
        this.clientIdentifier = str;
    }

    public void setReportItems(List<ReportItem> list) {
        this.reportItems = list;
    }

    public void setReportTimestamp(String str) {
        this.reportTimestamp = str;
    }

    public void setReportTimezone(String str) {
        this.reportTimezone = str;
    }

    public void setReportTimezoneDst(Boolean bool) {
        this.reportTimezoneDst = bool;
    }
}
