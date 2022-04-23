package com.amazon.device.ads;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport.class */
public class DTBMetricReport {
    private static final String e = "DTBMetricReport";

    /* renamed from: a  reason: collision with root package name */
    String f6440a;

    /* renamed from: b  reason: collision with root package name */
    private int f6441b;

    /* renamed from: c  reason: collision with root package name */
    private BidWrapper f6442c;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f6443d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricReport$BidWrapper.class */
    public static class BidWrapper {

        /* renamed from: a  reason: collision with root package name */
        String f6444a;

        /* renamed from: b  reason: collision with root package name */
        String f6445b;

        BidWrapper(String str, String str2) {
            this.f6444a = str;
            this.f6445b = str2;
        }
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper) {
        this.f6441b = -1;
        this.f6442c = bidWrapper;
        a(str);
    }

    private DTBMetricReport(String str, BidWrapper bidWrapper, int i) {
        this.f6441b = -1;
        this.f6442c = bidWrapper;
        this.f6441b = i;
        a(str);
    }

    private DTBMetricReport(String str, Map<String, Object> map) {
        this.f6441b = -1;
        a(str);
        a(map);
    }

    private DTBMetricReport(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        this(str, map);
        this.f6442c = bidWrapper;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BidWrapper a(String str, String str2) {
        return new BidWrapper(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBMetricReport a(BidWrapper bidWrapper, String str) {
        return new DTBMetricReport(str, bidWrapper);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBMetricReport a(BidWrapper bidWrapper, String str, int i) {
        return new DTBMetricReport(str, bidWrapper, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBMetricReport a(String str, Map<String, Object> map, BidWrapper bidWrapper) {
        return new DTBMetricReport(str, map, bidWrapper);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00db A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011f A[Catch: JSONException -> 0x0147, TRY_ENTER, TryCatch #3 {JSONException -> 0x0147, blocks: (B:3:0x0012, B:5:0x0048, B:7:0x0054, B:33:0x00db, B:34:0x00e7, B:34:0x00e7, B:35:0x00eb, B:39:0x00fe, B:44:0x0110, B:46:0x011f, B:48:0x012b), top: B:60:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBMetricReport.a(java.lang.String):void");
    }

    private void a(Map<String, Object> map) {
        try {
            for (String str : map.keySet()) {
                Object obj = map.get(str);
                if (obj instanceof String) {
                    this.f6443d.put(str, obj);
                } else if (obj instanceof Integer) {
                    this.f6443d.put(str, obj);
                } else if (obj instanceof Long) {
                    this.f6443d.put(str, obj);
                } else if (obj instanceof Boolean) {
                    this.f6443d.put(str, obj);
                }
            }
        } catch (JSONException e2) {
            String str2 = e;
            DtbLog.d(str2, "Invalid JSON conversion:" + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        BidWrapper bidWrapper = this.f6442c;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.f6444a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        BidWrapper bidWrapper = this.f6442c;
        if (bidWrapper == null) {
            return null;
        }
        return bidWrapper.f6445b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() throws UnsupportedEncodingException {
        return URLEncoder.encode(this.f6443d.toString(), "UTF-8");
    }

    public String toString() {
        return this.f6443d.toString();
    }
}
