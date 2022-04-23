package com.privacystar.core.p011ui.detail_view.settings;

import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.app.FragmentActivity;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.BaseActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.rey.material.widget.Switch;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0014J\b\u0010\u0007\u001a\u00020\u0001H\u0016J&\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0002¨\u0006\u0013"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/AttorneyGeneralFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "()V", "editState", "", "getLayoutResId", "", "newInstance", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "submitSettings", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.AttorneyGeneralFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/AttorneyGeneralFragment.class */
public final class AttorneyGeneralFragment extends DetailFragment {
    private HashMap _$_findViewCache;

    /* JADX INFO: Access modifiers changed from: private */
    public final void editState() {
        Timber.m28v("Editing AG State", new Object[0]);
        BaseActivity.Companion companion = BaseActivity.Companion;
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        Intent detailIntent = companion.detailIntent(activity, StateFragment.class, null);
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.startActivity(detailIntent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void submitSettings() {
        Timber.m37d("Submit button clicked.", new Object[0]);
        Switch r0 = (Switch) _$_findCachedViewById(C1566R.C1569id.attorney_general_alerts_sw);
        PreferenceUtil.putAGAlertsEnabled(r0 != null ? r0.isActivated() : false);
        Switch r02 = (Switch) _$_findCachedViewById(C1566R.C1569id.attorney_general_complaints_sw);
        PreferenceUtil.putAGServiceEnabled(r02 != null ? r02.isActivated() : false);
        PreferenceUtil.putAGServiceConfigured(true);
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(getContext(), true);
        Timber.m28v("Returning to basic settings.", new Object[0]);
        BaseActivity.Companion companion = BaseActivity.Companion;
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        Intent detailIntent = companion.detailIntent(activity, BasicSettingsFragment.class, null);
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            activity2.startActivity(detailIntent);
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
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.attorney_general_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new AttorneyGeneralFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
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
        CardView cardView = (CardView) _$_findCachedViewById(C1566R.C1569id.attorney_general_submit_cv);
        if (cardView != null) {
            Observable<R> map = RxView.clicks(cardView).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.detail_view.settings.AttorneyGeneralFragment$onViewCreated$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    AttorneyGeneralFragment.this.submitSettings();
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) _$_findCachedViewById(C1566R.C1569id.attorney_general_state_edit_fl);
        if (frameLayout != null) {
            Observable<R> map2 = RxView.clicks(frameLayout).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map2, "RxView.clicks(this).map(VoidToUnit)");
            map2.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.detail_view.settings.AttorneyGeneralFragment$onViewCreated$$inlined$let$lambda$2
                public final void accept(Unit unit) {
                    AttorneyGeneralFragment.this.editState();
                }
            });
        }
    }
}
