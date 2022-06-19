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

    /* renamed from: a */
    static String f11824a = "mediation_latency";

    /* renamed from: b */
    static String f11825b = "lost_bid";

    /* renamed from: c */
    static String f11826c = "fetch_latency";

    /* renamed from: d */
    static String f11827d = "fetch_failure";

    /* renamed from: e */
    static String f11828e = "alert_sdk_wrapping";

    /* renamed from: f */
    static String f11829f = "alert_sdk_wrapping_v2";

    /* renamed from: h */
    private static DTBMetricsProcessor f11830h = new DTBMetricsProcessor();

    /* renamed from: k */
    private static String f11831k = "DTB_Metrics";

    /* renamed from: i */
    private boolean f11833i;

    /* renamed from: j */
    private final Object f11834j = new Object();

    /* renamed from: g */
    private List<DTBMetricReport> f11832g = new ArrayList();

    private DTBMetricsProcessor() {
    }

    /* renamed from: a */
    public static DTBMetricsProcessor m38916a() {
        return f11830h;
    }

    /* renamed from: b */
    private static String m38912b(DTBMetricReport dTBMetricReport) throws UnsupportedEncodingException {
        String m38918b = (dTBMetricReport.m38918b() == null || dTBMetricReport.m38918b().trim().length() == 0) ? DtbConstants.f11849b : dTBMetricReport.m38918b();
        return (dTBMetricReport.m38925a() == null || dTBMetricReport.m38925a().trim().length() == 0) ? String.format("%s/x/px/p/PH/%s%s", m38918b, dTBMetricReport.m38917c(), m38909e()) : String.format("%s/x/px/%s/%s%s", m38918b, dTBMetricReport.m38925a(), dTBMetricReport.m38917c(), m38909e());
    }

    /* renamed from: c */
    public void m38908f() {
        synchronized (this.f11834j) {
            if (this.f11833i) {
                return;
            }
            this.f11833i = true;
            while (this.f11832g.size() > 0) {
                DTBMetricReport dTBMetricReport = this.f11832g.get(0);
                if (!DTBMetricsConfiguration.getInstance().isTypeEnabled(dTBMetricReport.f11818a)) {
                    String str = f11831k;
                    DtbLog.m38820c(str, "Report type:" + dTBMetricReport.f11818a + " is ignored");
                    m38910d();
                } else {
                    try {
                        String m38912b = m38912b(dTBMetricReport);
                        String str2 = f11831k;
                        DtbLog.m38820c(str2, "Report URL:\n" + m38912b + "\nType:" + dTBMetricReport.f11818a);
                        DtbLog.m38820c(f11831k, "Report:\n".concat(String.valueOf(dTBMetricReport)));
                        new DtbHttpClient(m38912b).m38832b();
                        m38910d();
                        DtbLog.m38820c(f11831k, "Report Submission Success");
                    } catch (MalformedURLException e) {
                        DtbLog.m38828a("Malformed Exception:" + e.getMessage());
                    } catch (IOException e2) {
                        DtbLog.m38828a("IOException:" + e2.getMessage());
                        DtbLog.m38820c(f11831k, "Report Submission Failure");
                    } catch (JSONException e3) {
                        DtbLog.m38828a("JSON Exception:" + e3.getMessage());
                        m38910d();
                    }
                }
            }
            this.f11833i = false;
        }
    }

    /* renamed from: d */
    private void m38910d() {
        synchronized (this.f11832g) {
            this.f11832g.remove(0);
        }
    }

    /* renamed from: e */
    private static String m38909e() {
        return AdRegistration.m39068g() ? "?cb=0" : String.format("?cb=%d", Integer.valueOf((int) (Math.random() * 1.0E7d)));
    }

    /* renamed from: a */
    public final void m38915a(DTBMetricReport.BidWrapper bidWrapper, String str) {
        m38914a(DTBMetricReport.m38924a(bidWrapper, str));
        m38913b();
    }

    /* renamed from: a */
    public final void m38914a(DTBMetricReport dTBMetricReport) {
        synchronized (this.f11832g) {
            this.f11832g.add(dTBMetricReport);
        }
    }

    /* renamed from: b */
    public final void m38913b() {
        if (DTBAdUtil.m38962a()) {
            DtbThreadService.m38766a().m38763a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBMetricsProcessor$x6QHGtIawWnzf15inJLT3hti7TE
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.m38908f();
                }
            });
        } else {
            m38908f();
        }
    }
}
