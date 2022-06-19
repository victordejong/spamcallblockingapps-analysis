package com.appnext.nativeads;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/PrivacyIcon.class */
public class PrivacyIcon extends ImageView {
    public static final int PP_ICON_COLOR_DARK = 1;
    public static final int PP_ICON_COLOR_LIGHT = 0;
    public static final int PP_ICON_HIDDEN = 1;
    public static final int PP_ICON_POSITION_BOTTOM_LEFT = 2;
    public static final int PP_ICON_POSITION_BOTTOM_RIGHT = 3;
    public static final int PP_ICON_POSITION_TOP_LEFT = 0;
    public static final int PP_ICON_POSITION_TOP_RIGHT = 1;
    public static final int PP_ICON_VISIBILE = 0;

    public PrivacyIcon(Context context) {
        super(context);
    }

    public PrivacyIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PrivacyIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public PrivacyIcon(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
