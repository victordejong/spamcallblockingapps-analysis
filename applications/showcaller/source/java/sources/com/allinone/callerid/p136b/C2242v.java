package com.allinone.callerid.p136b;

import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.v */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/v.class */
public class C2242v extends BaseAdapter {

    /* renamed from: d */
    private Context f7877d;

    /* renamed from: e */
    C2243a f7878e;

    /* renamed from: f */
    private List<SubscriptionInfo> f7879f;

    /* renamed from: g */
    private LayoutInflater f7880g;

    /* renamed from: com.allinone.callerid.b.v$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/v$a.class */
    public static class C2243a {

        /* renamed from: a */
        ImageView f7881a;

        /* renamed from: b */
        TextView f7882b;

        /* renamed from: c */
        TextView f7883c;
    }

    public C2242v(Context context, List<SubscriptionInfo> list) {
        this.f7879f = new ArrayList();
        this.f7877d = context;
        this.f7879f = list;
        this.f7880g = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7879f.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7879f.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f7880g.inflate(R$layout.item, viewGroup, false);
            C2243a c2243a = new C2243a();
            this.f7878e = c2243a;
            c2243a.f7881a = (ImageView) view.findViewById(R$id.tv_simIcon);
            this.f7878e.f7882b = (TextView) view.findViewById(R$id.tv_simName);
            this.f7878e.f7883c = (TextView) view.findViewById(R$id.tv_carriedName);
            this.f7878e.f7882b.setTypeface(C3739f1.m24359b());
            this.f7878e.f7883c.setTypeface(C3739f1.m24359b());
            view.setTag(this.f7878e);
        } else {
            this.f7878e = (C2243a) view.getTag();
        }
        if (i == 0) {
            this.f7878e.f7881a.setImageResource(R$drawable.ic_sim1);
        } else {
            this.f7878e.f7881a.setImageResource(R$drawable.ic_sim2);
        }
        TextView textView = this.f7878e.f7882b;
        textView.setText(this.f7877d.getResources().getString(R$string.sim_card) + " " + (i + 1));
        this.f7879f.get(i).getNumber();
        SubscriptionInfo subscriptionInfo = this.f7879f.get(i);
        if (subscriptionInfo == null || subscriptionInfo.getCarrierName() == null || "".equals(subscriptionInfo.getCarrierName())) {
            this.f7878e.f7883c.setVisibility(8);
        } else {
            this.f7878e.f7883c.setText(this.f7879f.get(i).getCarrierName());
            this.f7878e.f7883c.setVisibility(0);
        }
        return view;
    }
}
