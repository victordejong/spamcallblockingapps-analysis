package com.callerid.block.mvc.controller;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.bean.EZCountryCode;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$p.class */
public class EZSearchNumberActivity$p extends BaseAdapter {

    /* renamed from: b */
    Context f4648b;

    /* renamed from: c */
    C1102b f4649c;

    /* renamed from: d */
    final /* synthetic */ EZSearchNumberActivity f4650d;

    /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$p$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$p$a.class */
    class View$OnClickListenerC1101a implements View.OnClickListener {
        View$OnClickListenerC1101a() {
            EZSearchNumberActivity$p.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            EZSearchNumberActivity$p eZSearchNumberActivity$p = EZSearchNumberActivity$p.this;
            ListView listView = eZSearchNumberActivity$p.f4650d.A;
            listView.performItemClick(listView, intValue, eZSearchNumberActivity$p.getItemId(intValue));
        }
    }

    /* renamed from: com.callerid.block.mvc.controller.EZSearchNumberActivity$p$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZSearchNumberActivity$p$b.class */
    private class C1102b {

        /* renamed from: a */
        TextView f4652a;

        /* renamed from: b */
        TextView f4653b;

        /* renamed from: c */
        FrameLayout f4654c;

        private C1102b(EZSearchNumberActivity$p eZSearchNumberActivity$p) {
        }

        /* synthetic */ C1102b(EZSearchNumberActivity$p eZSearchNumberActivity$p, EZSearchNumberActivity$f eZSearchNumberActivity$f) {
            this(eZSearchNumberActivity$p);
        }
    }

    EZSearchNumberActivity$p(EZSearchNumberActivity eZSearchNumberActivity, Context context) {
        this.f4650d = eZSearchNumberActivity;
        this.f4648b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f4650d.B.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f4650d.B.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(this.f4648b, R$layout.choose_country_list_item, null);
            C1102b c1102b = new C1102b(this, null);
            this.f4649c = c1102b;
            c1102b.f4652a = (TextView) view.findViewById(R$id.country_name_item);
            this.f4649c.f4653b = (TextView) view.findViewById(R$id.code_item);
            this.f4649c.f4652a.setTypeface(EZSearchNumberActivity.b0(this.f4650d));
            this.f4649c.f4653b.setTypeface(EZSearchNumberActivity.b0(this.f4650d));
            this.f4649c.f4654c = (FrameLayout) view.findViewById(R$id.ripple_bg);
            view.setTag(this.f4649c);
        } else {
            this.f4649c = (C1102b) view.getTag();
        }
        this.f4649c.f4654c.setTag(Integer.valueOf(i));
        this.f4649c.f4654c.setOnClickListener(new View$OnClickListenerC1101a());
        EZCountryCode eZCountryCode = (EZCountryCode) this.f4650d.B.get(i);
        this.f4649c.f4652a.setText(eZCountryCode.getCountry_name());
        TextView textView = this.f4649c.f4653b;
        textView.setText("(+" + eZCountryCode.getCountry_code() + ")");
        return view;
    }
}
