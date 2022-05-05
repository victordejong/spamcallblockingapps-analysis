package com.privacystar.core.p011ui.intro.custom_protection;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.CategoryToggle;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.EventHelper;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u001cJ\u0006\u0010 \u001a\u00020\u001cJ\u0006\u0010!\u001a\u00020\u001cJ\u0006\u0010\"\u001a\u00020\u001cJ\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020\u001cJ \u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020(H\u0002J\u0006\u0010)\u001a\u00020\u001cJ\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u000e\u001a\u00020\u000f8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0013\u001a\u00020\u000f8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001a¨\u0006,"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$View;", "(Ljava/lang/ref/WeakReference;)V", "accountServicesToggle", "Lcom/privacystar/core/data/CategoryToggle;", "charityToggle", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "manager", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$Manager;", "nuisanceToggle", "permitted", "", "getPermitted", "()Z", "politicalToggle", "premium", "getPremium", "prisonToggle", "scamToggle", "surveyToggle", "telemarketingToggle", "getView", "()Ljava/lang/ref/WeakReference;", "onAccountServicesToggle", "", "onCharityToggle", "onNextClick", "onNuisanceToggle", "onPoliticalToggle", "onPrisonToggle", "onScamToggle", "onSurveyToggle", "onTelemarketingToggle", "onToggle", "tog", "category", "Lcom/privacystar/core/service/analytics/Event$CategoryType;", "onViewCreated", "subscriptionChanged", "isActive", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionPresenter.class */
public final class CustomProtectionPresenter {
    private boolean permitted;
    private boolean premium;
    @NotNull
    private final WeakReference<CustomProtectionContract.View> view;
    private CategoryToggle scamToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle nuisanceToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle telemarketingToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle accountServicesToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle politicalToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle surveyToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle charityToggle = new CategoryToggle(false, 1, null);
    private CategoryToggle prisonToggle = new CategoryToggle(false, 1, null);
    private final CustomProtectionContract.Manager manager = CustomProtectionManagerImpl.INSTANCE;
    private final CompositeDisposable disposables = new CompositeDisposable();

    public CustomProtectionPresenter(@NotNull WeakReference<CustomProtectionContract.View> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    private final boolean getPermitted() {
        return getPremium() || !this.manager.isTogglePaywalled();
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
            AnalyticsManager.INSTANCE.fire(EventHelper.INSTANCE.getActivationCategoryEvent(false, categoryToggle.getEnabled(), categoryType));
            return;
        }
        Timber.m37d("%s not permitted (is user premium user?: %b)", categoryType, Boolean.valueOf(getPremium()));
        AnalyticsManager.INSTANCE.fire(EventHelper.INSTANCE.getActivationCategoryEvent(true, categoryToggle.getEnabled(), categoryType));
        CustomProtectionContract.View view = this.view.get();
        if (view != null) {
            view.showUpgradePage();
        }
    }

    @NotNull
    public final WeakReference<CustomProtectionContract.View> getView() {
        return this.view;
    }

    public final void onAccountServicesToggle() {
        onToggle(this.accountServicesToggle, getPermitted(), Event.CategoryType.ACCOUNT_SERVICES);
    }

    public final void onCharityToggle() {
        onToggle(this.charityToggle, getPermitted(), Event.CategoryType.CHARITY);
    }

    public final void onNextClick() {
        Timber.m37d("Setting custom protection levels.", new Object[0]);
        PreferenceUtil.putProtectionSetup(true);
        PreferenceUtil.putProtectionLevel(ProtectionLevel.CUSTOM.getValue());
        PreferenceUtil.updateTypeBlockingBasedOnProtection(ProtectionLevel.CUSTOM);
        CustomProtectionContract.View view = this.view.get();
        if (view != null) {
            view.finishView();
        }
    }

    public final void onNuisanceToggle() {
        onToggle(this.nuisanceToggle, getPermitted(), Event.CategoryType.NUISANCE);
    }

    public final void onPoliticalToggle() {
        onToggle(this.politicalToggle, getPermitted(), Event.CategoryType.POLITICAL);
    }

    public final void onPrisonToggle() {
        onToggle(this.prisonToggle, getPermitted(), Event.CategoryType.PRISON);
    }

    public final void onScamToggle() {
        onToggle(this.scamToggle, true, Event.CategoryType.SCAM);
    }

    public final void onSurveyToggle() {
        onToggle(this.surveyToggle, getPermitted(), Event.CategoryType.SURVEY);
    }

    public final void onTelemarketingToggle() {
        onToggle(this.telemarketingToggle, getPermitted(), Event.CategoryType.TELEMARKETER);
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.ActivationCategorySettingView.INSTANCE);
        boolean z = true;
        PreferenceUtil.putCustomProtectionEnabled(true);
        this.disposables.add(this.scamToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$1
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionScammersEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setScam(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.nuisanceToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$2
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionNuisanceEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setNuisance(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.telemarketingToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$3
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionTelemarketingEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setTelemarketing(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.accountServicesToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$4
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionDebtCollectionEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setAccountServices(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.politicalToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$5
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionPoliticalEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setPolitical(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.surveyToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$6
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionSurveyEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setSurvey(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.charityToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$7
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionCharityEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setCharity(it.booleanValue());
                }
            }
        }));
        this.disposables.add(this.prisonToggle.subscribe(new Consumer<Boolean>() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionPresenter$onViewCreated$8
            public final void accept(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                PreferenceUtil.putProtectionPrisonEnabled(it.booleanValue());
                CustomProtectionContract.View view = CustomProtectionPresenter.this.getView().get();
                if (view != null) {
                    view.setPrison(it.booleanValue());
                }
            }
        }));
        this.scamToggle.setEnabled(true);
        this.nuisanceToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        this.telemarketingToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        this.accountServicesToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        this.politicalToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        this.surveyToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        this.charityToggle.setEnabled(getPremium() && this.manager.isTogglePaywalled());
        CategoryToggle categoryToggle = this.prisonToggle;
        if (!getPremium() || !this.manager.isTogglePaywalled()) {
            z = false;
        }
        categoryToggle.setEnabled(z);
        PreferenceUtil.putProtectionScammersEnabled(this.scamToggle.getEnabled());
        PreferenceUtil.putProtectionNuisanceEnabled(this.nuisanceToggle.getEnabled());
        PreferenceUtil.putProtectionTelemarketingEnabled(this.telemarketingToggle.getEnabled());
        PreferenceUtil.putProtectionDebtCollectionEnabled(this.accountServicesToggle.getEnabled());
        PreferenceUtil.putProtectionPoliticalEnabled(this.politicalToggle.getEnabled());
        PreferenceUtil.putProtectionSurveyEnabled(this.surveyToggle.getEnabled());
        PreferenceUtil.putProtectionCharityEnabled(this.charityToggle.getEnabled());
        PreferenceUtil.putProtectionPrisonEnabled(this.prisonToggle.getEnabled());
        CustomProtectionContract.View view = this.view.get();
        if (view != null) {
            view.setupCategories();
            view.setClickListeners();
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

    public final void subscriptionChanged(boolean z) {
        this.premium = z;
    }
}
