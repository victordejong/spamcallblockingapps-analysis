package org.w3c.dom.smil;

import org.w3c.dom.Element;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/Time.class */
public interface Time {
    public static final short SMIL_TIME_EVENT_BASED = 3;
    public static final short SMIL_TIME_INDEFINITE = 0;
    public static final short SMIL_TIME_MEDIA_MARKER = 5;
    public static final short SMIL_TIME_OFFSET = 1;
    public static final short SMIL_TIME_SYNC_BASED = 2;
    public static final short SMIL_TIME_WALLCLOCK = 4;

    boolean getBaseBegin();

    Element getBaseElement();

    String getEvent();

    String getMarker();

    double getOffset();

    boolean getResolved();

    double getResolvedOffset();

    short getTimeType();

    void setBaseBegin(boolean z);

    void setBaseElement(Element element);

    void setEvent(String str);

    void setMarker(String str);

    void setOffset(double d);
}
