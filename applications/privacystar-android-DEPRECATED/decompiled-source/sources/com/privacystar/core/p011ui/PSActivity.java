package com.privacystar.core.p011ui;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.annotation.ColorRes;
import android.support.annotation.RequiresApi;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentTransaction;
import android.support.p004v7.app.AppCompatActivity;
import android.view.Window;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.p011ui.detail_view.settings.SwitchState;
import com.privacystar.core.p011ui.util.DialogUtil;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.ThemeUtil;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import java.util.Date;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.PSActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/PSActivity.class */
public abstract class PSActivity extends AppCompatActivity implements AttachSubscriptionObserver {
    public static final String EXTRA_NEW_INTENT = "NewIntentExtraArg";
    static int activitiesOpen = 0;
    protected static boolean hasReachedHomeActivity = false;
    private static boolean wasResumedFromActivity = false;
    private Realm realm;
    private RealmResults<Subscription> subscriptionsResults;
    protected volatile boolean isRunning = true;
    private OnSubscriptionChangedListener subscriptionChangeObserver = null;
    private RealmChangeListener<RealmResults<Subscription>> realmChangedListener = new RealmChangeListener(this) { // from class: com.privacystar.core.ui.PSActivity$$Lambda$0
        private final PSActivity arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // io.realm.RealmChangeListener
        public void onChange(Object obj) {
            this.arg$1.lambda$new$0$PSActivity((RealmResults) obj);
        }
    };

    /* renamed from: com.privacystar.core.ui.PSActivity$OnSubscriptionChangedListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/PSActivity$OnSubscriptionChangedListener.class */
    public interface OnSubscriptionChangedListener {
        void onSubscriptionChanged(boolean z);
    }

    private static void addToActivitiesOpen(int i) {
        activitiesOpen += i;
    }

    private void checkLicenseOutOfDate() {
        if (PreferenceUtil.getIsLicenseOutOfDate()) {
            Timber.m37d("App resumed and found license was made out-of-date. Refreshing with backend.", new Object[0]);
            RegistrationHandler.getInstance().checkRegistration(this, true);
        }
    }

    private void checkPendingExternalActions() {
        if (Build.VERSION.SDK_INT >= 23) {
            checkPendingExternalActions23();
            CallerYDHelper.INSTANCE.onOverlayPermissionChanged();
        }
    }

    @RequiresApi(23)
    private void checkPendingExternalActions23() {
        if (PreferenceUtil.getIsOverlayPermissionPending()) {
            if (!Settings.canDrawOverlays(this)) {
                Timber.m37d("App resumed after requesting window overlay permissions: permissions were denied.", new Object[0]);
            } else {
                Timber.m37d("App resumed after requesting window overlay permissions: permissions were granted.", new Object[0]);
            }
            PreferenceUtil.putIsOverlayPermissionPending(false);
        }
    }

