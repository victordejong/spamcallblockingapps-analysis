package org.w3c.dom.smil;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/ElementTime.class */
public interface ElementTime {
    public static final short FILL_AUTO = 2;
    public static final short FILL_FREEZE = 1;
    public static final short FILL_REMOVE = 0;
    public static final short RESTART_ALWAYS = 0;
    public static final short RESTART_NEVER = 1;
    public static final short RESTART_WHEN_NOT_ACTIVE = 2;

    boolean beginElement();

    boolean endElement();

    TimeList getBegin();

    float getDur();

    TimeList getEnd();

    short getFill();

    short getFillDefault();

    float getRepeatCount();

    float getRepeatDur();

    short getRestart();

    void pauseElement();

    void resumeElement();

    void seekElement(float f);

    void setBegin(TimeList timeList);

    void setDur(float f);

    void setEnd(TimeList timeList);

    void setFill(short s);

    void setFillDefault(short s);

    void setRepeatCount(float f);

    void setRepeatDur(float f);

    void setRestart(short s);
}
