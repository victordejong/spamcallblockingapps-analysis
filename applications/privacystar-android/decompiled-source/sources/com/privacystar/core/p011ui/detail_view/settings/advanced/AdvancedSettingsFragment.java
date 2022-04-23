package com.privacystar.core.p011ui.detail_view.settings.advanced;

import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract;
import com.privacystar.core.p011ui.widgets.CategoryToggleView;
import com.privacystar.core.p011ui.widgets.ICategoryToggleView;
import com.privacystar.core.service.analytics.AnalyticsManager;
import io.realm.Realm;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020*H\u0014J\b\u0010+\u001a\u00020\u0001H\u0016J&\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u0001012\b\u00102\u001a\u0004\u0018\u000103H\u0016J\b\u00104\u001a\u00020(H\u0016J\u001a\u00105\u001a\u00020(2\u0006\u00106\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0010\u00107\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010;\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010<\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010=\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010>\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010?\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010@\u001a\u00020(2\u0006\u00108\u001a\u000209H\u0016J\b\u0010A\u001a\u00020(H\u0016J\b\u0010B\u001a\u00020(H\u0016J\u0010\u0010C\u001a\u00020(2\u0006\u0010D\u001a\u000209H\u0016J\b\u0010E\u001a\u00020(H\u0016J\b\u0010F\u001a\u00020(H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0007\"\u0004\b\u0017\u0010\tR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\tR\u001a\u0010!\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0007\"\u0004\b#\u0010\tR\u001a\u0010$\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b%\u0010\u0007\"\u0004\b&\u0010\t¨\u0006G"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$View;", "()V", "accountServicesContainer", "Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "getAccountServicesContainer", "()Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "setAccountServicesContainer", "(Lcom/privacystar/core/ui/widgets/CategoryToggleView;)V", "charityContainer", "getCharityContainer", "setCharityContainer", "nuisanceContainer", "getNuisanceContainer", "setNuisanceContainer", "politicalContainer", "getPoliticalContainer", "setPoliticalContainer", "presenter", "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsPresenter;", "prisonContainer", "getPrisonContainer", "setPrisonContainer", "saveButton", "Landroid/support/v7/widget/CardView;", "getSaveButton", "()Landroid/support/v7/widget/CardView;", "setSaveButton", "(Landroid/support/v7/widget/CardView;)V", "scamContainer", "getScamContainer", "setScamContainer", "surveyContainer", "getSurveyContainer", "setSurveyContainer", "telemarketingContainer", "getTelemarketingContainer", "setTelemarketingContainer", "closeSettings", "", "getLayoutResId", "", "newInstance", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onViewCreated", Promotion.ACTION_VIEW, "setAccountServices", "enabled", "", "setCharity", "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "setupClickListeners", "setupSaveButton", "buttonEnabled", "setupToolbar", "showSubscriptionPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsFragment.class */
public final class AdvancedSettingsFragment extends DetailFragment implements AdvancedSettingsContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public CategoryToggleView accountServicesContainer;
    @NotNull
    public CategoryToggleView charityContainer;
    @NotNull
    public CategoryToggleView nuisanceContainer;
    @NotNull
    public CategoryToggleView politicalContainer;
    private final AdvancedSettingsPresenter presenter;
    @NotNull
    public CategoryToggleView prisonContainer;
    @NotNull
    public CardView saveButton;
    @NotNull
    public CategoryToggleView scamContainer;
    @NotNull
    public CategoryToggleView surveyContainer;
    @NotNull
    public CategoryToggleView telemarketingContainer;

    public AdvancedSettingsFragment() {
        AdvancedSettingsManagerImpl advancedSettingsManagerImpl = AdvancedSettingsManagerImpl.INSTANCE;
        AnalyticsManager analyticsManager = AnalyticsManager.INSTANCE;
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        this.presenter = new AdvancedSettingsPresenter(this, advancedSettingsManagerImpl, analyticsManager, new AdvancedSettingsModel(realm));
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
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void closeSettings() {
        Timber.m28v("Returning to basic settings.", new Object[0]);
        this.activity.onBackPressed();
    }

    @NotNull
    public final CategoryToggleView getAccountServicesContainer() {
        CategoryToggleView categoryToggleView = this.accountServicesContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getCharityContainer() {
        CategoryToggleView categoryToggleView = this.charityContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        return categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.custom_protection_setup_fragment;
    }

    @NotNull
    public final CategoryToggleView getNuisanceContainer() {
        CategoryToggleView categoryToggleView = this.nuisanceContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getPoliticalContainer() {
        CategoryToggleView categoryToggleView = this.politicalContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getPrisonContainer() {
        CategoryToggleView categoryToggleView = this.prisonContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CardView getSaveButton() {
        CardView cardView = this.saveButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveButton");
        }
        return cardView;
    }

    @NotNull
    public final CategoryToggleView getScamContainer() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getSurveyContainer() {
        CategoryToggleView categoryToggleView = this.surveyContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getTelemarketingContainer() {
        CategoryToggleView categoryToggleView = this.telemarketingContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        return categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new AdvancedSettingsFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        View findViewById = inflate.findViewById(C1566R.C1569id.protection_setup_next);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "view.findViewById(R.id.protection_setup_next)");
        this.saveButton = (CardView) findViewById;
        View findViewById2 = inflate.findViewById(C1566R.C1569id.custom_protection_list_lyt);
        View findViewById3 = findViewById2.findViewById(C1566R.C1569id.custom_protection_spam);
        Intrinsics.checkExpressionValueIsNotNull(findViewById3, "listHolder.findViewById(…d.custom_protection_spam)");
        this.scamContainer = (CategoryToggleView) findViewById3;
        View findViewById4 = findViewById2.findViewById(C1566R.C1569id.custom_protection_nuisance);
        Intrinsics.checkExpressionValueIsNotNull(findViewById4, "listHolder.findViewById(…stom_protection_nuisance)");
        this.nuisanceContainer = (CategoryToggleView) findViewById4;
        View findViewById5 = findViewById2.findViewById(C1566R.C1569id.custom_protection_telemarketing);
        Intrinsics.checkExpressionValueIsNotNull(findViewById5, "listHolder.findViewById(…protection_telemarketing)");
        this.telemarketingContainer = (CategoryToggleView) findViewById5;
        View findViewById6 = findViewById2.findViewById(C1566R.C1569id.custom_protection_account_services);
        Intrinsics.checkExpressionValueIsNotNull(findViewById6, "listHolder.findViewById(…tection_account_services)");
        this.accountServicesContainer = (CategoryToggleView) findViewById6;
        View findViewById7 = findViewById2.findViewById(C1566R.C1569id.custom_protection_political);
        Intrinsics.checkExpressionValueIsNotNull(findViewById7, "listHolder.findViewById(…tom_protection_political)");
        this.politicalContainer = (CategoryToggleView) findViewById7;
        View findViewById8 = findViewById2.findViewById(C1566R.C1569id.custom_protection_survey);
        Intrinsics.checkExpressionValueIsNotNull(findViewById8, "listHolder.findViewById(…custom_protection_survey)");
        this.surveyContainer = (CategoryToggleView) findViewById8;
        View findViewById9 = findViewById2.findViewById(C1566R.C1569id.custom_protection_charity);
        Intrinsics.checkExpressionValueIsNotNull(findViewById9, "listHolder.findViewById(…ustom_protection_charity)");
        this.charityContainer = (CategoryToggleView) findViewById9;
        View findViewById10 = findViewById2.findViewById(C1566R.C1569id.custom_protection_prison);
        Intrinsics.checkExpressionValueIsNotNull(findViewById10, "listHolder.findViewById(…custom_protection_prison)");
        this.prisonContainer = (CategoryToggleView) findViewById10;
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        this.presenter.onViewDestroyed();
        super.onDestroy();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setAccountServices(boolean z) {
        CategoryToggleView categoryToggleView = this.accountServicesContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setAccountServicesContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.accountServicesContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setCharity(boolean z) {
        CategoryToggleView categoryToggleView = this.charityContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setCharityContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.charityContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setNuisance(boolean z) {
        CategoryToggleView categoryToggleView = this.nuisanceContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setNuisanceContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.nuisanceContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setPolitical(boolean z) {
        CategoryToggleView categoryToggleView = this.politicalContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setPoliticalContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.politicalContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setPrison(boolean z) {
        CategoryToggleView categoryToggleView = this.prisonContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setPrisonContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.prisonContainer = categoryToggleView;
    }

    public final void setSaveButton(@NotNull CardView cardView) {
        Intrinsics.checkParameterIsNotNull(cardView, "<set-?>");
        this.saveButton = cardView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setScam(boolean z) {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setScamContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.scamContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setSurvey(boolean z) {
        CategoryToggleView categoryToggleView = this.surveyContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setSurveyContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.surveyContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setTelemarketing(boolean z) {
        CategoryToggleView categoryToggleView = this.telemarketingContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setTelemarketingContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.telemarketingContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setupCategories() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        ICategoryToggleView.setContent$default(categoryToggleView, C1566R.string.category_scam_label, C1566R.string.category_scam_description, C1566R.C1568drawable.ic_cat_scam, false, 8, null);
        CategoryToggleView categoryToggleView2 = this.nuisanceContainer;
        if (categoryToggleView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView2.setContent(C1566R.string.category_nuisance_label, C1566R.string.category_nuisance_description, C1566R.C1568drawable.ic_cat_nuisance_gray, true);
        CategoryToggleView categoryToggleView3 = this.telemarketingContainer;
        if (categoryToggleView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView3.setContent(C1566R.string.category_telemarketing_label, C1566R.string.category_telemarketing_description, C1566R.C1568drawable.ic_cat_telemarketer_grey, true);
        CategoryToggleView categoryToggleView4 = this.accountServicesContainer;
        if (categoryToggleView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView4.setContent(C1566R.string.account_services_label, C1566R.string.category_account_services_description, C1566R.C1568drawable.ic_cat_debt_collector, true);
        CategoryToggleView categoryToggleView5 = this.politicalContainer;
        if (categoryToggleView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView5.setContent(C1566R.string.category_political_label, C1566R.string.category_political_description, C1566R.C1568drawable.ic_cat_political, true);
        CategoryToggleView categoryToggleView6 = this.charityContainer;
        if (categoryToggleView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView6.setContent(C1566R.string.category_charity_label, C1566R.string.category_charity_description, C1566R.C1568drawable.ic_cat_charity, true);
        CategoryToggleView categoryToggleView7 = this.surveyContainer;
        if (categoryToggleView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView7.setContent(C1566R.string.category_survey_label, C1566R.string.category_survey_description, C1566R.C1568drawable.ic_cat_market_research, true);
        CategoryToggleView categoryToggleView8 = this.prisonContainer;
        if (categoryToggleView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView8.setContent(C1566R.string.category_prison_label, C1566R.string.category_prison_description, C1566R.C1568drawable.ic_cat_reported_telemarketer, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setupClickListeners() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        categoryToggleView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onScamToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView2 = this.nuisanceContainer;
        if (categoryToggleView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onNuisanceToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView3 = this.telemarketingContainer;
        if (categoryToggleView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView3.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onTelemarketingToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView4 = this.accountServicesContainer;
        if (categoryToggleView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView4.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onAccountServicesToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView5 = this.politicalContainer;
        if (categoryToggleView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onPoliticalToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView6 = this.surveyContainer;
        if (categoryToggleView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onSurveyToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView7 = this.charityContainer;
        if (categoryToggleView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView7.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onCharityToggleClicked();
            }
        });
        CategoryToggleView categoryToggleView8 = this.prisonContainer;
        if (categoryToggleView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView8.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupClickListeners$8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdvancedSettingsPresenter advancedSettingsPresenter;
                advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                advancedSettingsPresenter.onPrisonToggleClicked();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setupSaveButton(boolean z) {
        if (z) {
            CardView cardView = this.saveButton;
            if (cardView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("saveButton");
            }
            ((TextView) cardView.findViewById(C1566R.C1569id.protection_setup_text)).setText(C1566R.string.custom_protection_setup_fragment_save);
            CardView cardView2 = this.saveButton;
            if (cardView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("saveButton");
            }
            cardView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsFragment$setupSaveButton$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AdvancedSettingsPresenter advancedSettingsPresenter;
                    advancedSettingsPresenter = AdvancedSettingsFragment.this.presenter;
                    advancedSettingsPresenter.onSaveButtonClicked();
                }
            });
            return;
        }
        CardView cardView3 = this.saveButton;
        if (cardView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("saveButton");
        }
        cardView3.setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void setupToolbar() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.setDetailToolbarTitle(C1566R.string.settings_fragment_title);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.View
    public void showSubscriptionPage() {
        this.activity.showSubscriptionPage();
    }
}
