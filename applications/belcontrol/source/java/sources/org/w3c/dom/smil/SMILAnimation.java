package org.w3c.dom.smil;
/* loaded from: classes3-dex2jar.jar:org/w3c/dom/smil/SMILAnimation.class */
public interface SMILAnimation extends SMILElement, ElementTargetAttributes, ElementTime, ElementTimeControl {
    public static final short ACCUMULATE_NONE = 0;
    public static final short ACCUMULATE_SUM = 1;
    public static final short ADDITIVE_REPLACE = 0;
    public static final short ADDITIVE_SUM = 1;
    public static final short CALCMODE_DISCRETE = 0;
    public static final short CALCMODE_LINEAR = 1;
    public static final short CALCMODE_PACED = 2;
    public static final short CALCMODE_SPLINE = 3;

    short getAccumulate();

    short getAdditive();

    String getBy();

    short getCalcMode();

    String getFrom();

    String getKeySplines();

    TimeList getKeyTimes();

    String getTo();

    String getValues();

    void setAccumulate(short s);

    void setAdditive(short s);

    void setBy(String str);

    void setCalcMode(short s);

    void setFrom(String str);

    void setKeySplines(String str);

    void setKeyTimes(TimeList timeList);

    void setTo(String str);

    void setValues(String str);
}
