package com.privacystar.core.p011ui.intro.custom_protection;

import android.app.Activity;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.AttachSubscriptionObserver;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.widgets.CategoryToggleView;
import com.privacystar.core.p011ui.widgets.ICategoryToggleView;
import com.privacystar.core.service.PreferenceUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020/H\u0014J\b\u00100\u001a\u00020+H\u0016J\u0012\u00101\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u000103H\u0016J&\u00104\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u0001092\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u001a\u0010:\u001a\u00020-2\u0006\u0010;\u001a\u0002052\b\u00102\u001a\u0004\u0018\u000103H\u0016J\u0010\u0010<\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010>\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\b\u0010?\u001a\u00020-H\u0016J\u0010\u0010@\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010A\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010B\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010C\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010D\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\u0010\u0010E\u001a\u00020-2\u0006\u0010=\u001a\u00020+H\u0016J\b\u0010F\u001a\u00020-H\u0016J\b\u0010G\u001a\u00020+H\u0016J\b\u0010H\u001a\u00020-H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001c\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\b\"\u0004\b\u001e\u0010\nR\u001a\u0010\u001f\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b \u0010\b\"\u0004\b!\u0010\nR\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010$\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b%\u0010\b\"\u0004\b&\u0010\nR\u001a\u0010'\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b(\u0010\b\"\u0004\b)\u0010\n¨\u0006I"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$View;", "()V", "accountServicesContainer", "Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "getAccountServicesContainer", "()Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "setAccountServicesContainer", "(Lcom/privacystar/core/ui/widgets/CategoryToggleView;)V", "charityContainer", "getCharityContainer", "setCharityContainer", "nextButton", "Landroid/support/v7/widget/CardView;", "getNextButton", "()Landroid/support/v7/widget/CardView;", "setNextButton", "(Landroid/support/v7/widget/CardView;)V", "nuisanceContainer", "getNuisanceContainer", "setNuisanceContainer", "politicalContainer", "getPoliticalContainer", "setPoliticalContainer", "presenter", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionPresenter;", "prisonContainer", "getPrisonContainer", "setPrisonContainer", "scamContainer", "getScamContainer", "setScamContainer", "subsChanged", "Lcom/privacystar/core/ui/PSActivity$OnSubscriptionChangedListener;", "surveyContainer", "getSurveyContainer", "setSurveyContainer", "telemarketingContainer", "getTelemarketingContainer", "setTelemarketingContainer", "canAutoTransition", "", "finishView", "", "getLayoutResId", "", "handlesBackButton", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", Promotion.ACTION_VIEW, "setAccountServices", "enabled", "setCharity", "setClickListeners", "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "shouldDisplay", "showUpgradePage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionFragment.class */
public final class CustomProtectionFragment extends IntroFragment implements IntroActivity.IntroActivityContent, CustomProtectionContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public CategoryToggleView accountServicesContainer;
    @NotNull
    public CategoryToggleView charityContainer;
    @NotNull
    public CardView nextButton;
    @NotNull
    public CategoryToggleView nuisanceContainer;
    @NotNull
    public CategoryToggleView politicalContainer;
    @NotNull
    public CategoryToggleView prisonContainer;
    @NotNull
    public CategoryToggleView scamContainer;
    @NotNull
    public CategoryToggleView surveyContainer;
    @NotNull
    public CategoryToggleView telemarketingContainer;
    private CustomProtectionPresenter presenter = new CustomProtectionPresenter(new WeakReference(this));
    private final PSActivity.OnSubscriptionChangedListener subsChanged = new PSActivity.OnSubscriptionChangedListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$subsChanged$1
        @Override // com.privacystar.core.p011ui.PSActivity.OnSubscriptionChangedListener
        public final void onSubscriptionChanged(boolean z) {
            CustomProtectionPresenter customProtectionPresenter;
            customProtectionPresenter = CustomProtectionFragment.this.presenter;
            customProtectionPresenter.subscriptionChanged(z);
        }
    };

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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
    public void finishView() {
        transitionIntroFragment();
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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.custom_protection_setup_fragment;
    }

    @NotNull
    public final CardView getNextButton() {
        CardView cardView = this.nextButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nextButton");
        }
        return cardView;
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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.activity instanceof AttachSubscriptionObserver) {
            Timber.m37d("Subscription listener attached", new Object[0]);
            Activity activity = this.activity;
            if (activity == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.AttachSubscriptionObserver");
            }
            ((AttachSubscriptionObserver) activity).attachObserver(this.subsChanged);
            return;
        }
        Timber.m34e("Subscription listener couldn't attach, activity is not an instance of AttachSubscriptionObserver", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        View findViewById = inflate.findViewById(C1566R.C1569id.protection_setup_next);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "view.findViewById(R.id.protection_setup_next)");
        this.nextButton = (CardView) findViewById;
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
    public void setClickListeners() {
        CardView cardView = this.nextButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nextButton");
        }
        cardView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onNextClick();
            }
        });
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        categoryToggleView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onScamToggle();
            }
        });
        CategoryToggleView categoryToggleView2 = this.nuisanceContainer;
        if (categoryToggleView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onNuisanceToggle();
            }
        });
        CategoryToggleView categoryToggleView3 = this.telemarketingContainer;
        if (categoryToggleView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView3.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onTelemarketingToggle();
            }
        });
        CategoryToggleView categoryToggleView4 = this.accountServicesContainer;
        if (categoryToggleView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView4.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onAccountServicesToggle();
            }
        });
        CategoryToggleView categoryToggleView5 = this.politicalContainer;
        if (categoryToggleView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onPoliticalToggle();
            }
        });
        CategoryToggleView categoryToggleView6 = this.charityContainer;
        if (categoryToggleView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onCharityToggle();
            }
        });
        CategoryToggleView categoryToggleView7 = this.surveyContainer;
        if (categoryToggleView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView7.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onSurveyToggle();
            }
        });
        CategoryToggleView categoryToggleView8 = this.prisonContainer;
        if (categoryToggleView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView8.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.custom_protection.CustomProtectionFragment$setClickListeners$9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomProtectionPresenter customProtectionPresenter;
                customProtectionPresenter = CustomProtectionFragment.this.presenter;
                customProtectionPresenter.onPrisonToggle();
            }
        });
    }

    public final void setNextButton(@NotNull CardView cardView) {
        Intrinsics.checkParameterIsNotNull(cardView, "<set-?>");
        this.nextButton = cardView;
    }

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getProtectionSetup();
    }

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.View
    public void showUpgradePage() {
        Timber.m37d("Going to paywall", new Object[0]);
        showPaywall();
    }
}
