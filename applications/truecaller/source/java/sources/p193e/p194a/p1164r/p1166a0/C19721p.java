package p193e.p194a.p1164r.p1166a0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.multisim.SimInfo;
import com.truecaller.wizard.C4861R;
import java.util.List;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.r.a0.p */
/* loaded from: classes16-dex2jar.jar:e/a/r/a0/p.class */
public final class C19721p extends BaseAdapter {

    /* renamed from: a */
    public final LayoutInflater f54751a;

    /* renamed from: b */
    public final List<SimInfo> f54752b;

    /* JADX WARN: Multi-variable type inference failed */
    public C19721p(Context context, List<? extends SimInfo> list) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "simInfos");
        this.f54752b = list;
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        this.f54751a = from;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f54752b.size() + 1;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f54752b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f54751a.inflate(C4861R.layout.wizard_subscription_info_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(C4861R.C4863id.wizard_subscription_name);
        ImageView imageView = (ImageView) view.findViewById(C4861R.C4863id.wizard_subscription_icon);
        if (i < this.f54752b.size()) {
            SimInfo simInfo = this.f54752b.get(i);
            l.d(textView, "number");
            textView.setText(C8605o.m28239a(simInfo.f13985c));
            l.d(imageView, "indicator");
            imageView.setVisibility(0);
            int i2 = simInfo.f13983a;
            if (i2 == 0) {
                imageView.setImageResource(C4861R.C4862drawable.ic_sim_card_1_small);
            } else if (i2 != 1) {
                imageView.setImageResource(C4861R.C4862drawable.ic_sim_questionmark);
            } else {
                imageView.setImageResource(C4861R.C4862drawable.ic_sim_card_2_small);
            }
        } else {
            textView.setText(C4861R.string.Welcome_enterManually);
            l.d(imageView, "indicator");
            imageView.setVisibility(4);
        }
        l.d(view, ViewAction.VIEW);
        return view;
    }
}
