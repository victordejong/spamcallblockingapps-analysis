package com.android.mms.layout;
/* loaded from: classes-dex2jar.jar:com/android/mms/layout/LayoutParameters.class */
public interface LayoutParameters {
    public static final int HVGA_LANDSCAPE = 10;
    public static final int HVGA_LANDSCAPE_HEIGHT = 320;
    public static final int HVGA_LANDSCAPE_WIDTH = 480;
    public static final int HVGA_PORTRAIT = 11;
    public static final int HVGA_PORTRAIT_HEIGHT = 480;
    public static final int HVGA_PORTRAIT_WIDTH = 320;
    public static final int UNKNOWN = -1;

    int getHeight();

    int getImageHeight();

    int getTextHeight();

    int getType();

    String getTypeDescription();

    int getWidth();
}
