package com.privacystar.core.p011ui.intro.intro_core;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.view.View;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.AppControl;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.intro.IntroManagerImpl;
import com.privacystar.core.p011ui.intro.LoadingFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroContract;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.util.DialogUtil;
import com.privacystar.core.p011ui.widgets.PermissionsInfoDialogFragment;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.analytics.EventHelper;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
import io.realm.Realm;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002PQB\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J%\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0013H\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0010H\u0016J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0018H\u0016J\b\u0010$\u001a\u00020\u0010H\u0016J\b\u0010%\u001a\u00020\u0010H\u0016J\b\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020\u0018H\u0016J\u0010\u0010)\u001a\n\u0012\u0006\b\u0001\u0012\u00020+0*H\u0016J\b\u0010,\u001a\u00020\u000eH\u0002J\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u000200H\u0016J\u0006\u00101\u001a\u00020\u0013J\b\u00102\u001a\u00020\u0013H\u0016J\b\u00103\u001a\u00020\u0013H\u0016J\b\u00104\u001a\u00020\u0013H\u0016J\b\u00105\u001a\u00020\u0013H\u0016J\b\u00106\u001a\u00020\u0010H\u0016J\u0012\u00107\u001a\u00020\u00102\b\u00108\u001a\u0004\u0018\u000109H\u0014J\b\u0010:\u001a\u00020\u0010H\u0014J-\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020=2\u000e\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016¢\u0006\u0002\u0010>J\b\u0010?\u001a\u00020\u0010H\u0014J\u001b\u0010@\u001a\u00020\u00102\f\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0017¢\u0006\u0002\u0010BJ\b\u0010C\u001a\u00020\u0013H\u0014J\u001a\u0010D\u001a\u00020\u00102\u0006\u0010E\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010F\u001a\u00020\u0010H\u0016J\u0018\u0010G\u001a\u00020\u00102\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020IH\u0016J\b\u0010K\u001a\u00020\u0010H\u0002J\u0012\u0010L\u001a\u00020\u00102\b\u0010M\u001a\u0004\u0018\u00010+H\u0002J\b\u0010N\u001a\u00020\u0010H\u0016J\b\u0010O\u001a\u00020\u0010H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006R"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroActivity;", "Lcom/privacystar/core/ui/PSActivity;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment$IntroFragmentContainer;", "Lcom/privacystar/core/ui/intro/intro_core/IntroContract$View;", "()V", "introFragmentBundle", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragmentBundle;", "getIntroFragmentBundle", "()Lcom/privacystar/core/ui/intro/intro_core/IntroFragmentBundle;", "introFragmentBundle$delegate", "Lkotlin/Lazy;", "presenter", "Lcom/privacystar/core/ui/intro/intro_core/IntroPresenter;", "progressDialog", "Landroid/app/ProgressDialog;", "activityLogLoadedCallback", "", "attemptPurchase", "canCurrentFragmentAutoTransition", "", "checkPermissionGrantResults", "Lcom/privacystar/core/util/PermissionUtils$PermissionRequestResult;", "permissions", "", "", "grantResults", "", "([Ljava/lang/String;[I)Lcom/privacystar/core/util/PermissionUtils$PermissionRequestResult;", "checkRegistration", "registrationPending", "configureTheme", "carrier", "Lcom/privacystar/core/util/enums/CarrierMobileCode;", "disableSpinner", "enableSpinner", "text", "finishSpinnerAndTransition", "finsihActivity", "getContextTemp", "Landroid/content/Context;", "getCurrentFragmentName", "getLastClassBeforePermissions", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "getLoadingSpinner", "getRealmTemp", "Lio/realm/Realm;", "getSpinnerDuration", "", "isActivityLogLoaded", "isCallerYDEnabled", "isCurrentFragmentNull", "isFragmentLoadingFragment", "isSpinnerShowing", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onRequestPermissionsResult", "requestCode", "", "(I[Ljava/lang/String;[I)V", "onResume", "requestPermissions", "unownedPermissions", "([Ljava/lang/String;)V", "restartAppIfPermissionsMissing", "setLoadingSpinner", "isVisible", "showPermissionsInfoDialog", "showPurchaseRetryDialog", "cancelAction", "Lcom/privacystar/core/ui/widgets/dialog/ButtonAction;", "subscribeAction", "transitionActivity", "transitionToNewFragment", "contentFragment", "transitionToNextFragment", "transitionToPreviousFragment", "IntroActivityContent", "IntroActivityFinalized", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroActivity.class */
public final class IntroActivity extends PSActivity implements IntroFragment.IntroFragmentContainer, IntroContract.View {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(IntroActivity.class), "introFragmentBundle", "getIntroFragmentBundle()Lcom/privacystar/core/ui/intro/intro_core/IntroFragmentBundle;"))};
    private HashMap _$_findViewCache;
    private ProgressDialog progressDialog;
    private final IntroPresenter presenter = new IntroPresenter(this);
    private final Lazy introFragmentBundle$delegate = LazyKt.lazy(IntroActivity$introFragmentBundle$2.INSTANCE);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "", "canAutoTransition", "", "handlesBackButton", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroActivity$IntroActivityContent */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent.class */
    public interface IntroActivityContent {
        boolean canAutoTransition();

        boolean handlesBackButton();

        boolean shouldDisplay();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityFinalized;", "", "activityLogLoadedCB", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.intro_core.IntroActivity$IntroActivityFinalized */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityFinalized.class */
    public interface IntroActivityFinalized {
        void activityLogLoadedCB();
    }

    private final PermissionUtils.PermissionRequestResult checkPermissionGrantResults(String[] strArr, int[] iArr) {
        if (Build.VERSION.SDK_INT < 23) {
            Timber.m25w("Method should not be called unless permissions have been checked", new Object[0]);
            return PermissionUtils.PermissionRequestResult.INVALID;
        }
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str = strArr[i];
            if (iArr[i2] == -1) {
                EventHelper.INSTANCE.handlePermissionsResultEvent(str, false);
                if (!shouldShowRequestPermissionRationale(str)) {
                    Timber.m34e("User denied permission with \"never ask again\": " + str, new Object[0]);
                    for (String str2 : IntroManagerImpl.INSTANCE.minPermissionsRequired()) {
                        if (StringsKt.equals(str2, str, true)) {
                            return PermissionUtils.PermissionRequestResult.NEVER_ASK_AGAIN;
                        }
                    }
                    continue;
                } else {
                    Timber.m34e("User denied permission: " + str, new Object[0]);
                    for (String str3 : IntroManagerImpl.INSTANCE.minPermissionsRequired()) {
                        if (StringsKt.equals(str3, str, true)) {
                            return PermissionUtils.PermissionRequestResult.DENIED;
                        }
                    }
                    continue;
                }
            } else {
                Timber.m37d("User granted permission: " + str, new Object[0]);
                EventHelper.INSTANCE.handlePermissionsResultEvent(str, true);
            }
            i++;
            i2++;
        }
        return PermissionUtils.PermissionRequestResult.GRANTED;
    }

    private final IntroFragmentBundle getIntroFragmentBundle() {
        Lazy lazy = this.introFragmentBundle$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (IntroFragmentBundle) lazy.getValue();
    }

    private final ProgressDialog getLoadingSpinner() {
        if (this.progressDialog == null) {
            this.progressDialog = new ProgressDialog(this);
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog != null) {
                progressDialog.setMessage(getString(C1566R.string.code_verification_loading_message));
                progressDialog.setCancelable(false);
                progressDialog.setProgressStyle(0);
            }
        }
        ProgressDialog progressDialog2 = this.progressDialog;
        if (progressDialog2 == null) {
            Intrinsics.throwNpe();
        }
        return progressDialog2;
    }

    private final void transitionActivity() {
        Timber.m37d("Transitioning to next Activity.", new Object[0]);
        Intent intent = new Intent(this, HomeActivity.class);
        intent.addFlags(67108864);
        startActivity(intent);
        finish();
    }

    private final void transitionToNewFragment(IntroActivityContent introActivityContent) {
        if (introActivityContent == null) {
            transitionActivity();
        } else if (!isFinishing()) {
            getSupportFragmentManager().beginTransaction().replace(C1566R.C1569id.intro_fragment, (Fragment) introActivityContent).commitAllowingStateLoss();
            AnalyticsUtil analyticsUtil = AnalyticsUtil.INSTANCE;
            String name = introActivityContent.getClass().getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "contentFragment.javaClass.name");
            analyticsUtil.trackDetailView(name);
            Timber.m37d(introActivityContent.getClass().getName() + " is wired.", new Object[0]);
            this.presenter.onFragmentAttached();
        } else {
            Timber.m31i("Could not transition view because Android lifecycle was not done finishing", new Object[0]);
        }
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public void activityLogLoadedCallback() {
        IntroActivityContent currentFragment = getIntroFragmentBundle().getCurrentFragment();
        if (currentFragment == null) {
            finish();
        } else if (currentFragment instanceof IntroActivityFinalized) {
            ((IntroActivityFinalized) currentFragment).activityLogLoadedCB();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void attemptPurchase() {
        BillingHelper.attemptPurchase(this, getString(C1566R.string.play_store_sku_premium_annual), IABV3Helper.SkuType.SUBSCRIPTION);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public boolean canCurrentFragmentAutoTransition() {
        return getIntroFragmentBundle().getCurrentFragment().canAutoTransition();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public void checkRegistration(boolean z) {
        RegistrationHandler.getInstance().checkRegistration(getBaseContext(), z);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public void configureTheme(@NotNull CarrierMobileCode carrier) {
        Intrinsics.checkParameterIsNotNull(carrier, "carrier");
        ThemeUtil.changeTheme(this, carrier);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void disableSpinner() {
        IntroContract.View.DefaultImpls.setLoadingSpinner$default(this, false, null, 2, null);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void enableSpinner(@NotNull String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        setLoadingSpinner(true, text);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public void finishSpinnerAndTransition() {
        IntroContract.View.DefaultImpls.setLoadingSpinner$default(this, false, null, 2, null);
        transitionToNewFragment(getIntroFragmentBundle().consumeCurrentFragment());
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public void finsihActivity() {
        finish();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    @NotNull
    public Context getContextTemp() {
        Context baseContext = getBaseContext();
        Intrinsics.checkExpressionValueIsNotNull(baseContext, "baseContext");
        return baseContext;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    @NotNull
    public String getCurrentFragmentName() {
        String simpleName = getIntroFragmentBundle().getCurrentFragment().getClass().getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "introFragmentBundle.curr…ment.javaClass.simpleName");
        return simpleName;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    @NotNull
    public Class<? extends IntroActivityContent> getLastClassBeforePermissions() {
        return this.presenter.getLastClassBeforePermissions();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    @NotNull
    public Realm getRealmTemp() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return realm;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public long getSpinnerDuration() {
        return getResources().getInteger(C1566R.integer.verification_spinner_duration);
    }

    public final boolean isActivityLogLoaded() {
        return this.presenter.isActivityLogLoaded();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public boolean isCallerYDEnabled() {
        return getResources().getBoolean(C1566R.bool.calleryd_enabled);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public boolean isCurrentFragmentNull() {
        return getIntroFragmentBundle().getCurrentFragment() == null;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public boolean isFragmentLoadingFragment() {
        if (isCurrentFragmentNull()) {
            finish();
        }
        return getIntroFragmentBundle().getCurrentFragment() instanceof LoadingFragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    public boolean isSpinnerShowing() {
        return getLoadingSpinner().isShowing();
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(C1566R.C1569id.intro_fragment);
        if (findFragmentById == null || !(findFragmentById instanceof IntroActivityContent)) {
            super.onBackPressed();
        } else if (!((IntroActivityContent) findFragmentById).handlesBackButton()) {
            super.onBackPressed();
        } else {
            Timber.m37d("Fragment handled back button", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1566R.C1571layout.intro_activity);
        AppControl.initialize(this);
        this.presenter.onCreated();
        transitionToNewFragment(getIntroFragmentBundle().getCurrentFragment());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.presenter.onDestroyed();
        super.onDestroy();
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity, android.support.p001v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkParameterIsNotNull(permissions, "permissions");
        Intrinsics.checkParameterIsNotNull(grantResults, "grantResults");
        PermissionUtils.PermissionRequestResult checkPermissionGrantResults = checkPermissionGrantResults(permissions, grantResults);
        if (i != 98769) {
            Timber.m25w("Unhandled permission request code - how was this even requested?", new Object[0]);
        } else {
            this.presenter.handlePermissionRequest(checkPermissionGrantResults);
        }
        this.presenter.onPermissionsHandled(checkPermissionGrantResults);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.presenter.onResumed();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    @RequiresApi(23)
    public void requestPermissions(@NotNull String[] unownedPermissions) {
        Intrinsics.checkParameterIsNotNull(unownedPermissions, "unownedPermissions");
        requestPermissions(unownedPermissions, PermissionUtils.EULA_PERMISSION_REQUEST);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity
    public boolean restartAppIfPermissionsMissing() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if ((r6.length() == 0) == false) goto L_0x005f;
     */
    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setLoadingSpinner(boolean r5, @org.jetbrains.annotations.Nullable java.lang.String r6) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.isRunning
            if (r0 != 0) goto L_0x0012
            java.lang.String r0 = "Received observable callback after Activity was destroyed. Ignoring"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
            return
        L_0x0012:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "isVisible: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
            r0 = r5
            if (r0 == 0) goto L_0x0074
            r0 = r6
            if (r0 == 0) goto L_0x0058
            r0 = r6
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: Exception -> 0x0092
            int r0 = r0.length()     // Catch: Exception -> 0x0092
            if (r0 != 0) goto L_0x004d
            r0 = 1
            r8 = r0
            goto L_0x0050
        L_0x004d:
            r0 = 0
            r8 = r0
        L_0x0050:
            r0 = r8
            if (r0 != 0) goto L_0x0058
            goto L_0x005f
        L_0x0058:
            r0 = r4
            r1 = 2131755397(0x7f100185, float:1.9141672E38)
            java.lang.String r0 = r0.getString(r1)     // Catch: Exception -> 0x0092
            r6 = r0
        L_0x005f:
            r0 = r4
            android.app.ProgressDialog r0 = r0.getLoadingSpinner()     // Catch: Exception -> 0x0092
            r1 = r6
            java.lang.CharSequence r1 = (java.lang.CharSequence) r1     // Catch: Exception -> 0x0092
            r0.setMessage(r1)     // Catch: Exception -> 0x0092
            r0 = r4
            android.app.ProgressDialog r0 = r0.getLoadingSpinner()     // Catch: Exception -> 0x0092
            r0.show()     // Catch: Exception -> 0x0092
            goto L_0x00a1
        L_0x0074:
            r0 = r4
            android.app.ProgressDialog r0 = r0.progressDialog     // Catch: Exception -> 0x0092
            if (r0 != 0) goto L_0x0088
            java.lang.String r0 = "LoadingSpinner is null, nothing to hide"
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: Exception -> 0x0092
            timber.log.Timber.m37d(r0, r1)     // Catch: Exception -> 0x0092
            goto L_0x00a1
        L_0x0088:
            r0 = r4
            android.app.ProgressDialog r0 = r0.getLoadingSpinner()     // Catch: Exception -> 0x0092
            r0.dismiss()     // Catch: Exception -> 0x0092
            goto L_0x00a1
        L_0x0092:
            r6 = move-exception
            r0 = r6
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            java.lang.String r1 = "Couldn't modify loading dialog"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            timber.log.Timber.m23w(r0, r1, r2)
        L_0x00a1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.intro_core.IntroActivity.setLoadingSpinner(boolean, java.lang.String):void");
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void showPermissionsInfoDialog() {
        getSupportFragmentManager().beginTransaction().add(new PermissionsInfoDialogFragment(), "permission_details").commitAllowingStateLoss();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void showPurchaseRetryDialog(@NotNull ButtonAction cancelAction, @NotNull ButtonAction subscribeAction) {
        Intrinsics.checkParameterIsNotNull(cancelAction, "cancelAction");
        Intrinsics.checkParameterIsNotNull(subscribeAction, "subscribeAction");
        InformationDialog newSubscribeRetryDialog = StaticDialogs.INSTANCE.newSubscribeRetryDialog(this, cancelAction, subscribeAction);
        DialogUtil dialogUtil = DialogUtil.INSTANCE;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
        dialogUtil.showAllowingStateLoss(newSubscribeRetryDialog, supportFragmentManager, "subscription_retry_fragment", this);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void transitionToNextFragment() {
        this.presenter.onAttemptTransitionToNextFragment();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment.IntroFragmentContainer
    public void transitionToPreviousFragment() {
        transitionToNewFragment(getIntroFragmentBundle().rewindCurrentFragment());
    }
}
