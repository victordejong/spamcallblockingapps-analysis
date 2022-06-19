package com.amazon.device.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport.class */
public class DTBMetricReport {
    private static final String ADAPTER_VERSION = "adapter_version";
    private static final String ADSERVER = "mediation";
    private static final String APP_NAME = "app_id";
    private static final String CONNECTION = "connection";
    private static final String LATENCY = "latency";
    private static final String LOG_TAG = "DTBMetricReport";
    private static final String PROJECT = "project";
    private static final String PROJECT_NAME = "aps_mobile";
    private static final String SDK = "sdk";
    private static final String TIME = "time";
    private static final String TYPE = "type";
    private BidWrapper bidWrapper;
    private int latency;
    private JSONObject propertiesMap;
    private String type;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport$BidWrapper.class */
    public static class BidWrapper {
        public String bidId;
        public String hostname;

        public BidWrapper(String str, String str2) {
            this.bidId = str;
            this.hostname = str2;
        }
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper) {
        this.latency = -1;
        this.bidWrapper = bidWrapper;
        setStandardProperties(str);
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper, int i) {
        this.latency = -1;
        this.bidWrapper = bidWrapper;
        this.latency = i;
        setStandardProperties(str);
    }

    private DTBMetricReport(String str, Map<String, Object> map) {
        this.latency = -1;
        setStandardProperties(str);
        addExtraProperties(map);
    }

    private DTBMetricReport(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        this(str, map);
        this.bidWrapper = bidWrapper;
    }

    public static BidWrapper addBid(String str, String str2) {
        return new BidWrapper(str, str2);
    }

    private void addExtraProperties(Map<String, Object> map) {
        try {
            for (String str : map.keySet()) {
                Object obj = map.get(str);
                if (obj instanceof String) {
                    this.propertiesMap.put(str, obj);
                } else if (obj instanceof Integer) {
                    this.propertiesMap.put(str, obj);
                } else if (obj instanceof Long) {
                    this.propertiesMap.put(str, obj);
                } else if (obj instanceof Boolean) {
                    this.propertiesMap.put(str, obj);
                }
            }
        } catch (JSONException e) {
            String str2 = LOG_TAG;
            StringBuilder m8728C = C22128a.m8728C("Invalid JSON conversion:");
            m8728C.append(e.getMessage());
            DtbLog.error(str2, m8728C.toString());
        }
    }

    public static DTBMetricReport reportWithBidIdAndType(BidWrapper bidWrapper, String str) {
        return new DTBMetricReport(str, bidWrapper);
    }

    public static DTBMetricReport reportWithBidTypeLatency(BidWrapper bidWrapper, String str, int i) {
        return new DTBMetricReport(str, bidWrapper, i);
    }

    public static DTBMetricReport reportWithTypeAndExtraProperties(String str, Map<String, Object> map) {
        return new DTBMetricReport(str, map);
    }

    public static DTBMetricReport reportWithTypeAndExtraProperties(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        return new DTBMetricReport(str, map, bidWrapper);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1 A[Catch: JSONException -> 0x013e, TRY_ENTER, TryCatch #2 {JSONException -> 0x013e, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:31:0x00d1, B:32:0x00dd, B:32:0x00dd, B:33:0x00e0, B:37:0x00f3, B:42:0x0105, B:44:0x0114, B:46:0x0120), top: B:57:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f3 A[Catch: JSONException -> 0x013e, TRY_ENTER, TryCatch #2 {JSONException -> 0x013e, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:31:0x00d1, B:32:0x00dd, B:32:0x00dd, B:33:0x00e0, B:37:0x00f3, B:42:0x0105, B:44:0x0114, B:46:0x0120), top: B:57:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0114 A[Catch: JSONException -> 0x013e, TRY_ENTER, TryCatch #2 {JSONException -> 0x013e, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:31:0x00d1, B:32:0x00dd, B:32:0x00dd, B:33:0x00e0, B:37:0x00f3, B:42:0x0105, B:44:0x0114, B:46:0x0120), top: B:57:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setStandardProperties(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBMetricReport.setStandardProperties(java.lang.String):void");
    }

    public String getBidId() {
        BidWrapper bidWrapper = this.bidWrapper;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.bidId;
    }

    public String getHostname() {
        BidWrapper bidWrapper = this.bidWrapper;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.hostname;
    }

    public String getType() {
        return this.type;
    }

    public String toEncodedString() throws UnsupportedEncodingException {
        return URLEncoder.encode(this.propertiesMap.toString(), StringConstant.UTF8);
    }

    public String toString() {
        return this.propertiesMap.toString();
    }
}
