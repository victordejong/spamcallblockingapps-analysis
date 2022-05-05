package com.firstorion.libcyd;

import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TelemetryEventRequest.class */
final class TelemetryEventRequest {
    private static final String EVENTS_JSON_FIELD = "events";
    private final List<TelemetryEvent> events;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TelemetryEventRequest(List<TelemetryEvent> list) {
        this.events = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final JSONObject encode() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        jSONObject.put("events", jSONArray);
        for (int i = 0; i < this.events.size(); i++) {
            jSONArray.put(i, this.events.get(i).encode());
        }
        return jSONObject;
    }
}
