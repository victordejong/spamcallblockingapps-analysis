package com.aotter.net.trek.common.util;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Views.class */
public class Views {
    public static void removeFromParent(View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }
}
