package net.pubnative.lite.sdk.utils;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/ScreenDimensionsUtils.class */
public class ScreenDimensionsUtils {
    public Point getScreenDimensionsToPoint(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }
}
