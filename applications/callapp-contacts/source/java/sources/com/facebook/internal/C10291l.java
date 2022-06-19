package com.facebook.internal;

import com.facebook.C10181g;
import com.facebook.internal.C10298o;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import okhttp3.internal.http2.Http2Connection;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018��2\u00020\u0001:\u0002\u0016\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b0\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lcom/facebook/internal/FeatureManager;", "", "()V", "FEATURE_MANAGER_STORE", "", "featureMapping", "", "Lcom/facebook/internal/FeatureManager$Feature;", "", "checkFeature", "", "feature", "callback", "Lcom/facebook/internal/FeatureManager$Callback;", "defaultStatus", "", "disableFeature", "getFeature", "className", "getGKStatus", "initializeFeatureMapping", "isEnabled", "Callback", "Feature", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.l */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/l.class */
public final class C10291l {

    /* renamed from: a */
    public static final C10291l f33826a = new C10291l();

    /* renamed from: b */
    private static final Map<EnumC10293b, String[]> f33827b = new HashMap();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/FeatureManager$Callback;", "", "onCompleted", "", "enabled", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.l$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$a.class */
    public interface AbstractC10292a {
        /* renamed from: a */
        void mo23045a(boolean z);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0086\u0001\u0018�� %2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001%B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020��8F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$¨\u0006&"}, m4298d2 = {"Lcom/facebook/internal/FeatureManager$Feature;", "", "code", "", "(Ljava/lang/String;II)V", "parent", "getParent", "()Lcom/facebook/internal/FeatureManager$Feature;", "toKey", "", "toString", "Unknown", "Core", "AppEvents", "CodelessEvents", "RestrictiveDataFiltering", "AAM", "PrivacyProtection", "SuggestedEvents", "IntelligentIntegrity", "ModelRequest", "EventDeactivation", "OnDeviceEventProcessing", "OnDevicePostInstallEventProcessing", "IapLogging", "IapLoggingLib2", "Instrument", "CrashReport", "CrashShield", "ThreadCheck", "ErrorReport", "Monitoring", "Login", "ChromeCustomTabsPrefetching", "IgnoreAppSwitchToLoggedOut", "Share", "Places", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.l$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$b.class */
    public enum EnumC10293b {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        IntelligentIntegrity(66562),
        ModelRequest(66563),
        EventDeactivation(66816),
        OnDeviceEventProcessing(67072),
        OnDevicePostInstallEventProcessing(67073),
        IapLogging(67328),
        IapLoggingLib2(67329),
        Instrument(131072),
        CrashReport(131328),
        CrashShield(131329),
        ThreadCheck(131330),
        ErrorReport(131584),
        Monitoring(196608),
        Login(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE),
        ChromeCustomTabsPrefetching(16842752),
        IgnoreAppSwitchToLoggedOut(16908288),
        Share(33554432),
        Places(50331648);
        
        public static final C10294a Companion = new C10294a(null);
        private final int code;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/FeatureManager$Feature$Companion;", "", "()V", "fromInt", "Lcom/facebook/internal/FeatureManager$Feature;", "code", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.l$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$b$a.class */
        public static final class C10294a {
            private C10294a() {
            }

            public /* synthetic */ C10294a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: a */
            public static EnumC10293b m23044a(int i) {
                EnumC10293b[] values;
                for (EnumC10293b enumC10293b : EnumC10293b.values()) {
                    if (enumC10293b.code == i) {
                        return enumC10293b;
                    }
                }
                return EnumC10293b.Unknown;
            }
        }

        EnumC10293b(int i) {
            this.code = i;
        }

        public final EnumC10293b getParent() {
            int i = this.code;
            return (i & 255) > 0 ? C10294a.m23044a(i & (-256)) : (65280 & i) > 0 ? C10294a.m23044a(i & (-65536)) : (16711680 & i) > 0 ? C10294a.m23044a(i & (-16777216)) : C10294a.m23044a(0);
        }

        public final String toKey() {
            return "FBSDKFeature".concat(String.valueOf(this));
        }

