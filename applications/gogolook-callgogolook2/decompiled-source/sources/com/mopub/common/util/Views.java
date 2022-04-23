package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Views.class */
public class Views {
    @Nullable
    /* renamed from: a */
    public static View m30648a(@Nullable Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        return ((Activity) context).getWindow().getDecorView().findViewById(16908290);
    }

    @Nullable
    /* renamed from: a */
    public static View m30647a(@Nullable View view) {
        if (view == null) {
            return null;
        }
        if (!ViewCompat.isAttachedToWindow(view)) {
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

    @Nullable
    public static View getTopmostView(@Nullable Context context, @Nullable View view) {
        View a = m30648a(context);
        a = m30647a(view);
        if (a == null) {
        }
        return a;
    }

    public static void removeFromParent(@Nullable View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }
}
