package com.callapp.contacts.activity.contact.details.overlay;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.AbstractC2941a;
import com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter.class */
public class MultipleSmsOverlayAdapter extends AbstractC2941a {

    /* renamed from: a */
    private SingleSmsItemView.OnSinglePageEventListener f22055a;

    /* renamed from: b */
    private List<SingleSmsData> f22056b;

    /* renamed from: c */
    private Map<Integer, SingleSmsItemView> f22057c = new HashMap();

    public MultipleSmsOverlayAdapter(List<SingleSmsData> list, SingleSmsItemView.OnSinglePageEventListener onSinglePageEventListener) {
        this.f22056b = list;
        this.f22055a = onSinglePageEventListener;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final Object mo26231a(ViewGroup viewGroup, int i) {
        SingleSmsItemView singleSmsItemView = new SingleSmsItemView(viewGroup.getContext());
        singleSmsItemView.setOnSinglePageEventListener(this.f22055a);
        singleSmsItemView.m30855a(this.f22056b.get(i), getCount());
        this.f22057c.put(Integer.valueOf(i), singleSmsItemView);
        viewGroup.addView(singleSmsItemView);
        return singleSmsItemView;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        this.f22057c.remove(Integer.valueOf(i));
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final boolean mo26232a(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public int getCount() {
        return this.f22056b.size();
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final int getItemPosition$5d527804() {
        return -2;
    }

    public SingleSmsItemView getViewByPosition(int i) {
        return this.f22057c.get(Integer.valueOf(i));
    }
}
