package com.tmobile.services.nameid.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.activity.ActivityRecyclerViewAdapter;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.ActivityRealm;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityRecyclerViewAdapter.class */
public class ActivityRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NonNull

    /* renamed from: c */
    private RecyclerViewClickListener f13094c;

    /* renamed from: a */
    private ActivityItemFilter f13092a = new ActivityItemFilter(ActivityPresenter.CallFilterType.ALL);
    @Nonnull

    /* renamed from: b */
    private List<ActivityItem> f13093b = new ArrayList();
    @Nonnull

    /* renamed from: d */
    private List<ActivityItem> f13095d = new ArrayList();

    /* renamed from: e */
    private boolean f13096e = false;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityRecyclerViewAdapter$FooterViewHolder.class */
    static class FooterViewHolder extends RecyclerView.ViewHolder {
        FooterViewHolder(View view, final RecyclerViewClickListener recyclerViewClickListener) {
            super(view);
            TextView textView = (TextView) view.findViewById(C1517R.C1520id.footer_item_text_view);
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ActivityRecyclerViewAdapter.FooterViewHolder.this.m7026a(recyclerViewClickListener, view2);
                }
            });
        }

        /* renamed from: a */
        public /* synthetic */ void m7026a(RecyclerViewClickListener recyclerViewClickListener, View view) {
            recyclerViewClickListener.mo5380a(getLayoutPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityRecyclerViewAdapter$ItemType.class */
    public enum ItemType {
        NORMAL(1),
        FOOTER(2);
        
        private final int value;

        ItemType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityRecyclerViewAdapter(RecyclerViewClickListener recyclerViewClickListener) {
        this.f13094c = recyclerViewClickListener;
    }

    /* renamed from: k */
    private void m7027k() {
        ActivityPresenter.CallFilterType fromValue = ActivityPresenter.CallFilterType.fromValue(PreferenceUtils.m5394c("PREF_LAST_USED_CALL_FILTER", 0));
        if (!this.f13095d.isEmpty() && fromValue == ActivityPresenter.CallFilterType.ALL) {
            List<ActivityItem> list = this.f13095d;
            PreferenceUtils.m5384m("PREF_CALL_LOG_LAST_DISPLAYED_DATE", list.get(list.size() - 1).getDate().getTime());
        }
    }

    /* renamed from: c */
    public void m7035c(List<ActivityItem> list) {
        LogUtil.m5643d("ActivityRecyclerViewAdapter#appendActivityItems", "appending items to RecyclerView - adding " + list.size() + "items to " + this.f13095d.size() + " items");
        ArrayList arrayList = new ArrayList();
        for (ActivityItem activityItem : this.f13095d) {
            if (!list.contains(activityItem)) {
                arrayList.add(activityItem);
            }
        }
        for (ActivityItem activityItem2 : list) {
            arrayList.add(activityItem2.copy());
        }
        Collections.sort(arrayList, Collections.reverseOrder());
        this.f13095d = arrayList;
        this.f13093b = this.f13092a.m7062a(arrayList);
        m7027k();
    }

    @Nullable
    /* renamed from: d */
    public ActivityItem m7034d(int i) {
        if (i < 0 || i >= this.f13093b.size()) {
            return null;
        }
        return this.f13093b.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m7033e(int i) {
        return i == this.f13093b.size();
    }

    /* renamed from: f */
    public void m7032f(List<ActivityItem> list) {
        LogUtil.m5643d("ActivityRecyclerViewAdapter#appendActivityItems", "appending items to RecyclerView - adding " + list.size() + " items to " + this.f13095d.size() + " items");
        StringBuilder sb = new StringBuilder();
        sb.append("old list has ");
        sb.append(this.f13095d.size());
        sb.append(" items");
        LogUtil.m5643d("ActivityRecyclerViewAdapter#prependActivityItems", sb.toString());
        ArrayList arrayList = new ArrayList();
        for (ActivityItem activityItem : list) {
            arrayList.add(activityItem.copy());
        }
        for (ActivityItem activityItem2 : this.f13095d) {
            if (!list.contains(activityItem2)) {
                arrayList.add(activityItem2);
            }
        }
        Collections.sort(arrayList, Collections.reverseOrder());
        LogUtil.m5643d("ActivityRecyclerViewAdapter#prependActivityItems", "new list has " + arrayList.size() + " items");
        this.f13095d = arrayList;
        this.f13093b = this.f13092a.m7062a(arrayList);
        m7027k();
    }

    /* renamed from: g */
    public void m7031g(List<ActivityItem> list) {
        LogUtil.m5643d("ActivityRecyclerViewAdapter#setActivityItems", "setting items in RecyclerView - empty?" + list.isEmpty());
        this.f13095d = list;
        this.f13093b = this.f13092a.m7062a(list);
        m7027k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13093b.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return m7033e(i) ? ItemType.FOOTER.getValue() : ItemType.NORMAL.getValue();
    }

    /* renamed from: h */
    public void m7030h(ActivityItemFilter activityItemFilter) {
        this.f13092a = activityItemFilter;
        this.f13093b = activityItemFilter.m7062a(this.f13095d);
        LogUtil.m5639h("ActivityRecyclerViewAdapter#", "Filtered " + this.f13095d.size() + " ActivityItems into " + this.f13093b.size() + " ActivityItems");
        notifyDataSetChanged();
    }

    /* renamed from: i */
    public void m7029i(String str) {
        for (ActivityItem activityItem : this.f13095d) {
            if (activityItem.getE164Number().equals(str)) {
                ActivityRealm.setItemUnread(activityItem, false);
            }
        }
        notifyDataSetChanged();
    }

    /* renamed from: j */
    public void m7028j(boolean z) {
        LogUtil.m5643d("ActivityRecyclerViewAdapter#setShowNoItems", "setting showNoMoreItems=" + z);
        this.f13096e = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == ItemType.FOOTER.getValue()) {
            ((FooterViewHolder) viewHolder).itemView.setVisibility(this.f13096e ? 0 : 8);
        } else if (i >= 0 && i < this.f13093b.size()) {
            WidgetUtils.GenericViewHolder genericViewHolder = (WidgetUtils.GenericViewHolder) viewHolder;
            ActivityItem activityItem = this.f13093b.get(i);
            if (activityItem != null) {
                WidgetUtils.m5244b(activityItem, genericViewHolder);
            } else {
                LogUtil.m5631p("ActivityRecyclerViewAdapter#onBindViewHolder", "item was null, cannot setup view holder");
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == ItemType.FOOTER.getValue()) {
            return new FooterViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.footer_item, viewGroup, false), this.f13094c);
        }
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.recent_list_item, viewGroup, false);
        UIAnalyticConfigurator.m6241k().m6239m("Activity Item", inflate);
        return new WidgetUtils.GenericViewHolder(inflate, this.f13094c);
    }
}
