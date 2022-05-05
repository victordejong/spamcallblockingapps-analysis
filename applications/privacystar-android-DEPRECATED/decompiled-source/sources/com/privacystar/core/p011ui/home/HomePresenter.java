package com.privacystar.core.p011ui.home;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.SimpleOffenderFields;
import com.privacystar.core.p011ui.home.HomeContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0017\u001a\u00020\u0011H\u0002J\u0006\u0010\u0018\u001a\u00020\u0011J\b\u0010\u0019\u001a\u00020\u0011H\u0002J\u0006\u0010\u001a\u001a\u00020\u0011J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\fH\u0002J\u0006\u0010\u001d\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0011J\u0006\u0010\u001f\u001a\u00020\bJ\u0006\u0010 \u001a\u00020\u0011J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u0013J\u0010\u0010&\u001a\u00020\u00112\b\u0010%\u001a\u0004\u0018\u00010\u0013J\"\u0010'\u001a\u00020\u00112\b\u0010%\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010(\u001a\u0004\u0018\u00010)J\u0006\u0010*\u001a\u00020\u0011J\u0006\u0010+\u001a\u00020\u0011J\u000e\u0010,\u001a\u00020\b2\u0006\u0010-\u001a\u00020\fJ\u000e\u0010.\u001a\u00020\u00112\u0006\u0010/\u001a\u00020\bJ\u000e\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\bJ\u000e\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\bJ\u0006\u00104\u001a\u00020\u0011J\b\u00105\u001a\u00020\u0011H\u0002J\b\u00106\u001a\u00020\u0011H\u0002J\u0006\u00107\u001a\u00020\bJ\b\u00108\u001a\u00020\u0011H\u0002J\u0012\u00109\u001a\u00020\u00112\b\u0010:\u001a\u0004\u0018\u00010\fH\u0002J\u0006\u0010;\u001a\u00020\u0011J \u0010<\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010(\u001a\u00020)H\u0002J\u0018\u0010=\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010>\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010?\u001a\u00020\u0011H\u0002J\u0010\u0010@\u001a\u00020\u00112\b\u0010A\u001a\u0004\u0018\u00010\fJ\u0006\u0010B\u001a\u00020\u0011R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u00030\u00030\u000eX\u0082\u0004¢\u0006\u0002\n��¨\u0006C"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomePresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/home/HomeContract$View;", "(Lcom/privacystar/core/ui/home/HomeContract$View;)V", "currentGrouping", "Lcom/privacystar/core/data/activity_log/LogGrouping;", "isSearching", "", "manager", "Lcom/privacystar/core/ui/home/HomeManagerImpl;", "pendingProductId", "", "purchasePending", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "approveEntry", "", "callDetails", "Lcom/privacystar/core/data/call/call_details/CallDetails;", FirebaseAnalytics.Param.INDEX, "", "blockEntry", "checkVerificationAndPermissions", "emptyListAllowPermissionClicked", "endSearching", "goToSettingsClicked", "isNumberValid", SimpleOffenderFields.NUM, "onActivityResumed", "onAllPermissionsGranted", "onBackPressed", "onContentShaderClicked", "onFilterChanged", "filterType", "Lcom/privacystar/core/data/activity_log/PSLogFilters;", "onListItemClicked", "entry", "onListItemLongClick", "onListItemSpecialClick", "expandedAction", "Lcom/privacystar/core/data/activity_log/LogExpandedAction;", "onNavigationDrawerOpened", "onRootLayoutTouched", "onSearch", "number", "onSearchFocused", "isFocused", "onSubscriptionChanged", "isActive", "onTriggerContentRefresh", "isFullRefresh", "onVerifyNumberClicked", "presentPostPurchaseDialog", "setupRecycler", "shouldShowErrorAsDialog", "startSearch", "storeAttemptedPurchaseAction", "productId", "titleContainerVisible", "tryToBindExtendedViews", "unapproveEntry", "unblockEntry", "updateContactListAfterPermissionsAllowed", "upgradeToPremiumClicked", "productID", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomePresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomePresenter.class */
public final class HomePresenter {
    private LogGrouping currentGrouping;
    private boolean isSearching;
    private final HomeManagerImpl manager = HomeManagerImpl.INSTANCE;
    private String pendingProductId = "";
    private boolean purchasePending;
    private final WeakReference<HomeContract.View> view;

