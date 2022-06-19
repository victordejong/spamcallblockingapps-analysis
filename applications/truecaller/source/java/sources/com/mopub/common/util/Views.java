package com.mopub.common.util;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/Views.class */
public class Views {
    public static View getTopmostView(Context context, View view) {
        View view2;
        View findViewById = !(context instanceof Activity) ? null : ((Activity) context).getWindow().getDecorView().findViewById(16908290);
        if (view == null) {
            view2 = null;
        } else {
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (!view.isAttachedToWindow()) {
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
        if (findViewById != null) {
            view2 = findViewById;
        }
        return view2;
    }

    public static void removeFromParent(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
