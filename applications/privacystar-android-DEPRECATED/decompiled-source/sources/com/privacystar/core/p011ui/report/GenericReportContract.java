package com.privacystar.core.p011ui.report;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.data.call.caller.Caller;
import java.util.HashMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\b\u0018��2\u00020\u0001:\u0006\u0003\u0004\u0005\u0006\u0007\bB\u0005¢\u0006\u0002\u0010\u0002¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract;", "", "()V", "ButtonDisplayOption", "Manager", "OnAnimationEnded", "ReportNavigation", "ReportNavigationListener", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract.class */
public final class GenericReportContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "", "(Ljava/lang/String;I)V", "ACTION_BUTTON_ONLY", "ACTION_AND_BACK_BUTTON", "BUTTON_ON_TOOLBAR", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$ButtonDisplayOption */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption.class */
    public enum ButtonDisplayOption {
        ACTION_BUTTON_ONLY,
        ACTION_AND_BACK_BUTTON,
        BUTTON_ON_TOOLBAR
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\u0006H&¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$Manager;", "", "buttonOptionIfLastPage", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "buttonOptionIfNotLastPage", "shouldConsiderSMS", "", "shouldDynamicallyEnableDisableButtons", "shouldShowSuccessAsANewPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$Manager.class */
    public interface Manager {
        @NotNull
        ButtonDisplayOption buttonOptionIfLastPage();

        @NotNull
        ButtonDisplayOption buttonOptionIfNotLastPage();

        boolean shouldConsiderSMS();

        boolean shouldDynamicallyEnableDisableButtons();

        boolean shouldShowSuccessAsANewPage();
    }

    @FunctionalInterface
    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bg\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$OnAnimationEnded;", "", "onAnimationEnded", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$OnAnimationEnded */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$OnAnimationEnded.class */
    public interface OnAnimationEnded {
        void onAnimationEnded();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;", "", "(Ljava/lang/String;I)V", "NON_OFFENDER", "DEBT_COLLECTOR_START", "DEBT_MIDDLE", "DEBT_END", "TELEMARKETER_START", "THANK_YOU", "SCAMMER_START", "SCAMMER_END", "TEXT_MESSAGE", "BACK", "NONE", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$ReportNavigation */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$ReportNavigation.class */
    public enum ReportNavigation {
        NON_OFFENDER,
        DEBT_COLLECTOR_START,
        DEBT_MIDDLE,
        DEBT_END,
        TELEMARKETER_START,
        THANK_YOU,
        SCAMMER_START,
        SCAMMER_END,
        TEXT_MESSAGE,
        BACK,
        NONE
    }

    @FunctionalInterface
    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\bg\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;", "", "onNavigation", "", "page", "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$ReportNavigationListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener.class */
    public interface ReportNavigationListener {
        void onNavigation(@NotNull ReportNavigation reportNavigation);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u0003H&J\u0013\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH&¢\u0006\u0002\u0010\u0010J4\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u00162\u0006\u0010\u0018\u001a\u00020\u000fH&J\b\u0010\u0019\u001a\u00020\u0003H&J\b\u0010\u001a\u001a\u00020\u000bH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u000fH&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000bH&J \u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010'\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\u0010\u0010)\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0012H&J\b\u0010*\u001a\u00020\u0003H&J,\u0010+\u001a\u00020\u00032\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0\u00162\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.H&¨\u0006/"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportContract$View;", "", "addACleanReportContainer", "", "addCloseIconToLeftOfToolbar", "animateReportContentIn", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/privacystar/core/ui/report/GenericReportContract$OnAnimationEnded;", "animateReportContentOut", "enableActionButtons", "isEnabled", "", "finishActivity", "getDefaultQuestionArray", "", "", "()[Ljava/lang/String;", "getReportBuilderBundle", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;", "backward", "reportList", "Ljava/util/HashMap;", "", "number", "goBackFromActivity", "isShowingLastPage", "launchThankYouPage", "refreshMenuItem", "isVisible", "setupCallerInformationText", "name", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "setupDebtCollectorStartView", "bundle", "setupDebtConsentView", "setupGenericEndView", "setupNonOffenderView", "setupScammerEndView", "setupScammerStartView", "setupTextMessageView", "setupToolbar", "submitComplaint", "reportItems", "callTime", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.report.GenericReportContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportContract$View.class */
    public interface View {
        void addACleanReportContainer();

        void addCloseIconToLeftOfToolbar();

        void animateReportContentIn(@NotNull OnAnimationEnded onAnimationEnded);

        void animateReportContentOut(@NotNull OnAnimationEnded onAnimationEnded);

        void enableActionButtons(boolean z);

        void finishActivity();

        @NotNull
        String[] getDefaultQuestionArray();

        @NotNull
        ReportBuilderBundle getReportBuilderBundle(@NotNull ReportNavigationListener reportNavigationListener, boolean z, @NotNull HashMap<Integer, String> hashMap, @NotNull String str);

        void goBackFromActivity();

        boolean isShowingLastPage();

        void launchThankYouPage(@NotNull String str);

        void refreshMenuItem(boolean z);

        void setupCallerInformationText(@NotNull String str, @NotNull String str2, @NotNull Caller caller);

        void setupDebtCollectorStartView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupDebtConsentView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupGenericEndView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupNonOffenderView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupScammerEndView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupScammerStartView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupTextMessageView(@NotNull ReportBuilderBundle reportBuilderBundle);

        void setupToolbar();

        void submitComplaint(@NotNull HashMap<Integer, String> hashMap, @NotNull String str, long j);
    }
}
