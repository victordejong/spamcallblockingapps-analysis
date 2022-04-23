package com.tmobile.services.nameid.api;

import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.TmoUserStatusResponse;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.http2.C2445Settings;
import okhttp3.internal.http2.Http2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\u0018��:\u0001&B\u0013\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b$\u0010%J¯\u0001\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00012\b\b\u0002\u0010\u000e\u001a\u00020\u00012\b\b\u0002\u0010\u000f\u001a\u00020\u00012\b\b\u0002\u0010\u0010\u001a\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u0001H\u0002¢\u0006\u0004\b!\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/tmobile/services/nameid/api/MockTmoApiConfig;", "", "scamId", "scamBlock", "", "trialDaysLeft", "", "upgradeEligible", "subscriptionType", "status", "errorMsg", "errorCode", "result", "novm", "cnamon", "cnamEligible", "vmttoff", "customerType", "pnb", "vmtt", "Lcom/tmobile/services/nameid/model/TmoUserStatusResponse;", "buildResponse", "(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tmobile/services/nameid/model/TmoUserStatusResponse;", "getTmoUserStatusResponse", "()Lcom/tmobile/services/nameid/model/TmoUserStatusResponse;", "Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;", "loadStatusConfig", "()Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;", "eligible", "", "setEligible", "(Z)V", "pending", "setPending", "statusConfig", "Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;", "<init>", "(Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;)V", "StatusConfig", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MockTmoApiConfig.class */
public final class MockTmoApiConfig {

    /* renamed from: a */
    private final StatusConfig f13233a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "PREPAID", "TRIAL_ELIGIBLE", "ACTIVE", "BUNDLE_VVM", "VVM_ONLY", "INACTIVE_PAID", "INACTIVE_TRIAL", "PENDING_TRIAL", "PENDING_PAID", "TRIAL_30", "TRIAL_10", "NON_PAH", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig.class */
    public enum StatusConfig {
        PREPAID,
        TRIAL_ELIGIBLE,
        ACTIVE,
        BUNDLE_VVM,
        VVM_ONLY,
        INACTIVE_PAID,
        INACTIVE_TRIAL,
        PENDING_TRIAL,
        PENDING_PAID,
        TRIAL_30,
        TRIAL_10,
        NON_PAH
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MockTmoApiConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13234a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13235b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f13236c;

        static {
            int[] iArr = new int[StatusConfig.values().length];
            f13234a = iArr;
            iArr[StatusConfig.INACTIVE_PAID.ordinal()] = 1;
            f13234a[StatusConfig.INACTIVE_TRIAL.ordinal()] = 2;
            int[] iArr2 = new int[StatusConfig.values().length];
            f13235b = iArr2;
            iArr2[StatusConfig.PENDING_PAID.ordinal()] = 1;
            f13235b[StatusConfig.PENDING_TRIAL.ordinal()] = 2;
            int[] iArr3 = new int[StatusConfig.values().length];
            f13236c = iArr3;
            iArr3[StatusConfig.PREPAID.ordinal()] = 1;
            f13236c[StatusConfig.TRIAL_ELIGIBLE.ordinal()] = 2;
            f13236c[StatusConfig.ACTIVE.ordinal()] = 3;
            f13236c[StatusConfig.BUNDLE_VVM.ordinal()] = 4;
            f13236c[StatusConfig.VVM_ONLY.ordinal()] = 5;
            f13236c[StatusConfig.INACTIVE_PAID.ordinal()] = 6;
            f13236c[StatusConfig.INACTIVE_TRIAL.ordinal()] = 7;
            f13236c[StatusConfig.PENDING_PAID.ordinal()] = 8;
            f13236c[StatusConfig.PENDING_TRIAL.ordinal()] = 9;
            f13236c[StatusConfig.TRIAL_30.ordinal()] = 10;
            f13236c[StatusConfig.TRIAL_10.ordinal()] = 11;
            f13236c[StatusConfig.NON_PAH.ordinal()] = 12;
        }
    }

    public MockTmoApiConfig() {
        this(null, 1, null);
    }

    public MockTmoApiConfig(@Nullable StatusConfig statusConfig) {
        this.f13233a = statusConfig;
    }

    public /* synthetic */ MockTmoApiConfig(StatusConfig statusConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : statusConfig);
    }

    /* renamed from: a */
    private final TmoUserStatusResponse m6703a(boolean z, boolean z2, int i, String str, String str2, String str3, String str4, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, String str7, String str8, String str9) {
        TmoUserStatusResponse tmoUserStatusResponse = new TmoUserStatusResponse();
        tmoUserStatusResponse.setScamId(Boolean.valueOf(z));
        tmoUserStatusResponse.setScamBlock(Boolean.valueOf(z2));
        tmoUserStatusResponse.setTrialDaysLeft(i);
        tmoUserStatusResponse.setUpgradeEligible(str);
        tmoUserStatusResponse.setSubscriptionType(str2);
        tmoUserStatusResponse.setStatus(str3);
        tmoUserStatusResponse.setErrorMsg(str4);
        tmoUserStatusResponse.setErrorCode(str5);
        tmoUserStatusResponse.setResult(str6);
        tmoUserStatusResponse.setNovm(Boolean.valueOf(z3));
        tmoUserStatusResponse.setCNAMON(Boolean.valueOf(z4));
        tmoUserStatusResponse.setCNAMEligible(Boolean.valueOf(z5));
        tmoUserStatusResponse.setVMTTOFF(Boolean.valueOf(z6));
        tmoUserStatusResponse.setCustomerType(str7);
        tmoUserStatusResponse.setPnb(str8);
        tmoUserStatusResponse.setVmtt(str9);
        return tmoUserStatusResponse;
    }

    /* renamed from: b */
    static /* synthetic */ TmoUserStatusResponse m6702b(MockTmoApiConfig mockTmoApiConfig, boolean z, boolean z2, int i, String str, String str2, String str3, String str4, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, String str7, String str8, String str9, int i2, Object obj) {
        z5 = true;
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            z2 = true;
        }
        z6 = false;
        if ((i2 & 4) != 0) {
            i = 0;
        }
        str6 = "true";
        if ((i2 & 8) != 0) {
            str = "true";
        }
        if ((i2 & 16) != 0) {
            str2 = "P";
        }
        if ((i2 & 32) != 0) {
            str3 = "ACTIVE";
        }
        if ((i2 & 64) != 0) {
            str4 = "";
        }
        if ((i2 & 128) != 0) {
            str5 = "";
        }
        if ((i2 & Indexable.MAX_URL_LENGTH) != 0) {
        }
        if ((i2 & 512) != 0) {
            z3 = false;
        }
        if ((i2 & 1024) != 0) {
            z4 = true;
        }
        if ((i2 & 2048) != 0) {
        }
        if ((i2 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
        }
        if ((i2 & 8192) != 0) {
            str7 = "";
        }
        if ((i2 & Http2.INITIAL_MAX_FRAME_SIZE) != 0) {
            str8 = "";
        }
        if ((i2 & 32768) != 0) {
            str9 = "";
        }
        return mockTmoApiConfig.m6703a(z, z2, i, str, str2, str3, str4, str5, str6, z3, z4, z5, z6, str7, str8, str9);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    private final StatusConfig m6700d() {
        StatusConfig statusConfig;
        String h = PreferenceUtils.m5389h("PREF_MOCK_MATA_ACCOUNT_STATUS", "");
        if (h != null) {
            switch (h.hashCode()) {
                case -2014615544:
                    if (h.equals("TRIAL_10")) {
                        statusConfig = StatusConfig.TRIAL_10;
                        break;
                    }
                    break;
                case -2014615482:
                    if (h.equals("TRIAL_30")) {
                        statusConfig = StatusConfig.TRIAL_30;
                        break;
                    }
                    break;
                case -1785081708:
                    if (h.equals("PENDING_PAID")) {
                        statusConfig = StatusConfig.PENDING_PAID;
                        break;
                    }
                    break;
                case -1628974560:
                    if (h.equals("INACTIVE_PAID")) {
                        statusConfig = StatusConfig.INACTIVE_PAID;
                        break;
                    }
                    break;
                case -1452510235:
                    if (h.equals("NON_PAH")) {
                        statusConfig = StatusConfig.NON_PAH;
                        break;
                    }
                    break;
                case 399611855:
                    if (h.equals("PREPAID")) {
                        statusConfig = StatusConfig.PREPAID;
                        break;
                    }
                    break;
                case 501242414:
                    if (h.equals("PENDING_TRIAL")) {
                        statusConfig = StatusConfig.PENDING_TRIAL;
                        break;
                    }
                    break;
                case 868348702:
                    if (h.equals("VVM_ONLY")) {
                        statusConfig = StatusConfig.VVM_ONLY;
                        break;
                    }
                    break;
                case 1045596706:
                    if (h.equals("INACTIVE_TRIAL")) {
                        statusConfig = StatusConfig.INACTIVE_TRIAL;
                        break;
                    }
                    break;
                case 1112652032:
                    if (h.equals("TRIAL_ELIGIBLE")) {
                        statusConfig = StatusConfig.TRIAL_ELIGIBLE;
                        break;
                    }
                    break;
                case 1863618640:
                    if (h.equals("BUNDLE_VVM")) {
                        statusConfig = StatusConfig.BUNDLE_VVM;
                        break;
                    }
                    break;
                case 1925346054:
                    if (h.equals("ACTIVE")) {
                        statusConfig = StatusConfig.ACTIVE;
                        break;
                    }
                    break;
            }
            return statusConfig;
        }
        statusConfig = StatusConfig.ACTIVE;
        return statusConfig;
    }

    /* renamed from: e */
    private final void m6699e(final boolean z) {
        Realm G0 = Realm.m3064G0();
        final TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
        G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.MockTmoApiConfig$setEligible$1
            @Override // io.realm.Realm.Transaction
            /* renamed from: a */
            public final void mo3037a(Realm realm) {
                TmoUserStatus tmoUserStatus2 = TmoUserStatus.this;
                if (tmoUserStatus2 != null) {
                    tmoUserStatus2.setEligible(z);
                }
            }
        });
    }

    /* renamed from: f */
    private final void m6698f(final boolean z) {
        Realm G0 = Realm.m3064G0();
        final TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
        G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.MockTmoApiConfig$setPending$1
            @Override // io.realm.Realm.Transaction
            /* renamed from: a */
            public final void mo3037a(Realm realm) {
                TmoUserStatus tmoUserStatus2 = TmoUserStatus.this;
                if (tmoUserStatus2 != null) {
                    tmoUserStatus2.setPending(z);
                }
            }
        });
    }

    @NotNull
    /* renamed from: c */
    public final TmoUserStatusResponse m6701c() {
        TmoUserStatusResponse tmoUserStatusResponse;
        StatusConfig statusConfig = this.f13233a;
        if (statusConfig == null) {
            statusConfig = m6700d();
        }
        int i = WhenMappings.f13234a[statusConfig.ordinal()];
        if (i == 1) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 2);
        } else if (i != 2) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 0);
        } else {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 1);
        }
        int i2 = WhenMappings.f13235b[statusConfig.ordinal()];
        if (i2 == 1) {
            m6698f(true);
        } else if (i2 != 2) {
            m6698f(false);
        } else {
            m6698f(true);
        }
        if (statusConfig == StatusConfig.TRIAL_ELIGIBLE) {
            m6699e(true);
        }
        switch (WhenMappings.f13236c[statusConfig.ordinal()]) {
            case 1:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, null, null, null, null, false, false, false, false, TmoUserStatus.CUSTOMER_TYPE_PREPAID, null, null, 57343, null);
                break;
            case 2:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, "USER_NOT_EXIST", null, null, null, false, false, false, false, null, null, null, 65503, null);
                break;
            case 3:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, null, null, null, null, false, false, false, false, null, null, null, C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                break;
            case 4:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, null, null, null, null, false, false, false, false, null, "BNDL", null, 49151, null);
                break;
            case 5:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, "INACTIVE", null, null, null, false, false, false, false, null, "", "BASE", 16351, null);
                break;
            case 6:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, "INACTIVE", null, null, null, false, false, false, false, null, null, null, 65503, null);
                break;
            case 7:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, "F", "INACTIVE", null, null, null, false, false, false, false, null, null, null, 65487, null);
                break;
            case 8:
                tmoUserStatusResponse = m6702b(this, false, false, 0, null, null, null, null, null, null, false, false, false, false, null, null, null, C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
                break;
            case 9:
                tmoUserStatusResponse = m6702b(this, false, false, 30, null, "F", null, null, null, null, false, false, false, false, null, "FREE", null, 49131, null);
                break;
            case 10:
                tmoUserStatusResponse = m6702b(this, false, false, 30, null, "F", null, null, null, null, false, false, false, false, null, "FREE", null, 49131, null);
                break;
            case 11:
                tmoUserStatusResponse = m6702b(this, false, false, 10, null, "F", null, null, null, null, false, false, false, false, null, "FREE", null, 49131, null);
                break;
            case 12:
                tmoUserStatusResponse = m6702b(this, false, false, 0, "false", null, "NON_PAH", null, null, null, false, false, false, false, null, "BASE", null, 49111, null);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return tmoUserStatusResponse;
    }
}
