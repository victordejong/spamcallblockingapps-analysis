package com.amazon.device.ads;

import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace.class */
public class DTBTimeTrace {
    private static final String LOG_TAG = "DTBTimeTrace";
    private static final String SERVERLESS_METRICS_TAG = "ServerlessMetrics";
    public static final String TIMETRACE_AD_DISPLAY_FAILED = "AD display failed";
    public static final String TIMETRACE_AD_DISPLAY_SUCCEEDED = "AD displayed";
    public static final String TIMETRACE_AD_LOADED = "AD loaded";
    public static final String TIMETRACE_AD_LOAD_FAILED = "AD load failed";
    public static final String TIMETRACE_AD_REQUESTED = "Request Ad";
    public static final String TIMETRACE_BID_FAILED = "Bid failed";
    public static final String TIMETRACE_BID_START = "Bid requested";
    public static final String TIMETRACE_BID_SUCCEEDED = "Bid succeeded";
    public static final String TIMETRACE_CUSTOM_EVENT_ACCEPTED = "Custom event accepted";
    public static final String TIMETRACE_CUSTOM_EVENT_IGNORED = "Custom event ignored";
    private static DTBTimeTrace theTrace;
    private boolean isStarted = false;
    private ArrayList<DTBTimeTracePhase> records = new ArrayList<>();
    private Date startDate;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase.class */
    public static class DTBTimeTracePhase {
        private Date date = new Date();
        private String label;

        public DTBTimeTracePhase(String str) {
            this.label = str;
        }
    }

    public static DTBTimeTrace getInstance() {
        try {
            if (theTrace == null) {
                theTrace = new DTBTimeTrace();
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBTimeTrace class");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to initialize DTBTimeTrace class", e);
        }
        return theTrace;
    }

    public void addPhase(String str) {
        try {
            if (!this.isStarted) {
                return;
            }
            this.records.add(new DTBTimeTracePhase(str));
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute addPhase method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute addPhase method", e);
        }
    }

    public void logTrace() {
        try {
            if (!AdRegistration.isTestMode()) {
                return;
            }
            DtbLog.debug(SERVERLESS_METRICS_TAG, getInstance().toString());
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute logTrace method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute logTrace method", e);
        }
    }

    public void start() {
        try {
            if (!AdRegistration.isTestMode()) {
                return;
            }
            this.isStarted = true;
            this.startDate = new Date();
            this.records.clear();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute start method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute start method", e);
        }
    }

    public void stop() {
        try {
            this.isStarted = false;
            this.records.clear();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute stop method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute stop method", e);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        try {
            Date date = this.startDate;
            if (date != null) {
                Iterator<DTBTimeTracePhase> it = this.records.iterator();
                while (it.hasNext()) {
                    DTBTimeTracePhase next = it.next();
                    sb.append(next.label);
                    sb.append("-> ");
                    sb.append(next.date.getTime() - date.getTime());
                    sb.append(StringConstant.NEW_LINE);
                    date = next.date;
                }
                sb.append("Total Time:");
                sb.append(date.getTime() - this.startDate.getTime());
                sb.append(StringConstant.NEW_LINE);
            }
            start();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute toString method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute toString method", e);
        }
        return sb.toString();
    }
}
