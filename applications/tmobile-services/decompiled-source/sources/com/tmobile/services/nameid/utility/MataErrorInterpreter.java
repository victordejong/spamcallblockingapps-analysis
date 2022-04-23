package com.tmobile.services.nameid.utility;

import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.ErrorMessage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapWithDefaultKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u0003:\u0002\u0003\u0004B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/tmobile/services/nameid/utility/MataErrorInterpreter;", "<init>", "()V", "Companion", "MataAction", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MataErrorInterpreter.class */
public final class MataErrorInterpreter {

    /* renamed from: a */
    private static final Map<String, ErrorMessage> f14367a;

    /* renamed from: b */
    private static final Map<String, ErrorMessage> f14368b;

    /* renamed from: c */
    private static final Map<String, ErrorMessage> f14369c;

    /* renamed from: d */
    private static final Map<String, ErrorMessage> f14370d;

    /* renamed from: e */
    private static final Map<String, ErrorMessage> f14371e;

    /* renamed from: f */
    private static final Map<String, ErrorMessage> f14372f;

    /* renamed from: g */
    private static final Map<String, ErrorMessage> f14373g;

    /* renamed from: h */
    private static final Map<String, ErrorMessage> f14374h;

    /* renamed from: i */
    private static final Map<String, ErrorMessage> f14375i;

