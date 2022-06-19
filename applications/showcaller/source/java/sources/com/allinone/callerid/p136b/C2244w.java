package com.allinone.callerid.p136b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.SpamCall;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.w */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/w.class */
public class C2244w extends BaseAdapter {

    /* renamed from: d */
    private Context f7884d;

    /* renamed from: e */
    private List<SpamCall> f7885e = new ArrayList();

    /* renamed from: f */
    private LayoutInflater f7886f;

    /* renamed from: com.allinone.callerid.b.w$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/w$a.class */
    class C2245a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ SpamCall f7887a;

        C2245a(SpamCall spamCall) {
            C2244w.this = r4;
            this.f7887a = spamCall;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7887a.setSelected(z);
        }
    }

    /* renamed from: com.allinone.callerid.b.w$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/w$b.class */
    class View$OnClickListenerC2246b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7889d;

        View$OnClickListenerC2246b(CallLogBean callLogBean) {
            C2244w.this = r4;
            this.f7889d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_tony", this.f7889d);
            intent.putExtras(bundle);
            intent.setClass(C2244w.this.f7884d, UnknownContactActivity.class);
            intent.setFlags(268435456);
            C2244w.this.f7884d.startActivity(intent);
        }
    }

    /* renamed from: com.allinone.callerid.b.w$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/w$c.class */
    static class C2247c {

        /* renamed from: a */
        TextView f7891a;

        /* renamed from: b */
        TextView f7892b;

        /* renamed from: c */
        TextView f7893c;

        /* renamed from: d */
        TextView f7894d;

        /* renamed from: e */
        TextView f7895e;

        /* renamed from: f */
        ImageView f7896f;

        /* renamed from: g */
        FrameLayout f7897g;

        /* renamed from: h */
        CheckBox f7898h;

        C2247c() {
        }
    }

    public C2244w(Context context) {
        this.f7884d = context;
        this.f7886f = LayoutInflater.from(context);
    }

    /* renamed from: b */
    public void m27803b(List<SpamCall> list, boolean z) {
        if (z) {
            this.f7885e.clear();
        }
        this.f7885e.addAll(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7885e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7885e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C2247c c2247c;
        if (view == null) {
            view = this.f7886f.inflate(R$layout.item_spamcalls, viewGroup, false);
            c2247c = new C2247c();
            c2247c.f7893c = (TextView) view.findViewById(R$id.tv_number);
            c2247c.f7891a = (TextView) view.findViewById(R$id.tv_type);
            c2247c.f7892b = (TextView) view.findViewById(2131297757);
            c2247c.f7895e = (TextView) view.findViewById(R$id.tv_counts);
            c2247c.f7894d = (TextView) view.findViewById(R$id.tv_typelabel);
            c2247c.f7896f = (ImageView) view.findViewById(R$id.call_type);
            c2247c.f7897g = (FrameLayout) view.findViewById(R$id.ripple_bg);
            c2247c.f7898h = (CheckBox) view.findViewById(R$id.cb_block);
            c2247c.f7893c.setTypeface(C3739f1.m24359b());
            c2247c.f7891a.setTypeface(C3739f1.m24359b());
            c2247c.f7892b.setTypeface(C3739f1.m24359b());
            c2247c.f7895e.setTypeface(C3739f1.m24359b());
            c2247c.f7894d.setTypeface(C3739f1.m24359b());
            view.setTag(c2247c);
        } else {
            c2247c = (C2247c) view.getTag();
        }
        SpamCall spamCall = this.f7885e.get(i);
        if (spamCall.getFormat_tel_number() != null && !"".equals(spamCall.getFormat_tel_number())) {
            c2247c.f7893c.setText(spamCall.getFormat_tel_number());
        } else if (spamCall.getNumber() != null && !"".equals(spamCall.getNumber())) {
            c2247c.f7893c.setText(spamCall.getNumber());
        }
        if (spamCall.getType() == null || (!"Mobile".equals(spamCall.getType()) && !"Fixed line".equals(spamCall.getType()))) {
            c2247c.f7891a.setText("");
            c2247c.f7891a.setVisibility(8);
        } else {
            c2247c.f7891a.setText(C3767h1.m24280J(this.f7884d, spamCall.getType()));
            c2247c.f7891a.setVisibility(0);
        }
        if (spamCall.getDate() != null && !"".equals(spamCall.getDate())) {
            c2247c.f7892b.setText(spamCall.getDate());
        }
        if (spamCall.getReportcounts() != null && !"".equals(spamCall.getReportcounts())) {
            c2247c.f7895e.setText(spamCall.getReportcounts());
        }
        if (spamCall.getTypelabel() != null && !"".equals(spamCall.getTypelabel())) {
            TextView textView = c2247c.f7894d;
            textView.setText(C3767h1.m24292D(this.f7884d, spamCall.getTypelabel()) + " " + this.f7884d.getResources().getString(R$string.reports));
        }
        if (spamCall.isSelected()) {
            c2247c.f7898h.setChecked(true);
        } else {
            c2247c.f7898h.setChecked(false);
        }
        int calltype = spamCall.getCalltype();
        if (calltype == 1) {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_incomming_normal);
        } else if (calltype == 2) {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_outgoing_nomal);
        } else if (calltype == 3) {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_missed_normal);
        } else if (calltype == 5) {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_missed_normal);
        } else if (calltype != 9) {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_missed_normal);
        } else {
            c2247c.f7896f.setImageResource(R$drawable.ic_calllog_missed_normal);
        }
        c2247c.f7898h.setOnCheckedChangeListener(new C2245a(spamCall));
        CallLogBean callLogBean = new CallLogBean();
        callLogBean.m24951E0(spamCall.getNumber());
        callLogBean.m24901e1(C3767h1.m24292D(this.f7884d, spamCall.getTypelabel()));
        callLogBean.m24898f1(spamCall.getTypelabel());
        callLogBean.m24939L0(spamCall.getReportcounts());
        callLogBean.m24896g0(spamCall.getBelong_area());
        callLogBean.m24937M0(spamCall.getName());
        callLogBean.m24933O0(spamCall.getType());
        callLogBean.m24947G0(spamCall.getNumber());
        callLogBean.m24913a1(spamCall.getTel_number());
        callLogBean.m24863x0(spamCall.getFormat_tel_number());
        callLogBean.m24945H0(spamCall.getOperator());
        callLogBean.m24905d0(spamCall.getAddress());
        callLogBean.m24902e0(spamCall.getAvatar());
        callLogBean.m24879o0(spamCall.getComment_tags());
        callLogBean.m24875r0(spamCall.getCountry());
        c2247c.f7897g.setOnClickListener(new View$OnClickListenerC2246b(callLogBean));
        return view;
    }
}
