package com.tmobile.services.nameid.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.RecentActivityDisplayable;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallDetailsRecyclerViewAdapter.class */
public class CallDetailsRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a */
    private List<RecentActivityDisplayable> f13129a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallDetailsRecyclerViewAdapter$GenericViewHolder.class */
    public static class GenericViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        TextView f13130a;

        /* renamed from: b */
        TextView f13131b;

        /* renamed from: c */
        ImageView f13132c;

        /* renamed from: d */
        Context f13133d;

        GenericViewHolder(View view) {
            super(view);
            this.f13133d = view.getContext();
            this.f13130a = (TextView) view.findViewById(C1517R.C1520id.text_view_call_details_item_day);
            this.f13131b = (TextView) view.findViewById(C1517R.C1520id.text_view_call_details_item_time);
            this.f13132c = (ImageView) view.findViewById(C1517R.C1520id.image_call_details_item_type);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallDetailsRecyclerViewAdapter(List<RecentActivityDisplayable> list) {
        this.f13129a = list;
        setHasStableIds(true);
    }

    /* renamed from: c */
    private void m6975c(GenericViewHolder genericViewHolder) {
        genericViewHolder.f13132c.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f13129a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        GenericViewHolder genericViewHolder = (GenericViewHolder) viewHolder;
        RecentActivityDisplayable recentActivityDisplayable = this.f13129a.get(i);
        Context context = genericViewHolder.f13133d;
        if (recentActivityDisplayable != null) {
            genericViewHolder.f13130a.setText(DateUtils.m5792c(recentActivityDisplayable.getTimeStamp(), genericViewHolder.f13133d));
            genericViewHolder.f13131b.setText(DateUtils.m5789f(recentActivityDisplayable.getTimeStamp()));
            m6975c(genericViewHolder);
            if (recentActivityDisplayable.getCommEventType() == ApiUtils.CommEventType.TEXT.getValue()) {
                LogUtil.m5643d("CallDetailsRVA#", "Detected SMS activity. This shouldn't happen.");
                return;
            }
            genericViewHolder.f13132c.setVisibility(0);
            ActivityItem.Type fromValue = ActivityItem.Type.fromValue(recentActivityDisplayable.getDisposition());
            genericViewHolder.f13132c.setImageDrawable(WidgetUtils.m5226k(genericViewHolder.f13133d, fromValue, false));
            genericViewHolder.f13132c.setContentDescription(WidgetUtils.m5211x(genericViewHolder.f13133d, fromValue));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new GenericViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1517R.layout.call_details_item, viewGroup, false));
    }
}
