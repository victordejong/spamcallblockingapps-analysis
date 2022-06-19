package com.callapp.contacts.activity.missedcall.missedAnswer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.AbstractC2941a;
import com.callapp.contacts.model.objectbox.SingleMissedCallData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter.class */
public class MultipleMissedCallOverlayAdapter extends AbstractC2941a {

    /* renamed from: a */
    private List<SingleMissedCallData> f23961a;

    /* renamed from: b */
    private Map<Integer, SingleMissedCallItemView> f23962b = new HashMap();

    /* renamed from: c */
    private int f23963c;

    public MultipleMissedCallOverlayAdapter(List<SingleMissedCallData> list, int i) {
        this.f23961a = list;
        this.f23963c = i;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final Object mo26231a(ViewGroup viewGroup, int i) {
        SingleMissedCallItemView singleMissedCallItemView = new SingleMissedCallItemView(viewGroup.getContext());
        SingleMissedCallData singleMissedCallData = this.f23961a.get(i);
        String m27697a = Activities.m27697a(this.f23963c, Integer.valueOf(singleMissedCallData.getNumberOfMissedCalls()), String.valueOf(CallLogUtils.m27553b(new Date(singleMissedCallData.getMissedCallTime()), CallLogUtils.m27579a(singleMissedCallData.getMissedCallTime()))));
        int count = getCount();
        ((TextView) singleMissedCallItemView.findViewById(2131363401)).setText(m27697a);
        if (count > 1) {
            singleMissedCallItemView.f23964a.setVisibility(0);
            TextView textView = singleMissedCallItemView.f23964a;
            textView.setText((singleMissedCallData.getLocation() + 1) + "/" + count);
        } else {
            singleMissedCallItemView.f23964a.setVisibility(8);
        }
        this.f23962b.put(Integer.valueOf(i), singleMissedCallItemView);
        viewGroup.addView(singleMissedCallItemView);
        return singleMissedCallItemView;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        this.f23962b.remove(Integer.valueOf(i));
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final boolean mo26232a(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public int getCount() {
        return this.f23961a.size();
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final int getItemPosition$5d527804() {
        return -2;
    }
}
