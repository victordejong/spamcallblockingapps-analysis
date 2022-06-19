package com.facebook.appevents;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/FlushReason.class */
enum FlushReason {
    EXPLICIT,
    TIMER,
    SESSION_CHANGE,
    PERSISTED_EVENTS,
    EVENT_THRESHOLD,
    EAGER_FLUSHING_EVENT
}
