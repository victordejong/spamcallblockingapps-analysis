package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.InformationUtil;
import com.rey.material.widget.Spinner;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.cli.HelpFormatter;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0014J#\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u000f2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0002¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\rH\u0016J&\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J,\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u00152\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001fH\u0002J\b\u0010&\u001a\u00020\rH\u0016J\b\u0010'\u001a\u00020\u001dH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nX\u0082.¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006("}, m254d2 = {"Lcom/privacystar/core/ui/intro/StateFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/rey/material/widget/Spinner$OnItemSelectedListener;", "()V", "nextButton", "Landroid/support/v7/widget/CardView;", "selectedState", "", "stateAbbrs", "", "[Ljava/lang/String;", "canAutoTransition", "", "getLayoutResId", "", "getStateFromPos", "pos", "(I[Ljava/lang/String;)Ljava/lang/String;", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onItemSelected", "", "parent", "Lcom/rey/material/widget/Spinner;", Promotion.ACTION_VIEW, TextModalInteraction.EVENT_KEY_ACTION_POSITION, "id", "", "setupStateSpinner", "spinner", "shouldDisplay", "submitState", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.StateFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/StateFragment.class */
public final class StateFragment extends IntroFragment implements IntroActivity.IntroActivityContent, Spinner.OnItemSelectedListener {
    private HashMap _$_findViewCache;
    private CardView nextButton;
    private String selectedState = HelpFormatter.DEFAULT_LONG_OPT_PREFIX;
    private String[] stateAbbrs;

    private final String getStateFromPos(int i, String[] strArr) {
        return (i >= 0 && strArr.length >= i) ? strArr[i] : strArr[strArr.length - 1];
    }

    private final void setupStateSpinner(Spinner spinner) {
        Context context = getContext();
        if (context != null) {
            ArrayAdapter<CharSequence> createFromResource = ArrayAdapter.createFromResource(context, C1566R.array.us_states_array, 17367048);
            createFromResource.setDropDownViewResource(17367049);
            spinner.setAdapter(createFromResource);
        }
        spinner.setOnItemSelectedListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submitState() {
        Timber.m37d("State button clicked.", new Object[0]);
        CardView cardView = this.nextButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nextButton");
        }
        cardView.setEnabled(false);
        InformationUtil.setAttorneyGeneralPrefs(getContext(), false, this.selectedState);
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(getContext(), true);
        transitionIntroFragment();
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

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.state_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        CardView cardView;
        Spinner spinner;
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        String[] stringArray = getResources().getStringArray(C1566R.array.us_states_abbr_array);
        Intrinsics.checkExpressionValueIsNotNull(stringArray, "resources.getStringArray…ray.us_states_abbr_array)");
        this.stateAbbrs = stringArray;
        if (!(inflate == null || (spinner = (Spinner) inflate.findViewById(C1566R.C1569id.state_selection_spinner)) == null)) {
            setupStateSpinner(spinner);
        }
        if (!(inflate == null || (cardView = (CardView) inflate.findViewById(C1566R.C1569id.state_selection_button_cv)) == null)) {
            this.nextButton = cardView;
            CardView cardView2 = this.nextButton;
            if (cardView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nextButton");
            }
            cardView2.setEnabled(false);
            CardView cardView3 = this.nextButton;
            if (cardView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nextButton");
            }
            Observable<R> map = RxView.clicks(cardView3).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.StateFragment$onCreateView$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    StateFragment.this.submitState();
                }
            });
        }
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.rey.material.widget.Spinner.OnItemSelectedListener
    public void onItemSelected(@Nullable Spinner spinner, @Nullable View view, int i, long j) {
        String[] strArr = this.stateAbbrs;
        if (strArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stateAbbrs");
        }
        this.selectedState = getStateFromPos(i, strArr);
        boolean z = true;
        Timber.m37d("State selected: [%s]", this.selectedState);
        CardView cardView = this.nextButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nextButton");
        }
        if (i == 0) {
            z = false;
        }
        cardView.setEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getAGStateSet();
    }
}
