package com.callerid.block.start;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.bean.EZCountryCode;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$i.class */
public class SettingActivity$i extends BaseAdapter {

    /* renamed from: b */
    public Context f4951b;

    /* renamed from: c */
    C1160b f4952c;

    /* renamed from: d */
    final /* synthetic */ SettingActivity f4953d;

    /* renamed from: com.callerid.block.start.SettingActivity$i$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$i$a.class */
    class View$OnClickListenerC1159a implements View.OnClickListener {
        View$OnClickListenerC1159a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            SettingActivity.T(SettingActivity$i.this.f4953d).performItemClick(SettingActivity.T(SettingActivity$i.this.f4953d), intValue, SettingActivity$i.this.getItemId(intValue));
        }
    }

    /* renamed from: com.callerid.block.start.SettingActivity$i$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$i$b.class */
    private class C1160b {

        /* renamed from: a */
        private TextView f4955a;

        /* renamed from: b */
        private TextView f4956b;

        /* renamed from: c */
        private FrameLayout f4957c;

        private C1160b(SettingActivity$i settingActivity$i) {
        }

        /* synthetic */ C1160b(SettingActivity$i settingActivity$i, SettingActivity$a settingActivity$a) {
            this(settingActivity$i);
        }
    }

    public SettingActivity$i(SettingActivity settingActivity, Context context) {
        this.f4953d = settingActivity;
        this.f4951b = context;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return SettingActivity.Z(this.f4953d).size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return SettingActivity.Z(this.f4953d).get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(this.f4951b, R$layout.choose_country_list_item, null);
            C1160b bVar = new C1160b(this, null);
            this.f4952c = bVar;
            bVar.f4955a = (TextView) view.findViewById(R$id.country_name_item);
            this.f4952c.f4956b = (TextView) view.findViewById(R$id.code_item);
            this.f4952c.f4955a.setTypeface(this.f4953d.x);
            this.f4952c.f4956b.setTypeface(this.f4953d.x);
            this.f4952c.f4957c = (FrameLayout) view.findViewById(R$id.ripple_bg);
            view.setTag(this.f4952c);
        } else {
            this.f4952c = (C1160b) view.getTag();
        }
        this.f4952c.f4957c.setTag(Integer.valueOf(i));
        this.f4952c.f4957c.setOnClickListener(new View$OnClickListenerC1159a());
        EZCountryCode eZCountryCode = (EZCountryCode) SettingActivity.Z(this.f4953d).get(i);
        this.f4952c.f4955a.setText(eZCountryCode.getCountry_name());
        TextView textView = this.f4952c.f4956b;
        textView.setText("(+" + eZCountryCode.getCountry_code() + ")");
        return view;
    }
}
