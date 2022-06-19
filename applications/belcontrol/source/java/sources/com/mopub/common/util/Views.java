package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Views.class */
public class Views {
    /* renamed from: a */
    public static View m3779a(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        return ((Activity) context).getWindow().getDecorView().findViewById(16908290);
    }

    /* renamed from: b */
    public static View m3778b(View view) {
        if (view == null) {
            return null;
        }
        if (!jb.R(view)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempting to call View#getRootView() on an unattached View.");
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        if (findViewById != null) {
            rootView = findViewById;
        }
        return rootView;
    }

    public static View getTopmostView(Context context, View view) {
        View m3779a = m3779a(context);
        View m3778b = m3778b(view);
        if (m3779a == null) {
            m3779a = m3778b;
        }
        return m3779a;
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
