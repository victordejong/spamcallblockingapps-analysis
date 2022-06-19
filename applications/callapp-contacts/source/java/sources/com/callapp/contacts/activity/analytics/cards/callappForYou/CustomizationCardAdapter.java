package com.callapp.contacts.activity.analytics.cards.callappForYou;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter.class */
public class CustomizationCardAdapter extends RecyclerView.AbstractC2626a<CustomizationCardViewHolder> {

    /* renamed from: a */
    private List<CustomizationCardData> f19733a;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder.class */
    public static class CustomizationCardViewHolder extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        private TextView f19734r;

        /* renamed from: s */
        private TextView f19735s;

        /* renamed from: t */
        private TextView f19736t;

        /* renamed from: u */
        private RoundCornerProgressBar f19737u;

        public CustomizationCardViewHolder(View view) {
            super(view);
            this.f19734r = (TextView) view.findViewById(2131364130);
            this.f19735s = (TextView) view.findViewById(2131364013);
            this.f19736t = (TextView) view.findViewById(2131363395);
            this.f19737u = (RoundCornerProgressBar) view.findViewById(2131363575);
        }
    }

    public CustomizationCardAdapter(List<CustomizationCardData> list) {
        this.f19733a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f19733a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(CustomizationCardViewHolder customizationCardViewHolder, int i) {
        CustomizationCardViewHolder customizationCardViewHolder2 = customizationCardViewHolder;
        CustomizationCardData customizationCardData = this.f19733a.get(i);
        customizationCardViewHolder2.f19734r.setText(customizationCardData.getTitle());
        customizationCardViewHolder2.f19735s.setText(customizationCardData.getSubTitle());
        customizationCardViewHolder2.f19736t.setText(Integer.toString(customizationCardData.getNumber()));
        customizationCardViewHolder2.f19736t.setTextColor(customizationCardData.getColor());
        customizationCardViewHolder2.f19737u.setProgress(customizationCardData.getNumber() + 6 > customizationCardData.getMaxData() ? customizationCardData.getMaxData() : customizationCardData.getNumber() + 6);
        customizationCardViewHolder2.f19737u.setMax(customizationCardData.getMaxData());
        customizationCardViewHolder2.f19737u.setProgressColor(customizationCardData.getColor());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ CustomizationCardViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CustomizationCardViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558581, viewGroup, false));
    }

    public void setData(List<CustomizationCardData> list) {
        this.f19733a.clear();
        this.f19733a.addAll(list);
        notifyDataSetChanged();
    }
}
