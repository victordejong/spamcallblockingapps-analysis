package com.amazon.device.ads;

import com.amazon.device.ads.DTBMetricReport;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricsProcessor.class */
public class DTBMetricsProcessor {

    /* renamed from: a  reason: collision with root package name */
    static String f6446a = "mediation_latency";

    /* renamed from: b  reason: collision with root package name */
    static String f6447b = "lost_bid";

    /* renamed from: c  reason: collision with root package name */
    static String f6448c = "fetch_latency";

    /* renamed from: d  reason: collision with root package name */
    static String f6449d = "fetch_failure";
    static String e = "alert_sdk_wrapping";
    static String f = "alert_sdk_wrapping_v2";
    private static DTBMetricsProcessor h = new DTBMetricsProcessor();
    private static String k = "DTB_Metrics";
    private boolean i;
    private final Object j = new Object();
    private List<DTBMetricReport> g = new ArrayList();

    private DTBMetricsProcessor() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBMetricsProcessor a() {
        return h;
    }

    private static String b(DTBMetricReport dTBMetricReport) throws UnsupportedEncodingException {
        String b2 = (dTBMetricReport.b() == null || dTBMetricReport.b().trim().length() == 0) ? DtbConstants.f6464b : dTBMetricReport.b();
        return (dTBMetricReport.a() == null || dTBMetricReport.a().trim().length() == 0) ? String.format("%s/x/px/p/PH/%s%s", b2, dTBMetricReport.c(), e()) : String.format("%s/x/px/%s/%s%s", b2, dTBMetricReport.a(), dTBMetricReport.c(), e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void f() {
        synchronized (this.j) {
            if (!this.i) {
                this.i = true;
                while (this.g.size() > 0) {
                    DTBMetricReport dTBMetricReport = this.g.get(0);
                    if (!DTBMetricsConfiguration.getInstance().isTypeEnabled(dTBMetricReport.f6440a)) {
                        String str = k;
                        DtbLog.c(str, "Report type:" + dTBMetricReport.f6440a + " is ignored");
                        d();
                    } else {
                        try {
                            String b2 = b(dTBMetricReport);
                            String str2 = k;
                            DtbLog.c(str2, "Report URL:\n" + b2 + "\nType:" + dTBMetricReport.f6440a);
                            DtbLog.c(k, "Report:\n".concat(String.valueOf(dTBMetricReport)));
                            new DtbHttpClient(b2).b();
                            d();
                            DtbLog.c(k, "Report Submission Success");
                        } catch (MalformedURLException e2) {
                            DtbLog.a("Malformed Exception:" + e2.getMessage());
                        } catch (IOException e3) {
                            DtbLog.a("IOException:" + e3.getMessage());
                            DtbLog.c(k, "Report Submission Failure");
                        } catch (JSONException e4) {
                            DtbLog.a("JSON Exception:" + e4.getMessage());
                            d();
                        }
                    }
                }
                this.i = false;
            }
        }
    }

    private void d() {
        synchronized (this.g) {
            this.g.remove(0);
        }
    }

    private static String e() {
        return AdRegistration.g() ? "?cb=0" : String.format("?cb=%d", Integer.valueOf((int) (Math.random() * 1.0E7d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(DTBMetricReport.BidWrapper bidWrapper, String str) {
        a(DTBMetricReport.a(bidWrapper, str));
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(DTBMetricReport dTBMetricReport) {
        synchronized (this.g) {
            this.g.add(dTBMetricReport);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (DTBAdUtil.a()) {
            DtbThreadService.a().a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBMetricsProcessor$x6QHGtIawWnzf15inJLT3hti7TE
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.f();
                }
            });
        } else {
            f();
        }
    }
}
