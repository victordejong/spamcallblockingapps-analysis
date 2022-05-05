package com.privacystar.core.p011ui.detail_view.af_settings;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.CategoryToggle;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract;
import com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionManagerImpl;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.EventHelper;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u0019J\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0019J\u0006\u0010\u001e\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0019J\u0006\u0010 \u001a\u00020\u0019J\u0006\u0010!\u001a\u00020\u0019J\u0006\u0010\"\u001a\u00020\u0019J\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010$\u001a\u00020\u0019J \u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020)H\u0002J\u0006\u0010*\u001a\u00020\u0019J\u0006\u0010+\u001a\u00020\u0019R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0017*\u0004\u0018\u00010\u00030\u00030\u0016X\u0082\u0004¢\u0006\u0002\n��¨\u0006,"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$View;", "(Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$View;)V", "accountServicesToggle", "Lcom/privacystar/core/data/CategoryToggle;", "charityToggle", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "manager", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionManagerImpl;", "nuisanceToggle", "politicalToggle", "premium", "", "getPremium", "()Z", "prisonToggle", "scamToggle", "surveyToggle", "telemarketingToggle", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "onAboutClick", "", "onAccountServicesToggle", "onCharityToggle", "onHelpClick", "onNuisanceToggle", "onPoliticalToggle", "onPrisonToggle", "onRateClick", "onScamToggle", "onShareClick", "onSurveyToggle", "onTelemarketingToggle", "onToggle", "tog", "permitted", "category", "Lcom/privacystar/core/service/analytics/Event$CategoryType;", "onViewCreated", "onViewDestroyed", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_settings/AFSettingsPresenter.class */
public final class AFSettingsPresenter {
    private final WeakReference<AFSettingsContract.View> view;
    private CategoryToggle scamToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle nuisanceToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle telemarketingToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle accountServicesToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle politicalToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle surveyToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle charityToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle prisonToggle = new CategoryToggle(false, 1, null);
    private final CustomProtectionManagerImpl manager = CustomProtectionManagerImpl.INSTANCE;
    private final CompositeDisposable disposables = new CompositeDisposable();

    public AFSettingsPresenter(@NotNull AFSettingsContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final boolean getPremium() {
        Realm defaultInstance = Realm.getDefaultInstance();
        Throwable th = null;
        try {
            boolean isSubscriptionActive = SubscriptionRealm.isSubscriptionActive(defaultInstance);
            CloseableKt.closeFinally(defaultInstance, th);
            return isSubscriptionActive;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void onToggle(CategoryToggle categoryToggle, boolean z, Event.CategoryType categoryType) {
        if (z) {
            Timber.m37d("%s toggled", categoryType);
            categoryToggle.toggle();
            AnalyticsManager.INSTANCE.fire(EventHelper.INSTANCE.getSettingCategoryEvent(false, categoryToggle.getEnabled(), categoryType));
            return;
        }
        Timber.m37d("%s not permitted (is user premium user?: %b)", categoryType, Boolean.valueOf(getPremium()));
        AnalyticsManager.INSTANCE.fire(EventHelper.INSTANCE.getSettingCategoryEvent(true, categoryToggle.getEnabled(), categoryType));
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.attemptUpgrade();
        }
    }

    public final void onAboutClick() {
        AnalyticsManager.INSTANCE.fire(Event.SettingsAbout.INSTANCE);
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.showAbout();
        }
    }

    public final void onAccountServicesToggle() {
        onToggle(this.accountServicesToggle, getPremium(), Event.CategoryType.ACCOUNT_SERVICES);
    }

    public final void onCharityToggle() {
        onToggle(this.charityToggle, getPremium(), Event.CategoryType.CHARITY);
    }

    public final void onHelpClick() {
        AnalyticsManager.INSTANCE.fire(Event.SettingsHelp.INSTANCE);
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.showHelp();
        }
    }

    public final void onNuisanceToggle() {
        onToggle(this.nuisanceToggle, getPremium(), Event.CategoryType.NUISANCE);
    }

    public final void onPoliticalToggle() {
        onToggle(this.politicalToggle, getPremium(), Event.CategoryType.POLITICAL);
    }

