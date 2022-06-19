package org.w3c.dom.smil;

import org.w3c.dom.events.Event;
import org.w3c.dom.views.AbstractView;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/TimeEvent.class */
public interface TimeEvent extends Event {
    int getDetail();

    AbstractView getView();

    void initTimeEvent(String str, AbstractView abstractView, int i);
}
