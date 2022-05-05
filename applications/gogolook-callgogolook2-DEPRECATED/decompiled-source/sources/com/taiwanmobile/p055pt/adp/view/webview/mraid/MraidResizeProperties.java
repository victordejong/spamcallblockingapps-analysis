package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidResizeProperties */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidResizeProperties.class */
public class MraidResizeProperties {
    public static final int CLOSE_BUTTON_POSITION_BOTTOM_CENTER = 5;
    public static final int CLOSE_BUTTON_POSITION_BOTTOM_LEFT = 4;
    public static final int CLOSE_BUTTON_POSITION_BOTTOM_RIGHT = 6;
    public static final int CLOSE_BUTTON_POSITION_CENTER = 3;
    public static final int CLOSE_BUTTON_POSITION_TOP_CENTER = 1;
    public static final int CLOSE_BUTTON_POSITION_TOP_LEFT = 0;
    public static final int CLOSE_BUTTON_POSITION_TOP_RIGHT = 2;

    /* renamed from: a */
    public static final List<String> f10138a = Arrays.asList("top-left", "top-center", "top-right", TtmlNode.CENTER, "bottom-left", "bottom-center", "bottom-right");
    public boolean allowOffscreen;
    public int customClosePosition;
    public int height;
    public int offsetX;
    public int offsetY;
    public int width;

    public MraidResizeProperties() {
        this(0, 0, 0, 0, 2, true);
    }

    public MraidResizeProperties(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.width = i;
        this.height = i2;
        this.offsetX = i3;
        this.offsetY = i4;
        this.customClosePosition = i5;
        this.allowOffscreen = z;
    }

    public static int customClosePositionFromString(String str) {
        int indexOf = f10138a.indexOf(str);
        if (indexOf != -1) {
            return indexOf;
        }
        return 2;
    }
}
