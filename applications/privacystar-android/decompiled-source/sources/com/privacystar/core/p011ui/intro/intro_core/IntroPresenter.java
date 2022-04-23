package com.privacystar.core.p011ui.intro.intro_core;

import android.content.Context;
import android.os.Build;
import com.birbit.android.jobqueue.JobManager;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.PSApplication;
import com.privacystar.core.application.AppControl;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.data.providers.LocalLogProvider;
import com.privacystar.core.data.providers.LogProvider;
import com.privacystar.core.data.providers.LogProviderCB;
import com.privacystar.core.p011ui.intro.IntroManagerImpl;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.EventHelper;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.jobs.ActivityLogProcessingJob;
import com.privacystar.core.service.network.util.RequestTrigger;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.OffenderUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.BehaviorSubject;
import io.realm.RealmResults;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010%\u001a\u00020\bH\u0002J\b\u0010&\u001a\u00020\bH\u0002J\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020*H\u0002J\u000e\u0010+\u001a\n\u0012\u0006\b\u0001\u0012\u00020-0,J\u000e\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013H\u0002J\u000e\u0010/\u001a\u00020(2\u0006\u00100\u001a\u000201J\b\u00102\u001a\u00020(H\u0002J\b\u00103\u001a\u00020(H\u0002J\b\u00104\u001a\u00020(H\u0002J\u0006\u00105\u001a\u00020\bJ\b\u00106\u001a\u00020(H\u0002J\u0018\u00107\u001a\u00020(2\u0006\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\bH\u0002J\b\u0010:\u001a\u00020\bH\u0002J\u0006\u0010;\u001a\u00020(J\u0006\u0010<\u001a\u00020(J\u0006\u0010=\u001a\u00020(J\u0006\u0010>\u001a\u00020(J\u000e\u0010?\u001a\u00020(2\u0006\u00100\u001a\u000201J\u0006\u0010@\u001a\u00020(J\b\u0010A\u001a\u00020\bH\u0002J\u0010\u0010B\u001a\u00020(2\u0006\u0010C\u001a\u00020\bH\u0002J\u0010\u0010D\u001a\u00020(2\u0006\u0010E\u001a\u00020\bH\u0002J\b\u0010F\u001a\u00020(H\u0002J\b\u0010G\u001a\u00020(H\u0002J\u0018\u0010H\u001a\u00020(2\u0006\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\b0\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��Rw\u0010\u0014\u001a^\u0012(\u0012&\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00160\u0016 \u0017*\u0012\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00160\u0016\u0018\u00010\u00150\u0015 \u0017*.\u0012(\u0012&\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00160\u0016 \u0017*\u0012\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00160\u0016\u0018\u00010\u00150\u0015\u0018\u00010\u00130\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R?\u0010\u001c\u001a&\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\b0\b \u0017*\u0012\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\b0\b\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b\u001d\u0010\u001eR)\u0010 \u001a\u0010\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\b0\b0\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001b\u001a\u0004\b!\u0010\u0019R\u001c\u0010#\u001a\u0010\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00030\u00030$X\u0082\u0004¢\u0006\u0002\n��¨\u0006I"}, m254d2 = {"Lcom/privacystar/core/ui/intro/intro_core/IntroPresenter;", "", "viewRef", "Lcom/privacystar/core/ui/intro/intro_core/IntroContract$View;", "(Lcom/privacystar/core/ui/intro/intro_core/IntroContract$View;)V", "AUTOMATIC_CYD_THRESHOLD", "", "checkingPermissions", "", "codeVerification", "Lio/reactivex/subjects/BehaviorSubject;", "disposables", "", "Lio/reactivex/disposables/Disposable;", "logProvidersLoadedMap", "", "Lcom/privacystar/core/data/providers/LogProvider;", "pendingTransitionPermissions", "spinnerObsv", "Lio/reactivex/Observable;", "subscriptionObsv", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/Subscription;", "kotlin.jvm.PlatformType", "getSubscriptionObsv", "()Lio/reactivex/Observable;", "subscriptionObsv$delegate", "Lkotlin/Lazy;", "subscriptionReady", "getSubscriptionReady", "()Lio/reactivex/subjects/BehaviorSubject;", "subscriptionReady$delegate", "transitionReadyObsv", "getTransitionReadyObsv", "transitionReadyObsv$delegate", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "attemptTheme", "cydGoodForTransition", "debounceSpinner", "", "getCarrierMobileCode", "Lcom/privacystar/core/util/enums/CarrierMobileCode;", "getLastClassBeforePermissions", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "getSpinnerObsv", "handlePermissionRequest", "requestResult", "Lcom/privacystar/core/util/PermissionUtils$PermissionRequestResult;", "handlePermissionRequestDenied", "handlePermissionRequestNeverAsk", "handlePermissionsResultGranted", "isActivityLogLoaded", "loadActivityLog", "logProviderAction", "logProvider", "loaded", "manualLookupEnabled", "onAttemptTransitionToNextFragment", "onCreated", "onDestroyed", "onFragmentAttached", "onPermissionsHandled", "onResumed", "permissionsGoodForTransistions", "processSpinnerTransition", "shouldTransition", "processValidation", "valid", "registerCYD", "requestPermissions", "updateLogProviderLoadedMap", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroPresenter.class */
public final class IntroPresenter {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(IntroPresenter.class), "subscriptionObsv", "getSubscriptionObsv()Lio/reactivex/Observable;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(IntroPresenter.class), "subscriptionReady", "getSubscriptionReady()Lio/reactivex/subjects/BehaviorSubject;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(IntroPresenter.class), "transitionReadyObsv", "getTransitionReadyObsv()Lio/reactivex/Observable;"))};
    private boolean checkingPermissions;
    private final BehaviorSubject<Boolean> codeVerification;
    private boolean pendingTransitionPermissions;
    private Observable<Long> spinnerObsv;
    private final WeakReference<IntroContract.View> view;
    private Map<LogProvider, Boolean> logProvidersLoadedMap = new HashMap();
    private final Lazy subscriptionObsv$delegate = LazyKt.lazy(new IntroPresenter$subscriptionObsv$2(this));
    private final Lazy subscriptionReady$delegate = LazyKt.lazy(new IntroPresenter$subscriptionReady$2(this));
    private final Lazy transitionReadyObsv$delegate = LazyKt.lazy(new IntroPresenter$transitionReadyObsv$2(this));
    private final Collection<Disposable> disposables = new HashSet();
    private final long AUTOMATIC_CYD_THRESHOLD = DateUtil.MINUTE_IN_MILLIS;

    public IntroPresenter(@NotNull IntroContract.View viewRef) {
        Intrinsics.checkParameterIsNotNull(viewRef, "viewRef");
        this.view = new WeakReference<>(viewRef);
        BehaviorSubject<Boolean> create = BehaviorSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "BehaviorSubject.create()");
        this.codeVerification = create;
    }

    private final boolean attemptTheme() {
        Timber.m37d("Attempting theme", new Object[0]);
        if (!AppManagerImpl.INSTANCE.flavorUsesThemes()) {
            Timber.m37d("Flavor does not have configurable themes. attemptTheme() = false", new Object[0]);
            return false;
        }
        boolean themeHasBeenConfigured = PreferenceUtil.getThemeHasBeenConfigured();
        Timber.m37d("Theme previously configured: " + themeHasBeenConfigured, new Object[0]);
        CarrierMobileCode carrierMobileCode = getCarrierMobileCode();
        if (themeHasBeenConfigured) {
            Timber.m37d("theme has already been configured. attemptTheme() = false", new Object[0]);
            return false;
        }
        IntroContract.View view = this.view.get();
        if (view != null) {
            view.configureTheme(carrierMobileCode);
        }
        PreferenceUtil.putThemeHasBeenConfigured(true);
        Timber.m37d("Configured theme. attemptTheme() = true", new Object[0]);
        return true;
    }

    private final boolean cydGoodForTransition() {
        IntroContract.View view = this.view.get();
        if (view == null) {
            return false;
        }
        if (view.isCallerYDEnabled() && PreferenceUtil.getEulaAccepted() && PreferenceUtil.getCYDVerificationStarted() && !PreferenceUtil.getIsNumberVerified() && !PreferenceUtil.getIsNumberVerificationSkipped()) {
            return (PermissionUtils.hasGeneralPermissions(view.getContextTemp()) && Text.isBlank(DeviceNumberProvider.INSTANCE.getNumber())) || PreferenceUtil.getLastAutomaticCYDRegistration() + this.AUTOMATIC_CYD_THRESHOLD > System.currentTimeMillis();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void debounceSpinner() {
        IntroContract.View view = this.view.get();
        if (view != null) {
            if (!view.isSpinnerShowing()) {
                Timber.m28v("Loading spinner has already been disposed, transitioning fragments", new Object[0]);
                onAttemptTransitionToNextFragment();
            }
            if (view.isCurrentFragmentNull()) {
                Timber.m28v("CurrentFragment is null", new Object[0]);
            } else if (!view.isSpinnerShowing()) {
            } else {
                if (view.canCurrentFragmentAutoTransition()) {
                    Timber.m28v("Loading spinner will be disposed, transitioning fragments", new Object[0]);
                    view.finishSpinnerAndTransition();
                    return;
                }
                Timber.m28v("Can't auto transition this fragment", new Object[0]);
            }
        }
    }

    private final CarrierMobileCode getCarrierMobileCode() {
        IntroContract.View view = this.view.get();
        CarrierMobileCode carrier = InformationUtil.getCarrierCode(view != null ? view.getContextTemp() : null);
        PreferenceUtil.putCarrierId(carrier.getId());
        Intrinsics.checkExpressionValueIsNotNull(carrier, "carrier");
        return carrier;
    }

    private final Observable<Long> getSpinnerObsv() {
        IntroContract.View view;
        if (this.spinnerObsv == null && (view = this.view.get()) != null) {
            this.spinnerObsv = Observable.timer(view.getSpinnerDuration(), TimeUnit.SECONDS);
        }
        Observable<Long> observable = this.spinnerObsv;
        if (observable == null) {
            Intrinsics.throwNpe();
        }
        return observable;
    }

    private final Observable<RealmResults<Subscription>> getSubscriptionObsv() {
        Lazy lazy = this.subscriptionObsv$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Observable) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BehaviorSubject<Boolean> getSubscriptionReady() {
        Lazy lazy = this.subscriptionReady$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (BehaviorSubject) lazy.getValue();
    }

    private final Observable<Boolean> getTransitionReadyObsv() {
        Lazy lazy = this.transitionReadyObsv$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (Observable) lazy.getValue();
    }

    private final void handlePermissionRequestDenied() {
        PreferenceUtil.putWereInitialPermissionsDenied(true);
    }

    private final void handlePermissionRequestNeverAsk() {
    }

    private final void handlePermissionsResultGranted() {
        IntroContract.View view;
        boolean registrationRequestPending = PreferenceUtil.getRegistrationRequestPending();
        if (IntroManagerImpl.INSTANCE.registerAfterPermissionsGranted() && (view = this.view.get()) != null) {
            view.checkRegistration(registrationRequestPending);
        }
    }

    private final void loadActivityLog() {
        if (!PreferenceUtil.getEulaAccepted()) {
            Timber.m25w("Attempted to load ActivityLog without an accepted EULA", new Object[0]);
            return;
        }
        Timber.m37d("Initiating queueing of generating activity logs.", new Object[0]);
        IntroContract.View view = this.view.get();
        if (PermissionUtils.hasCallLogPermission(view != null ? view.getContextTemp() : null)) {
            PreferenceUtil.putActivityLogLoaded(true);
            LogProvider logProvider = LocalLogProvider.getLogProvider(PSLogFilters.ALL_ACTIVITY);
            LogProvider logProvider2 = LocalLogProvider.getLogProvider(PSLogFilters.BLOCK_ACTIVITY);
            PSApplication instance = PSApplication.getInstance();
            Intrinsics.checkExpressionValueIsNotNull(instance, "PSApplication.getInstance()");
            JobManager jobManager = instance.getJobManager();
            IntroPresenter introPresenter = this;
            final IntroPresenter$loadActivityLog$1 introPresenter$loadActivityLog$1 = new IntroPresenter$loadActivityLog$1(introPresenter);
            jobManager.addJobInBackground(new ActivityLogProcessingJob(logProvider, new LogProviderCB() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$sam$com_privacystar_core_data_providers_LogProviderCB$0
                @Override // com.privacystar.core.data.providers.LogProviderCB
                public final /* synthetic */ void logProviderLoaded(LogProvider logProvider3, boolean z) {
                    Intrinsics.checkExpressionValueIsNotNull(Function2.this.invoke(logProvider3, Boolean.valueOf(z)), "invoke(...)");
                }
            }));
            final IntroPresenter$loadActivityLog$2 introPresenter$loadActivityLog$2 = new IntroPresenter$loadActivityLog$2(introPresenter);
            jobManager.addJobInBackground(new ActivityLogProcessingJob(logProvider2, new LogProviderCB() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$sam$com_privacystar_core_data_providers_LogProviderCB$0
                @Override // com.privacystar.core.data.providers.LogProviderCB
                public final /* synthetic */ void logProviderLoaded(LogProvider logProvider3, boolean z) {
                    Intrinsics.checkExpressionValueIsNotNull(Function2.this.invoke(logProvider3, Boolean.valueOf(z)), "invoke(...)");
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logProviderAction(LogProvider logProvider, boolean z) {
        updateLogProviderLoadedMap(logProvider, z);
        if (isActivityLogLoaded()) {
            Timber.m37d("All requested LogProviders are loaded, notifying subscribed fragments", new Object[0]);
            IntroContract.View view = this.view.get();
            if (view != null) {
                if (manualLookupEnabled()) {
                    RequestTrigger.createBulkLookup(view.getContextTemp());
                }
                view.activityLogLoadedCallback();
                return;
            }
            return;
        }
        Timber.m37d("All requested LogProviders have not been loaded, waiting for more results.", new Object[0]);
    }

    private final boolean manualLookupEnabled() {
        IntroContract.View view = this.view.get();
        return LicenseFeatureRealm.isFeatureAvailable(view != null ? view.getRealmTemp() : null, Feature.MANUAL_CID_LOOKUP);
    }

    private final boolean permissionsGoodForTransistions() {
        if (!PreferenceUtil.getHasShownInitialPermissionRequest()) {
            Timber.m28v("Returning true, has not shown initial permission request", new Object[0]);
            return true;
        }
        IntroContract.View view = this.view.get();
        if (PermissionUtils.hasMinimumPermissions(view != null ? view.getContextTemp() : null)) {
            Timber.m28v("Already has minimum permissions", new Object[0]);
            return true;
        }
        boolean z = true;
        if (!PreferenceUtil.getHasRequestedPermissions()) {
            z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                Timber.m28v("Has not requested permissions", new Object[0]);
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processSpinnerTransition(boolean z) {
        IntroContract.View view = this.view.get();
        if (view != null && z && view.isSpinnerShowing()) {
            if (view.canCurrentFragmentAutoTransition()) {
                Timber.m37d("Transitioning fragment", new Object[0]);
                view.finishSpinnerAndTransition();
                return;
            }
            Timber.m37d("Tried to transition fragment, but can't auto transition", new Object[0]);
            IntroContract.View.DefaultImpls.setLoadingSpinner$default(view, false, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processValidation(boolean z) {
        Timber.m37d("Processing sms code validation: [" + z + ']', new Object[0]);
        PreferenceUtil.putIsNumberVerified(z);
        PreferenceUtil.putIsNumberVerifying(false);
        PreferenceUtil.putIsNumberVerificationSkipped(false);
        AnalyticsUtil.INSTANCE.trackSmsValidation(z);
    }

    private final void registerCYD() {
        IntroContract.View view = this.view.get();
        if (view != null) {
            IntroContract.View.DefaultImpls.setLoadingSpinner$default(view, true, null, 2, null);
            AnalyticsUtil.INSTANCE.trackCYDReregistration(PreferenceUtil.getIsNumberVerified());
            String number = DeviceNumberProvider.INSTANCE.getNumber();
            if (Text.isBlank(number)) {
                Timber.m25w("Device number was found to be blank but was previously validated", new Object[0]);
                PreferenceUtil.putCYDNumberAutomaticallyRead(false);
                onAttemptTransitionToNextFragment();
                return;
            }
            getSpinnerObsv().subscribeOn(Schedulers.m271io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Observer<Long>() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$registerCYD$$inlined$let$lambda$1
                @Override // io.reactivex.Observer
                public void onComplete() {
                    IntroPresenter.this.debounceSpinner();
                }

                @Override // io.reactivex.Observer
                public void onError(@NotNull Throwable e) {
                    Intrinsics.checkParameterIsNotNull(e, "e");
                    IntroPresenter.this.debounceSpinner();
                }

                public void onNext(long j) {
                    Timber.m28v("onNext: [" + j + ']', new Object[0]);
                }

                @Override // io.reactivex.Observer
                public /* bridge */ /* synthetic */ void onNext(Long l) {
                    onNext(l.longValue());
                }

                @Override // io.reactivex.Observer
                public void onSubscribe(@NotNull Disposable d) {
                    Intrinsics.checkParameterIsNotNull(d, "d");
                    Timber.m28v("onSubscribe: [" + d.isDisposed() + ']', new Object[0]);
                }
            });
            PreferenceUtil.putUserNumberToVerify(number);
            PreferenceUtil.putLastAutomaticCYDRegistration(System.currentTimeMillis());
            AnalyticsUtil.INSTANCE.startTrackingSmsValidation();
            CallerYDHelper.INSTANCE.validateNumber(number);
        }
    }

    private final void requestPermissions() {
        IntroContract.View view;
        if (!(Build.VERSION.SDK_INT < 23 || this.checkingPermissions || (view = this.view.get()) == null)) {
            Context contextTemp = view.getContextTemp();
            String[] generalPermissions = PermissionUtils.getGeneralPermissions();
            String[] unownedPermissions = PermissionUtils.getUnownedPermissions(contextTemp, (String[]) Arrays.copyOf(generalPermissions, generalPermissions.length));
            Intrinsics.checkExpressionValueIsNotNull(unownedPermissions, "PermissionUtils.getUnown….getGeneralPermissions())");
            for (String str : unownedPermissions) {
                EventHelper.INSTANCE.handlePermissionRequestEvent(str);
            }
            if (unownedPermissions.length > 0) {
                this.checkingPermissions = true;
                view.requestPermissions(unownedPermissions);
            }
            PreferenceUtil.putHasRequestedPermissions(true);
        }
    }

    private final void updateLogProviderLoadedMap(LogProvider logProvider, boolean z) {
        this.logProvidersLoadedMap.put(logProvider, Boolean.valueOf(z));
    }

    @NotNull
    public final Class<? extends IntroActivity.IntroActivityContent> getLastClassBeforePermissions() {
        return IntroManagerImpl.INSTANCE.lastFragmentBeforePermissions();
    }

    public final void handlePermissionRequest(@NotNull PermissionUtils.PermissionRequestResult requestResult) {
        Intrinsics.checkParameterIsNotNull(requestResult, "requestResult");
        this.checkingPermissions = false;
        Timber.m37d("Handling permissions request results " + requestResult, new Object[0]);
        switch (requestResult) {
            case GRANTED:
                handlePermissionsResultGranted();
                return;
            case DENIED:
                handlePermissionRequestDenied();
                return;
            case NEVER_ASK_AGAIN:
                handlePermissionRequestNeverAsk();
                return;
            default:
                Timber.m37d("Did not receive a valid permissions request result", new Object[0]);
                return;
        }
    }

    public final boolean isActivityLogLoaded() {
        boolean z = false;
        if (!this.logProvidersLoadedMap.isEmpty()) {
            z = false;
            if (!this.logProvidersLoadedMap.containsValue(false)) {
                z = true;
            }
        }
        return z;
    }

    public final void onAttemptTransitionToNextFragment() {
        StringBuilder sb = new StringBuilder();
        sb.append("Transition to next fragment requested by ");
        IntroContract.View view = this.view.get();
        Context context = null;
        sb.append(view != null ? view.getCurrentFragmentName() : null);
        Timber.m28v(sb.toString(), new Object[0]);
        if (!permissionsGoodForTransistions()) {
            Timber.m28v("Transition to next fragment denied: permissions pending", new Object[0]);
            this.pendingTransitionPermissions = true;
            requestPermissions();
        } else if (!attemptTheme()) {
            BuildUtil buildUtil = BuildUtil.INSTANCE;
            IntroContract.View view2 = this.view.get();
            if (view2 != null) {
                context = view2.getContextTemp();
            }
            if (buildUtil.doesVariantRoadblockCarriers(context) && !CarrierMobileCode.Companion.fromId(PreferenceUtil.getCarrierId()).isSpgCarrier()) {
                Timber.m28v("Transition to next fragment granted because of carrier", new Object[0]);
                IntroContract.View view3 = this.view.get();
                if (view3 != null) {
                    view3.finishSpinnerAndTransition();
                }
            } else if (!cydGoodForTransition()) {
                Timber.m28v("Transition to next fragment denied: CallerYD registration pending", new Object[0]);
                registerCYD();
            } else {
                Timber.m28v("Transition to next fragment granted", new Object[0]);
                IntroContract.View view4 = this.view.get();
                if (view4 != null) {
                    view4.finishSpinnerAndTransition();
                }
            }
        }
    }

    public final void onCreated() {
        Collection<Disposable> collection = this.disposables;
        BehaviorSubject<Boolean> behaviorSubject = this.codeVerification;
        IntroPresenter introPresenter = this;
        final IntroPresenter$onCreated$1 introPresenter$onCreated$1 = new IntroPresenter$onCreated$1(introPresenter);
        Disposable subscribe = behaviorSubject.subscribe(new Consumer() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$sam$io_reactivex_functions_Consumer$0
            @Override // io.reactivex.functions.Consumer
            public final /* synthetic */ void accept(Object obj) {
                Intrinsics.checkExpressionValueIsNotNull(Function1.this.invoke(obj), "invoke(...)");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe, "codeVerification.subscri…(this::processValidation)");
        collection.add(subscribe);
        Collection<Disposable> collection2 = this.disposables;
        Observable<Boolean> transitionReadyObsv = getTransitionReadyObsv();
        final IntroPresenter$onCreated$2 introPresenter$onCreated$2 = new IntroPresenter$onCreated$2(introPresenter);
        Disposable subscribe2 = transitionReadyObsv.subscribe(new Consumer() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$sam$io_reactivex_functions_Consumer$0
            @Override // io.reactivex.functions.Consumer
            public final /* synthetic */ void accept(Object obj) {
                Intrinsics.checkExpressionValueIsNotNull(Function1.this.invoke(obj), "invoke(...)");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe2, "transitionReadyObsv.subs…processSpinnerTransition)");
        collection2.add(subscribe2);
        Collection<Disposable> collection3 = this.disposables;
        Disposable subscribe3 = getSubscriptionObsv().subscribe(new Consumer<RealmResults<Subscription>>() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$onCreated$3
            public final void accept(RealmResults<Subscription> realmResults) {
                BehaviorSubject subscriptionReady;
                subscriptionReady = IntroPresenter.this.getSubscriptionReady();
                subscriptionReady.onNext(Boolean.valueOf(!realmResults.isEmpty()));
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(subscribe3, "subscriptionObsv.subscri…tion.isEmpty())\n        }");
        collection3.add(subscribe3);
        IntroContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (view.isCurrentFragmentNull()) {
            Timber.m37d("IntroActivityContent null, finishing app", new Object[0]);
            view.finsihActivity();
            return;
        }
        if (view.isFragmentLoadingFragment()) {
            Timber.m37d("Found loading fragment, loading activity log", new Object[0]);
            loadActivityLog();
            OffenderUtil.loadLocalOffenderDataIfNeeded();
        }
        IntroContract.View.DefaultImpls.setLoadingSpinner$default(view, false, null, 2, null);
        AppControl.cacheBlockingInformation();
    }

    public final void onDestroyed() {
        IntroContract.View view = this.view.get();
        if (view != null) {
            IntroContract.View.DefaultImpls.setLoadingSpinner$default(view, false, null, 2, null);
        }
        for (Disposable disposable : this.disposables) {
            disposable.dispose();
        }
    }

    public final void onFragmentAttached() {
        IntroContract.View view = this.view.get();
        if (view != null && view.isFragmentLoadingFragment()) {
            Timber.m37d("Found loading fragment, loading activity log", new Object[0]);
            loadActivityLog();
            OffenderUtil.loadLocalOffenderDataIfNeeded();
        }
    }

    public final void onPermissionsHandled(@NotNull PermissionUtils.PermissionRequestResult requestResult) {
        Intrinsics.checkParameterIsNotNull(requestResult, "requestResult");
        if (this.pendingTransitionPermissions) {
            this.pendingTransitionPermissions = false;
            if (requestResult == PermissionUtils.PermissionRequestResult.GRANTED) {
                onAttemptTransitionToNextFragment();
                return;
            }
            IntroContract.View view = this.view.get();
            if (view != null) {
                view.finishSpinnerAndTransition();
            }
        }
    }

    public final void onResumed() {
        IntroContract.View view = this.view.get();
        if (view != null) {
            IntroContract.View.DefaultImpls.setLoadingSpinner$default(view, false, null, 2, null);
        }
    }
}
