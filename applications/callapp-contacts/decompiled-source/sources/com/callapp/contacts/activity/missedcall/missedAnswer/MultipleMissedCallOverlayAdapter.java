package com.callapp.contacts.activity.missedcall.missedAnswer;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.a;
import com.callapp.contacts.model.objectbox.SingleMissedCallData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/missedAnswer/MultipleMissedCallOverlayAdapter.class */
public class MultipleMissedCallOverlayAdapter extends a {

    /* renamed from: a  reason: collision with root package name */
    private List<SingleMissedCallData> f13481a;

    /* renamed from: b  reason: collision with root package name */
    private Map<Integer, SingleMissedCallItemView> f13482b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private int f13483c;

    public MultipleMissedCallOverlayAdapter(List<SingleMissedCallData> list, int i) {
        this.f13481a = list;
        this.f13483c = i;
    }

    @Override // androidx.viewpager.widget.a
    public final Object a(ViewGroup viewGroup, int i) {
        SingleMissedCallItemView singleMissedCallItemView = new SingleMissedCallItemView(viewGroup.getContext());
        SingleMissedCallData singleMissedCallData = this.f13481a.get(i);
        String a2 = Activities.a(this.f13483c, Integer.valueOf(singleMissedCallData.getNumberOfMissedCalls()), String.valueOf(CallLogUtils.b(new Date(singleMissedCallData.getMissedCallTime()), CallLogUtils.a(singleMissedCallData.getMissedCallTime()))));
        int count = getCount();
        ((TextView) singleMissedCallItemView.findViewById(2131363401)).setText(a2);
        if (count > 1) {
            singleMissedCallItemView.f13484a.setVisibility(0);
            TextView textView = singleMissedCallItemView.f13484a;
            textView.setText((singleMissedCallData.getLocation() + 1) + "/" + count);
        } else {
            singleMissedCallItemView.f13484a.setVisibility(8);
        }
        this.f13482b.put(Integer.valueOf(i), singleMissedCallItemView);
        viewGroup.addView(singleMissedCallItemView);
        return singleMissedCallItemView;
    }

    @Override // androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup, int i, Object obj) {
        this.f13482b.remove(Integer.valueOf(i));
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.a
    public final boolean a(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.a
    public int getCount() {
        return this.f13481a.size();
    }

    @Override // androidx.viewpager.widget.a
    public final int getItemPosition$5d527804() {
        return -2;
    }
}
