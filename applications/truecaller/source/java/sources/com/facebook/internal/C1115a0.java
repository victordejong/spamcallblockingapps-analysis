package com.facebook.internal;

import com.facebook.internal.C1121b0;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018��2\u00020\u0001:\u0002\u0016\u0017B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002J\b\u0010\u0014\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\b0\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/FeatureManager;", "", "()V", "FEATURE_MANAGER_STORE", "", "featureMapping", "", "Lcom/facebook/internal/FeatureManager$Feature;", "", "checkFeature", "", "feature", "callback", "Lcom/facebook/internal/FeatureManager$Callback;", "defaultStatus", "", "disableFeature", "getFeature", "className", "getGKStatus", "initializeFeatureMapping", "isEnabled", "Callback", "Feature", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.a0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/a0.class */
public final class C1115a0 {

    /* renamed from: a */
    public static final C1115a0 f3048a = new C1115a0();

    /* renamed from: b */
    public static final Map<EnumC1117b, String[]> f3049b = new HashMap();

    @Metadata(d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/FeatureManager$Callback;", "", "onCompleted", "", "enabled", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.a0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/a0$a.class */
    public interface AbstractC1116a {
        /* renamed from: a */
        void mo7331a(boolean z);
    }

    @Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u001f\b\u0086\u0001\u0018�� '2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001'B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020��8F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&¨\u0006("}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature;", "", "code", "", "(Ljava/lang/String;II)V", "parent", "getParent", "()Lcom/facebook/internal/FeatureManager$Feature;", "toKey", "", "toString", "Unknown", "Core", "AppEvents", "CodelessEvents", "RestrictiveDataFiltering", "AAM", "PrivacyProtection", "SuggestedEvents", "IntelligentIntegrity", "ModelRequest", "EventDeactivation", "OnDeviceEventProcessing", "OnDevicePostInstallEventProcessing", "IapLogging", "IapLoggingLib2", "Instrument", "CrashReport", "CrashShield", "ThreadCheck", "ErrorReport", "AnrReport", "Monitoring", "ServiceUpdateCompliance", "Login", "ChromeCustomTabsPrefetching", "IgnoreAppSwitchToLoggedOut", "BypassAppSwitch", "Share", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.a0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/a0$b.class */
    public enum EnumC1117b {
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
        AnrReport(131840),
        Monitoring(196608),
        ServiceUpdateCompliance(196864),
        Login(16777216),
        ChromeCustomTabsPrefetching(16842752),
        IgnoreAppSwitchToLoggedOut(16908288),
        BypassAppSwitch(16973824),
        Share(33554432);
        

        /* renamed from: b */
        public static final C1118a f3055b = new C1118a(null);

        /* renamed from: a */
        public final int f3080a;

        @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/FeatureManager$Feature$Companion;", "", "()V", "fromInt", "Lcom/facebook/internal/FeatureManager$Feature;", "code", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* renamed from: com.facebook.internal.a0$b$a */
        /* loaded from: classes2-dex2jar.jar:com/facebook/internal/a0$b$a.class */
        public static final class C1118a {
            public C1118a(f fVar) {
            }
        }

        EnumC1117b(int i) {
            this.f3080a = i;
        }

        /* renamed from: a */
        public final String m41750a() {
            return l.j("FBSDKFeature", this);
        }

        @Override // java.lang.Enum
        public String toString() {
            String str;
            switch (ordinal()) {
                case 1:
                    str = "CoreKit";
                    break;
                case 2:
                    str = "AppEvents";
                    break;
                case 3:
                    str = "CodelessEvents";
                    break;
                case 4:
                    str = "RestrictiveDataFiltering";
                    break;
                case 5:
                    str = "AAM";
                    break;
                case 6:
                    str = "PrivacyProtection";
                    break;
                case 7:
                    str = "SuggestedEvents";
                    break;
                case 8:
                    str = "IntelligentIntegrity";
                    break;
                case 9:
                    str = "ModelRequest";
                    break;
                case 10:
                    str = "EventDeactivation";
                    break;
                case 11:
                    str = "OnDeviceEventProcessing";
                    break;
                case 12:
                    str = "OnDevicePostInstallEventProcessing";
                    break;
                case 13:
                    str = "IAPLogging";
                    break;
                case 14:
                    str = "IAPLoggingLib2";
                    break;
                case 15:
                    str = "Instrument";
                    break;
                case 16:
                    str = "CrashReport";
                    break;
                case 17:
                    str = "CrashShield";
                    break;
                case 18:
                    str = "ThreadCheck";
                    break;
                case 19:
                    str = "ErrorReport";
                    break;
                case 20:
                    str = "AnrReport";
                    break;
                case 21:
                    str = "Monitoring";
                    break;
                case 22:
                    str = "ServiceUpdateCompliance";
                    break;
                case 23:
                    str = "LoginKit";
                    break;
                case 24:
                    str = "ChromeCustomTabsPrefetching";
                    break;
                case 25:
                    str = "IgnoreAppSwitchToLoggedOut";
                    break;
                case 26:
                    str = "BypassAppSwitch";
                    break;
                case 27:
                    str = "ShareKit";
                    break;
                default:
                    str = "unknown";
                    break;
            }
            return str;
        }
    }

    @Metadata(d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/facebook/internal/FeatureManager$checkFeature$1", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "onCompleted", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.a0$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/a0$c.class */
    public static final class C1119c implements C1121b0.AbstractC1122a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1116a f3081a;

        /* renamed from: b */
        public final /* synthetic */ EnumC1117b f3082b;

        public C1119c(AbstractC1116a abstractC1116a, EnumC1117b enumC1117b) {
            this.f3081a = abstractC1116a;
            this.f3082b = enumC1117b;
        }

        @Override // com.facebook.internal.C1121b0.AbstractC1122a
        /* renamed from: a */
        public void mo41744a() {
            AbstractC1116a abstractC1116a = this.f3081a;
            C1115a0 c1115a0 = C1115a0.f3048a;
            abstractC1116a.mo7331a(C1115a0.m41751b(this.f3082b));
        }
    }

    /* renamed from: a */
    public static final void m41752a(EnumC1117b enumC1117b, AbstractC1116a abstractC1116a) {
        l.e(enumC1117b, "feature");
        l.e(abstractC1116a, "callback");
        C1121b0 c1121b0 = C1121b0.f3084a;
        C1121b0.m41747c(new C1119c(abstractC1116a, enumC1117b));
    }

    /* renamed from: b */
    public static final boolean m41751b(EnumC1117b enumC1117b) {
        EnumC1117b enumC1117b2;
        boolean z;
        boolean z2;
        l.e(enumC1117b, "feature");
        EnumC1117b enumC1117b3 = EnumC1117b.Unknown;
        boolean z3 = false;
        if (enumC1117b3 == enumC1117b) {
            return false;
        }
        if (EnumC1117b.Core == enumC1117b) {
            return true;
        }
        C23228f0 c23228f0 = C23228f0.f64291a;
        String string = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString(enumC1117b.m41750a(), null);
        if (string != null) {
            C23228f0 c23228f02 = C23228f0.f64291a;
            if (l.a(string, "13.0.0")) {
                return false;
            }
        }
        int i = enumC1117b.f3080a;
        if ((i & 255) <= 0) {
            if ((65280 & i) <= 0) {
                if ((16711680 & i) <= 0) {
                    EnumC1117b[] values = EnumC1117b.values();
                    int i2 = 0;
                    do {
                        enumC1117b2 = enumC1117b3;
                        if (i2 >= 28) {
                            break;
                        }
                        enumC1117b2 = values[i2];
                        i2++;
                    } while (enumC1117b2.f3080a != 0);
                } else {
                    EnumC1117b[] values2 = EnumC1117b.values();
                    int i3 = 0;
                    do {
                        enumC1117b2 = enumC1117b3;
                        if (i3 >= 28) {
                            break;
                        }
                        enumC1117b2 = values2[i3];
                        i3++;
                    } while (enumC1117b2.f3080a != (i & (-16777216)));
                }
            } else {
                EnumC1117b[] values3 = EnumC1117b.values();
                int i4 = 0;
                do {
                    enumC1117b2 = enumC1117b3;
                    if (i4 >= 28) {
                        break;
                    }
                    enumC1117b2 = values3[i4];
                    i4++;
                } while (enumC1117b2.f3080a != (i & (-65536)));
            }
        } else {
            EnumC1117b[] values4 = EnumC1117b.values();
            int i5 = 0;
            do {
                enumC1117b2 = enumC1117b3;
                if (i5 >= 28) {
                    break;
                }
                enumC1117b2 = values4[i5];
                i5++;
            } while (enumC1117b2.f3080a != (i & (-256)));
        }
        if (enumC1117b2 == enumC1117b) {
            switch (enumC1117b.ordinal()) {
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
                case 20:
                case 21:
                case 24:
                case 25:
                case 26:
                    break;
                case 22:
                case 23:
                default:
                    z3 = true;
                    break;
            }
            C1121b0 c1121b0 = C1121b0.f3084a;
            String m41750a = enumC1117b.m41750a();
            C23228f0 c23228f03 = C23228f0.f64291a;
            z = C1121b0.m41748b(m41750a, C23228f0.m7353b(), z3);
        } else {
            z = false;
            if (m41751b(enumC1117b2)) {
                switch (enumC1117b.ordinal()) {
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
                    case 20:
                    case 21:
                    case 24:
                    case 25:
                    case 26:
                        z2 = false;
                        break;
                    case 22:
                    case 23:
                    default:
                        z2 = true;
                        break;
                }
                C1121b0 c1121b02 = C1121b0.f3084a;
                String m41750a2 = enumC1117b.m41750a();
                C23228f0 c23228f04 = C23228f0.f64291a;
                z = false;
                if (C1121b0.m41748b(m41750a2, C23228f0.m7353b(), z2)) {
                    z = true;
                }
            }
        }
        return z;
    }
}
