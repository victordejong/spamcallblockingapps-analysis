package com.callapp.contacts.activity.analytics.cards.callappForYou;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter.class */
public class CustomizationCardAdapter extends RecyclerView.a<CustomizationCardViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<CustomizationCardData> f10829a;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder.class */
    public static class CustomizationCardViewHolder extends RecyclerView.v {
        private TextView r;
        private TextView s;
        private TextView t;
        private RoundCornerProgressBar u;

        public CustomizationCardViewHolder(View view) {
            super(view);
            this.r = (TextView) view.findViewById(2131364130);
            this.s = (TextView) view.findViewById(2131364013);
            this.t = (TextView) view.findViewById(2131363395);
            this.u = (RoundCornerProgressBar) view.findViewById(2131363575);
        }
    }

    public CustomizationCardAdapter(List<CustomizationCardData> list) {
        this.f10829a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f10829a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(CustomizationCardViewHolder customizationCardViewHolder, int i) {
        CustomizationCardViewHolder customizationCardViewHolder2 = customizationCardViewHolder;
        CustomizationCardData customizationCardData = this.f10829a.get(i);
        customizationCardViewHolder2.r.setText(customizationCardData.getTitle());
        customizationCardViewHolder2.s.setText(customizationCardData.getSubTitle());
        customizationCardViewHolder2.t.setText(Integer.toString(customizationCardData.getNumber()));
        customizationCardViewHolder2.t.setTextColor(customizationCardData.getColor());
        customizationCardViewHolder2.u.setProgress(customizationCardData.getNumber() + 6 > customizationCardData.getMaxData() ? customizationCardData.getMaxData() : customizationCardData.getNumber() + 6);
        customizationCardViewHolder2.u.setMax(customizationCardData.getMaxData());
        customizationCardViewHolder2.u.setProgressColor(customizationCardData.getColor());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ CustomizationCardViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CustomizationCardViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558581, viewGroup, false));
    }

    public void setData(List<CustomizationCardData> list) {
        this.f10829a.clear();
        this.f10829a.addAll(list);
        notifyDataSetChanged();
    }
}
