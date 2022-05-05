package com.tmobile.services.nameid.Settings.callerIdPrefs;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs;", "Lkotlin/Any;", "CnamEligibility", "Model", "OutboundCnamListener", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs.class */
public interface CallerIdPrefs {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0001\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Eligible", "Ineligible", "Business", "Unknown", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility.class */
    public enum CnamEligibility {
        Eligible,
        Ineligible,
        Business,
        Unknown
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0010\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model;", "Lkotlin/Any;", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener;", "listener", "", "addCnamListener", "(Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener;)V", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility;", "getCnamEligibility", "()Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$CnamEligibility;", "", "getOutboundCallerName", "()Ljava/lang/String;", "", "isCnamEnabled", "()Z", "removeCnamListener", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model.class */
    public interface Model {
        @NotNull
        /* renamed from: a */
        String mo7336a();

        @NotNull
        /* renamed from: b */
        CnamEligibility mo7335b();

        /* renamed from: c */
        void mo7334c(@NotNull OutboundCnamListener outboundCnamListener);

        /* renamed from: d */
        void mo7333d(@NotNull OutboundCnamListener outboundCnamListener);

        /* renamed from: e */
        boolean mo7332e();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener;", "Lkotlin/Any;", "", "name", "", "onCnamUpdate", "(Ljava/lang/String;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener.class */
    public interface OutboundCnamListener {
        /* renamed from: d */
        void mo7337d(@NotNull String str);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Presenter;", "Lkotlin/Any;", "", "getOutboundCallerName", "()Ljava/lang/String;", "", "onCreateView", "()V", "onDestroyView", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Presenter.class */
    public interface Presenter {
        @NotNull
        /* renamed from: a */
        String mo7340a();

        /* renamed from: b */
        void mo7339b();

        /* renamed from: c */
        void mo7338c();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H&¢\u0006\u0004\b\r\u0010\bJ\u000f\u0010\u000e\u001a\u00020\u0004H&¢\u0006\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$View;", "Lkotlin/Any;", "", "name", "", "setOutboundCnam", "(Ljava/lang/String;)V", "showBusinessView", "()V", "", "enabled", "showCnamEnabled", "(Z)V", "showEligibleView", "showIneligibleView", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$View.class */
    public interface View {
        /* renamed from: C0 */
        void mo7372C0(boolean z);

        /* renamed from: D */
        void mo7371D();

        /* renamed from: q0 */
        void mo7348q0();

        /* renamed from: y */
        void mo7347y();

        /* renamed from: z0 */
        void mo7346z0(@NotNull String str);
    }
}
