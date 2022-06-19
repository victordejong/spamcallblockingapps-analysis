package com.amazon.device.ads;

import com.amazon.device.ads.DTBMetricReport;
import com.amazon.device.ads.DTBMetricsProcessor;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricsProcessor.class */
public class DTBMetricsProcessor {
    public static String ALERT_SDK_WRAPPING = "alert_sdk_wrapping";
    public static String ALERT_SDK_WRAPPING_V2 = "alert_sdk_wrapping_v2";
    public static String REPORT_LOAD_FAILURE = "fetch_failure";
    public static String REPORT_LOAD_LATENCY = "fetch_latency";
    public static String REPORT_LOST_BID = "lost_bid";
    public static String REPORT_MEDIATION_LATENCY = "mediation_latency";
    private static String SIMPLE_TAG = "DTB_Metrics";
    private static DTBMetricsProcessor theProcessor = new DTBMetricsProcessor();
    private final Object lock = new Object();
    private List<DTBMetricReport> reportQueue = new ArrayList();
    private boolean running;

    private DTBMetricsProcessor() {
    }

    private void addReport(DTBMetricReport dTBMetricReport) {
        synchronized (this.reportQueue) {
            this.reportQueue.add(dTBMetricReport);
        }
    }

    private static String cacheBusterQueryString() {
        return AdRegistration.isTestMode() ? "?cb=0" : String.format("?cb=%d", Integer.valueOf((int) (Math.random() * 1.0E7d)));
    }

    private void dispenseReport() {
        if (isMainThread()) {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: e.c.b.a.h0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.m42585a();
                }
            });
        } else {
            m42585a();
        }
    }

    /* renamed from: dispenseReportImpl */
    public void m42585a() {
        synchronized (this.lock) {
            if (this.running) {
                return;
            }
            this.running = true;
            while (this.reportQueue.size() > 0) {
                DTBMetricReport dTBMetricReport = this.reportQueue.get(0);
                if (!DTBMetricsConfiguration.getInstance().isTypeEnabled(dTBMetricReport.getType())) {
                    String str = SIMPLE_TAG;
                    StringBuilder m8728C = C22128a.m8728C("Report type:");
                    m8728C.append(dTBMetricReport.getType());
                    m8728C.append(" is ignored");
                    DtbLog.debug(str, m8728C.toString());
                    removeFromQueue();
                } else {
                    try {
                        String completeURLForPixelsBasedOnReportURL = getCompleteURLForPixelsBasedOnReportURL(dTBMetricReport);
                        String str2 = SIMPLE_TAG;
                        DtbLog.debug(str2, "Report URL:\n" + completeURLForPixelsBasedOnReportURL + "\nType:" + dTBMetricReport.getType());
                        String str3 = SIMPLE_TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Report:\n");
                        sb.append(dTBMetricReport);
                        DtbLog.debug(str3, sb.toString());
                        new DtbHttpClient(completeURLForPixelsBasedOnReportURL).executeGET();
                        removeFromQueue();
                        DtbLog.debug(SIMPLE_TAG, "Report Submission Success");
                    } catch (MalformedURLException e) {
                        StringBuilder m8728C2 = C22128a.m8728C("Malformed Exception:");
                        m8728C2.append(e.getMessage());
                        DtbLog.warn(m8728C2.toString());
                    } catch (IOException e2) {
                        StringBuilder m8728C3 = C22128a.m8728C("IOException:");
                        m8728C3.append(e2.getMessage());
                        DtbLog.warn(m8728C3.toString());
                        DtbLog.debug(SIMPLE_TAG, "Report Submission Failure");
                    } catch (JSONException e3) {
                        StringBuilder m8728C4 = C22128a.m8728C("JSON Exception:");
                        m8728C4.append(e3.getMessage());
                        DtbLog.warn(m8728C4.toString());
                        removeFromQueue();
                    }
                }
            }
            this.running = false;
        }
    }

    private String getCompleteURLForPixelsBasedOnReportURL(DTBMetricReport dTBMetricReport) throws UnsupportedEncodingException {
        String hostname = (dTBMetricReport.getHostname() == null || dTBMetricReport.getHostname().trim().length() == 0) ? DtbConstants.AAX_HOSTNAME : dTBMetricReport.getHostname();
        return (dTBMetricReport.getBidId() == null || dTBMetricReport.getBidId().trim().length() == 0) ? String.format("%s/x/px/p/PH/%s%s", hostname, dTBMetricReport.toEncodedString(), cacheBusterQueryString()) : String.format("%s/x/px/%s/%s%s", hostname, dTBMetricReport.getBidId(), dTBMetricReport.toEncodedString(), cacheBusterQueryString());
    }

    public static DTBMetricsProcessor getInstance() {
        return theProcessor;
    }

    private boolean isMainThread() {
        return DTBAdUtil.isMainThread();
    }

    private void removeFromQueue() {
        synchronized (this.reportQueue) {
            this.reportQueue.remove(0);
        }
    }

    /* renamed from: submitExpiredReportImpl */
    public void m42584b(List<DTBMetricReport.BidWrapper> list) {
        for (DTBMetricReport.BidWrapper bidWrapper : list) {
            addReport(DTBMetricReport.reportWithBidIdAndType(bidWrapper, REPORT_LOST_BID));
        }
        dispenseReport();
    }

    public void submitErrorReport(String str, Map<String, Object> map) {
        addReport(DTBMetricReport.reportWithTypeAndExtraProperties(str, map));
        dispenseReport();
    }

    public void submitErrorReport(String str, Map<String, Object> map, DTBMetricReport.BidWrapper bidWrapper) {
        addReport(DTBMetricReport.reportWithTypeAndExtraProperties(str, map, bidWrapper));
        dispenseReport();
    }

    public void submitExpiredReport(final List<DTBMetricReport.BidWrapper> list) {
        if (isMainThread()) {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: e.c.b.a.i0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBMetricsProcessor.this.m42584b(list);
                }
            });
        } else {
            m42584b(list);
        }
    }

    public void submitLatencyReportBidId(DTBMetricReport.BidWrapper bidWrapper, String str, int i) {
        addReport(DTBMetricReport.reportWithBidTypeLatency(bidWrapper, str, i));
        dispenseReport();
    }

    public void submitSimpleReportBidId(DTBMetricReport.BidWrapper bidWrapper, String str) {
        addReport(DTBMetricReport.reportWithBidIdAndType(bidWrapper, str));
        dispenseReport();
    }
}
