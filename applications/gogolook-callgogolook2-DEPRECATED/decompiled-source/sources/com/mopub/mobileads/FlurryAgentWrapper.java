package com.mopub.mobileads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.flurry.android.FlurryAgent;
import com.flurry.android.FlurryAgentListener;
import p081h.p160h.p161a.p165k.C6219a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/FlurryAgentWrapper.class */
public final class FlurryAgentWrapper {
    public static final String PARAM_AD_SPACE_NAME = "adSpaceName";
    public static final String PARAM_API_KEY = "apiKey";

    /* renamed from: a */
    public FlurryAgent.Builder f8461a;

    /* renamed from: com.mopub.mobileads.FlurryAgentWrapper$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/FlurryAgentWrapper$b.class */
    public static class C3829b {

        /* renamed from: a */
        public static final FlurryAgentWrapper f8462a = new FlurryAgentWrapper();
    }

    public FlurryAgentWrapper() {
        FlurryAgent.Builder builder = new FlurryAgent.Builder();
        builder.withLogEnabled(false);
        builder.withLogLevel(C6219a.m23538e() ? 3 : 5);
        this.f8461a = builder;
        FlurryAgent.addOrigin("Flurry_Mopub_Android", "6.5.0");
    }

    public static FlurryAgentWrapper getInstance() {
        return C3829b.f8462a;
    }

    public void endSession(Context context) {
        synchronized (this) {
            if (context != null) {
                if (FlurryAgent.isSessionActive()) {
                    if (Build.VERSION.SDK_INT < 14) {
                        FlurryAgent.onEndSession(context);
                    }
                }
            }
        }
    }

    public boolean isSessionActive() {
        boolean isSessionActive;
        synchronized (this) {
            isSessionActive = FlurryAgent.isSessionActive();
        }
        return isSessionActive;
    }

    public void startSession(@NonNull Context context, String str, @Nullable FlurryAgentListener flurryAgentListener) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                if (!FlurryAgent.isSessionActive()) {
                    this.f8461a.withListener(flurryAgentListener).build(context, str);
                    if (Build.VERSION.SDK_INT >= 14) {
                        return;
                    }
                }
                FlurryAgent.onStartSession(context);
            }
        }
    }
}
