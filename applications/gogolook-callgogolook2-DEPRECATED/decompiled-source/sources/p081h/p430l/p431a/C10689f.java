package p081h.p430l.p431a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.ExtraHints;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: h.l.a.f */
/* loaded from: classes2-dex2jar.jar:h/l/a/f.class */
public class C10689f implements ExternalViewabilitySession {

    /* renamed from: e */
    public static Boolean f24332e;

    /* renamed from: f */
    public static boolean f24333f = false;

    /* renamed from: g */
    public static boolean f24334g = false;

    /* renamed from: h */
    public static final Map<String, String> f24335h = new HashMap();
    @Nullable

    /* renamed from: a */
    public Object f24336a;
    @Nullable

    /* renamed from: b */
    public Object f24337b;
    @NonNull

    /* renamed from: c */
    public Map<String, String> f24338c = new HashMap();

    /* renamed from: d */
    public boolean f24339d;

    /* renamed from: h.l.a.f$a */
    /* loaded from: classes2-dex2jar.jar:h/l/a/f$a.class */
    public static /* synthetic */ class C10690a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24340a = new int[ExternalViewabilitySession.VideoEvent.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_STOPPED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_SKIPPED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_COMPLETE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_LOADED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f24340a[ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    static {
        f24335h.put("moatClientLevel1", "level1");
        f24335h.put("moatClientLevel2", "level2");
        f24335h.put("moatClientLevel3", "level3");
        f24335h.put("moatClientLevel4", "level4");
        f24335h.put("moatClientSlicer1", "slicer1");
        f24335h.put("moatClientSlicer2", "slicer2");
    }

    /* renamed from: a */
    public static void m10940a() {
        f24333f = true;
    }

    /* renamed from: b */
    public static boolean m10937b() {
        return !f24333f && m10936c();
    }

    /* renamed from: c */
    public static boolean m10936c() {
        if (f24332e == null) {
            f24332e = Boolean.valueOf(Reflection.classFound("com.moat.analytics.mobile.mpub.MoatFactory"));
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder sb = new StringBuilder();
            sb.append("Moat is ");
            sb.append(f24332e.booleanValue() ? "" : "un");
            sb.append("available via reflection.");
            MoPubLog.log(sdkLogEvent, sb.toString());
        }
        return f24332e.booleanValue();
    }

    /* renamed from: a */
    public final void m10938a(@Nullable String str, @Nullable Set<String> set) {
        this.f24338c.clear();
        this.f24338c.put("partnerCode", "mopubinapphtmvideo468906546585");
        this.f24338c.put("zMoatVASTIDs", TextUtils.join(ExtraHints.KEYWORD_SEPARATOR, set));
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            List<String> pathSegments = parse.getPathSegments();
            if (pathSegments.size() > 0 && !TextUtils.isEmpty(pathSegments.get(0))) {
                this.f24338c.put("partnerCode", pathSegments.get(0));
            }
            String fragment = parse.getFragment();
            if (!TextUtils.isEmpty(fragment)) {
                for (String str2 : fragment.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
                    String[] split = str2.split("=");
                    if (split.length >= 2) {
                        String str3 = split[0];
                        String str4 = split[1];
                        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4) && f24335h.containsKey(str3)) {
                            this.f24338c.put(f24335h.get(str3), str4);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m10939a(@NonNull ExternalViewabilitySession.VideoEvent videoEvent, int i) throws Exception {
        if (videoEvent.getMoatEnumName() == null) {
            return false;
        }
        Class<?> cls = Class.forName("com.moat.analytics.mobile.mpub.MoatAdEventType");
        new Reflection.MethodBuilder(this.f24337b, "dispatchEvent").addParam("com.moat.analytics.mobile.mpub.MoatAdEvent", Reflection.instantiateClassWithConstructor("com.moat.analytics.mobile.mpub.MoatAdEvent", Object.class, new Class[]{cls, Integer.class}, new Object[]{Enum.valueOf(cls.asSubclass(Enum.class), videoEvent.getMoatEnumName()), Integer.valueOf(i)})).execute();
        return true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean createDisplaySession(@NonNull Context context, @NonNull WebView webView, boolean z) {
        Preconditions.checkNotNull(context);
        if (!m10937b()) {
            return null;
        }
        try {
            this.f24336a = new Reflection.MethodBuilder(new Reflection.MethodBuilder(null, "create").setStatic("com.moat.analytics.mobile.mpub.MoatFactory").execute(), "createWebAdTracker").addParam((Class<Class>) WebView.class, (Class) webView).execute();
            if (!z) {
                new Reflection.MethodBuilder(this.f24336a, "startTracking").execute();
            }
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Moat start display session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean createVideoSession(@NonNull Activity activity, @NonNull View view, @NonNull Set<String> set, @NonNull Map<String, String> map) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        if (!m10937b()) {
            return null;
        }
        m10938a(map.get("moat"), set);
        String str = this.f24338c.get("partnerCode");
        if (TextUtils.isEmpty(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "partnerCode was empty when starting Moat video session");
            return false;
        }
        try {
            this.f24337b = new Reflection.MethodBuilder(new Reflection.MethodBuilder(null, "create").setStatic("com.moat.analytics.mobile.mpub.MoatFactory").execute(), "createCustomTracker").addParam("com.moat.analytics.mobile.mpub.MoatPlugin", Reflection.instantiateClassWithConstructor("com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin", Object.class, new Class[]{String.class}, new Object[]{str})).execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Moat start video session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean endDisplaySession() {
        if (!m10937b()) {
            return null;
        }
        Object obj = this.f24336a;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Moat WebAdTracker unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "stopTracking").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Moat end session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean endVideoSession() {
        if (!m10937b()) {
            return null;
        }
        Object obj = this.f24337b;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Moat VideoAdTracker unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "stopTracking").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Moat end video session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @NonNull
    public String getName() {
        return VastExtensionXmlManager.MOAT;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean initialize(@NonNull Context context) {
        Application application;
        Preconditions.checkNotNull(context);
        if (!m10937b()) {
            return null;
        }
        if (f24334g) {
            return true;
        }
        if (context instanceof Activity) {
            application = ((Activity) context).getApplication();
        } else {
            try {
                application = (Application) context.getApplicationContext();
            } catch (ClassCastException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to initialize Moat, error obtaining application context.");
                return false;
            }
        }
        try {
            Object instantiateClassWithEmptyConstructor = Reflection.instantiateClassWithEmptyConstructor("com.moat.analytics.mobile.mpub.MoatOptions", Object.class);
            instantiateClassWithEmptyConstructor.getClass().getField("disableAdIdCollection").setBoolean(instantiateClassWithEmptyConstructor, true);
            instantiateClassWithEmptyConstructor.getClass().getField("disableLocationServices").setBoolean(instantiateClassWithEmptyConstructor, true);
            new Reflection.MethodBuilder(new Reflection.MethodBuilder(null, "getInstance").setStatic("com.moat.analytics.mobile.mpub.MoatAnalytics").execute(), "start").addParam("com.moat.analytics.mobile.mpub.MoatOptions", instantiateClassWithEmptyConstructor).addParam((Class<Class>) Application.class, (Class) application).execute();
            f24334g = true;
            return true;
        } catch (Exception e2) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to initialize Moat: " + e2.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean invalidate() {
        if (!m10937b()) {
            return null;
        }
        this.f24336a = null;
        this.f24337b = null;
        this.f24338c.clear();
        return true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean onVideoPrepared(@NonNull View view, int i) {
        Preconditions.checkNotNull(view);
        if (!m10937b()) {
            return null;
        }
        Object obj = this.f24337b;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Moat VideoAdTracker unexpectedly null.");
            return false;
        } else if (this.f24339d) {
            return false;
        } else {
            try {
                new Reflection.MethodBuilder(obj, "trackVideoAd").addParam((Class<Class>) Map.class, (Class) this.f24338c).addParam((Class<Class>) Integer.class, (Class) Integer.valueOf(i)).addParam((Class<Class>) View.class, (Class) view).execute();
                this.f24339d = true;
                return true;
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Unable to execute Moat onVideoPrepared: " + e.getMessage());
                return false;
            }
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean recordVideoEvent(@NonNull ExternalViewabilitySession.VideoEvent videoEvent, int i) {
        Preconditions.checkNotNull(videoEvent);
        if (!m10937b()) {
            return null;
        }
        if (this.f24337b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Moat VideoAdTracker unexpectedly null.");
            return false;
        }
        try {
            switch (C10690a.f24340a[videoEvent.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    m10939a(videoEvent, i);
                    return true;
                case 10:
                case 11:
                case 12:
                case 13:
                    return null;
                default:
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Unexpected video event: " + videoEvent.getMoatEnumName());
                    return false;
            }
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Video event " + videoEvent.getMoatEnumName() + " failed. " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean registerVideoObstruction(@NonNull View view) {
        Preconditions.checkNotNull(view);
        return !m10937b() ? null : true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean startDeferredDisplaySession(@NonNull Activity activity) {
        if (!m10937b()) {
            return null;
        }
        Object obj = this.f24336a;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoatWebAdTracker unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "startTracking").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to record deferred display session for Moat: " + e.getMessage());
            return false;
        }
    }
}
