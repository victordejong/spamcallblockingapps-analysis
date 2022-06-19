package io.bidmachine;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/TrackEventInfo.class */
public class TrackEventInfo {
    private HashMap<String, Object> eventParameters;
    long finishTimeMs;
    final long startTimeMs = System.currentTimeMillis();

    public Map<String, Object> getEventParameters() {
        return this.eventParameters;
    }

    public TrackEventInfo withParameter(String str, Object obj) {
        if (this.eventParameters == null) {
            this.eventParameters = new HashMap<>();
        }
        this.eventParameters.put(str, obj);
        return this;
    }
}
