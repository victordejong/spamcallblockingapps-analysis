package com.criteo.info;
/* loaded from: classes-dex2jar.jar:com/criteo/info/AppConfigInfo.class */
public class AppConfigInfo {
    public Boolean autorefresh;
    public String autorefresh_period;
    public String cache_period;
    public String config_expires;
    public Boolean enabled;
    public String endpoint;
    public String integrationid;
    public Boolean sync_enabled;
    public String try_max_requests;
    public String unknown_pause_period;

    public String getAutorefresh_period() {
        return this.autorefresh_period;
    }

    public String getCache_period() {
        return this.cache_period;
    }

    public String getConfig_expires() {
        return this.config_expires;
    }

    public String getEndpoint() {
        return this.endpoint;
    }

    public String getIntegrationid() {
        return this.integrationid;
    }

    public String getTry_max_requests() {
        return this.try_max_requests;
    }

    public String getUnknown_pause_period() {
        return this.unknown_pause_period;
    }

    public boolean isAutorefresh() {
        return this.autorefresh.booleanValue();
    }

    public boolean isEnabled() {
        return this.enabled.booleanValue();
    }

    public boolean isSync_enabled() {
        return this.sync_enabled.booleanValue();
    }

    public void setAutorefresh(boolean z) {
        this.autorefresh = Boolean.valueOf(z);
    }

    public void setAutorefresh_period(String str) {
        this.autorefresh_period = str;
    }

    public void setCache_period(String str) {
        this.cache_period = str;
    }

    public void setConfig_expires(String str) {
        this.config_expires = str;
    }

    public void setEnabled(boolean z) {
        this.enabled = Boolean.valueOf(z);
    }

    public void setEndpoint(String str) {
        this.endpoint = str;
    }

    public void setIntegrationid(String str) {
        this.integrationid = str;
    }

    public void setSync_enabled(boolean z) {
        this.sync_enabled = Boolean.valueOf(z);
    }

    public void setTry_max_requests(String str) {
        this.try_max_requests = str;
    }

    public void setUnknown_pause_period(String str) {
        this.unknown_pause_period = str;
    }

    public String toString() {
        return "AppConfigInfo{endpoint='" + this.endpoint + "', enabled=" + this.enabled + ", try_max_requests=" + this.try_max_requests + ", unknown_pause_period='" + this.unknown_pause_period + "', cache_period='" + this.cache_period + "', autorefresh=" + this.autorefresh + ", autorefresh_period='" + this.autorefresh_period + "', sync_enabled=" + this.sync_enabled + ", integrationid='" + this.integrationid + "', config_expires='" + this.config_expires + "'}";
    }
}
