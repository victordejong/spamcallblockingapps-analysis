package com.callapp.contacts.activity.contact.details.overlay;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.a;
import com.callapp.contacts.activity.contact.details.overlay.SingleSmsItemView;
import com.callapp.contacts.model.objectbox.SingleSmsData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/MultipleSmsOverlayAdapter.class */
public class MultipleSmsOverlayAdapter extends a {

    /* renamed from: a  reason: collision with root package name */
    private SingleSmsItemView.OnSinglePageEventListener f12271a;

    /* renamed from: b  reason: collision with root package name */
    private List<SingleSmsData> f12272b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, SingleSmsItemView> f12273c = new HashMap();

    public MultipleSmsOverlayAdapter(List<SingleSmsData> list, SingleSmsItemView.OnSinglePageEventListener onSinglePageEventListener) {
        this.f12272b = list;
        this.f12271a = onSinglePageEventListener;
    }

    @Override // androidx.viewpager.widget.a
    public final Object a(ViewGroup viewGroup, int i) {
        SingleSmsItemView singleSmsItemView = new SingleSmsItemView(viewGroup.getContext());
        singleSmsItemView.setOnSinglePageEventListener(this.f12271a);
        singleSmsItemView.a(this.f12272b.get(i), getCount());
        this.f12273c.put(Integer.valueOf(i), singleSmsItemView);
        viewGroup.addView(singleSmsItemView);
        return singleSmsItemView;
    }

    @Override // androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup, int i, Object obj) {
        this.f12273c.remove(Integer.valueOf(i));
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.a
    public final boolean a(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.a
    public int getCount() {
        return this.f12272b.size();
    }

    @Override // androidx.viewpager.widget.a
    public final int getItemPosition$5d527804() {
        return -2;
    }

    public SingleSmsItemView getViewByPosition(int i) {
        return this.f12273c.get(Integer.valueOf(i));
    }
}