    public final void onPrisonToggle() {
        onToggle(this.prisonToggle, getPremium(), Event.CategoryType.PRISON);
    }

    public final void onRateClick() {
        Timber.m31i("Rate clicked", new Object[0]);
        AnalyticsManager.INSTANCE.fire(Event.SettingsRate.INSTANCE);
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.rateApp();
        }
    }

    public final void onScamToggle() {
        onToggle(this.scamToggle, true, Event.CategoryType.SCAM);
    }

    public final void onShareClick() {
        Timber.m31i("Share clicked", new Object[0]);
        AnalyticsManager.INSTANCE.fire(Event.SettingsShare.INSTANCE);
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.shareApp("RoboShield App", "some link");
        }
    }

    public final void onSurveyToggle() {
        onToggle(this.surveyToggle, getPremium(), Event.CategoryType.SURVEY);
    }

    public final void onTelemarketingToggle() {
        onToggle(this.telemarketingToggle, getPremium(), Event.CategoryType.TELEMARKETER);
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.SettingsPageView.INSTANCE);
        PreferenceUtil.putCustomProtectionEnabled(true);
        this.scamToggle.setEnabled(PreferenceUtil.getProtectionScammersEnabled());
        this.nuisanceToggle.setEnabled(PreferenceUtil.getProtectionNuisanceEnabled());
        this.telemarketingToggle.setEnabled(PreferenceUtil.getProtectionTelemarketingEnabled());
        this.accountServicesToggle.setEnabled(PreferenceUtil.getProtectionDebtCollectionEnabled());
        this.politicalToggle.setEnabled(PreferenceUtil.getProtectionPoliticalEnabled());
        this.surveyToggle.setEnabled(PreferenceUtil.getProtectionSurveyEnabled());
        this.charityToggle.setEnabled(PreferenceUtil.getProtectionCharityEnabled());
        this.prisonToggle.setEnabled(PreferenceUtil.getProtectionPrisonEnabled());
        this.disposables.add(this.scamToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$1
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionScammersEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setScam(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.nuisanceToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$2
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionNuisanceEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setNuisance(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.telemarketingToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$3
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionTelemarketingEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setTelemarketing(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.accountServicesToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$4
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionDebtCollectionEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setAccountServices(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.politicalToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$5
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionPoliticalEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setPolitical(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.surveyToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$6
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionSurveyEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setSurvey(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.charityToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$7
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionCharityEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setCharity(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.prisonToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsPresenter$onViewCreated$8
            public final void accept(Boolean it) {
                WeakReference weakReference;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionPrisonEnabled(it.booleanValue());
                weakReference = AFSettingsPresenter.this.view;
                AFSettingsContract.View view = (AFSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.setPrison(it.booleanValue());
                }
            }
        }));
        Date date = new Date(PreferenceUtil.getLastLocalOffenderLoad());
        String lastUpdateDate = new SimpleDateFormat("MM/dd/yyyy").format(date);
        String lastUpdateTime = new SimpleDateFormat("HH:MM").format(date);
        AFSettingsContract.View view = this.view.get();
        if (view != null) {
            view.setupToolbar();
            view.setupCategories();
            view.setClickListeners();
            Intrinsics.checkExpressionValueIsNotNull(lastUpdateDate, "lastUpdateDate");
            Intrinsics.checkExpressionValueIsNotNull(lastUpdateTime, "lastUpdateTime");
            view.setLastUpdateTime(lastUpdateDate, lastUpdateTime);
            view.setScam(this.scamToggle.getEnabled());
            view.setNuisance(this.nuisanceToggle.getEnabled());
            view.setTelemarketing(this.telemarketingToggle.getEnabled());
            view.setAccountServices(this.accountServicesToggle.getEnabled());
            view.setPolitical(this.politicalToggle.getEnabled());
            view.setSurvey(this.surveyToggle.getEnabled());
            view.setCharity(this.charityToggle.getEnabled());
            view.setPrison(this.prisonToggle.getEnabled());
        }
    }

    public final void onViewDestroyed() {
        this.disposables.dispose();
    }
}
