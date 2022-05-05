package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardItem;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardItemAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardItemAdapter.class */
public class AdvancedDashboardItemAdapter extends RecyclerView.Adapter<ViewHolder> {
    List<DashboardItem> infoItems;

    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardItemAdapter$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardItemAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(C1566R.C1569id.dashboard_item_icon)
        ImageView icon;
        @BindView(C1566R.C1569id.dashboard_item_text)
        TextView title;
        @BindView(C1566R.C1569id.dashboard_item_value)
        TextView value;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind(this, view);
        }
    }

    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardItemAdapter$ViewHolder_ViewBinding */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardItemAdapter$ViewHolder_ViewBinding.class */
    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.icon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.dashboard_item_icon, "field 'icon'", ImageView.class);
            viewHolder.title = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.dashboard_item_text, "field 'title'", TextView.class);
            viewHolder.value = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.dashboard_item_value, "field 'value'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            viewHolder.icon = null;
            viewHolder.title = null;
            viewHolder.value = null;
        }
    }

    public AdvancedDashboardItemAdapter(List<DashboardItem> list) {
        this.infoItems = list;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.infoItems != null) {
            return this.infoItems.size();
        }
        return 0;
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (this.infoItems == null) {
            Timber.m25w("DashboardItem is null.", new Object[0]);
            return;
        }
        DashboardItem dashboardItem = this.infoItems.get(i);
        if (dashboardItem != null) {
            viewHolder.icon.setImageDrawable(PSApplication.context().getDrawable(dashboardItem.getItemIcon()));
            viewHolder.title.setText(dashboardItem.getItemTitle());
            viewHolder.value.setText(dashboardItem.getItemValue());
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1566R.C1571layout.dashboard_item, viewGroup, false));
    }
}
