package org.w3c.dom.events;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/events/EventTarget.class */
public interface EventTarget {
    void addEventListener(String str, EventListener eventListener, boolean z);

    boolean dispatchEvent(Event event);

    void removeEventListener(String str, EventListener eventListener, boolean z);
}