        @Override // java.lang.Enum
        public final String toString() {
            switch (C10296m.f33830a[ordinal()]) {
                case 1:
                    return "CoreKit";
                case 2:
                    return "AppEvents";
                case 3:
                    return "CodelessEvents";
                case 4:
                    return "RestrictiveDataFiltering";
                case 5:
                    return "Instrument";
                case 6:
                    return "CrashReport";
                case 7:
                    return "CrashShield";
                case 8:
                    return "ThreadCheck";
                case 9:
                    return "ErrorReport";
                case 10:
                    return "AAM";
                case 11:
                    return "PrivacyProtection";
                case 12:
                    return "SuggestedEvents";
                case 13:
                    return "IntelligentIntegrity";
                case 14:
                    return "ModelRequest";
                case 15:
                    return "EventDeactivation";
                case 16:
                    return "OnDeviceEventProcessing";
                case 17:
                    return "OnDevicePostInstallEventProcessing";
                case 18:
                    return "IAPLogging";
                case 19:
                    return "IAPLoggingLib2";
                case 20:
                    return "Monitoring";
                case 21:
                    return "LoginKit";
                case 22:
                    return "ChromeCustomTabsPrefetching";
                case 23:
                    return "IgnoreAppSwitchToLoggedOut";
                case 24:
                    return "ShareKit";
                case 25:
                    return "PlacesKit";
                default:
                    return "unknown";
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/facebook/internal/FeatureManager$checkFeature$1", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "onCompleted", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.l$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$c.class */
    public static final class C10295c implements C10298o.AbstractC10299a {

        /* renamed from: a */
        final /* synthetic */ AbstractC10292a f33828a;

        /* renamed from: b */
        final /* synthetic */ EnumC10293b f33829b;

        C10295c(AbstractC10292a abstractC10292a, EnumC10293b enumC10293b) {
            this.f33828a = abstractC10292a;
            this.f33829b = enumC10293b;
        }

        @Override // com.facebook.internal.C10298o.AbstractC10299a
        /* renamed from: a */
        public final void mo23033a() {
            this.f33828a.mo23045a(C10291l.m23051a(this.f33829b));
        }
    }

    private C10291l() {
    }

    /* renamed from: a */
    public static final EnumC10293b m23049a(String className) {
        C18524p.m3840d(className, "className");
        f33826a.m23052a();
        for (Map.Entry<EnumC10293b, String[]> entry : f33827b.entrySet()) {
            EnumC10293b key = entry.getKey();
            for (String str : entry.getValue()) {
                if (C18425p.m3957a(className, str, false)) {
                    return key;
                }
            }
        }
        return EnumC10293b.Unknown;
    }

    /* renamed from: a */
    private final void m23052a() {
        synchronized (this) {
            Map<EnumC10293b, String[]> map = f33827b;
            if (!map.isEmpty()) {
                return;
            }
            map.put(EnumC10293b.AAM, new String[]{"com.facebook.appevents.aam."});
            map.put(EnumC10293b.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
            map.put(EnumC10293b.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
            map.put(EnumC10293b.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
            map.put(EnumC10293b.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
            map.put(EnumC10293b.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
            map.put(EnumC10293b.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
            map.put(EnumC10293b.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
            map.put(EnumC10293b.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
            map.put(EnumC10293b.IapLogging, new String[]{"com.facebook.appevents.iap."});
            map.put(EnumC10293b.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
        }
    }

    /* renamed from: a */
    public static final void m23050a(EnumC10293b feature, AbstractC10292a callback) {
        C18524p.m3840d(feature, "feature");
        C18524p.m3840d(callback, "callback");
        C10298o.m23042a(new C10295c(callback, feature));
    }

    /* renamed from: a */
    public static final boolean m23051a(EnumC10293b feature) {
        C18524p.m3840d(feature, "feature");
        if (EnumC10293b.Unknown == feature) {
            return false;
        }
        if (EnumC10293b.Core == feature) {
            return true;
        }
        String string = C10181g.m23290i().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString(feature.toKey(), null);
        if (string != null && C18524p.m3850a((Object) string, (Object) C10181g.m23288k())) {
            return false;
        }
        EnumC10293b parent = feature.getParent();
        return parent == feature ? m23047c(feature) : m23051a(parent) && m23047c(feature);
    }

    /* renamed from: b */
    public static final void m23048b(EnumC10293b feature) {
        C18524p.m3840d(feature, "feature");
        C10181g.m23290i().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit().putString(feature.toKey(), C10181g.m23288k()).apply();
    }

    /* renamed from: c */
    private static boolean m23047c(EnumC10293b enumC10293b) {
        return C10298o.m23039a(enumC10293b.toKey(), C10181g.m23286m(), m23046d(enumC10293b));
    }

    /* renamed from: d */
    private static boolean m23046d(EnumC10293b enumC10293b) {
        switch (C10297n.f33831a[enumC10293b.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                return false;
            default:
                return true;
        }
    }
}
