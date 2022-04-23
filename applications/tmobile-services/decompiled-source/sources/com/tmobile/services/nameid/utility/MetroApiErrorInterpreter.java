package com.tmobile.services.nameid.utility;

import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.ErrorMessage;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapWithDefaultKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u0003:\u0002\u0003\u0004B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter;", "<init>", "()V", "Companion", "MetroApiAction", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroApiErrorInterpreter.class */
public final class MetroApiErrorInterpreter {

    /* renamed from: c */
    private static final Map<String, ErrorMessage> f14389c;

    /* renamed from: d */
    private static final Map<String, ErrorMessage> f14390d;

    /* renamed from: e */
    public static final Companion f14391e = new Companion(null);

    /* renamed from: a */
    private static final ErrorMessage f14387a = new ErrorMessage.General(C1517R.string.my_account_error_network_header, C1517R.string.processing_error_desc_full);

    /* renamed from: b */
    private static final ErrorMessage f14388b = new ErrorMessage.CallCare(C1517R.string.my_account_error_trouble_processing_header, C1517R.string.call_care_error_start_short, C1517R.string.call_care_error_end, C1517R.string.general_ok);

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0015\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0016\u0010\u000e\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\fR\u0016\u0010\u0011\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\fR\u0016\u0010\u0012\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\fR\u0016\u0010\u0013\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\fR\u0016\u0010\u0015\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\fR\u0016\u0010\u0016\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\fR\u0016\u0010\u0017\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\fR\u0016\u0010\u0018\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\fR\u0016\u0010\u0019\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\fR\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$Companion;", "Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;", "action", "", "errorCode", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "getErrorMessage", "(Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;Ljava/lang/String;)Lcom/tmobile/services/nameid/utility/ErrorMessage;", "", "addCallerIdErrors", "Ljava/util/Map;", "already_upgraded", "Ljava/lang/String;", "app_not_supported", "callCareMessage", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "carrier_not_supported", "duplicate_found", "fifth_pin_error", "genericMessage", "in_wait_state", "internal", "invalid", "license_active", "no_license_soc", "pin_error", "removeCallerIdErrors", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroApiErrorInterpreter$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroApiErrorInterpreter$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {

            /* renamed from: a */
            public static final /* synthetic */ int[] f14392a;

            static {
                int[] iArr = new int[MetroApiAction.values().length];
                f14392a = iArr;
                iArr[MetroApiAction.ADD_CALLER_ID.ordinal()] = 1;
                f14392a[MetroApiAction.REMOVE_CALLER_ID.ordinal()] = 2;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final ErrorMessage m5539a(@NotNull MetroApiAction action, @NotNull String errorCode) {
            Intrinsics.m1830e(action, "action");
            Intrinsics.m1830e(errorCode, "errorCode");
            String lowerCase = errorCode.toLowerCase();
            Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase()");
            int i = WhenMappings.f14392a[action.ordinal()];
            return i != 1 ? i != 2 ? MetroApiErrorInterpreter.f14387a : (ErrorMessage) MapsKt.m2095g(MetroApiErrorInterpreter.f14390d, lowerCase) : (ErrorMessage) MapsKt.m2095g(MetroApiErrorInterpreter.f14389c, lowerCase);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "SUBSCRIBE", "UNSUBSCRIBE", "LICENSE_CHECK", "BLOCK_LIST", "ADD_CALLER_ID", "REMOVE_CALLER_ID", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroApiErrorInterpreter$MetroApiAction.class */
    public enum MetroApiAction {
        SUBSCRIBE,
        UNSUBSCRIBE,
        LICENSE_CHECK,
        BLOCK_LIST,
        ADD_CALLER_ID,
        REMOVE_CALLER_ID
    }

    static {
        Map d;
        Map<String, ErrorMessage> b;
        Map d2;
        Map<String, ErrorMessage> b2;
        d = MapsKt__MapsJVMKt.m2087d(TuplesKt.m2469a("internal", f14387a));
        b = MapsKt__MapWithDefaultKt.m2089b(d, MetroApiErrorInterpreter$Companion$addCallerIdErrors$1.f14393f);
        f14389c = b;
        d2 = MapsKt__MapsJVMKt.m2087d(TuplesKt.m2469a("internal", f14387a));
        b2 = MapsKt__MapWithDefaultKt.m2089b(d2, MetroApiErrorInterpreter$Companion$removeCallerIdErrors$1.f14394f);
        f14390d = b2;
    }
}