    public HomePresenter(@NotNull HomeContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final void approveEntry(CallDetails callDetails, int i) {
        HomeContract.View view = this.view.get();
        if (view != null && view.approveEntry(callDetails)) {
            view.notifyItemChanged(i);
        }
    }

    private final void blockEntry(CallDetails callDetails, int i) {
        HomeContract.View view = this.view.get();
        if (view != null && view.blockEntry(callDetails)) {
            view.notifyItemChanged(i);
        }
    }

    private final void checkVerificationAndPermissions() {
        boolean z;
        boolean z2 = false;
        Timber.m37d("checkVerificationAndPermissions Called", new Object[0]);
        HomeContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (!PreferenceUtil.getIsNumberVerified()) {
            Timber.m37d("The Number is not verified. Showing alert banner", new Object[0]);
            AnalyticsManager.INSTANCE.fire(Event.ActivityInactivityVerifyView.INSTANCE);
            view.showAlertBannerNumberVerification();
            return;
        }
        boolean z3 = view.shouldShowContactPermission() || view.hasContactPermission();
        boolean z4 = view.shouldShowPhoneStatePermission() || view.hasPhoneStatePermission();
        boolean z5 = view.shouldShowCallLogPermission() || view.hasCallLogPermission();
        if (!view.hasContactPermission()) {
            z = true;
        } else {
            updateContactListAfterPermissionsAllowed();
            z = false;
        }
        boolean z6 = z;
        if (!view.hasCallLogPermission()) {
            z6 = z | true;
        }
        boolean z7 = z6;
        if (!view.hasPhoneStatePermission()) {
            z7 = z6 | true;
        }
        if (!z7) {
            switch (z7) {
                case false:
                    view.removeAlertBanner();
                    return;
                case true:
                    view.showAlertBannerContactMissing(!z3);
                    return;
                case true:
                    view.showAlertBannerCallLogMissing(!z5);
                    return;
                default:
                    if (!z3 || !z5 || !z4) {
                        z2 = true;
                    }
                    view.showAlertBannerMultiplePermissionsMissing(z2);
                    return;
            }
        } else {
            view.showAlertBannerPhoneStateMissing(!z4);
        }
    }

    private final void endSearching() {
        this.isSearching = false;
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.endSearching();
        }
    }

    private final boolean isNumberValid(String str) {
        return str.length() == 10;
    }

