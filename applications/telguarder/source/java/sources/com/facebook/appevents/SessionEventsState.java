package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/SessionEventsState.class */
class SessionEventsState {
    private static final String TAG = "SessionEventsState";
    private String anonymousAppDeviceGUID;
    private AttributionIdentifiers attributionIdentifiers;
    private int numSkippedEventsDueToFullBuffer;
    private List<AppEvent> accumulatedEvents = new ArrayList();
    private List<AppEvent> inFlightEvents = new ArrayList();
    private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;

    public SessionEventsState(AttributionIdentifiers attributionIdentifiers, String str) {
        this.attributionIdentifiers = attributionIdentifiers;
        this.anonymousAppDeviceGUID = str;
    }

    private void populateRequest(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                JSONObject jSONObjectForGraphAPICall = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.attributionIdentifiers, this.anonymousAppDeviceGUID, z, context);
                jSONObject = jSONObjectForGraphAPICall;
                if (this.numSkippedEventsDueToFullBuffer > 0) {
                    jSONObjectForGraphAPICall.put("num_skipped_events", i);
                    jSONObject = jSONObjectForGraphAPICall;
                }
            } catch (JSONException e) {
                jSONObject = new JSONObject();
            }
            graphRequest.setGraphObject(jSONObject);
            Bundle parameters = graphRequest.getParameters();
            Bundle bundle = parameters;
            if (parameters == null) {
                bundle = new Bundle();
            }
            String jSONArray2 = jSONArray.toString();
            if (jSONArray2 != null) {
                bundle.putString("custom_events", jSONArray2);
                graphRequest.setTag(jSONArray2);
            }
            graphRequest.setParameters(bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void accumulatePersistedEvents(List<AppEvent> list) {
        synchronized (this) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            this.accumulatedEvents.addAll(list);
        }
    }

    public void addEvent(AppEvent appEvent) {
        synchronized (this) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= getMAX_ACCUMULATED_LOG_EVENTS()) {
                this.numSkippedEventsDueToFullBuffer++;
            } else {
                this.accumulatedEvents.add(appEvent);
            }
        }
    }

    public void clearInFlightAndStats(boolean z) {
        synchronized (this) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            if (z) {
                this.accumulatedEvents.addAll(this.inFlightEvents);
            }
            this.inFlightEvents.clear();
            this.numSkippedEventsDueToFullBuffer = 0;
        }
    }

    public int getAccumulatedEventCount() {
        synchronized (this) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return 0;
            }
            return this.accumulatedEvents.size();
        }
    }

    public List<AppEvent> getEventsToPersist() {
        synchronized (this) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            List<AppEvent> list = this.accumulatedEvents;
            this.accumulatedEvents = new ArrayList();
            return list;
        }
    }

    protected int getMAX_ACCUMULATED_LOG_EVENTS() {
        return CrashShieldHandler.isObjectCrashing(this) ? 0 : 1000;
    }

    public int populateRequest(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            synchronized (this) {
                int i = this.numSkippedEventsDueToFullBuffer;
                EventDeactivationManager.processEvents(this.accumulatedEvents);
                this.inFlightEvents.addAll(this.accumulatedEvents);
                this.accumulatedEvents.clear();
                JSONArray jSONArray = new JSONArray();
                for (AppEvent appEvent : this.inFlightEvents) {
                    if (!appEvent.isChecksumValid()) {
                        String str = TAG;
                        Utility.logd(str, "Event with invalid checksum: " + appEvent.toString());
                    } else if (z || !appEvent.getIsImplicit()) {
                        jSONArray.put(appEvent.getJSONObject());
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                populateRequest(graphRequest, context, i, jSONArray, z2);
                return jSONArray.length();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }
}
