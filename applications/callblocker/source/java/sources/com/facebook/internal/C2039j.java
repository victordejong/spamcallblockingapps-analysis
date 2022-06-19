package com.facebook.internal;

import com.facebook.C2095j;
import com.facebook.internal.C2044k;
/* renamed from: com.facebook.internal.j */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/j.class */
public final class C2039j {

    /* renamed from: com.facebook.internal.j$2 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$2.class */
    public static /* synthetic */ class C20412 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6006a = new int[EnumC2043b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:66:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:62:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:74:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:52:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:48:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:58:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:68:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:64:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:76:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:54:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f1 -> B:50:0x0014). Please submit an issue!!! */
        static {
            try {
                f6006a[EnumC2043b.RestrictiveDataFiltering.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6006a[EnumC2043b.Instrument.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6006a[EnumC2043b.CrashReport.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6006a[EnumC2043b.ErrorReport.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6006a[EnumC2043b.AAM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6006a[EnumC2043b.PrivacyProtection.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6006a[EnumC2043b.SuggestedEvents.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6006a[EnumC2043b.PIIFiltering.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f6006a[EnumC2043b.EventDeactivation.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f6006a[EnumC2043b.Core.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f6006a[EnumC2043b.AppEvents.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f6006a[EnumC2043b.CodelessEvents.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f6006a[EnumC2043b.Login.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f6006a[EnumC2043b.Share.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f6006a[EnumC2043b.Places.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* renamed from: com.facebook.internal.j$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$a.class */
    public interface AbstractC2042a {
        /* renamed from: a */
        void mo15345a(boolean z);
    }

    /* renamed from: com.facebook.internal.j$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$b.class */
    public enum EnumC2043b {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        PIIFiltering(66562),
        EventDeactivation(66816),
        Instrument(131072),
        CrashReport(131328),
        ErrorReport(131584),
        Login(16777216),
        Share(33554432),
        Places(50331648);
        

        /* renamed from: q */
        private final int f6024q;

        EnumC2043b(int i) {
            this.f6024q = i;
        }

        /* renamed from: a */
        static EnumC2043b m15620a(int i) {
            EnumC2043b enumC2043b;
            EnumC2043b[] values = values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC2043b = Unknown;
                    break;
                }
                enumC2043b = values[i2];
                if (enumC2043b.f6024q == i) {
                    break;
                }
                i2++;
            }
            return enumC2043b;
        }

        /* renamed from: a */
        public EnumC2043b m15621a() {
            return (this.f6024q & 255) > 0 ? m15620a(this.f6024q & (-256)) : (this.f6024q & 65280) > 0 ? m15620a(this.f6024q & (-65536)) : (this.f6024q & 16711680) > 0 ? m15620a(this.f6024q & (-16777216)) : m15620a(0);
        }

        @Override // java.lang.Enum
        public String toString() {
            String str = "unknown";
            switch (C20412.f6006a[ordinal()]) {
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
                    str = "PIIFiltering";
                    break;
                case 9:
                    str = "EventDeactivation";
                    break;
                case 10:
                    str = "CoreKit";
                    break;
                case 11:
                    str = "AppEvents";
                    break;
                case 12:
                    str = "CodelessEvents";
                    break;
                case 13:
                    str = "LoginKit";
                    break;
                case 14:
                    str = "ShareKit";
                    break;
                case 15:
                    str = "PlacesKit";
                    break;
            }
            return str;
        }
    }

    /* renamed from: a */
    public static void m15624a(final EnumC2043b enumC2043b, final AbstractC2042a abstractC2042a) {
        C2044k.m15618a(new C2044k.AbstractC2047a() { // from class: com.facebook.internal.j.1
            @Override // com.facebook.internal.C2044k.AbstractC2047a
            /* renamed from: a */
            public void mo15606a() {
                abstractC2042a.mo15345a(C2039j.m15625a(enumC2043b));
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (m15623b(r3) == false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m15625a(com.facebook.internal.C2039j.EnumC2043b r3) {
        /*
            r0 = 1
            r4 = r0
            com.facebook.internal.j$b r0 = com.facebook.internal.C2039j.EnumC2043b.Unknown
            r1 = r3
            if (r0 != r1) goto Ld
            r0 = 0
            r5 = r0
        Lb:
            r0 = r5
            return r0
        Ld:
            r0 = r4
            r5 = r0
            com.facebook.internal.j$b r0 = com.facebook.internal.C2039j.EnumC2043b.Core
            r1 = r3
            if (r0 == r1) goto Lb
            r0 = r3
            com.facebook.internal.j$b r0 = r0.m15621a()
            r6 = r0
            r0 = r6
            r1 = r3
            if (r0 != r1) goto L28
            r0 = r3
            boolean r0 = m15623b(r0)
            r5 = r0
            goto Lb
        L28:
            r0 = r6
            boolean r0 = m15625a(r0)
            if (r0 == 0) goto L38
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = m15623b(r0)
            if (r0 != 0) goto Lb
        L38:
            r0 = 0
            r5 = r0
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C2039j.m15625a(com.facebook.internal.j$b):boolean");
    }

    /* renamed from: b */
    private static boolean m15623b(EnumC2043b enumC2043b) {
        return C2044k.m15615a("FBSDKFeature" + enumC2043b.toString(), C2095j.m15356l(), m15622c(enumC2043b));
    }

    /* renamed from: c */
    private static boolean m15622c(EnumC2043b enumC2043b) {
        boolean z;
        switch (C20412.f6006a[enumC2043b.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                z = false;
                break;
            default:
                z = true;
                break;
        }
        return z;
    }
}
