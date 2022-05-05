package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import io.realm.Realm;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SubscriptionHelper.class */
public class SubscriptionHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.utility.SubscriptionHelper$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SubscriptionHelper$1.class */
    public static /* synthetic */ class C19101 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14443a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f14443a = iArr;
            try {
                iArr[State.PREMIUM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14443a[State.VVM_BUNDLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14443a[State.REDUCED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14443a[State.TRIAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14443a[State.PENDING_PREMIUM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14443a[State.PENDING_VVM_BUNDLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14443a[State.PENDING_REDUCED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f14443a[State.PENDING_TRIAL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f14443a[State.PENDING_REDUCED_METRO.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SubscriptionHelper$State.class */
    public enum State {
        PREMIUM,
        VVM_BUNDLE,
        REDUCED,
        TRIAL,
        REDUCED_METRO,
        PENDING_REDUCED_METRO,
        PENDING_PREMIUM,
        PENDING_VVM_BUNDLE,
        PENDING_REDUCED,
        PENDING_TRIAL,
        NONE,
        ERROR_PREMIUM,
        ERROR_VVM_BUNDLE,
        ERROR_REDUCED,
        ERROR_TRIAL,
        ERROR_REDUCED_METRO
    }

    /* renamed from: A */
    public static boolean m5333A(State state) {
        boolean z = !m5315m(state) && m5320h(null);
        StringBuilder sb = new StringBuilder();
        sb.append("User is ");
        sb.append(z ? "" : "not ");
        sb.append("vvm only");
        LogUtil.m5639h("SubscriptionHelper#", sb.toString());
        return z;
    }

    /* renamed from: B */
    public static boolean m5332B() {
        if (BuildUtils.m5850d()) {
            return false;
        }
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            boolean z = false;
            if (tmoUserStatus != null) {
                z = false;
                if (TmoUserStatus.CUSTOMER_TYPE_SPRINT_XP.equals(tmoUserStatus.getCustomerType())) {
                    z = true;
                }
            }
            if (G0 != null) {
                G0.close();
            }
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: C */
    public static State m5331C() {
        String str;
        Realm G0 = Realm.m3064G0();
        try {
            LicenseResponseItem licenseResponseItem = (LicenseResponseItem) G0.m3053Q0(LicenseResponseItem.class).m2916G();
            String str2 = null;
            long j = 0;
            if (licenseResponseItem != null) {
                String billingSoc = licenseResponseItem.getBillingSoc();
                String licenseState = licenseResponseItem.getLicenseState();
                str2 = billingSoc;
                str = licenseState;
                if (licenseResponseItem.getLicenseTrialEnd() != null) {
                    j = licenseResponseItem.getLicenseTrialEnd().getTime();
                    str2 = billingSoc;
                    str = licenseState;
                }
            } else {
                str = null;
            }
            if (G0 != null) {
                G0.close();
            }
            if (str == null) {
                return State.NONE;
            }
            if ("expired".equals(str) || "inactive".equals(str)) {
                return State.NONE;
            }
            if (str2 == null) {
                return System.currentTimeMillis() < j ? State.TRIAL : State.NONE;
            }
            if ("active".equalsIgnoreCase(str)) {
                if ("BLK".equalsIgnoreCase(str2)) {
                    return State.REDUCED_METRO;
                }
                if ("nameid".equalsIgnoreCase(str2) || "BLK2".equalsIgnoreCase(str2) || "CMGR".equalsIgnoreCase(str2)) {
                    return State.PREMIUM;
                }
            } else if ("temp".equalsIgnoreCase(str) || "trial".equalsIgnoreCase(str)) {
                return State.TRIAL;
            }
            return State.NONE;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: D */
    public static boolean m5330D() {
        return m5325c() == State.NONE && Feature.PNB_MESSAGING.isOwned();
    }

    /* renamed from: E */
    public static boolean m5329E() {
        return m5317k() && Feature.PNB_MESSAGING.isOwned();
    }

    /* renamed from: F */
    public static boolean m5328F() {
        return m5317k();
    }

    /* renamed from: a */
    public static State m5327a(@Nullable TmoUserStatus tmoUserStatus) {
        boolean z;
        boolean z2;
        TmoUserStatus.SubscriptionStatus subscriptionStatus;
        TmoUserStatus.SubscriptionType subscriptionType;
        if (tmoUserStatus == null || !tmoUserStatus.isValid()) {
            Realm G0 = Realm.m3064G0();
            try {
                tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus == null) {
                    State state = State.NONE;
                    if (G0 != null) {
                        G0.close();
                    }
                    return state;
                }
                z2 = tmoUserStatus.isPending();
                z = tmoUserStatus.isPendingCheckError();
                subscriptionType = TmoUserStatus.SubscriptionType.fromTypeLetter(tmoUserStatus.getTypeLetter());
                subscriptionStatus = TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText());
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } else {
            subscriptionType = TmoUserStatus.SubscriptionType.fromTypeLetter(tmoUserStatus.getTypeLetter());
            subscriptionStatus = TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText());
            z2 = tmoUserStatus.isPending();
            z = tmoUserStatus.isPendingCheckError();
        }
        if (subscriptionStatus != TmoUserStatus.SubscriptionStatus.ACTIVE) {
            return State.NONE;
        }
        State state2 = State.NONE;
        if (subscriptionType == TmoUserStatus.SubscriptionType.PREMIUM_STANDALONE || subscriptionType == TmoUserStatus.SubscriptionType.PREMIUM_BUNDLED) {
            state2 = m5319i(tmoUserStatus) ? State.VVM_BUNDLE : State.PREMIUM;
        } else if (subscriptionType == TmoUserStatus.SubscriptionType.REDUCED_BUNDLED || subscriptionType == TmoUserStatus.SubscriptionType.REDUCED_STANDALONE) {
            state2 = State.REDUCED;
        } else if (subscriptionType == TmoUserStatus.SubscriptionType.FREE) {
            state2 = State.TRIAL;
        }
        State state3 = state2;
        if (z2) {
            int i = C19101.f14443a[state2.ordinal()];
            state3 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? state2 : State.PENDING_TRIAL : State.PENDING_REDUCED : State.PENDING_VVM_BUNDLE : State.PENDING_PREMIUM;
        }
        State state4 = state3;
        if (z) {
            int i2 = C19101.f14443a[state3.ordinal()];
            state4 = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? state3 : State.ERROR_TRIAL : State.ERROR_REDUCED : State.ERROR_VVM_BUNDLE : State.ERROR_PREMIUM;
        }
        return state4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r5.isValid() == false) goto L_0x0016;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.utility.SubscriptionHelper.State m5326b(@javax.annotation.Nullable com.tmobile.services.nameid.model.LicenseResponseItem r5) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.SubscriptionHelper.m5326b(com.tmobile.services.nameid.model.LicenseResponseItem):com.tmobile.services.nameid.utility.SubscriptionHelper$State");
    }

    /* renamed from: c */
    public static State m5325c() {
        Realm G0 = Realm.m3064G0();
        try {
            State d = m5324d((TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G());
            if (G0 != null) {
                G0.close();
            }
            return d;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: d */
    public static State m5324d(@Nullable TmoUserStatus tmoUserStatus) {
        return m5327a(tmoUserStatus);
    }

    /* renamed from: e */
    public static State m5323e() {
        return m5318j(m5325c());
    }

    /* renamed from: f */
    public static State m5322f(@Nullable TmoUserStatus tmoUserStatus) {
        return m5318j(m5324d(tmoUserStatus));
    }

    /* renamed from: g */
    public static boolean m5321g(@Nullable TmoUserStatus tmoUserStatus) {
        boolean z = true;
        boolean z2 = true;
        if (tmoUserStatus == null) {
            try {
                Realm G0 = Realm.m3064G0();
                TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus2 != null && tmoUserStatus2.isValid()) {
                    String vmtt = tmoUserStatus2.getVmtt();
                    if (!m5303y(vmtt) || !vmtt.equalsIgnoreCase("BASE")) {
                        z2 = false;
                    }
                    if (G0 != null) {
                        G0.close();
                    }
                    return z2;
                }
                if (G0 == null) {
                    return false;
                }
                G0.close();
                return false;
            } catch (Throwable th) {
                LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in hasVvm", th);
                return false;
            }
        } else {
            String vmtt2 = tmoUserStatus.getVmtt();
            if (!m5303y(vmtt2) || !vmtt2.equalsIgnoreCase("BASE")) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: h */
    private static boolean m5320h(@Nullable TmoUserStatus tmoUserStatus) {
        boolean z = true;
        boolean z2 = true;
        if (tmoUserStatus == null) {
            try {
                Realm G0 = Realm.m3064G0();
                TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus2 != null && tmoUserStatus2.isValid()) {
                    String vmtt = tmoUserStatus2.getVmtt();
                    if (!m5303y(vmtt) || vmtt.equalsIgnoreCase("BNDL")) {
                        z2 = false;
                    }
                    if (G0 != null) {
                        G0.close();
                    }
                    return z2;
                }
                if (G0 == null) {
                    return false;
                }
                G0.close();
                return false;
            } catch (Throwable th) {
                LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in hasVvm", th);
                return false;
            }
        } else {
            String vmtt2 = tmoUserStatus.getVmtt();
            if (!m5303y(vmtt2) || vmtt2.equalsIgnoreCase("BNDL")) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: i */
    private static boolean m5319i(@Nullable TmoUserStatus tmoUserStatus) {
        Throwable th;
        tmoUserStatus = tmoUserStatus;
        if (tmoUserStatus == null) {
            try {
                Realm G0 = Realm.m3064G0();
                TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                tmoUserStatus = tmoUserStatus2;
                if (G0 != null) {
                    try {
                        G0.close();
                        tmoUserStatus = tmoUserStatus2;
                    } catch (Throwable th2) {
                        th = th2;
                        tmoUserStatus = tmoUserStatus2;
                        LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in hasVvmBundle", th);
                        return tmoUserStatus != null ? false : false;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        if (tmoUserStatus != null || !tmoUserStatus.isValid() || tmoUserStatus.getPnb() == null) {
            return false;
        }
        return "BNDL".equals(tmoUserStatus.getPnb());
    }

    /* renamed from: j */
    public static State m5318j(@Nullable State state) {
        if (state == null) {
            return State.NONE;
        }
        switch (C19101.f14443a[state.ordinal()]) {
            case 5:
                return State.PREMIUM;
            case 6:
                return State.VVM_BUNDLE;
            case 7:
                return State.REDUCED;
            case 8:
                return State.TRIAL;
            case 9:
                return State.REDUCED_METRO;
            default:
                return state;
        }
    }

    /* renamed from: k */
    public static boolean m5317k() {
        return m5315m(m5325c());
    }

    /* renamed from: l */
    public static boolean m5316l(@Nullable TmoUserStatus tmoUserStatus) {
        return m5315m(m5324d(tmoUserStatus));
    }

    /* renamed from: m */
    public static boolean m5315m(State state) {
        return (state == State.NONE || state == State.ERROR_PREMIUM || state == State.ERROR_VVM_BUNDLE || state == State.ERROR_TRIAL || state == State.ERROR_REDUCED || state == State.ERROR_REDUCED_METRO) ? false : true;
    }

    /* renamed from: n */
    public static boolean m5314n(@Nullable TmoUserStatus tmoUserStatus) {
        if (tmoUserStatus == null || !tmoUserStatus.isValid()) {
            try {
                Realm G0 = Realm.m3064G0();
                TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus2 != null && tmoUserStatus2.isValid()) {
                    boolean isCNAMEligible = tmoUserStatus2.isCNAMEligible();
                    LogUtil.m5639h("SubscriptionHelper#", "Returning cNAM eligble = " + isCNAMEligible);
                    if (G0 != null) {
                        G0.close();
                    }
                    return isCNAMEligible;
                }
                LogUtil.m5639h("SubscriptionHelper#", "No/Invalid UserStatus found in realm, returning false");
                if (G0 == null) {
                    return false;
                }
                G0.close();
                return false;
            } catch (Throwable th) {
                LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in isCnamEligible", th);
                return false;
            }
        } else {
            boolean isCNAMEligible2 = tmoUserStatus.isCNAMEligible();
            LogUtil.m5639h("SubscriptionHelper#", "Returning cNAM eligble = " + isCNAMEligible2);
            return isCNAMEligible2;
        }
    }

    /* renamed from: o */
    public static boolean m5313o(@Nullable TmoUserStatus tmoUserStatus) {
        if (tmoUserStatus != null) {
            return tmoUserStatus.isCNAMON();
        }
        try {
            Realm G0 = Realm.m3064G0();
            TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            boolean z = tmoUserStatus2 != null && tmoUserStatus2.isValid() && tmoUserStatus2.isCNAMON();
            if (G0 != null) {
                G0.close();
            }
            return z;
        } catch (Throwable th) {
            LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in isCnamOn", th);
            return false;
        }
    }

    /* renamed from: p */
    public static boolean m5312p(State state) {
        return state == State.ERROR_PREMIUM || state == State.ERROR_VVM_BUNDLE || state == State.ERROR_TRIAL || state == State.ERROR_REDUCED || state == State.ERROR_REDUCED_METRO;
    }

    /* renamed from: q */
    public static boolean m5311q() {
        if (!BuildUtils.m5851c()) {
            return false;
        }
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus == null) {
                if (G0 == null) {
                    return false;
                }
                G0.close();
                return false;
            } else if (TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText()) == TmoUserStatus.SubscriptionStatus.MULTILINE_NON_PRIMARY_ACCT) {
                if (G0 == null) {
                    return true;
                }
                G0.close();
                return true;
            } else if (G0 == null) {
                return false;
            } else {
                G0.close();
                return false;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: r */
    public static boolean m5310r(State state) {
        return state == State.PENDING_PREMIUM || state == State.PENDING_VVM_BUNDLE || state == State.PENDING_TRIAL || state == State.PENDING_REDUCED || state == State.PENDING_REDUCED_METRO;
    }

    /* renamed from: s */
    public static boolean m5309s(@Nullable TmoUserStatus tmoUserStatus) {
        boolean z = true;
        boolean z2 = true;
        if (tmoUserStatus == null) {
            try {
                Realm G0 = Realm.m3064G0();
                TmoUserStatus tmoUserStatus2 = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                LogUtil.m5639h("SubscriptionHelper#", "found userstatus: " + tmoUserStatus2);
                if (tmoUserStatus2 == null || !tmoUserStatus2.isValid() || tmoUserStatus2.isCNAMON() || tmoUserStatus2.isCNAMEligible()) {
                    z2 = false;
                }
                if (G0 != null) {
                    G0.close();
                }
                return z2;
            } catch (Throwable th) {
                LogUtil.m5641f("SubscriptionHelper#", "Error getting userStatus in isTfbAccount", th);
                return false;
            }
        } else {
            LogUtil.m5639h("SubscriptionHelper#", "found userstatus: " + tmoUserStatus);
            if (tmoUserStatus.isCNAMON() || tmoUserStatus.isCNAMEligible()) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: t */
    public static boolean m5308t() {
        return m5306v(m5325c());
    }

    /* renamed from: u */
    public static boolean m5307u(@androidx.annotation.Nullable TmoUserStatus tmoUserStatus) {
        return m5306v(m5324d(tmoUserStatus));
    }

    /* renamed from: v */
    public static boolean m5306v(State state) {
        return state == State.TRIAL || state == State.ERROR_TRIAL || state == State.PENDING_TRIAL;
    }

    /* renamed from: w */
    public static boolean m5305w() {
        return m5304x(m5325c());
    }

    /* renamed from: x */
    public static boolean m5304x(State state) {
        return state == State.VVM_BUNDLE || state == State.PENDING_VVM_BUNDLE || state == State.ERROR_VVM_BUNDLE;
    }

    /* renamed from: y */
    private static boolean m5303y(@Nullable String str) {
        return str != null && !str.isEmpty();
    }

    /* renamed from: z */
    public static boolean m5302z() {
        return m5333A(m5325c());
    }
}
