package com.allinone.callerid.p136b;

import android.app.Activity;
import android.content.ContentUris;
import android.provider.ContactsContract;
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
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3771i;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/c.class */
public class C2166c extends BaseAdapter {

    /* renamed from: d */
    private final int f7516d;

    /* renamed from: e */
    private final int f7517e;

    /* renamed from: f */
    private final int f7518f;

    /* renamed from: g */
    private final int f7519g;

    /* renamed from: h */
    private final int f7520h;

    /* renamed from: i */
    private final int f7521i;

    /* renamed from: j */
    private final int f7522j;

    /* renamed from: k */
    private final int f7523k;

    /* renamed from: l */
    private final int f7524l;

    /* renamed from: m */
    private final int f7525m;

    /* renamed from: n */
    private Activity f7526n;

    /* renamed from: o */
    private List<CallLogBean> f7527o;

    /* renamed from: p */
    private LayoutInflater f7528p;

    /* renamed from: q */
    private ListView f7529q;

    /* renamed from: r */
    C2168b f7530r;

    /* renamed from: com.allinone.callerid.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/c$a.class */
    class View$OnClickListenerC2167a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7531d;

        View$OnClickListenerC2167a(int i) {
            C2166c.this = r4;
            this.f7531d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2166c.this.f7529q.getOnItemClickListener();
            ListView listView = C2166c.this.f7529q;
            int i = this.f7531d;
            onItemClickListener.onItemClick(listView, view, i, C2166c.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/c$b.class */
    private static class C2168b {

        /* renamed from: a */
        TextView f7533a;

        /* renamed from: b */
        TextView f7534b;

        /* renamed from: c */
        TextView f7535c;

        /* renamed from: d */
        TextView f7536d;

        /* renamed from: e */
        RelativeLayout f7537e;

        /* renamed from: f */
        TextView f7538f;

        /* renamed from: g */
        FrameLayout f7539g;

        /* renamed from: h */
        RelativeLayout f7540h;

        /* renamed from: i */
        View f7541i;

        /* renamed from: j */
        View f7542j;

        /* renamed from: k */
        ImageView f7543k;

        private C2168b() {
        }

        /* synthetic */ C2168b(View$OnClickListenerC2167a view$OnClickListenerC2167a) {
            this();
        }
    }

    public C2166c(Activity activity, List<CallLogBean> list, ListView listView) {
        this.f7526n = activity;
        this.f7527o = list;
        this.f7528p = LayoutInflater.from(activity);
        this.f7529q = listView;
        this.f7516d = C3719c1.m24432a(activity, R$attr.color_333333, R$color.color_333333);
        this.f7517e = C3719c1.m24432a(activity, R$attr.color_weak, R$color.color_999999);
        this.f7518f = C3719c1.m24432a(activity, R$attr.color_FF0000, R$color.color_FF0000);
        this.f7519g = C3719c1.m24432a(activity, R$attr.color_333333, R$color.color_333333);
        this.f7520h = C3719c1.m24431b(activity, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f7521i = C3719c1.m24431b(activity, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f7522j = C3719c1.m24431b(activity, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f7523k = C3719c1.m24431b(activity, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
        this.f7524l = C3719c1.m24431b(this.f7526n, R$attr.bg_tag, R$drawable.bg_tag);
        this.f7525m = C3719c1.m24431b(this.f7526n, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
    }

    /* renamed from: b */
    public void m27890b(ArrayList<CallLogBean> arrayList) {
        if (arrayList == null) {
            this.f7527o = new ArrayList();
        } else {
            this.f7527o = arrayList;
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7527o.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7527o.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        if (view == null) {
            view = this.f7528p.inflate(R$layout.blocked_list_item, viewGroup, false);
            C2168b c2168b = new C2168b(null);
            this.f7530r = c2168b;
            c2168b.f7533a = (TextView) view.findViewById(R$id.name);
            this.f7530r.f7534b = (TextView) view.findViewById(R$id.tv_time);
            this.f7530r.f7538f = (TextView) view.findViewById(R$id.tv_report_counts);
            this.f7530r.f7535c = (TextView) view.findViewById(R$id.tv_spam);
            this.f7530r.f7536d = (TextView) view.findViewById(R$id.tv_date);
            this.f7530r.f7537e = (RelativeLayout) view.findViewById(R$id.rl_date_top);
            this.f7530r.f7535c.setVisibility(8);
            this.f7530r.f7536d.setVisibility(8);
            this.f7530r.f7537e.setVisibility(8);
            this.f7530r.f7538f.setVisibility(8);
            this.f7530r.f7535c.setBackgroundResource(this.f7524l);
            this.f7530r.f7535c.setTextColor(this.f7518f);
            this.f7530r.f7539g = (FrameLayout) view.findViewById(R$id.ripple_bg);
            this.f7530r.f7540h = (RelativeLayout) view.findViewById(R$id.ripple);
            this.f7530r.f7541i = view.findViewById(R$id.rl_bottom);
            this.f7530r.f7541i.setVisibility(8);
            this.f7530r.f7542j = view.findViewById(R$id.rl_top);
            this.f7530r.f7542j.setVisibility(8);
            this.f7530r.f7543k = (ImageView) view.findViewById(R$id.record_photo);
            this.f7530r.f7533a.setTypeface(C3739f1.m24359b());
            this.f7530r.f7534b.setTypeface(C3739f1.m24359b());
            this.f7530r.f7538f.setTypeface(C3739f1.m24359b());
            this.f7530r.f7535c.setTypeface(C3739f1.m24359b());
            this.f7530r.f7536d.setTypeface(C3739f1.m24360a());
            view.setTag(this.f7530r);
        } else {
            this.f7530r = (C2168b) view.getTag();
        }
        this.f7530r.f7543k.setImageResource(R$drawable.ic_photo_normal);
        this.f7530r.f7533a.setTextColor(this.f7516d);
        this.f7530r.f7538f.setTextColor(this.f7517e);
        this.f7530r.f7534b.setTextColor(this.f7517e);
        CallLogBean callLogBean = this.f7527o.get(i);
        this.f7530r.f7536d.setVisibility(0);
        this.f7530r.f7537e.setVisibility(0);
        this.f7530r.f7542j.setVisibility(0);
        this.f7530r.f7536d.setText(C3771i.m24207c(callLogBean.m24912b()));
        try {
            List<CallLogBean> list = this.f7527o;
            if (list != null && list.size() > 1 && i > 0) {
                if (C3771i.m24207c(this.f7527o.get(i - 1).m24912b()).equals(C3771i.m24207c(this.f7527o.get(i).m24912b()))) {
                    this.f7530r.f7536d.setVisibility(8);
                    this.f7530r.f7537e.setVisibility(8);
                    this.f7530r.f7542j.setVisibility(8);
                } else {
                    this.f7530r.f7536d.setVisibility(0);
                    this.f7530r.f7537e.setVisibility(0);
                    this.f7530r.f7542j.setVisibility(0);
                }
            }
        } catch (Exception e) {
            this.f7530r.f7536d.setVisibility(8);
            this.f7530r.f7537e.setVisibility(8);
            this.f7530r.f7542j.setVisibility(8);
            e.printStackTrace();
        }
        if (i == 0) {
            this.f7530r.f7536d.setVisibility(0);
            this.f7530r.f7537e.setVisibility(0);
            this.f7530r.f7542j.setVisibility(0);
        }
        try {
            List<CallLogBean> list2 = this.f7527o;
            if (list2 == null || list2.size() <= 1 || i <= 0) {
                if (i == this.f7527o.size() - 1) {
                    this.f7530r.f7540h.setBackgroundResource(this.f7521i);
                    this.f7530r.f7541i.setVisibility(0);
                } else if (C3771i.m24207c(this.f7527o.get(i + 1).m24912b()).equals(C3771i.m24207c(this.f7527o.get(i).m24912b()))) {
                    if (i == 0) {
                        this.f7530r.f7540h.setBackgroundResource(this.f7523k);
                    } else {
                        this.f7530r.f7540h.setBackgroundResource(this.f7523k);
                    }
                } else if (i == 0) {
                    this.f7530r.f7540h.setBackgroundResource(this.f7521i);
                    this.f7530r.f7541i.setVisibility(0);
                } else {
                    this.f7530r.f7540h.setBackgroundResource(this.f7521i);
                    this.f7530r.f7541i.setVisibility(0);
                }
            } else if (C3771i.m24207c(this.f7527o.get(i - 1).m24912b()).equals(C3771i.m24207c(this.f7527o.get(i).m24912b()))) {
                if (i == this.f7527o.size() - 1) {
                    this.f7530r.f7540h.setBackgroundResource(this.f7520h);
                    this.f7530r.f7541i.setVisibility(0);
                } else if (C3771i.m24207c(this.f7527o.get(i + 1).m24912b()).equals(C3771i.m24207c(this.f7527o.get(i).m24912b()))) {
                    this.f7530r.f7540h.setBackgroundResource(this.f7522j);
                } else {
                    this.f7530r.f7540h.setBackgroundResource(this.f7520h);
                    this.f7530r.f7541i.setVisibility(0);
                }
            } else if (i == this.f7527o.size() - 1) {
                this.f7530r.f7540h.setBackgroundResource(this.f7521i);
                this.f7530r.f7541i.setVisibility(0);
            } else if (C3771i.m24207c(this.f7527o.get(i + 1).m24912b()).equals(C3771i.m24207c(this.f7527o.get(i).m24912b()))) {
                this.f7530r.f7540h.setBackgroundResource(this.f7523k);
            } else {
                this.f7530r.f7540h.setBackgroundResource(this.f7521i);
                this.f7530r.f7541i.setVisibility(0);
            }
        } catch (Exception e2) {
            this.f7530r.f7540h.setBackgroundResource(this.f7521i);
            this.f7530r.f7541i.setVisibility(0);
            e2.printStackTrace();
        }
        if (callLogBean.m24932P() != null && !"".equals(callLogBean.m24932P()) && callLogBean.m24864x() != null && !callLogBean.m24864x().equals("")) {
            this.f7530r.f7538f.setVisibility(0);
            this.f7530r.f7538f.setText(callLogBean.m24864x() + " " + this.f7526n.getResources().getString(R$string.people_reported));
        } else if (callLogBean.m24884m() != null && !"".equals(callLogBean.m24884m())) {
            this.f7530r.f7538f.setText(callLogBean.m24880o());
            this.f7530r.f7538f.setVisibility(0);
        } else if (callLogBean.m24861z() == null || "".equals(callLogBean.m24861z())) {
            this.f7530r.f7538f.setText("");
            this.f7530r.f7538f.setVisibility(8);
        } else {
            this.f7530r.f7538f.setText(callLogBean.m24880o());
            this.f7530r.f7538f.setVisibility(0);
        }
        if (callLogBean.m24918Y()) {
            this.f7530r.f7535c.setVisibility(8);
        } else if (callLogBean.m24932P() != null && !"".equals(callLogBean.m24932P()) && callLogBean.m24864x() != null && !"".equals(callLogBean.m24864x())) {
            this.f7530r.f7535c.setVisibility(0);
            this.f7530r.f7535c.setBackgroundResource(this.f7524l);
            this.f7530r.f7535c.setTextColor(this.f7518f);
            this.f7530r.f7535c.setText(callLogBean.m24932P());
        } else if (callLogBean.m24861z() == null || "".equals(callLogBean.m24861z())) {
            this.f7530r.f7535c.setVisibility(8);
        } else {
            this.f7530r.f7535c.setBackgroundResource(this.f7525m);
            this.f7530r.f7535c.setVisibility(0);
            this.f7530r.f7535c.setTextColor(this.f7519g);
            this.f7530r.f7535c.setText(this.f7526n.getResources().getString(R$string.identified));
        }
        String m24884m = callLogBean.m24884m();
        if (m24884m != null && !"".equals(m24884m)) {
            this.f7530r.f7533a.setText(m24884m);
        } else if (callLogBean.m24861z() == null || "".equals(callLogBean.m24861z())) {
            this.f7530r.f7533a.setText(callLogBean.m24880o());
        } else {
            this.f7530r.f7533a.setText(callLogBean.m24861z());
        }
        this.f7530r.f7534b.setText(C3771i.m24201i(callLogBean.m24912b()));
        this.f7530r.f7539g.setOnClickListener(new View$OnClickListenerC2167a(i));
        if (callLogBean.m24918Y()) {
            C3852t.m23960c(this.f7526n, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, callLogBean.m24868v()), callLogBean.m24914a(), R$drawable.ic_photo_normal, this.f7530r.f7543k);
        } else {
            if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P()) || callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
                this.f7530r.f7543k.setImageResource(R$drawable.ic_photo_normal);
                i2 = 2131231156;
            } else {
                this.f7530r.f7543k.setImageResource(R$drawable.ic_photo_spam);
                i2 = 2131231157;
            }
            if (callLogBean.m24914a() != null && !"".equals(callLogBean.m24914a())) {
                C3852t.m23962a(this.f7526n, callLogBean.m24914a(), i2, this.f7530r.f7543k);
            }
        }
        return view;
    }
}
