package com.callerid.block.p034b;

import android.content.Context;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0265a;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.R$string;
import com.callerid.block.util.C1210r0;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.b.m */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/m.class */
public class C0916m extends BaseAdapter {

    /* renamed from: b */
    private Context f4094b;

    /* renamed from: c */
    C0917a f4095c;

    /* renamed from: d */
    private List<SubscriptionInfo> f4096d;

    /* renamed from: e */
    private LayoutInflater f4097e;

    /* renamed from: com.callerid.block.b.m$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/m$a.class */
    public static class C0917a {

        /* renamed from: a */
        ImageView f4098a;

        /* renamed from: b */
        TextView f4099b;

        /* renamed from: c */
        TextView f4100c;
    }

    public C0916m(Context context, List<SubscriptionInfo> list) {
        this.f4096d = new ArrayList();
        this.f4094b = context;
        this.f4096d = list;
        this.f4097e = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4096d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4096d.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f4097e.inflate(R$layout.item, (ViewGroup) null, false);
            C0917a c0917a = new C0917a();
            this.f4095c = c0917a;
            c0917a.f4098a = (ImageView) view.findViewById(R$id.tv_simIcon);
            this.f4095c.f4099b = (TextView) view.findViewById(R$id.tv_simName);
            this.f4095c.f4100c = (TextView) view.findViewById(R$id.tv_carriedName);
            this.f4095c.f4099b.setTypeface(C1210r0.m9624b());
            this.f4095c.f4100c.setTypeface(C1210r0.m9624b());
            view.setTag(this.f4095c);
        } else {
            this.f4095c = (C0917a) view.getTag();
        }
        this.f4095c.f4098a.setImageDrawable(C0265a.m13551f(this.f4094b, i == 0 ? 2131231124 : 2131231125));
        TextView textView = this.f4095c.f4099b;
        textView.setText(this.f4094b.getString(R$string.sim_card) + (i + 1));
        if (Build.VERSION.SDK_INT >= 22) {
            this.f4095c.f4100c.setText(this.f4096d.get(i).getCarrierName());
        }
        return view;
    }
}
