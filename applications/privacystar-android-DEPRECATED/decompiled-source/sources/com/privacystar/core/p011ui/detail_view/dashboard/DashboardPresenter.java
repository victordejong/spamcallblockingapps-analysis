package com.privacystar.core.p011ui.detail_view.dashboard;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardContract;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0012R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$View;", "(Ljava/lang/ref/WeakReference;)V", "itemList", "", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardItem;", "getItemList", "()Ljava/util/List;", "setItemList", "(Ljava/util/List;)V", "getView", "()Ljava/lang/ref/WeakReference;", "getItemCount", "", "onBindViewHolder", "", "viewHolder", "Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$ViewHolder;", "pos", "onViewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardPresenter.class */
public final class DashboardPresenter {
    @NotNull
    public List<DashboardItem> itemList;
    @NotNull
    private final WeakReference<DashboardContract.View> view;

    public DashboardPresenter(@NotNull WeakReference<DashboardContract.View> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    public final int getItemCount() {
        List<DashboardItem> list = this.itemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemList");
        }
        return list.size();
    }

    @NotNull
    public final List<DashboardItem> getItemList() {
        List<DashboardItem> list = this.itemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemList");
        }
        return list;
    }

    @NotNull
    public final WeakReference<DashboardContract.View> getView() {
        return this.view;
    }

    public final void onBindViewHolder(@NotNull DashboardContract.ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        List<DashboardItem> list = this.itemList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemList");
        }
        DashboardItem dashboardItem = list.get(i);
        viewHolder.setCategoryName(dashboardItem.getItemTitle());
        viewHolder.setCategoryValue(dashboardItem.getItemValue());
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.DashboardPageView.INSTANCE);
        DashboardContract.View view = this.view.get();
        if (view != null) {
            List<DashboardItem> provideDashboardIntroItems = DashboardItemRepository.INSTANCE.provideDashboardIntroItems(view.getRealmTemp());
            if (provideDashboardIntroItems.size() < 4) {
                Timber.m25w("Incorrect amount of categories returned", new Object[0]);
                return;
            }
            this.itemList = provideDashboardIntroItems.subList(1, provideDashboardIntroItems.size());
            view.setupToolbar();
            view.setTotalBlocks(((DashboardItem) CollectionsKt.first((List<? extends Object>) provideDashboardIntroItems)).getItemValue());
            view.setupRecyclerView();
        }
    }

    public final void setItemList(@NotNull List<DashboardItem> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.itemList = list;
    }
}
