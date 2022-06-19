package com.facebook.internal.logging.monitor;

import android.os.SystemClock;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.logging.LogCategory;
import com.facebook.internal.logging.LogEvent;
import com.facebook.internal.logging.monitor.MonitorLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MetricsUtil.class */
public class MetricsUtil {
    private static final String CLASS_TAG = "com.facebook.internal.logging.monitor.MetricsUtil";
    protected static final int INVALID_TIME = -1;
    private static MetricsUtil metricsUtil;
    private final Map<MetricsKey, TempMetrics> metricsDataMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MetricsUtil$MetricsKey.class */
    public static class MetricsKey {
        private long extraId;
        private PerformanceEventName performanceEventName;

        MetricsKey(PerformanceEventName performanceEventName, long j) {
            this.performanceEventName = performanceEventName;
            this.extraId = j;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            MetricsKey metricsKey = (MetricsKey) obj;
            if (this.extraId != metricsKey.extraId || this.performanceEventName != metricsKey.performanceEventName) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int hashCode = this.performanceEventName.hashCode();
            long j = this.extraId;
            return ((527 + hashCode) * 31) + ((int) (j ^ (j >>> 32)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MetricsUtil$TempMetrics.class */
    public static class TempMetrics {
        private long timeStart;

        TempMetrics(long j) {
            this.timeStart = j;
        }
    }

    private MetricsUtil() {
    }

    public static MetricsUtil getInstance() {
        synchronized (MetricsUtil.class) {
            try {
                if (CrashShieldHandler.isObjectCrashing(MetricsUtil.class)) {
                    return null;
                }
                if (metricsUtil == null) {
                    metricsUtil = new MetricsUtil();
                }
                return metricsUtil;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeTempMetricsDataFor(PerformanceEventName performanceEventName, long j) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.metricsDataMap.remove(new MetricsKey(performanceEventName, j));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void startMeasureFor(PerformanceEventName performanceEventName, long j) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.metricsDataMap.put(new MetricsKey(performanceEventName, j), new TempMetrics(SystemClock.elapsedRealtime()));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public MonitorLog stopMeasureFor(PerformanceEventName performanceEventName, long j) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            MetricsKey metricsKey = new MetricsKey(performanceEventName, j);
            LogEvent logEvent = new LogEvent(performanceEventName.toString(), LogCategory.PERFORMANCE);
            MonitorLog build = new MonitorLog.LogBuilder(logEvent).timeSpent(-1).build();
            if (!this.metricsDataMap.containsKey(metricsKey)) {
                Utility.logd(CLASS_TAG, "Can't measure for " + performanceEventName + ", startMeasureFor hasn't been called before.");
                return build;
            }
            TempMetrics tempMetrics = this.metricsDataMap.get(metricsKey);
            MonitorLog monitorLog = build;
            if (tempMetrics != null) {
                monitorLog = new MonitorLog.LogBuilder(logEvent).timeSpent((int) (elapsedRealtime - tempMetrics.timeStart)).build();
            }
            this.metricsDataMap.remove(metricsKey);
            return monitorLog;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
