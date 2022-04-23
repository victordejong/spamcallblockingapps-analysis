package com.privacystar.core.p011ui.detail_view.dashboard;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.realm.Realm;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract;", "", "()V", "Manager", "View", "ViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardContract.class */
public final class DashboardContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010��\n��\bf\u0018��2\u00020\u0001¨\u0006\u0002"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$Manager;", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardContract$Manager.class */
    public interface Manager {
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0005H&J\b\u0010\t\u001a\u00020\u0005H&¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$View;", "", "getRealmTemp", "Lio/realm/Realm;", "setTotalBlocks", "", FirebaseAnalytics.Param.VALUE, "", "setupRecyclerView", "setupToolbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardContract$View.class */
    public interface View {
        @NotNull
        Realm getRealmTemp();

        void setTotalBlocks(int i);

        void setupRecyclerView();

        void setupToolbar();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/DashboardContract$ViewHolder;", "", "setCategoryName", "", "name", "", "setCategoryValue", "count", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.DashboardContract$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/DashboardContract$ViewHolder.class */
    public interface ViewHolder {
        void setCategoryName(@NotNull String str);

        void setCategoryValue(int i);
    }
}
