package com.privacystar.core.p011ui.detail_view.dashboard;

import android.animation.ValueAnimator;
import android.os.Bundle;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u000278B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u001c\u001a\u00020\u001dH\u0014J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0001H\u0016J\b\u0010!\u001a\u00020\"H\u0016J&\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020\"H\u0016J\u0012\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001a\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020$2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u00102\u001a\u00020\"H\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u00104\u001a\u00020\u001dH\u0016J\b\u00105\u001a\u00020\"H\u0016J\b\u00106\u001a\u00020\"H\u0016R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u00069"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$View;", "()V", "adapter", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment$ViewHolder;", "getAdapter", "()Landroid/support/v7/widget/RecyclerView$Adapter;", "setAdapter", "(Landroid/support/v7/widget/RecyclerView$Adapter;)V", "presenter", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/detail_view/dashboard/DashboardPresenter;", "recyclerView", "Landroid/support/v7/widget/RecyclerView;", "getRecyclerView", "()Landroid/support/v7/widget/RecyclerView;", "setRecyclerView", "(Landroid/support/v7/widget/RecyclerView;)V", "totalBlockLabel", "Landroid/widget/TextView;", "getTotalBlockLabel", "()Landroid/widget/TextView;", "setTotalBlockLabel", "(Landroid/widget/TextView;)V", "getLayoutResId", "", "getRealmTemp", "Lio/realm/Realm;", "newInstance", "onButtonClicked", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onViewCreated", Promotion.ACTION_VIEW, "refreshContent", "setTotalBlocks", FirebaseAnalytics.Param.VALUE, "setupRecyclerView", "setupToolbar", "AFDashboardAdapter", "ViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardFragment.class */
public final class DashboardFragment extends DetailFragment implements DetailActivity.DetailActivityContent, DashboardContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public RecyclerView.Adapter<ViewHolder> adapter;
    @NotNull
    private final DashboardPresenter presenter = new DashboardPresenter(new WeakReference(this));
    @NotNull
    public RecyclerView recyclerView;
    @NotNull
    public TextView totalBlockLabel;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0086\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0005H\u0016¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment$AFDashboardAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment$ViewHolder;", "(Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment;)V", "getItemCount", "", "onBindViewHolder", "", "parent", "pos", "onCreateViewHolder", "Landroid/view/ViewGroup;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardFragment$AFDashboardAdapter */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardFragment$AFDashboardAdapter.class */
    public final class AFDashboardAdapter extends RecyclerView.Adapter<ViewHolder> {
        public AFDashboardAdapter() {
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DashboardFragment.this.getPresenter().getItemCount();
        }

        public void onBindViewHolder(@NotNull ViewHolder parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            DashboardFragment.this.getPresenter().onBindViewHolder(parent, i);
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        @NotNull
        public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View dashboardItem = LayoutInflater.from(DashboardFragment.this.getContext()).inflate(C1566R.C1571layout.dashboard_item, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(dashboardItem, "dashboardItem");
            return new ViewHolder(dashboardItem);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0018��2\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardFragment$ViewHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$ViewHolder;", Promotion.ACTION_VIEW, "Landroid/view/View;", "(Landroid/view/View;)V", "category", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", FirebaseAnalytics.Param.VALUE, "setCategoryName", "", "name", "", "setCategoryValue", "count", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardFragment$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardFragment$ViewHolder.class */
    public static final class ViewHolder extends RecyclerView.ViewHolder implements DashboardContract.ViewHolder {
        private final TextView category;
        private final TextView value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.category = (TextView) view.findViewById(C1566R.C1569id.dashboard_item_text);
            this.value = (TextView) view.findViewById(C1566R.C1569id.dashboard_item_value);
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.ViewHolder
        public void setCategoryName(@NotNull String name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            TextView category = this.category;
            Intrinsics.checkExpressionValueIsNotNull(category, "category");
            category.setText(name);
        }

        @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.ViewHolder
        public void setCategoryValue(int i) {
            Timber.m37d("category value: " + i, new Object[0]);
            try {
                TextView value = this.value;
                Intrinsics.checkExpressionValueIsNotNull(value, "value");
                value.setText(NumberFormat.getNumberInstance(Locale.US).format(Integer.valueOf(i)));
            } catch (IllegalArgumentException e) {
                Timber.m34e("Error trying to format and set category value - error: " + e.getMessage(), new Object[0]);
            }
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

    @NotNull
    public final RecyclerView.Adapter<ViewHolder> getAdapter() {
        RecyclerView.Adapter<ViewHolder> adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return adapter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.dashboard_fragment;
    }

    @NotNull
    public final DashboardPresenter getPresenter() {
        return this.presenter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.View
    @NotNull
    public Realm getRealmTemp() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return realm;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        return recyclerView;
    }

    @NotNull
    public final TextView getTotalBlockLabel() {
        TextView textView = this.totalBlockLabel;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("totalBlockLabel");
        }
        return textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new DashboardFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        Timber.m37d("View created", new Object[0]);
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C1566R.C1569id.dashboard_fragment_rv);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.dashboard_fragment_rv");
        this.recyclerView = recyclerView;
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.dashboard_header_callout);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.dashboard_header_callout");
        this.totalBlockLabel = textView;
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Timber.m37d("calling presenter", new Object[0]);
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    public final void setAdapter(@NotNull RecyclerView.Adapter<ViewHolder> adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkParameterIsNotNull(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final void setTotalBlockLabel(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.totalBlockLabel = textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.View
    public void setTotalBlocks(int i) {
        Timber.m37d("display total blocked: %s", Integer.valueOf(i));
        try {
            ValueAnimator animator = ValueAnimator.ofInt(0, i);
            Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
            animator.setDuration(1500L);
            animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.privacystar.core.ui.detail_view.dashboard.DashboardFragment$setTotalBlocks$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator animation) {
                    TextView totalBlockLabel = DashboardFragment.this.getTotalBlockLabel();
                    NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
                    Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                    totalBlockLabel.setText(numberInstance.format(animation.getAnimatedValue()));
                }
            });
            animator.start();
        } catch (Exception e) {
            Timber.m34e("Error encountered while animating callout - error: $" + e.getMessage(), new Object[0]);
            TextView textView = this.totalBlockLabel;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("totalBlockLabel");
            }
            textView.setText(String.valueOf(i));
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.View
    public void setupRecyclerView() {
        Timber.m37d("setting up recycler view", new Object[0]);
        this.adapter = new AFDashboardAdapter();
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        RecyclerView.Adapter<ViewHolder> adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        recyclerView2.setAdapter(adapter);
        RecyclerView recyclerView3 = this.recyclerView;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        }
        recyclerView3.setHasFixedSize(true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract.View
    public void setupToolbar() {
        Timber.m37d("setting up toolbar", new Object[0]);
        this.activity.setDetailToolbarTitle(C1566R.string.dashboard_fragment_toolbar_title);
    }
}
