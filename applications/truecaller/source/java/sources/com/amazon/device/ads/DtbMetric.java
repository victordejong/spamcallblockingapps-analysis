package com.amazon.device.ads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* JADX WARN: Init of enum AAX_BID_TIME can be incorrect */
/* JADX WARN: Init of enum AAX_NETWORK_FAILURE can be incorrect */
/* JADX WARN: Init of enum AAX_PUNTED can be incorrect */
/* JADX WARN: Init of enum ADSERVER_ADLOAD_FAILURE can be incorrect */
/* JADX WARN: Init of enum BANNER_ADSERVER_TIME can be incorrect */
/* JADX WARN: Init of enum BANNER_TOTAL_LOAD_TIME can be incorrect */
/* JADX WARN: Init of enum CONFIG_DOWNLOAD_LATENCY can be incorrect */
/* JADX WARN: Init of enum INTERSTITIAL_ADSERVER_TIME can be incorrect */
/* JADX WARN: Init of enum INTERSTITIAL_TOTAL_LOAD_TIME can be incorrect */
/* JADX WARN: Init of enum SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED can be incorrect */
/* JADX WARN: Init of enum SIS_LATENCY_REGISTER_EVENT can be incorrect */
/* JADX WARN: Init of enum SIS_LATENCY_UPDATE_DEVICE_INFO can be incorrect */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetric.class */
public enum DtbMetric {
    AAX_BID_TIME("dabtw", "dabt3", r0),
    AAX_PUNTED("dapw", "dap3", r0),
    AAX_NETWORK_FAILURE("danfw", "danf3", r0),
    BANNER_ADSERVER_TIME("dbastw", "dbast3", r0),
    INTERSTITIAL_ADSERVER_TIME("diastw", "diast3", r0),
    ADSERVER_ADLOAD_FAILURE("dasfw", "dasf3", r0),
    BANNER_TOTAL_LOAD_TIME("dbtltw", "dbtlt3", r0),
    INTERSTITIAL_TOTAL_LOAD_TIME("ditltw", "ditlt3", r0),
    CONFIG_DOWNLOAD_LATENCY("acl", "acl", r0),
    SIS_LATENCY_UPDATE_DEVICE_INFO("sul", "sul", r0),
    SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED("sid", "sid", r0),
    SIS_LATENCY_REGISTER_EVENT("srel", "srel", r0);
    
    private final String aaxName3g;
    private final String aaxNameWifi;
    private final DtbMetricType metricType;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetric$DtbMetricType.class */
    public enum DtbMetricType {
        COUNTER,
        TIMER
    }

    static {
        DtbMetricType dtbMetricType = DtbMetricType.TIMER;
        DtbMetricType dtbMetricType2 = DtbMetricType.COUNTER;
    }

    DtbMetric(String str, String str2, DtbMetricType dtbMetricType) {
        this.aaxNameWifi = str;
        this.aaxName3g = str2;
        this.metricType = dtbMetricType;
    }

    public String getAAXName() {
        return DtbNetworkState.INSTANCE.isWifiConnection() ? this.aaxNameWifi : this.aaxName3g;
    }

    public DtbMetricType getMetricType() {
        return this.metricType;
    }

    @Override // java.lang.Enum
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        m8728C.append(getAAXName());
        m8728C.append(", ");
        m8728C.append(getMetricType());
        m8728C.append("]");
        return m8728C.toString();
    }
}