    private final void presentPostPurchaseDialog() {
        HomeContract.View view = this.view.get();
        boolean isUsingGP = view != null ? view.isUsingGP() : false;
        if (isUsingGP) {
            if (!this.purchasePending || this.pendingProductId == null) {
                return;
            }
        } else if (!this.purchasePending) {
            return;
        }
        HomeContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.updateGPCache();
        }
        this.purchasePending = false;
        if (isUsingGP && PreferenceUtil.getLastPurchaseFailed()) {
            Timber.m37d("Last purchase failed. Not showing upgrade success dialog.", new Object[0]);
        }
    }

    private final void setupRecycler() {
        this.currentGrouping = PreferenceUtil.getActivityLogGrouping();
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.setupRecycler();
        }
    }

    private final void startSearch() {
        this.isSearching = true;
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.prepareForSearch();
        }
    }

    private final void storeAttemptedPurchaseAction(String str) {
        this.purchasePending = true;
        this.pendingProductId = str;
    }

    private final boolean tryToBindExtendedViews(CallDetails callDetails, int i, LogExpandedAction logExpandedAction) {
        boolean z;
        Timber.m37d("Received click on %s, trying to find match in extended actions.", logExpandedAction.toString());
        switch (logExpandedAction) {
            case BLOCK:
                blockEntry(callDetails, i);
                z = true;
                break;
            case UNBLOCK:
                unblockEntry(callDetails, i);
                z = true;
                break;
            case REPORT:
                HomeContract.View view = this.view.get();
                if (view != null) {
                    view.launchReport(callDetails);
                }
                AnalyticsManager.INSTANCE.fire(Event.ComplaintFromHomeEvent.INSTANCE);
                z = true;
                break;
            case APPROVE:
                approveEntry(callDetails, i);
                z = true;
                break;
            case UNAPPROVE:
                unapproveEntry(callDetails, i);
                z = true;
                break;
            case ADD_CONTACT:
                HomeContract.View view2 = this.view.get();
                z = true;
                if (view2 != null) {
                    Caller caller = callDetails.getCaller();
                    Intrinsics.checkExpressionValueIsNotNull(caller, "entry.caller");
                    view2.launchAddContact(caller);
                    z = true;
                    break;
                }
                break;
            case MESSAGE:
                HomeContract.View view3 = this.view.get();
                z = true;
                if (view3 != null) {
                    Caller caller2 = callDetails.getCaller();
                    Intrinsics.checkExpressionValueIsNotNull(caller2, "entry.caller");
                    view3.launchSendMessage(caller2);
                    z = true;
                    break;
                }
                break;
            case DETAILS:
                HomeContract.View view4 = this.view.get();
                z = true;
                if (view4 != null) {
                    view4.launchCallerDetail(callDetails);
                    z = true;
                    break;
                }
                break;
            case NONE:
                Timber.m37d("No extended action match.", new Object[0]);
                z = false;
                break;
            default:
                Timber.m37d("No extended action match.", new Object[0]);
                z = false;
                break;
        }
        return z;
    }

    private final void unapproveEntry(CallDetails callDetails, int i) {
        HomeContract.View view = this.view.get();
        if (view != null) {
            Caller caller = callDetails.getCaller();
            Intrinsics.checkExpressionValueIsNotNull(caller, "callDetails.caller");
            Timber.m37d("Unapproving the number: %s", caller.getNumber());
            if (view.unapproveEntry(callDetails)) {
                view.notifyItemChanged(i);
            }
        }
    }

    private final void unblockEntry(CallDetails callDetails, int i) {
        HomeContract.View view = this.view.get();
        if (view != null && view.unblockEntry(callDetails)) {
            view.notifyItemChanged(i);
        }
    }

    private final void updateContactListAfterPermissionsAllowed() {
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.resetCachedContacts();
            view.registerContactChangeObserver();
            if (view.adapterItemCount() == 0) {
                onFilterChanged(PSLogFilters.ALL_ACTIVITY);
            }
        }
    }

    public final void emptyListAllowPermissionClicked() {
        HomeContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (view.shouldShowCallLogPermission()) {
            view.showCallLogPermissionNativeDialog();
        } else {
            goToSettingsClicked();
        }
    }

    public final void goToSettingsClicked() {
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.removeAlertBanner();
            view.launchSettings();
        }
    }

    public final void onActivityResumed() {
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.checkIfPremiumUser();
            if (PreferenceUtil.getActivityLogGrouping() != this.currentGrouping) {
                setupRecycler();
            }
            if (this.manager.shouldShowPostPurchaseDialog()) {
                presentPostPurchaseDialog();
            }
            endSearching();
            onTriggerContentRefresh(PreferenceUtil.getUnseenPhoneEvent());
            if (!PreferenceUtil.getArePurchasesDoubleChecked()) {
                view.checkPurchases();
                PreferenceUtil.putArePurchasesDoubleChecked(true);
            } else if (!view.hasDrawOverlayPermission()) {
                if (!this.manager.shouldUseFullScreenOverlayPermissionsDialog()) {
                    view.showOverlayPermissionDialog(false);
                } else if (PreferenceUtil.getIsFirstHomeActivityVisitThisLaunch()) {
                    view.showOverlayPermissionDialog(true);
                }
            }
            if (this.manager.shouldShowVerifyAndPermissionBanner()) {
                checkVerificationAndPermissions();
            }
            if (view.hasContactPermission()) {
                view.resetCachedContacts();
                view.registerContactChangeObserver();
            }
            if (!PreferenceUtil.getActivityLogLoaded() && view.hasCallLogPermission()) {
                PreferenceUtil.putActivityLogLoaded(true);
                setupRecycler();
            }
        }
    }

    public final void onAllPermissionsGranted() {
        updateContactListAfterPermissionsAllowed();
    }

    public final boolean onBackPressed() {
        HomeContract.View view = this.view.get();
        boolean isContentShaderVisible = view != null ? view.isContentShaderVisible() : false;
        if (!this.isSearching && !isContentShaderVisible) {
            return true;
        }
        Timber.m37d("Back button pressed, ending search", new Object[0]);
        endSearching();
        return false;
    }

    public final void onContentShaderClicked() {
        endSearching();
    }

    public final void onFilterChanged(@NotNull PSLogFilters filterType) {
        Intrinsics.checkParameterIsNotNull(filterType, "filterType");
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.setAdapterFilter(filterType);
            view.notifyDatasetChanged();
            view.setFilterTitleText(filterType);
        }
    }

    public final void onListItemClicked(@NotNull CallDetails entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.launchCallerDetail(entry);
        }
    }

    public final void onListItemLongClick(@Nullable CallDetails callDetails) {
        HomeContract.View view;
        Timber.m28v("Item long clicked", new Object[0]);
        if (this.manager.shouldShowContextDialog() && callDetails != null && (view = this.view.get()) != null) {
            view.showContextDialog(callDetails);
        }
    }

    public final void onListItemSpecialClick(@Nullable CallDetails callDetails, int i, @Nullable LogExpandedAction logExpandedAction) {
        HomeContract.View view;
        if (this.manager.shouldExpandListItems()) {
            HomeContract.View view2 = this.view.get();
            if (view2 != null) {
                Integer oldPosition = view2.getOldPosition();
                boolean z = oldPosition != null && i == oldPosition.intValue();
                if (callDetails == null || logExpandedAction == null || !z || !tryToBindExtendedViews(callDetails, i, logExpandedAction)) {
                    int i2 = z ? -1 : i;
                    view2.setNewPosition(i2);
                    view2.setExpandingAnimation();
                    if (z) {
                        view2.notifyItemChanged(i);
                        return;
                    }
                    if (oldPosition == null) {
                        Intrinsics.throwNpe();
                    }
                    if (oldPosition.intValue() >= 0) {
                        view2.notifyItemChanged(Math.min(oldPosition.intValue(), i2), Math.abs(oldPosition.intValue() - i2) + 1);
                    } else {
                        view2.notifyItemChanged(i);
                    }
                } else {
                    Timber.m37d("Click handled by extended action.", new Object[0]);
                }
            }
        } else if (callDetails != null) {
            Caller caller = callDetails.getCaller();
            Intrinsics.checkExpressionValueIsNotNull(caller, "it.caller");
            if (!caller.isUnknownNumber() && (view = this.view.get()) != null) {
                view.launchCallerDetail(callDetails);
            }
        }
    }

    public final void onNavigationDrawerOpened() {
        endSearching();
    }

    public final void onRootLayoutTouched() {
    }

    public final boolean onSearch(@NotNull String number) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        Timber.m37d("onSearch number: [" + number + "]  isSearching: [" + this.isSearching + ']', new Object[0]);
        if (!this.isSearching) {
            startSearch();
            return false;
        }
        HomeContract.View view = this.view.get();
        if (view == null) {
            return true;
        }
        if (!view.isSearchFeatureAvailable()) {
            view.launchSubscriptionFragment();
            return true;
        }
        boolean isNumberValid = isNumberValid(number);
        AnalyticsUtil.INSTANCE.trackNumberLookup(number, isNumberValid);
        AnalyticsManager.INSTANCE.fire(Event.ActivityNumberLookupClick.INSTANCE);
        if (isNumberValid) {
            Timber.m37d("Saving the number searched to db", new Object[0]);
            if (this.manager.shouldShowSearchSuggestion()) {
                view.addNumberToLookupHistory(number);
            }
            view.launchCallerDetail(number);
            view.clearNumberSearchField();
            view.endSearching();
            return true;
        }
        view.showInvalidNumberMessage();
        return true;
    }

    public final void onSearchFocused(boolean z) {
        if (z) {
            startSearch();
        } else {
            this.isSearching = false;
        }
    }

    public final void onSubscriptionChanged(boolean z) {
        HomeContract.View view = this.view.get();
        if (view != null) {
            if (this.manager.shouldShowUpgradeToPremium()) {
                view.showUpgradeToPremium(!z);
            }
            view.notifyDatasetChanged();
        }
    }

    public final void onTriggerContentRefresh(boolean z) {
        HomeContract.View view = this.view.get();
        if (view != null) {
            if (z) {
                Timber.m37d("Unprocessed phone event flagged - refreshing content provider.", new Object[0]);
                view.updateContentProvider();
            }
            view.notifyDatasetChanged();
            PreferenceUtil.putUnseenPhoneEvent(false);
            view.notifyContentProviderChanged();
        }
    }

    public final void onVerifyNumberClicked() {
        Timber.m37d("Verify Button on Banner Clicked", new Object[0]);
        AnalyticsManager.INSTANCE.fire(Event.ActivityInactivityVerifyClick.INSTANCE);
        PreferenceUtil.putIsNumberVerifying(false);
        PreferenceUtil.putIsNumberVerificationSkipped(false);
        HomeContract.View view = this.view.get();
        if (view != null) {
            view.launchNumberVerificationFragment();
        }
    }

    public final boolean shouldShowErrorAsDialog() {
        return this.manager.shouldShowErrorAsDialog();
    }

    public final void titleContainerVisible() {
        if (this.isSearching) {
            endSearching();
        }
    }

    public final void upgradeToPremiumClicked(@Nullable String str) {
        Timber.m37d("Upgrade To Premium button clicked, launching Google Payment", new Object[0]);
        storeAttemptedPurchaseAction(str);
        PreferenceUtil.putLastPurchaseSucceeded(false);
        PreferenceUtil.putLastPurchaseFailed(false);
        if (this.manager.shouldShowPaywall()) {
            HomeContract.View view = this.view.get();
            if (view != null) {
                view.showPaywall();
                return;
            }
            return;
        }
        HomeContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.attemptPurchase(str);
        }
    }

    public final void viewCreated() {
        HomeContract.View view = this.view.get();
        if (view != null) {
            if (this.manager.shouldShowSearchSuggestion()) {
                view.setupSuggestionAdapter();
            }
            setupRecycler();
            view.setHasReachedHomeActivity();
            view.changeThemeForSprint();
            view.initializeEventListeners();
            endSearching();
            view.setupFilterMenu();
            view.resetCachedContacts();
            view.registerContactChangeObserver();
            view.checkAndSetFullUX();
            if (PreferenceUtil.getShouldScheduleWelcomeSubscriberMessage()) {
                view.scheduleWelcomeSubscriberMessage();
                PreferenceUtil.putShouldScheduleWelcomeSubscriberMessage(false);
            }
            if (this.manager.shouldShowWelcomeSubscriberMessage()) {
                view.setupStartupMessageTimer();
            }
            PreferenceUtil.putHasFinishedOnboarding(true);
            AnalyticsManager.INSTANCE.fire(Event.ActivityPageView.INSTANCE);
        }
    }
}