    /* renamed from: j */
    public static final Companion f14376j = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\b\r\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0007\u0010\u0006J\u001d\u0010\f\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0004H\u0003¢\u0006\u0004\b\u0010\u0010\u0006R\u0016\u0010\u0011\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0012R\u0016\u0010\u0018\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0012R\u0016\u0010\u0019\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0012R\"\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\"\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\"\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\"\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001cR\"\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001cR\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001cR\"\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u001cR\"\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010\u001cR\"\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001c¨\u0006'"}, d2 = {"Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$Companion;", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "defaultMessage", "()Lcom/tmobile/services/nameid/utility/ErrorMessage;", "", "getCallCareErrorStart", "()I", "getCallCareStartShort", "Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;", "mataAction", "", "errorCode", "getErrorMessage", "(Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;Ljava/lang/String;)Lcom/tmobile/services/nameid/utility/ErrorMessage;", "getTrialAddFailedStart", "getTrialExpiredStart", "getUnsupportedBodyStart", "ADD_FEATURE_FAILED", "Ljava/lang/String;", "HAS_BUNDLE", "NO_RESPONSE", "PROCESSING_ERROR", "REMOVE_FEATURE_FAILED", "TRIAL_EXPIRED", "TRIAL_LIMIT_EXCEEDED", "UNSUPPORTED_ACCOUNT_TYPE", "", "addCallerIdErrors", "Ljava/util/Map;", "addPremiumErrors", "addScamBlockErrors", "addTrialErrors", "getUserStatusErrors", "removeCallerIdErrors", "removePremiumErrors", "removeScamBlockErrors", "removeTrialErrors", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MataErrorInterpreter$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MataErrorInterpreter$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a */
            public static final /* synthetic */ int[] f14377a;

            static {
                int[] iArr = new int[MataAction.values().length];
                f14377a = iArr;
                iArr[MataAction.GET_USER_STATUS.ordinal()] = 1;
                f14377a[MataAction.ADD_TRIAL.ordinal()] = 2;
                f14377a[MataAction.REMOVE_TRIAL.ordinal()] = 3;
                f14377a[MataAction.ADD_PREMIUM.ordinal()] = 4;
                f14377a[MataAction.REMOVE_PREMIUM.ordinal()] = 5;
                f14377a[MataAction.ADD_SCAM_BLOCK.ordinal()] = 6;
                f14377a[MataAction.REMOVE_SCAM_BLOCK.ordinal()] = 7;
                f14377a[MataAction.ADD_CALLER_ID.ordinal()] = 8;
                f14377a[MataAction.REMOVE_CALLER_ID.ordinal()] = 9;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public final ErrorMessage m5567g() {
            return SubscriptionHelper.m5332B() ? new ErrorMessage.General(C1517R.string.my_account_error_network_header, C1517R.string.processing_error_desc_full_xp) : new ErrorMessage.General(C1517R.string.my_account_error_network_header, C1517R.string.processing_error_desc_full);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @StringRes
        /* renamed from: h */
        public final int m5566h() {
            return SubscriptionHelper.m5332B() ? C1517R.string.call_care_error_start_xp : C1517R.string.call_care_error_start;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @StringRes
        /* renamed from: i */
        public final int m5565i() {
            return SubscriptionHelper.m5332B() ? C1517R.string.call_care_error_start_short_xp : C1517R.string.call_care_error_start_short;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @StringRes
        /* renamed from: k */
        public final int m5563k() {
            return SubscriptionHelper.m5332B() ? C1517R.string.my_account_error_trial_add_failed_body_start_xp : C1517R.string.my_account_error_trial_add_failed_body_start;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @StringRes
        /* renamed from: l */
        public final int m5562l() {
            return SubscriptionHelper.m5332B() ? C1517R.string.my_account_error_trial_expired_body_start_xp : C1517R.string.my_account_error_trial_expired_body_start;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @StringRes
        /* renamed from: m */
        public final int m5561m() {
            return SubscriptionHelper.m5332B() ? C1517R.string.my_account_error_unsupported_body_start_xp : C1517R.string.my_account_error_unsupported_body_start;
        }

        @NotNull
        /* renamed from: j */
        public final ErrorMessage m5564j(@NotNull MataAction mataAction, @NotNull String errorCode) {
            ErrorMessage errorMessage;
            Intrinsics.m1830e(mataAction, "mataAction");
            Intrinsics.m1830e(errorCode, "errorCode");
            switch (WhenMappings.f14377a[mataAction.ordinal()]) {
                case 1:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14367a, errorCode);
                    break;
                case 2:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14368b, errorCode);
                    break;
                case 3:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14369c, errorCode);
                    break;
                case 4:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14370d, errorCode);
                    break;
                case 5:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14371e, errorCode);
                    break;
                case 6:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14372f, errorCode);
                    break;
                case 7:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14373g, errorCode);
                    break;
                case 8:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14374h, errorCode);
                    break;
                case 9:
                    errorMessage = (ErrorMessage) MapsKt.m2095g(MataErrorInterpreter.f14375i, errorCode);
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return errorMessage;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "GET_USER_STATUS", "ADD_TRIAL", "REMOVE_TRIAL", "ADD_PREMIUM", "REMOVE_PREMIUM", "ADD_SCAM_BLOCK", "REMOVE_SCAM_BLOCK", "ADD_CALLER_ID", "REMOVE_CALLER_ID", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MataErrorInterpreter$MataAction.class */
    public enum MataAction {
        GET_USER_STATUS,
        ADD_TRIAL,
        REMOVE_TRIAL,
        ADD_PREMIUM,
        REMOVE_PREMIUM,
        ADD_SCAM_BLOCK,
        REMOVE_SCAM_BLOCK,
        ADD_CALLER_ID,
        REMOVE_CALLER_ID
    }

    static {
        Map h;
        Map<String, ErrorMessage> b;
        Map h2;
        Map<String, ErrorMessage> b2;
        Map h3;
        Map<String, ErrorMessage> b3;
        Map h4;
        Map<String, ErrorMessage> b4;
        Map h5;
        Map<String, ErrorMessage> b5;
        Map h6;
        Map<String, ErrorMessage> b6;
        Map h7;
        Map<String, ErrorMessage> b7;
        Map h8;
        Map<String, ErrorMessage> b8;
        Map h9;
        Map<String, ErrorMessage> b9;
        h = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.General(C1517R.string.processing_error_title, C1517R.string.processing_error_desc)), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.General(C1517R.string.processing_error_title, C1517R.string.processing_error_desc)));
        b = MapsKt__MapWithDefaultKt.m2089b(h, MataErrorInterpreter$Companion$getUserStatusErrors$1.f14382f);
        f14367a = b;
        h2 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("TRIAL_LIMIT_EXCEEDED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trial_limit_header, f14376j.m5566h(), C1517R.string.call_care_error_end, C1517R.string.general_ok)), TuplesKt.m2469a("UNSUPPORTED_ACCOUNT_TYPE", new ErrorMessage.CallCare(C1517R.string.my_account_error_unsupported_header, f14376j.m5561m(), C1517R.string.my_account_error_unsupported_body_end, C1517R.string.general_ok)), TuplesKt.m2469a("TRIAL_EXPIRED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trial_expired_header, f14376j.m5562l(), C1517R.string.my_account_error_trial_expired_body_end, C1517R.string.general_ok)), TuplesKt.m2469a("ADD_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trial_add_failed_header, f14376j.m5563k(), C1517R.string.my_account_error_trial_add_failed_body_end, C1517R.string.general_ok)));
        b2 = MapsKt__MapWithDefaultKt.m2089b(h2, MataErrorInterpreter$Companion$addTrialErrors$1.f14381f);
        f14368b = b2;
        h3 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("REMOVE_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_processing_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b3 = MapsKt__MapWithDefaultKt.m2089b(h3, MataErrorInterpreter$Companion$removeTrialErrors$1.f14386f);
        f14369c = b3;
        h4 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("UNSUPPORTED_ACCOUNT_TYPE", new ErrorMessage.CallCare(C1517R.string.my_account_error_unsupported_header, f14376j.m5561m(), C1517R.string.my_account_error_unsupported_body_end, C1517R.string.general_ok)), TuplesKt.m2469a("ADD_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_setting_up_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)), TuplesKt.m2469a("HAS_BUNDLE", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_setting_up_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b4 = MapsKt__MapWithDefaultKt.m2089b(h4, MataErrorInterpreter$Companion$addPremiumErrors$1.f14379f);
        f14370d = b4;
        h5 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("UNSUPPORTED_ACCOUNT_TYPE", new ErrorMessage.CallCare(C1517R.string.my_account_error_unsupported_header, f14376j.m5561m(), C1517R.string.my_account_error_unsupported_body_end, C1517R.string.general_ok)), TuplesKt.m2469a("REMOVE_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_processing_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b5 = MapsKt__MapWithDefaultKt.m2089b(h5, MataErrorInterpreter$Companion$removePremiumErrors$1.f14384f);
        f14371e = b5;
        h6 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("ADD_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.scam_block_error_add_feature_title, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b6 = MapsKt__MapWithDefaultKt.m2089b(h6, MataErrorInterpreter$Companion$addScamBlockErrors$1.f14380f);
        f14372f = b6;
        h7 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("REMOVE_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.scam_block_error_remove_feature_title, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b7 = MapsKt__MapWithDefaultKt.m2089b(h7, MataErrorInterpreter$Companion$removeScamBlockErrors$1.f14385f);
        f14373g = b7;
        h8 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("ADD_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_processing_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b8 = MapsKt__MapWithDefaultKt.m2089b(h8, MataErrorInterpreter$Companion$addCallerIdErrors$1.f14378f);
        f14374h = b8;
        h9 = MapsKt__MapsKt.m2083h(TuplesKt.m2469a("NO_RESPONSE", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("PROCESSING_ERROR", new ErrorMessage.ProcessingError()), TuplesKt.m2469a("REMOVE_FEATURE_FAILED", new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_processing_header, f14376j.m5565i(), C1517R.string.call_care_error_end, C1517R.string.general_ok)));
        b9 = MapsKt__MapWithDefaultKt.m2089b(h9, MataErrorInterpreter$Companion$removeCallerIdErrors$1.f14383f);
        f14375i = b9;
    }
}
