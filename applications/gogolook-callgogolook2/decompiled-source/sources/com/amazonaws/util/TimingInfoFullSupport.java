package com.amazonaws.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfoFullSupport.class */
public class TimingInfoFullSupport extends TimingInfo {
    public final Map<String, List<TimingInfo>> subMeasurementsByName = new HashMap();
    public final Map<String, Number> countersByName = new HashMap();

    public TimingInfoFullSupport(Long l, long j, Long l2) {
        super(l, j, l2);
    }

    @Override // com.amazonaws.util.TimingInfo
    public void addSubMeasurement(String str, TimingInfo timingInfo) {
        List<TimingInfo> list = this.subMeasurementsByName.get(str);
        List<TimingInfo> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.subMeasurementsByName.put(str, list2);
        }
        if (timingInfo.isEndTimeKnown()) {
            list2.add(timingInfo);
            return;
        }
        Log log = LogFactory.getLog(TimingInfoFullSupport.class);
        log.debug("Skip submeasurement timing info with no end time for " + str);
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map<String, Number> getAllCounters() {
        return this.countersByName;
    }

    public Number getCounter(String str) {
        return this.countersByName.get(str);
    }

    @Override // com.amazonaws.util.TimingInfo
    public Map<String, List<TimingInfo>> getSubMeasurementsByName() {
        return this.subMeasurementsByName;
    }

    @Override // com.amazonaws.util.TimingInfo
    public void incrementCounter(String str) {
        Number counter = getCounter(str);
        setCounter(str, (counter != null ? counter.intValue() : 0) + 1);
    }

    @Override // com.amazonaws.util.TimingInfo
    public void setCounter(String str, long j) {
        this.countersByName.put(str, Long.valueOf(j));
    }
}
