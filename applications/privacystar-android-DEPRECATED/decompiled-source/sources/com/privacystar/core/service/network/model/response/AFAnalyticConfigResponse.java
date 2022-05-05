package com.privacystar.core.service.network.model.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/AFAnalyticConfigResponse.class */
public class AFAnalyticConfigResponse implements Serializable {
    @SerializedName("config_version")
    @Expose
    private String configVersion;
    @SerializedName("country")
    @Expose
    private String country;
    @SerializedName("domains")
    @Expose
    private Domains domains;
    @SerializedName("report_name")
    @Expose
    private String reportName;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/AFAnalyticConfigResponse$Domains.class */
    public class Domains {
        @SerializedName("backup")
        @Expose
        private ArrayList<String> backupUrls;
        @SerializedName("primary")
        @Expose
        private ArrayList<String> primaryUrls;

        public Domains() {
        }

        public ArrayList<String> getBackupUrls() {
            return this.backupUrls;
        }

        public ArrayList<String> getPrimaryUrls() {
            return this.primaryUrls;
        }

        public void setBackupUrls(ArrayList<String> arrayList) {
            this.backupUrls = arrayList;
        }

        public void setPrimaryUrls(ArrayList<String> arrayList) {
            this.primaryUrls = arrayList;
        }
    }

    public String getConfigVersion() {
        return this.configVersion;
    }

    public String getCountry() {
        return this.country;
    }

    public Domains getDomains() {
        return this.domains;
    }

    public String getReportName() {
        return this.reportName;
    }

    public void setConfigVersion(String str) {
        this.configVersion = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setDomains(Domains domains) {
        this.domains = domains;
    }

    public void setReportName(String str) {
        this.reportName = str;
    }
}
