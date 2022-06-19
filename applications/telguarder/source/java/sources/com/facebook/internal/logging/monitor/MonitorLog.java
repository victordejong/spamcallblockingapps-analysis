package com.facebook.internal.logging.monitor;

import com.facebook.internal.logging.ExternalLog;
import com.facebook.internal.logging.LogCategory;
import com.facebook.internal.logging.LogEvent;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MonitorLog.class */
public class MonitorLog implements ExternalLog {
    private static final int INVALID_TIME = -1;
    private static final long serialVersionUID = 1;
    private static Set<String> validPerformanceEventNames = new HashSet();
    private int hashCode;
    private LogEvent logEvent;
    private int timeSpent;
    private long timeStart;

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/MonitorLog$LogBuilder.class */
    public static class LogBuilder {
        private LogEvent logEvent;
        private int timeSpent;
        private long timeStart;

        public LogBuilder(LogEvent logEvent) {
            this.logEvent = logEvent;
            if (logEvent.getLogCategory() == LogCategory.PERFORMANCE) {
                logEvent.upperCaseEventName();
            }
        }

        private void validateMonitorLog(MonitorLog monitorLog) {
            if (this.timeSpent < 0) {
                monitorLog.timeSpent = -1;
            }
            if (this.timeStart < 0) {
                monitorLog.timeStart = -1L;
            }
            if (this.logEvent.getLogCategory() != LogCategory.PERFORMANCE || MonitorLog.validPerformanceEventNames.contains(this.logEvent.getEventName())) {
                return;
            }
            throw new IllegalArgumentException("Invalid event name: " + this.logEvent.getEventName() + "\nIt should be one of " + MonitorLog.validPerformanceEventNames + ".");
        }

        public MonitorLog build() {
            MonitorLog monitorLog = new MonitorLog(this);
            validateMonitorLog(monitorLog);
            return monitorLog;
        }

        public LogBuilder timeSpent(int i) {
            this.timeSpent = i;
            return this;
        }

        public LogBuilder timeStart(long j) {
            this.timeStart = j;
            return this;
        }
    }

    static {
        for (PerformanceEventName performanceEventName : PerformanceEventName.values()) {
            validPerformanceEventNames.add(performanceEventName.toString());
        }
    }

    public MonitorLog(LogBuilder logBuilder) {
        this.logEvent = logBuilder.logEvent;
        this.timeStart = logBuilder.timeStart;
        this.timeSpent = logBuilder.timeSpent;
    }

    @Override // com.facebook.internal.logging.ExternalLog
    public JSONObject convertToJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MonitorLogServerProtocol.PARAM_EVENT_NAME, this.logEvent.getEventName());
            jSONObject.put(MonitorLogServerProtocol.PARAM_CATEGORY, this.logEvent.getLogCategory());
            long j = this.timeStart;
            if (j != 0) {
                jSONObject.put(MonitorLogServerProtocol.PARAM_TIME_START, j);
            }
            int i = this.timeSpent;
            if (i != 0) {
                jSONObject.put(MonitorLogServerProtocol.PARAM_TIME_SPENT, i);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MonitorLog monitorLog = (MonitorLog) obj;
        if (!this.logEvent.getEventName().equals(monitorLog.logEvent.getEventName()) || !this.logEvent.getLogCategory().equals(monitorLog.logEvent.getLogCategory()) || this.timeStart != monitorLog.timeStart || this.timeSpent != monitorLog.timeSpent) {
            z = false;
        }
        return z;
    }

    @Override // com.facebook.internal.logging.ExternalLog
    public String getEventName() {
        return this.logEvent.getEventName();
    }

    @Override // com.facebook.internal.logging.ExternalLog
    public LogCategory getLogCategory() {
        return this.logEvent.getLogCategory();
    }

    public int getTimeSpent() {
        return this.timeSpent;
    }

    public long getTimeStart() {
        return this.timeStart;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            int hashCode = this.logEvent.hashCode();
            long j = this.timeStart;
            int i = (int) (j ^ (j >>> 32));
            int i2 = this.timeSpent;
            this.hashCode = ((((527 + hashCode) * 31) + i) * 31) + (i2 ^ (i2 >>> 32));
        }
        return this.hashCode;
    }

    public boolean isValid() {
        return this.timeStart >= 0 && this.timeSpent >= 0;
    }

    public String toString() {
        return String.format(MonitorLogServerProtocol.PARAM_EVENT_NAME + ": %s, " + MonitorLogServerProtocol.PARAM_CATEGORY + ": %s, " + MonitorLogServerProtocol.PARAM_TIME_START + ": %s, " + MonitorLogServerProtocol.PARAM_TIME_SPENT + ": %s", this.logEvent.getEventName(), this.logEvent.getLogCategory(), Long.valueOf(this.timeStart), Integer.valueOf(this.timeSpent));
    }
}
