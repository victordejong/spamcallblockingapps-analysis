package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.r */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/r.class */
public class C2218r extends BaseAdapter {

    /* renamed from: d */
    private Context f7773d;

    /* renamed from: e */
    private List<CallLogBean> f7774e;

    /* renamed from: f */
    private LayoutInflater f7775f;

    /* renamed from: g */
    private ListView f7776g;

    /* renamed from: h */
    C2220b f7777h;

    /* renamed from: i */
    public HashMap f7778i = new HashMap();

    /* renamed from: com.allinone.callerid.b.r$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/r$a.class */
    class View$OnClickListenerC2219a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7779d;

        View$OnClickListenerC2219a(int i) {
            C2218r.this = r4;
            this.f7779d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2218r.this.f7776g.getOnItemClickListener();
            ListView listView = C2218r.this.f7776g;
            int i = this.f7779d;
            onItemClickListener.onItemClick(listView, view, i, C2218r.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.r$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/r$b.class */
    private static class C2220b {

        /* renamed from: a */
        TextView f7781a;

        /* renamed from: b */
        TextView f7782b;

        /* renamed from: c */
        TextView f7783c;

        /* renamed from: d */
        TextView f7784d;

        /* renamed from: e */
        FrameLayout f7785e;

        /* renamed from: f */
        RelativeLayout f7786f;

        /* renamed from: g */
        View f7787g;

        /* renamed from: h */
        View f7788h;

        /* renamed from: i */
        ImageView f7789i;

        private C2220b() {
        }

        /* synthetic */ C2220b(View$OnClickListenerC2219a view$OnClickListenerC2219a) {
            this();
        }
    }

    public C2218r(Context context, List<CallLogBean> list, ListView listView) {
        this.f7773d = context;
        this.f7774e = list;
        this.f7775f = LayoutInflater.from(context);
        this.f7776g = listView;
    }

    /* renamed from: b */
    public void m27850b(ArrayList<CallLogBean> arrayList) {
        if (arrayList == null) {
            this.f7774e = new ArrayList();
        } else {
            this.f7774e = arrayList;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7774e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7774e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        if (view == null) {
            view = this.f7775f.inflate(R$layout.myreport_list_item, viewGroup, false);
            C2220b c2220b = new C2220b(null);
            this.f7777h = c2220b;
            c2220b.f7781a = (TextView) view.findViewById(R$id.name);
            this.f7777h.f7784d = (TextView) view.findViewById(R$id.tv_report_type_tip);
            this.f7777h.f7783c = (TextView) view.findViewById(R$id.tv_report_type);
            this.f7777h.f7782b = (TextView) view.findViewById(R$id.tv_time);
            this.f7777h.f7785e = (FrameLayout) view.findViewById(R$id.ripple_bg);
            this.f7777h.f7786f = (RelativeLayout) view.findViewById(R$id.ripple);
            this.f7777h.f7787g = view.findViewById(R$id.rl_bottom);
            this.f7777h.f7787g.setVisibility(8);
            this.f7777h.f7788h = view.findViewById(R$id.rl_top);
            this.f7777h.f7788h.setVisibility(8);
            this.f7777h.f7789i = (ImageView) view.findViewById(R$id.record_photo);
            this.f7777h.f7781a.setTypeface(C3739f1.m24359b());
            this.f7777h.f7782b.setTypeface(C3739f1.m24359b());
            this.f7777h.f7783c.setTypeface(C3739f1.m24359b());
            this.f7777h.f7784d.setTypeface(C3739f1.m24359b());
            view.setTag(this.f7777h);
        } else {
            this.f7777h = (C2220b) view.getTag();
        }
        this.f7777h.f7789i.setImageResource(R$drawable.ic_photo_normal);
        CallLogBean callLogBean = this.f7774e.get(i);
        if (i == 0) {
            this.f7777h.f7788h.setVisibility(0);
        } else {
            this.f7777h.f7788h.setVisibility(8);
        }
        if (callLogBean.m24938M() != null && !"".equals(callLogBean.m24938M())) {
            String m24938M = callLogBean.m24938M();
            m24938M.hashCode();
            boolean z = true;
            switch (m24938M.hashCode()) {
                case -906718361:
                    if (m24938M.equals("is_telemarketing")) {
                        z = false;
                        break;
                    }
                    break;
                case 2082217073:
                    if (m24938M.equals("is_scam")) {
                        z = true;
                        break;
                    }
                    break;
                case 2082229566:
                    if (m24938M.equals("is_spam")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    this.f7777h.f7783c.setText(this.f7773d.getResources().getString(R$string.telemarketing));
                    break;
                case true:
                    this.f7777h.f7783c.setText(this.f7773d.getResources().getString(R$string.scam));
                    break;
                case true:
                    this.f7777h.f7783c.setText(this.f7773d.getResources().getString(R$string.spam));
                    break;
            }
        }
        try {
            if (this.f7774e.size() > 0) {
                if (this.f7774e.size() == 1) {
                    this.f7777h.f7787g.setVisibility(0);
                } else if (i != 0 && i == this.f7774e.size() - 1) {
                    this.f7777h.f7787g.setVisibility(0);
                }
            }
        } catch (Exception e) {
            this.f7777h.f7787g.setVisibility(0);
            e.printStackTrace();
        }
        this.f7777h.f7781a.setText(callLogBean.m24880o());
        this.f7777h.f7782b.setText(C3771i.m24200j(callLogBean.m24912b()));
        this.f7777h.f7785e.setOnClickListener(new View$OnClickListenerC2219a(i));
        if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P()) || callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
            this.f7777h.f7789i.setImageResource(R$drawable.ic_photo_normal);
            i2 = 2131231156;
        } else {
            this.f7777h.f7789i.setImageResource(R$drawable.ic_photo_spam);
            i2 = 2131231157;
        }
        if (callLogBean.m24914a() != null && !"".equals(callLogBean.m24914a())) {
            C3852t.m23961b(this.f7773d, callLogBean.m24914a(), i2, this.f7777h.f7789i);
        }
        return view;
    }
}
