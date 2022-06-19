package com.facebook.appevents;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.internal.AttributionIdentifiers;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/AppEventCollection.class */
public class AppEventCollection {
    private final HashMap<AccessTokenAppIdPair, SessionEventsState> stateMap = new HashMap<>();

    private SessionEventsState getSessionEventsState(AccessTokenAppIdPair accessTokenAppIdPair) {
        SessionEventsState sessionEventsState;
        synchronized (this) {
            SessionEventsState sessionEventsState2 = this.stateMap.get(accessTokenAppIdPair);
            sessionEventsState = sessionEventsState2;
            if (sessionEventsState2 == null) {
                Context applicationContext = FacebookSdk.getApplicationContext();
                sessionEventsState = new SessionEventsState(AttributionIdentifiers.getAttributionIdentifiers(applicationContext), AppEventsLogger.getAnonymousAppDeviceGUID(applicationContext));
            }
            this.stateMap.put(accessTokenAppIdPair, sessionEventsState);
        }
        return sessionEventsState;
    }

    public void addEvent(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        synchronized (this) {
            getSessionEventsState(accessTokenAppIdPair).addEvent(appEvent);
        }
    }

    public void addPersistedEvents(PersistedEvents persistedEvents) {
        synchronized (this) {
            if (persistedEvents == null) {
                return;
            }
            for (AccessTokenAppIdPair accessTokenAppIdPair : persistedEvents.keySet()) {
                SessionEventsState sessionEventsState = getSessionEventsState(accessTokenAppIdPair);
                for (AppEvent appEvent : persistedEvents.get(accessTokenAppIdPair)) {
                    sessionEventsState.addEvent(appEvent);
                }
            }
        }
    }

    public SessionEventsState get(AccessTokenAppIdPair accessTokenAppIdPair) {
        SessionEventsState sessionEventsState;
        synchronized (this) {
            sessionEventsState = this.stateMap.get(accessTokenAppIdPair);
        }
        return sessionEventsState;
    }

    public int getEventCount() {
        int i;
        synchronized (this) {
            i = 0;
            for (SessionEventsState sessionEventsState : this.stateMap.values()) {
                i += sessionEventsState.getAccumulatedEventCount();
            }
        }
        return i;
    }

    public Set<AccessTokenAppIdPair> keySet() {
        Set<AccessTokenAppIdPair> keySet;
        synchronized (this) {
            keySet = this.stateMap.keySet();
        }
        return keySet;
    }
}
