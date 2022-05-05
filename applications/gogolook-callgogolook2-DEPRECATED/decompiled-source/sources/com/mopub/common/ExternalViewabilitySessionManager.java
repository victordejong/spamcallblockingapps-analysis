package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.VastVideoConfigTwo;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import p081h.p430l.p431a.C10681b;
import p081h.p430l.p431a.C10689f;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager.class */
public class ExternalViewabilitySessionManager {
    @NonNull

    /* renamed from: a */
    public final Set<ExternalViewabilitySession> f8088a = new HashSet();

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor.class */
    public enum ViewabilityVendor {
        AVID,
        MOAT,
        ALL;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Nullable
        public static ViewabilityVendor fromKey(@NonNull String str) {
            char c;
            Preconditions.checkNotNull(str);
            switch (str.hashCode()) {
                case 49:
                    if (str.equals("1")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 50:
                    if (str.equals("2")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 51:
                    if (str.equals("3")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                return AVID;
            }
            if (c == 1) {
                return MOAT;
            }
            if (c != 2) {
                return null;
            }
            return ALL;
        }

        @NonNull
        public static String getEnabledVendorKey() {
            boolean d = C10681b.m10947d();
            boolean b = C10689f.m10937b();
            return (!d || !b) ? d ? "1" : b ? "2" : "0" : "3";
        }

        public void disable() {
            int i = C3760a.f8090a[ordinal()];
            if (i == 1) {
                C10681b.m10952a();
            } else if (i == 2) {
                C10689f.m10940a();
            } else if (i != 3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Attempted to disable an invalid viewability vendor: " + this);
                return;
            } else {
                C10681b.m10952a();
                C10689f.m10940a();
            }
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Disabled viewability for " + this);
        }
    }

    /* renamed from: com.mopub.common.ExternalViewabilitySessionManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$a.class */
    public static /* synthetic */ class C3760a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8090a = new int[ViewabilityVendor.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f8090a[ViewabilityVendor.AVID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8090a[ViewabilityVendor.MOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8090a[ViewabilityVendor.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public ExternalViewabilitySessionManager(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        this.f8088a.add(new C10681b());
        this.f8088a.add(new C10689f());
        m30804a(context);
    }

    /* renamed from: a */
    public final void m30804a(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "initialize", externalViewabilitySession.initialize(context), false);
        }
    }

    /* renamed from: a */
    public final void m30803a(@NonNull ExternalViewabilitySession externalViewabilitySession, @NonNull String str, @Nullable Boolean bool, boolean z) {
        Preconditions.checkNotNull(externalViewabilitySession);
        Preconditions.checkNotNull(str);
        if (bool != null) {
            String format = String.format(Locale.US, "%s viewability event: %s%s.", externalViewabilitySession.getName(), bool.booleanValue() ? "" : "failed to ", str);
            if (z) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, format);
            }
        }
    }

    public void createDisplaySession(@NonNull Context context, @NonNull WebView webView) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(webView);
        createDisplaySession(context, webView, false);
    }

    public void createDisplaySession(@NonNull Context context, @NonNull WebView webView, boolean z) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(webView);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "start display session", externalViewabilitySession.createDisplaySession(context, webView, z), true);
        }
    }

    public void createVideoSession(@NonNull Activity activity, @NonNull View view, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(vastVideoConfig);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            HashSet hashSet = new HashSet();
            if (externalViewabilitySession instanceof C10681b) {
                hashSet.addAll(vastVideoConfig.getAvidJavascriptResources());
            } else if (externalViewabilitySession instanceof C10689f) {
                hashSet.addAll(vastVideoConfig.getMoatImpressionPixels());
            }
            m30803a(externalViewabilitySession, "start video session", externalViewabilitySession.createVideoSession(activity, view, hashSet, vastVideoConfig.getExternalViewabilityTrackers()), true);
        }
    }

    public void createVideoSession(@NonNull Activity activity, @NonNull View view, @NonNull VastVideoConfigTwo vastVideoConfigTwo) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(vastVideoConfigTwo);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            HashSet hashSet = new HashSet();
            if (externalViewabilitySession instanceof C10681b) {
                hashSet.addAll(vastVideoConfigTwo.getAvidJavascriptResources());
            } else if (externalViewabilitySession instanceof C10689f) {
                hashSet.addAll(vastVideoConfigTwo.getMoatImpressionPixels());
            }
            m30803a(externalViewabilitySession, "start video session", externalViewabilitySession.createVideoSession(activity, view, hashSet, vastVideoConfigTwo.getExternalViewabilityTrackers()), true);
        }
    }

    public void endDisplaySession() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "end display session", externalViewabilitySession.endDisplaySession(), true);
        }
    }

    public void endVideoSession() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "end video session", externalViewabilitySession.endVideoSession(), true);
        }
    }

    public void invalidate() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "invalidate", externalViewabilitySession.invalidate(), false);
        }
    }

    public void onVideoPrepared(@NonNull View view, int i) {
        Preconditions.checkNotNull(view);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "on video prepared", externalViewabilitySession.onVideoPrepared(view, i), true);
        }
    }

    public void recordVideoEvent(@NonNull ExternalViewabilitySession.VideoEvent videoEvent, int i) {
        Preconditions.checkNotNull(videoEvent);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            Boolean recordVideoEvent = externalViewabilitySession.recordVideoEvent(videoEvent, i);
            m30803a(externalViewabilitySession, "record video event (" + videoEvent.name() + ")", recordVideoEvent, true);
        }
    }

    public void registerVideoObstruction(@NonNull View view) {
        Preconditions.checkNotNull(view);
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "register friendly obstruction", externalViewabilitySession.registerVideoObstruction(view), true);
        }
    }

    public void startDeferredDisplaySession(@NonNull Activity activity) {
        for (ExternalViewabilitySession externalViewabilitySession : this.f8088a) {
            m30803a(externalViewabilitySession, "record deferred session", externalViewabilitySession.startDeferredDisplaySession(activity), true);
        }
    }
}
