package com.privacystar.core.p011ui.intro;

import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardItem;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardItemAdapter;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0014J\b\u0010\u0011\u001a\u00020\fH\u0016J\u0012\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001d\u001a\u00020\fH\u0016R!\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u001e"}, m254d2 = {"Lcom/privacystar/core/ui/intro/DashboardFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "itemList", "", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItem;", "getItemList", "()Ljava/util/List;", "itemList$delegate", "Lkotlin/Lazy;", "canAutoTransition", "", "finishView", "", "getLayoutResId", "", "handlesBackButton", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", Promotion.ACTION_VIEW, "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.DashboardFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/DashboardFragment.class */
public final class DashboardFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DashboardFragment.class), "itemList", "getItemList()Ljava/util/List;"))};
    private HashMap _$_findViewCache;
    private final Lazy itemList$delegate = LazyKt.lazy(new DashboardFragment$itemList$2(this));

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishView() {
        Timber.m37d("Finishing and transitioning intro dashboard", new Object[0]);
        PreferenceUtil.putIntroDashboardSeen(true);
        transitionIntroFragment();
    }

    private final List<DashboardItem> getItemList() {
        Lazy lazy = this.itemList$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (List) lazy.getValue();
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
        return C1566R.C1571layout.dashboard_intro_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getItemList().isEmpty()) {
            Timber.m37d("No onboarding dashboard items to display.", new Object[0]);
            finishView();
        }
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        CardView cardView;
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        if (!(inflate == null || (cardView = (CardView) inflate.findViewById(C1566R.C1569id.dashboard_intro_next_cv)) == null)) {
            Observable<R> map = RxView.clicks(cardView).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.DashboardFragment$onCreateView$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    DashboardFragment.this.finishView();
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

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        TextView dashboard_header_top = (TextView) _$_findCachedViewById(C1566R.C1569id.dashboard_header_top);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_header_top, "dashboard_header_top");
        dashboard_header_top.setText(getText(C1566R.string.dashboard_intro_header));
        RecyclerView dashboard_fragment_rv = (RecyclerView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_rv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_rv, "dashboard_fragment_rv");
        RecyclerView dashboard_fragment_rv2 = (RecyclerView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_rv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_rv2, "dashboard_fragment_rv");
        dashboard_fragment_rv.setLayoutManager(new LinearLayoutManager(dashboard_fragment_rv2.getContext()));
        RecyclerView dashboard_fragment_rv3 = (RecyclerView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_rv);
        Intrinsics.checkExpressionValueIsNotNull(dashboard_fragment_rv3, "dashboard_fragment_rv");
        dashboard_fragment_rv3.setAdapter(new AdvancedDashboardItemAdapter(getItemList()));
        ((RecyclerView) _$_findCachedViewById(C1566R.C1569id.dashboard_fragment_rv)).setHasFixedSize(true);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getIntroDashboardSeen();
    }
}