    private static Class getCurrentClass() {
        String className = Thread.currentThread().getStackTrace()[2].getClassName();
        Timber.m28v("Current class: %s", className);
        try {
            return Class.forName(className);
        } catch (ClassNotFoundException e) {
            Timber.m23w(e, "Couldn't reflect on this class.", new Object[0]);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$showPsServicesDisabledDialog$1$PSActivity(Context context) {
        PreferenceUtil.putApplicationEnabled(true);
        SwitchState.getPsServiceSwitchState().setState(true);
        PreferenceUtil.putPsServiceDisabledDialogShowing(false);
        Timber.m37d("PrivacyStar Service (Application) set to: enabled", new Object[0]);
    }

    public static Intent newIntent(Context context, String str) {
        Class currentClass = getCurrentClass();
        if (currentClass == null) {
            Timber.m37d("Error reflecting on current class.", new Object[0]);
            return null;
        }
        Intent intent = new Intent(context, currentClass);
        intent.putExtra(EXTRA_NEW_INTENT, str);
        return intent;
    }

    private void notifyObserver(boolean z) {
        if (this.subscriptionChangeObserver != null) {
            this.subscriptionChangeObserver.onSubscriptionChanged(z);
        }
    }

    private static void setWasResumedFromActivity(boolean z) {
        wasResumedFromActivity = z;
    }

    private void showPsServicesDisabledDialog() {
        if (PreferenceUtil.getPsServiceDisabledDialogShowing()) {
            Timber.m37d("App Service disabled dialog is already showing, won't show again.", new Object[0]);
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(getString(C1566R.string.info_dialog_ps_services_disabled_title)).withBody(getString(C1566R.string.info_dialog_ps_services_disabled_explanation)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_ps_services_disable_yes), PSActivity$$Lambda$1.$instance), new DialogButton(getString(C1566R.string.info_dialog_ps_services_disable_no), PSActivity$$Lambda$2.$instance)).build();
        PreferenceUtil.putPsServiceDisabledDialogShowing(true);
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.add(build, "ps_service_disabled_fragment");
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // com.privacystar.core.p011ui.AttachSubscriptionObserver
    public void attachObserver(@NotNull OnSubscriptionChangedListener onSubscriptionChangedListener) {
        this.subscriptionChangeObserver = onSubscriptionChangedListener;
    }

    public Realm getRealm() {
        if (this.realm == null || this.realm.isClosed()) {
            this.realm = Realm.getDefaultInstance();
        }
        return this.realm;
    }

    public Realm getRealmRaw() {
        return this.realm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$PSActivity(RealmResults realmResults) {
        notifyObserver(((Subscription) realmResults.first()).getSubscriptionType() == SubscriptionType.ACTIVE);
    }

    protected void notifyOfDisabledFeatures() {
        if (!hasReachedHomeActivity) {
            Timber.m37d("Not checking for required dialogs because the app is still starting up.", new Object[0]);
            return;
        }
        boolean z = !wasResumedFromActivity;
        if (PreferenceUtil.getAreStartupMessagesEnabled()) {
            PreferenceUtil.putAreStartupMessagesEnabled(false);
            Timber.m37d("Startup message are enabled. Consuming status.", new Object[0]);
            z = true;
        }
        if (z) {
            if (!PreferenceUtil.getApplicationEnabled()) {
                Timber.m37d("PS Service is not enabled, prompting user to re-enable.", new Object[0]);
                showPsServicesDisabledDialog();
                return;
            }
            Timber.m37d("PS Service is enabled, no prompt required.", new Object[0]);
        }
    }

    protected void notifyOfSubscriptionStatus() {
        if (BuildUtil.INSTANCE.doesVariantHavePurchaseView(this)) {
            Timber.m37d("Not checking subscription status because this variant isn't free.", new Object[0]);
        } else if (!hasReachedHomeActivity) {
            Timber.m37d("Not checking subscription status because the app is still starting up.", new Object[0]);
        } else {
            Subscription subscription = SubscriptionRealm.getSubscription(getRealm());
            Date date = null;
            if (subscription != null) {
                date = subscription.getExpiration();
            }
            if (date != null && date.getTime() != PreferenceUtil.getLastReceiptExpiration()) {
                PreferenceUtil.putLastReceiptExpiration(date.getTime());
                DialogUtil.INSTANCE.showAllowingStateLoss(StaticDialogs.INSTANCE.newUnsubscribeDialog(this), getSupportFragmentManager(), "unsubscribe_on_upgrade_fragment", this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getResources().getBoolean(C1566R.bool.variant_has_themes)) {
            ThemeUtil.onActivityOnCreateSetTheme(this);
        }
        this.realm = getRealm();
        MessageRealm.deleteExpiredMessages(this.realm);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.isRunning = false;
        if (this.realm != null && !this.realm.isClosed()) {
            this.realm.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        addToActivitiesOpen(-1);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        checkLicenseOutOfDate();
        notifyOfDisabledFeatures();
        notifyOfSubscriptionStatus();
        checkPendingExternalActions();
        this.isRunning = true;
        addToActivitiesOpen(1);
        setWasResumedFromActivity(false);
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.subscriptionsResults = this.realm.where(Subscription.class).findAllAsync();
        this.subscriptionsResults.addChangeListener(this.realmChangedListener);
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.subscriptionsResults.removeChangeListener(this.realmChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean restartAppIfPermissionsMissing() {
        if (PermissionUtils.hasMinimumPermissions(this)) {
            return false;
        }
        Timber.m37d("Received PermissionResult without calling it - permissions must have changed by user.", new Object[0]);
        Intent intent = new Intent(this, SplashActivity.class);
        intent.setFlags(335544320);
        startActivity(intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStatusBarColor(@ColorRes int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            Window window = getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.setStatusBarColor(getResources().getColor(i));
        }
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        setWasResumedFromActivity(true);
        super.startActivity(intent);
    }
}
