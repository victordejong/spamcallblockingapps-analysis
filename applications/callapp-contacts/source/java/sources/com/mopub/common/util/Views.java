package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.C0926v;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Views.class */
public class Views {
    public static View getTopmostView(Context context, View view) {
        View view2;
        Window window;
        View decorView;
        View findViewById = (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : decorView.findViewById(16908290);
        if (view == null) {
            view2 = null;
        } else {
            if (!C0926v.m44154E(view)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempting to call View#getRootView() on an unattached View.");
            }
            view2 = view.getRootView();
            if (view2 == null) {
                view2 = null;
            } else {
                View findViewById2 = view2.findViewById(16908290);
                if (findViewById2 != null) {
                    view2 = findViewById2;
                }
            }
        }
        return findViewById != null ? findViewById : view2;
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
