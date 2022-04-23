package com.privacystar.core.p011ui.home;

import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeContract.class */
public final class HomeContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeContract$Manager;", "", "nonBlockedCallHistoryIsColored", "", "shouldExpandListItems", "shouldShowContextDialog", "shouldShowErrorAsDialog", "shouldShowPaywall", "shouldShowPostPurchaseDialog", "shouldShowSearchSuggestion", "shouldShowUpgradeToPremium", "shouldShowVerifyAndPermissionBanner", "shouldShowWelcomeSubscriberMessage", "shouldUseFullScreenOverlayPermissionsDialog", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.home.HomeContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeContract$Manager.class */
    public interface Manager {
        boolean nonBlockedCallHistoryIsColored();

        boolean shouldExpandListItems();

        boolean shouldShowContextDialog();

        boolean shouldShowErrorAsDialog();

        boolean shouldShowPaywall();

        boolean shouldShowPostPurchaseDialog();

        boolean shouldShowSearchSuggestion();

        boolean shouldShowUpgradeToPremium();

        boolean shouldShowVerifyAndPermissionBanner();

        boolean shouldShowWelcomeSubscriberMessage();

        boolean shouldUseFullScreenOverlayPermissionsDialog();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u001f\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\u000f\u001a\u00020\u0005H&J\b\u0010\u0010\u001a\u00020\u0005H&J\b\u0010\u0011\u001a\u00020\u0005H&J\b\u0010\u0012\u001a\u00020\u0005H&J\b\u0010\u0013\u001a\u00020\u0005H&J\b\u0010\u0014\u001a\u00020\u0005H&J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\tH&J\b\u0010\u0018\u001a\u00020\tH&J\b\u0010\u0019\u001a\u00020\tH&J\b\u0010\u001a\u001a\u00020\tH&J\b\u0010\u001b\u001a\u00020\u0005H&J\b\u0010\u001c\u001a\u00020\tH&J\b\u0010\u001d\u001a\u00020\tH&J\b\u0010\u001e\u001a\u00020\tH&J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000bH&J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H&J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010$\u001a\u00020\u0005H&J\u0010\u0010%\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010&\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!H&J\b\u0010'\u001a\u00020\u0005H&J\b\u0010(\u001a\u00020\u0005H&J\b\u0010)\u001a\u00020\u0005H&J\b\u0010*\u001a\u00020\u0005H&J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u0003H&J\u0018\u0010+\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0003H&J\b\u0010/\u001a\u00020\u0005H&J\b\u00100\u001a\u00020\u0005H&J\b\u00101\u001a\u00020\u0005H&J\b\u00102\u001a\u00020\u0005H&J\b\u00103\u001a\u00020\u0005H&J\b\u00104\u001a\u00020\u0005H&J\u0010\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u000207H&J\b\u00108\u001a\u00020\u0005H&J\u0010\u00109\u001a\u00020\u00052\u0006\u00106\u001a\u000207H&J\b\u0010:\u001a\u00020\u0005H&J\u0010\u0010;\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\u0003H&J\b\u0010=\u001a\u00020\u0005H&J\b\u0010>\u001a\u00020\u0005H&J\b\u0010?\u001a\u00020\u0005H&J\b\u0010@\u001a\u00020\u0005H&J\b\u0010A\u001a\u00020\tH&J\b\u0010B\u001a\u00020\tH&J\b\u0010C\u001a\u00020\tH&J\u0010\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\tH&J\u0010\u0010F\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\tH&J\u0010\u0010G\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\tH&J\b\u0010H\u001a\u00020\u0005H&J\u0010\u0010I\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\tH&J\b\u0010J\u001a\u00020\u0005H&J\u0010\u0010K\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000bH&J\b\u0010L\u001a\u00020\u0005H&J\u0010\u0010M\u001a\u00020\u00052\u0006\u0010N\u001a\u00020\tH&J\b\u0010O\u001a\u00020\u0005H&J\u0010\u0010P\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\tH&J\u0010\u0010R\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010S\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010T\u001a\u00020\u0005H&J\b\u0010U\u001a\u00020\u0005H&¨\u0006V"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeContract$View;", "", "adapterItemCount", "", "addNumberToLookupHistory", "", "number", "", "approveEntry", "", "callDetails", "Lcom/privacystar/core/data/call/call_details/CallDetails;", "attemptPurchase", "productID", "blockEntry", "changeThemeForSprint", "checkAndSetFullUX", "checkIfPremiumUser", "checkPurchases", "clearNumberSearchField", "endSearching", "getOldPosition", "()Ljava/lang/Integer;", "hasCallLogPermission", "hasContactPermission", "hasDrawOverlayPermission", "hasPhoneStatePermission", "initializeEventListeners", "isContentShaderVisible", "isSearchFeatureAvailable", "isUsingGP", "launchAddContact", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "launchCallerDetail", "entry", "launchNumberVerificationFragment", "launchReport", "launchSendMessage", "launchSettings", "launchSubscriptionFragment", "notifyContentProviderChanged", "notifyDatasetChanged", "notifyItemChanged", FirebaseAnalytics.Param.INDEX, "start", "end", "openPlayStore", "prepareForSearch", "registerContactChangeObserver", "removeAlertBanner", "resetCachedContacts", "scheduleWelcomeSubscriberMessage", "setAdapterFilter", "filter", "Lcom/privacystar/core/data/activity_log/PSLogFilters;", "setExpandingAnimation", "setFilterTitleText", "setHasReachedHomeActivity", "setNewPosition", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "setupFilterMenu", "setupRecycler", "setupStartupMessageTimer", "setupSuggestionAdapter", "shouldShowCallLogPermission", "shouldShowContactPermission", "shouldShowPhoneStatePermission", "showAlertBannerCallLogMissing", "takeToSettings", "showAlertBannerContactMissing", "showAlertBannerMultiplePermissionsMissing", "showAlertBannerNumberVerification", "showAlertBannerPhoneStateMissing", "showCallLogPermissionNativeDialog", "showContextDialog", "showInvalidNumberMessage", "showOverlayPermissionDialog", "isFullScreen", "showPaywall", "showUpgradeToPremium", "isVisible", "unapproveEntry", "unblockEntry", "updateContentProvider", "updateGPCache", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.home.HomeContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeContract$View.class */
    public interface View {
        int adapterItemCount();

        void addNumberToLookupHistory(@NotNull String str);

        boolean approveEntry(@NotNull CallDetails callDetails);

        void attemptPurchase(@Nullable String str);

        boolean blockEntry(@NotNull CallDetails callDetails);

        void changeThemeForSprint();

        void checkAndSetFullUX();

        void checkIfPremiumUser();

        void checkPurchases();

        void clearNumberSearchField();

        void endSearching();

        @Nullable
        Integer getOldPosition();

        boolean hasCallLogPermission();

        boolean hasContactPermission();

        boolean hasDrawOverlayPermission();

        boolean hasPhoneStatePermission();

        void initializeEventListeners();

        boolean isContentShaderVisible();

        boolean isSearchFeatureAvailable();

        boolean isUsingGP();

        void launchAddContact(@NotNull Caller caller);

        void launchCallerDetail(@NotNull CallDetails callDetails);

        void launchCallerDetail(@NotNull Caller caller);

        void launchCallerDetail(@NotNull String str);

        void launchNumberVerificationFragment();

        void launchReport(@NotNull CallDetails callDetails);

        void launchSendMessage(@NotNull Caller caller);

        void launchSettings();

        void launchSubscriptionFragment();

        void notifyContentProviderChanged();

        void notifyDatasetChanged();

        void notifyItemChanged(int i);

        void notifyItemChanged(int i, int i2);

        void openPlayStore();

        void prepareForSearch();

        void registerContactChangeObserver();

        void removeAlertBanner();

        void resetCachedContacts();

        void scheduleWelcomeSubscriberMessage();

        void setAdapterFilter(@NotNull PSLogFilters pSLogFilters);

        void setExpandingAnimation();

        void setFilterTitleText(@NotNull PSLogFilters pSLogFilters);

        void setHasReachedHomeActivity();

        void setNewPosition(int i);

        void setupFilterMenu();

        void setupRecycler();

        void setupStartupMessageTimer();

        void setupSuggestionAdapter();

        boolean shouldShowCallLogPermission();

        boolean shouldShowContactPermission();

        boolean shouldShowPhoneStatePermission();

        void showAlertBannerCallLogMissing(boolean z);

        void showAlertBannerContactMissing(boolean z);

        void showAlertBannerMultiplePermissionsMissing(boolean z);

        void showAlertBannerNumberVerification();

        void showAlertBannerPhoneStateMissing(boolean z);

        void showCallLogPermissionNativeDialog();

        void showContextDialog(@NotNull CallDetails callDetails);

        void showInvalidNumberMessage();

        void showOverlayPermissionDialog(boolean z);

        void showPaywall();

        void showUpgradeToPremium(boolean z);

        boolean unapproveEntry(@NotNull CallDetails callDetails);

        boolean unblockEntry(@NotNull CallDetails callDetails);

        void updateContentProvider();

        void updateGPCache();
    }
}
