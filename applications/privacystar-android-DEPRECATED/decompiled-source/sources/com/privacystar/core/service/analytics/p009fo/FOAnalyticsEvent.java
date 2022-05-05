package com.privacystar.core.service.analytics.p009fo;

import timber.log.Timber;
/* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticsEvent */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticsEvent.class */
public class FOAnalyticsEvent {
    private long eventTs;
    protected int eventType;
    private String eventValue;

    FOAnalyticsEvent() {
    }

    public FOAnalyticsEvent(int i) {
        this.eventType = i;
        this.eventValue = "";
        this.eventTs = System.currentTimeMillis();
    }

    public FOAnalyticsEvent(int i, String str) {
        this.eventValue = str;
        this.eventType = i;
        this.eventTs = System.currentTimeMillis();
    }

    private void dispatchImpl() {
        if (eventNotInitialized()) {
            Timber.m25w("Could not dispatch event because it was incorrectly initialized.", new Object[0]);
        } else if (!FOAnalyticsSettings.isEnabled(this.eventType)) {
            Timber.m37d("Did not dispatch event %d because it is not enabled.", Integer.valueOf(this.eventType));
        } else {
            Timber.m28v("Dispatching analytics events of type: %d", Integer.valueOf(this.eventType));
            FOAnalyticsService.getInstance().dispatch(this.eventType);
        }
    }

    private boolean eventNotInitialized() {
        return this.eventValue == null;
    }

    private boolean shouldDispatchImmediately() {
        return true;
    }

    private void trackImpl() {
        if (eventNotInitialized()) {
            Timber.m25w("Could not track event because it was incorrectly initialized.", new Object[0]);
            return;
        }
        Timber.m28v("Tracking Analytics Event: %s", toString());
        FOAnalyticsService.getInstance().trackEvent(this);
    }

    public long getEventTs() {
        return this.eventTs;
    }

    public int getEventType() {
        return this.eventType;
    }

    public String getEventValue() {
        return this.eventValue;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FOAnalyticsEvent{");
        if (this.eventValue != null) {
            sb.append("eventValue='");
            sb.append(this.eventValue);
            sb.append("',");
        }
        if (this.eventType != 0) {
            sb.append("eventType='");
            sb.append(this.eventType);
            sb.append(',');
        }
        sb.append('}');
        return sb.toString();
    }

    public void track() {
        trackImpl();
        if (shouldDispatchImmediately()) {
            dispatchImpl();
        }
    }

    public void trackAndDispatch() {
        trackImpl();
        dispatchImpl();
    }
}
