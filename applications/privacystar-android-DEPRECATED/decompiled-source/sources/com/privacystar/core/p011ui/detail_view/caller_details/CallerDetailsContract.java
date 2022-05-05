package com.privacystar.core.p011ui.detail_view.caller_details;

import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.p011ui.widgets.NumberListType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract.class */
public final class CallerDetailsContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$Manager;", "", "shouldShowCallCategory", "", "shouldShowConfirmationForReport", "shouldShowContextMenu", "shouldShowInfoMessagesAsSnackbar", "shouldShowLocation", "shouldShowTagsAfterRoboCall", "shouldShowThankYouAfterReporting", "shouldShowUnBlockRemoveIcon", "shouldShowYesNoDivider", "shouldUseContactButton", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$Manager.class */
    public interface Manager {
        boolean shouldShowCallCategory();

        boolean shouldShowConfirmationForReport();

        boolean shouldShowContextMenu();

        boolean shouldShowInfoMessagesAsSnackbar();

        boolean shouldShowLocation();

        boolean shouldShowTagsAfterRoboCall();

        boolean shouldShowThankYouAfterReporting();

        boolean shouldShowUnBlockRemoveIcon();

        boolean shouldShowYesNoDivider();

        boolean shouldUseContactButton();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\b\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0003H&J\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012H&¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\tH&J\b\u0010\u0015\u001a\u00020\tH&J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0012\u0010 \u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0006H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010$\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\tH&J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\b\u0010'\u001a\u00020\u0003H&J\b\u0010(\u001a\u00020\u0003H&J\u0012\u0010)\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0012\u0010*\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J \u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\tH&J\b\u0010/\u001a\u00020\u0003H&J\u0010\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\tH&J\u0010\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u00020\tH&J\u0010\u00104\u001a\u00020\u00032\u0006\u00103\u001a\u00020\tH&J\u0010\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u00020\u0006H&J\u0010\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\tH&J\b\u00109\u001a\u00020\u0003H&J \u0010:\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020=H&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\tH&J\u0010\u0010@\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010A\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H&J\u0010\u0010B\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0012\u0010D\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&¨\u0006E"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$View;", "", "addContactListener", "", "blockNumber", "number", "", "callDataCollectionVisibility", "isVisible", "", "collapseCategoryTags", "collapseRoboCallBanner", "configureContextMenu", "couldBlockAsScam", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "enableFAB", "getTags", "", "()[Ljava/lang/String;", "isApprovingFeatureEnabled", "isBlockingFeatureEnabled", "isCallerApproved", "isCallerBlocked", "isQuestionnaireRecordedForNumber", "launchSubscriptionFragment", "openAddContactScreen", "name", "phoneNumber", "openReportScreen", "openSendCallScreen", "openSendMessageScreen", "populateRecycler", "selectButtonWithTitle", "title", "setAddContactMenuVisible", "setApproved", "isApproved", "setToolbarVisibility", "setYNQuestion", "setupApproveButton", "setupBlockButton", "setupViewData", "showBlockApproveSwitchDialog", "listType", "Lcom/privacystar/core/ui/widgets/NumberListType;", "shouldBeBanner", "showCategoryTags", "showHideFieldsIfUnknownNumber", "isUnknownNumber", "showNumberApprovedMessage", "shouldBeSnackbar", "showNumberBlockedMessage", "showReportConfirmationDialog", "type", "showReportSubmittedMessage", "isSuccess", "showThankYouText", "showTypeBlockedMessage", "useBanner", "offenderCategoryId", "", "showUnknownBlockedDialog", "enabled", "showYNQuestion", "storeQuestionnaireResponse", "unBlockNumber", "unblockEntryBanner", "update", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsContract$View.class */
    public interface View {
        void addContactListener();

        void blockNumber(@NotNull String str);

        void callDataCollectionVisibility(boolean z);

        void collapseCategoryTags();

        void collapseRoboCallBanner();

        void configureContextMenu();

        boolean couldBlockAsScam(@NotNull Caller caller);

        void enableFAB();

        @NotNull
        String[] getTags();

        boolean isApprovingFeatureEnabled();

        boolean isBlockingFeatureEnabled();

        boolean isCallerApproved(@NotNull Caller caller);

        boolean isCallerBlocked(@NotNull Caller caller);

        boolean isQuestionnaireRecordedForNumber(@NotNull String str);

        void launchSubscriptionFragment();

        void openAddContactScreen(@NotNull String str, @NotNull String str2);

        void openReportScreen(@NotNull Caller caller);

        void openSendCallScreen(@NotNull String str);

        void openSendMessageScreen(@NotNull String str);

        void populateRecycler(@Nullable Caller caller);

        void selectButtonWithTitle(@NotNull String str);

        void setAddContactMenuVisible(boolean z);

        void setApproved(@NotNull String str, boolean z);

        void setToolbarVisibility(boolean z);

        void setYNQuestion();

        void setupApproveButton();

        void setupBlockButton(@Nullable Caller caller);

        void setupViewData(@Nullable Caller caller);

        void showBlockApproveSwitchDialog(@NotNull NumberListType numberListType, @NotNull String str, boolean z);

        void showCategoryTags();

        void showHideFieldsIfUnknownNumber(boolean z);

        void showNumberApprovedMessage(boolean z);

        void showNumberBlockedMessage(boolean z);

        void showReportConfirmationDialog(@NotNull String str);

        void showReportSubmittedMessage(boolean z);

        void showThankYouText();

        void showTypeBlockedMessage(@NotNull String str, boolean z, int i);

        void showUnknownBlockedDialog(boolean z);

        void showYNQuestion(boolean z);

        void storeQuestionnaireResponse(@NotNull String str, @NotNull String str2);

        void unBlockNumber(@NotNull String str);

        void unblockEntryBanner(@NotNull String str);

        void update(@Nullable Caller caller);
    }
}
