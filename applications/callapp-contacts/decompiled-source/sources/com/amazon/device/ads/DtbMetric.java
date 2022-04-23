package com.amazon.device.ads;

import android.net.NetworkInfo;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetric.class */
enum DtbMetric {
    AAX_BID_TIME("dabtw", "dabt3", DtbMetricType.TIMER),
    AAX_PUNTED("dapw", "dap3", DtbMetricType.COUNTER),
    AAX_NETWORK_FAILURE("danfw", "danf3", DtbMetricType.COUNTER),
    BANNER_ADSERVER_TIME("dbastw", "dbast3", DtbMetricType.TIMER),
    INTERSTITIAL_ADSERVER_TIME("diastw", "diast3", DtbMetricType.TIMER),
    ADSERVER_ADLOAD_FAILURE("dasfw", "dasf3", DtbMetricType.COUNTER),
    BANNER_TOTAL_LOAD_TIME("dbtltw", "dbtlt3", DtbMetricType.TIMER),
    INTERSTITIAL_TOTAL_LOAD_TIME("ditltw", "ditlt3", DtbMetricType.TIMER),
    CONFIG_DOWNLOAD_LATENCY("acl", "acl", DtbMetricType.TIMER),
    SIS_LATENCY_UPDATE_DEVICE_INFO("sul", "sul", DtbMetricType.TIMER),
    SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED("sid", "sid", DtbMetricType.COUNTER),
    SIS_LATENCY_REGISTER_EVENT("srel", "srel", DtbMetricType.TIMER);
    
    private final String aaxName3g;
    private final String aaxNameWifi;
    private final DtbMetricType metricType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetric$DtbMetricType.class */
    public enum DtbMetricType {
        COUNTER,
        TIMER
    }

    DtbMetric(String str, String str2, DtbMetricType dtbMetricType) {
        this.aaxNameWifi = str;
        this.aaxName3g = str2;
        this.metricType = dtbMetricType;
    }

    public final String getAAXName() {
        NetworkInfo activeNetworkInfo = DtbNetworkState.f6501a.f6502b.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getTypeName().equals("WIFI") ? this.aaxNameWifi : this.aaxName3g;
    }

    public final DtbMetricType getMetricType() {
        return this.metricType;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "[" + getAAXName() + ", " + getMetricType() + "]";
    }
}
