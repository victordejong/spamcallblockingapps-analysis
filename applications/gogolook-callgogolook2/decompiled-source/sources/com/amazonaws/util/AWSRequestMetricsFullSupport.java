package com.amazonaws.util;

import com.amazonaws.metrics.MetricType;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetricsFullSupport.class */
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {
    public static final Log latencyLogger = LogFactory.getLog("com.amazonaws.latency");
    public static final Object KEY_VALUE_SEPARATOR = "=";
    public static final Object COMMA_SEPARATOR = UserProfile.CARD_CATE_SEPARATOR;
    public final Map<String, List<Object>> properties = new HashMap();
    public final Map<String, TimingInfo> eventsBeingProfiled = new HashMap();

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.startTimingFullSupport());
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void addProperty(MetricType metricType, Object obj) {
        addProperty(metricType.name(), obj);
    }

    public void addProperty(String str, Object obj) {
        List<Object> list = this.properties.get(str);
        List<Object> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.properties.put(str, list2);
        }
        list2.add(obj);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void endEvent(MetricType metricType) {
        endEvent(metricType.name());
    }

    public void endEvent(String str) {
        TimingInfo timingInfo = this.eventsBeingProfiled.get(str);
        if (timingInfo == null) {
            Log log = LogFactory.getLog(AWSRequestMetricsFullSupport.class);
            log.warn("Trying to end an event which was never started: " + str);
            return;
        }
        timingInfo.endTiming();
        this.timingInfo.addSubMeasurement(str, TimingInfo.unmodifiableTimingInfo(timingInfo.getStartTimeNano(), Long.valueOf(timingInfo.getEndTimeNano())));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void incrementCounter(MetricType metricType) {
        incrementCounter(metricType.name());
    }

    public void incrementCounter(String str) {
        this.timingInfo.incrementCounter(str);
    }

    public final void keyValueFormat(Object obj, Object obj2, StringBuilder sb) {
        sb.append(obj);
        sb.append(KEY_VALUE_SEPARATOR);
        sb.append(obj2);
        sb.append(COMMA_SEPARATOR);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void log() {
        if (latencyLogger.isInfoEnabled()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, List<Object>> entry : this.properties.entrySet()) {
                keyValueFormat(entry.getKey(), entry.getValue(), sb);
            }
            for (Map.Entry<String, Number> entry2 : this.timingInfo.getAllCounters().entrySet()) {
                keyValueFormat(entry2.getKey(), entry2.getValue(), sb);
            }
            for (Map.Entry<String, List<TimingInfo>> entry3 : this.timingInfo.getSubMeasurementsByName().entrySet()) {
                keyValueFormat(entry3.getKey(), entry3.getValue(), sb);
            }
            latencyLogger.info(sb.toString());
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void setCounter(MetricType metricType, long j) {
        setCounter(metricType.name(), j);
    }

    public void setCounter(String str, long j) {
        this.timingInfo.setCounter(str, j);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void startEvent(MetricType metricType) {
        startEvent(metricType.name());
    }

    public void startEvent(String str) {
        this.eventsBeingProfiled.put(str, TimingInfo.startTimingFullSupport(System.nanoTime()));
    }
}
