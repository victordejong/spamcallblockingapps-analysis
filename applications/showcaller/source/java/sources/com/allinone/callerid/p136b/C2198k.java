package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.model.EZCountryCode;
import com.allinone.callerid.util.C3739f1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.k */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/k.class */
public class C2198k extends BaseAdapter {

    /* renamed from: d */
    private Context f7688d;

    /* renamed from: e */
    private List<EZCountryCode> f7689e;

    /* renamed from: f */
    C2200b f7690f;

    /* renamed from: g */
    private ListView f7691g;

    /* renamed from: com.allinone.callerid.b.k$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/k$a.class */
    class View$OnClickListenerC2199a implements View.OnClickListener {
        View$OnClickListenerC2199a() {
            C2198k.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            C2198k.this.f7691g.performItemClick(C2198k.this.f7691g, intValue, C2198k.this.getItemId(intValue));
        }
    }

    /* renamed from: com.allinone.callerid.b.k$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/k$b.class */
    private static class C2200b {

        /* renamed from: a */
        TextView f7693a;

        /* renamed from: b */
        TextView f7694b;

        /* renamed from: c */
        FrameLayout f7695c;

        private C2200b() {
        }

        /* synthetic */ C2200b(View$OnClickListenerC2199a view$OnClickListenerC2199a) {
            this();
        }
    }

    public C2198k(Context context, List<EZCountryCode> list, ListView listView) {
        this.f7689e = new ArrayList();
        this.f7688d = context;
        this.f7689e = list;
        this.f7691g = listView;
    }

    /* renamed from: b */
    public void m27859b(List<EZCountryCode> list) {
        List<EZCountryCode> list2 = this.f7689e;
        if (list2 != null) {
            list2.clear();
            this.f7689e.addAll(list);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7689e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7689e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(this.f7688d, R$layout.choose_country_list_item, null);
            C2200b c2200b = new C2200b(null);
            this.f7690f = c2200b;
            c2200b.f7693a = (TextView) view.findViewById(R$id.country_name_item);
            this.f7690f.f7694b = (TextView) view.findViewById(R$id.code_item);
            this.f7690f.f7693a.setTypeface(C3739f1.m24359b());
            this.f7690f.f7694b.setTypeface(C3739f1.m24359b());
            this.f7690f.f7695c = (FrameLayout) view.findViewById(R$id.ripple_bg);
            view.setTag(this.f7690f);
        } else {
            this.f7690f = (C2200b) view.getTag();
        }
        this.f7690f.f7695c.setTag(Integer.valueOf(i));
        this.f7690f.f7695c.setOnClickListener(new View$OnClickListenerC2199a());
        EZCountryCode eZCountryCode = this.f7689e.get(i);
        this.f7690f.f7693a.setText(eZCountryCode.getCountry_name());
        TextView textView = this.f7690f.f7694b;
        textView.setText("(+" + eZCountryCode.getCountry_code() + ")");
        return view;
    }
}
