package com.facebook.internal;

import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.facebook.internal.C2460n;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.m */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/m.class */
public final class C2455m {

    /* renamed from: com.facebook.internal.m$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$a.class */
    public static final class C2456a implements C2460n.AbstractC2463c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2458c f3091a;

        /* renamed from: b */
        public final /* synthetic */ EnumC2459d f3092b;

        public C2456a(AbstractC2458c cVar, EnumC2459d dVar) {
            this.f3091a = cVar;
            this.f3092b = dVar;
        }

        @Override // com.facebook.internal.C2460n.AbstractC2463c
        public void onCompleted() {
            this.f3091a.mo23727a(C2455m.m34683c(this.f3092b));
        }
    }

    /* renamed from: com.facebook.internal.m$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$b.class */
    public static /* synthetic */ class C2457b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3093a = new int[EnumC2459d.values().length];

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
                f3093a[EnumC2459d.RestrictiveDataFiltering.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3093a[EnumC2459d.Instrument.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3093a[EnumC2459d.CrashReport.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3093a[EnumC2459d.ErrorReport.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3093a[EnumC2459d.AAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3093a[EnumC2459d.PrivacyProtection.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3093a[EnumC2459d.SuggestedEvents.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f3093a[EnumC2459d.Core.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f3093a[EnumC2459d.AppEvents.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f3093a[EnumC2459d.CodelessEvents.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f3093a[EnumC2459d.Login.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f3093a[EnumC2459d.Share.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f3093a[EnumC2459d.Places.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: com.facebook.internal.m$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$c.class */
    public interface AbstractC2458c {
        /* renamed from: a */
        void mo23727a(boolean z);
    }

    /* renamed from: com.facebook.internal.m$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/m$d.class */
    public enum EnumC2459d {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        Instrument(131072),
        CrashReport(131328),
        ErrorReport(131584),
        Login(16777216),
        Share(33554432),
        Places(50331648);
        

        /* renamed from: a */
        public final int f3109a;

        EnumC2459d(int i) {
            this.f3109a = i;
        }

        /* renamed from: a */
        public static EnumC2459d m34681a(int i) {
            EnumC2459d[] values;
            for (EnumC2459d dVar : values()) {
                if (dVar.f3109a == i) {
                    return dVar;
                }
            }
            return Unknown;
        }

        /* renamed from: a */
        public EnumC2459d m34682a() {
            int i = this.f3109a;
            return (i & 255) > 0 ? m34681a(i & InputDeviceCompat.SOURCE_ANY) : (65280 & i) > 0 ? m34681a(i & SupportMenu.CATEGORY_MASK) : (16711680 & i) > 0 ? m34681a(i & (-16777216)) : m34681a(0);
        }

        @Override // java.lang.Enum
        public String toString() {
            String str;
            switch (C2457b.f3093a[ordinal()]) {
                case 1:
                    str = "RestrictiveDataFiltering";
                    break;
                case 2:
                    str = "Instrument";
                    break;
                case 3:
                    str = "CrashReport";
                    break;
                case 4:
                    str = "ErrorReport";
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
                    str = "CoreKit";
                    break;
                case 9:
                    str = "AppEvents";
                    break;
                case 10:
                    str = "CodelessEvents";
                    break;
                case 11:
                    str = "LoginKit";
                    break;
                case 12:
                    str = "ShareKit";
                    break;
                case 13:
                    str = "PlacesKit";
                    break;
                default:
                    str = "unknown";
                    break;
            }
            return str;
        }
    }

    /* renamed from: a */
    public static void m34685a(EnumC2459d dVar, AbstractC2458c cVar) {
        C2460n.m34679a(new C2456a(cVar, dVar));
    }

    /* renamed from: a */
    public static boolean m34686a(EnumC2459d dVar) {
        switch (C2457b.f3093a[dVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return false;
            default:
                return true;
        }
    }

    /* renamed from: b */
    public static boolean m34684b(EnumC2459d dVar) {
        return C2460n.m34676a("FBSDKFeature" + dVar.toString(), C6135n.m23745f(), m34686a(dVar));
    }

    /* renamed from: c */
    public static boolean m34683c(EnumC2459d dVar) {
        if (EnumC2459d.Unknown == dVar) {
            return false;
        }
        if (EnumC2459d.Core == dVar) {
            return true;
        }
        EnumC2459d a = dVar.m34682a();
        if (a == dVar) {
            return m34684b(dVar);
        }
        boolean z = false;
        if (m34683c(a)) {
            z = false;
            if (m34684b(dVar)) {
                z = true;
            }
        }
        return z;
    }
}
