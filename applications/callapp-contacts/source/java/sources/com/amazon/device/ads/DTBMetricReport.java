package com.amazon.device.ads;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport.class */
public class DTBMetricReport {

    /* renamed from: e */
    private static final String f11817e = "DTBMetricReport";

    /* renamed from: a */
    String f11818a;

    /* renamed from: b */
    private int f11819b;

    /* renamed from: c */
    private BidWrapper f11820c;

    /* renamed from: d */
    private JSONObject f11821d;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport$BidWrapper.class */
    public static class BidWrapper {

        /* renamed from: a */
        String f11822a;

        /* renamed from: b */
        String f11823b;

        BidWrapper(String str, String str2) {
            this.f11822a = str;
            this.f11823b = str2;
        }
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper) {
        this.f11819b = -1;
        this.f11820c = bidWrapper;
        m38922a(str);
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper, int i) {
        this.f11819b = -1;
        this.f11820c = bidWrapper;
        this.f11819b = i;
        m38922a(str);
    }

    private DTBMetricReport(String str, Map<String, Object> map) {
        this.f11819b = -1;
        m38922a(str);
        m38919a(map);
    }

    private DTBMetricReport(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        this(str, map);
        this.f11820c = bidWrapper;
    }

    /* renamed from: a */
    public static BidWrapper m38921a(String str, String str2) {
        return new BidWrapper(str, str2);
    }

    /* renamed from: a */
    public static DTBMetricReport m38924a(BidWrapper bidWrapper, String str) {
        return new DTBMetricReport(str, bidWrapper);
    }

    /* renamed from: a */
    public static DTBMetricReport m38923a(BidWrapper bidWrapper, String str, int i) {
        return new DTBMetricReport(str, bidWrapper, i);
    }

    /* renamed from: a */
    public static DTBMetricReport m38920a(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        return new DTBMetricReport(str, map, bidWrapper);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00db A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m38922a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBMetricReport.m38922a(java.lang.String):void");
    }

    /* renamed from: a */
    private void m38919a(Map<String, Object> map) {
        try {
            for (String str : map.keySet()) {
                Object obj = map.get(str);
                if (obj instanceof String) {
                    this.f11821d.put(str, obj);
                } else if (obj instanceof Integer) {
                    this.f11821d.put(str, obj);
                } else if (obj instanceof Long) {
                    this.f11821d.put(str, obj);
                } else if (obj instanceof Boolean) {
                    this.f11821d.put(str, obj);
                }
            }
        } catch (JSONException e) {
            String str2 = f11817e;
            DtbLog.m38818d(str2, "Invalid JSON conversion:" + e.getMessage());
        }
    }

    /* renamed from: a */
    public final String m38925a() {
        BidWrapper bidWrapper = this.f11820c;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.f11822a;
    }

    /* renamed from: b */
    public final String m38918b() {
        BidWrapper bidWrapper = this.f11820c;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.f11823b;
    }

    /* renamed from: c */
    public final String m38917c() throws UnsupportedEncodingException {
        return URLEncoder.encode(this.f11821d.toString(), "UTF-8");
    }

    public String toString() {
        return this.f11821d.toString();
    }
}
