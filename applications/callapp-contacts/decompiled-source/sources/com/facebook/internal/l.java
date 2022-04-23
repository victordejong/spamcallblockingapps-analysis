package com.facebook.internal;

import com.facebook.g;
import com.facebook.internal.o;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import okhttp3.internal.http2.Http2Connection;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018��2\u00020\u0001:\u0002\u0016\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b0\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/FeatureManager;", "", "()V", "FEATURE_MANAGER_STORE", "", "featureMapping", "", "Lcom/facebook/internal/FeatureManager$Feature;", "", "checkFeature", "", "feature", "callback", "Lcom/facebook/internal/FeatureManager$Callback;", "defaultStatus", "", "disableFeature", "getFeature", "className", "getGKStatus", "initializeFeatureMapping", "isEnabled", "Callback", "Feature", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f19944a = new l();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<b, String[]> f19945b = new HashMap();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FeatureManager$Callback;", "", "onCompleted", "", "enabled", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$a.class */
    public interface a {
        void a(boolean z);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0086\u0001\u0018�� %2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001%B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020��8F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$¨\u0006&"}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature;", "", "code", "", "(Ljava/lang/String;II)V", "parent", "getParent", "()Lcom/facebook/internal/FeatureManager$Feature;", "toKey", "", "toString", "Unknown", "Core", "AppEvents", "CodelessEvents", "RestrictiveDataFiltering", "AAM", "PrivacyProtection", "SuggestedEvents", "IntelligentIntegrity", "ModelRequest", "EventDeactivation", "OnDeviceEventProcessing", "OnDevicePostInstallEventProcessing", "IapLogging", "IapLoggingLib2", "Instrument", "CrashReport", "CrashShield", "ThreadCheck", "ErrorReport", "Monitoring", "Login", "ChromeCustomTabsPrefetching", "IgnoreAppSwitchToLoggedOut", "Share", "Places", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$b.class */
    public enum b {
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
        
        public static final a Companion = new a(null);
        private final int code;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature$Companion;", "", "()V", "fromInt", "Lcom/facebook/internal/FeatureManager$Feature;", "code", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$b$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static b a(int i) {
                b[] values;
                for (b bVar : b.values()) {
                    if (bVar.code == i) {
                        return bVar;
                    }
                }
                return b.Unknown;
            }
        }

        b(int i) {
            this.code = i;
        }

        public final b getParent() {
            int i = this.code;
            return (i & 255) > 0 ? a.a(i & (-256)) : (65280 & i) > 0 ? a.a(i & (-65536)) : (16711680 & i) > 0 ? a.a(i & (-16777216)) : a.a(0);
        }

        public final String toKey() {
            return "FBSDKFeature".concat(String.valueOf(this));
        }

        @Override // java.lang.Enum
        public final String toString() {
            switch (m.f19948a[ordinal()]) {
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

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/facebook/internal/FeatureManager$checkFeature$1", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "onCompleted", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/l$c.class */
    public static final class c implements o.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f19946a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f19947b;

        c(a aVar, b bVar) {
            this.f19946a = aVar;
            this.f19947b = bVar;
        }

        @Override // com.facebook.internal.o.a
        public final void a() {
            this.f19946a.a(l.a(this.f19947b));
        }
    }

    private l() {
    }

    public static final b a(String className) {
        p.d(className, "className");
        f19944a.a();
        for (Map.Entry<b, String[]> entry : f19945b.entrySet()) {
            b key = entry.getKey();
            for (String str : entry.getValue()) {
                if (kotlin.h.p.a(className, str, false)) {
                    return key;
                }
            }
        }
        return b.Unknown;
    }

    private final void a() {
        synchronized (this) {
            Map<b, String[]> map = f19945b;
            if (map.isEmpty()) {
                map.put(b.AAM, new String[]{"com.facebook.appevents.aam."});
                map.put(b.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
                map.put(b.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
                map.put(b.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
                map.put(b.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
                map.put(b.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
                map.put(b.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
                map.put(b.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
                map.put(b.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
                map.put(b.IapLogging, new String[]{"com.facebook.appevents.iap."});
                map.put(b.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
            }
        }
    }

    public static final void a(b feature, a callback) {
        p.d(feature, "feature");
        p.d(callback, "callback");
        o.a(new c(callback, feature));
    }

    public static final boolean a(b feature) {
        p.d(feature, "feature");
        if (b.Unknown == feature) {
            return false;
        }
        if (b.Core == feature) {
            return true;
        }
        String string = g.i().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString(feature.toKey(), null);
        if (string != null && p.a((Object) string, (Object) g.k())) {
            return false;
        }
        b parent = feature.getParent();
        return parent == feature ? c(feature) : a(parent) && c(feature);
    }

    public static final void b(b feature) {
        p.d(feature, "feature");
        g.i().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit().putString(feature.toKey(), g.k()).apply();
    }

    private static boolean c(b bVar) {
        return o.a(bVar.toKey(), g.m(), d(bVar));
    }

    private static boolean d(b bVar) {
        switch (n.f19949a[bVar.ordinal()]) {
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
