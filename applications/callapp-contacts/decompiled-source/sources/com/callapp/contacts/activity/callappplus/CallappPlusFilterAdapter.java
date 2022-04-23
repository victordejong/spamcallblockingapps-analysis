package com.callapp.contacts.activity.callappplus;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter.class */
public class CallappPlusFilterAdapter extends RecyclerView.a<CallappPlusFilterItemViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<CallappPlusFilterItemData> f11294a;

    /* renamed from: b  reason: collision with root package name */
    private OnFilterChangeListener f11295b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter$OnFilterChangeListener.class */
    public interface OnFilterChangeListener {
        void a();
    }

    public CallappPlusFilterAdapter(OnFilterChangeListener onFilterChangeListener) {
        this.f11295b = onFilterChangeListener;
        ArrayList arrayList = new ArrayList();
        this.f11294a = arrayList;
        arrayList.add(0, new CallappPlusFilterItemData(2131886982, true));
        for (IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin : IMDataExtractionUtils.RecognizedPersonOrigin.values()) {
            this.f11294a.add(new CallappPlusFilterItemData(recognizedPersonOrigin.imNameStringResId, true));
        }
    }

    public List<Integer> getActiveFilters() {
        ArrayList arrayList = new ArrayList();
        List<CallappPlusFilterItemData> list = this.f11294a;
        if (list != null) {
            for (CallappPlusFilterItemData callappPlusFilterItemData : list) {
                if (callappPlusFilterItemData.isChecked()) {
                    arrayList.add(Integer.valueOf(callappPlusFilterItemData.getTextResId()));
                }
            }
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f11294a.size();
    }

    public boolean isAllSelected() {
        return this.f11294a.get(0).isChecked();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(CallappPlusFilterItemViewHolder callappPlusFilterItemViewHolder, int i) {
        Drawable drawable;
        final CallappPlusFilterItemViewHolder callappPlusFilterItemViewHolder2 = callappPlusFilterItemViewHolder;
        final CallappPlusFilterItemData callappPlusFilterItemData = this.f11294a.get(i);
        callappPlusFilterItemViewHolder2.r.setText(Activities.getString(callappPlusFilterItemData.getTextResId()));
        callappPlusFilterItemViewHolder2.r.setTextColor(ThemeUtils.getColor(2131100140));
        callappPlusFilterItemViewHolder2.r.setChecked(callappPlusFilterItemData.isChecked());
        if (callappPlusFilterItemData.isChecked()) {
            drawable = ViewUtils.getDrawable(2131231375);
            drawable.setColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN);
        } else {
            drawable = ViewUtils.getDrawable(2131232201);
        }
        callappPlusFilterItemViewHolder2.r.setButtonDrawable(drawable);
        callappPlusFilterItemViewHolder2.getCheckBox().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallappPlusFilterAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int textResId = callappPlusFilterItemData.getTextResId();
                boolean isChecked = callappPlusFilterItemViewHolder2.getCheckBox().isChecked();
                if (textResId == 2131886982) {
                    for (CallappPlusFilterItemData callappPlusFilterItemData2 : CallappPlusFilterAdapter.this.f11294a) {
                        callappPlusFilterItemData2.setChecked(isChecked);
                    }
                    CallappPlusFilterAdapter.this.notifyDataSetChanged();
                } else if (!isChecked) {
                    ((CallappPlusFilterItemData) CallappPlusFilterAdapter.this.f11294a.get(0)).setChecked(false);
                    CallappPlusFilterAdapter.this.notifyItemChanged(0);
                    CallappPlusFilterItemData callappPlusFilterItemData3 = callappPlusFilterItemData;
                    callappPlusFilterItemData3.setChecked(!callappPlusFilterItemData3.isChecked());
                    CallappPlusFilterAdapter.this.notifyItemChanged(callappPlusFilterItemViewHolder2.getAdapterPosition());
                } else {
                    CallappPlusFilterItemData callappPlusFilterItemData4 = callappPlusFilterItemData;
                    callappPlusFilterItemData4.setChecked(!callappPlusFilterItemData4.isChecked());
                    CallappPlusFilterAdapter.this.notifyItemChanged(callappPlusFilterItemViewHolder2.getAdapterPosition());
                }
                CallappPlusFilterAdapter.this.f11295b.a();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ CallappPlusFilterItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CallappPlusFilterItemViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559153, viewGroup, false));
    }
}
