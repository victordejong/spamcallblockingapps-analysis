package com.android.mms.dom.events;

import org.w3c.dom.events.EventListener;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/events/EventTargetImpl$EventListenerEntry.class */
public class EventTargetImpl$EventListenerEntry {
    public final EventListener mListener;
    public final String mType;
    public final boolean mUseCapture;

    public EventTargetImpl$EventListenerEntry(String str, EventListener eventListener, boolean z) {
        this.mType = str;
        this.mListener = eventListener;
        this.mUseCapture = z;
    }
}
