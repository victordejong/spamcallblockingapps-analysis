package com.allinone.callerid.p136b;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.os.Build;
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
import android.widget.Toast;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.mvc.controller.EZDialerActivity;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3714b1;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3809p0;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.allinone.callerid.b.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/e.class */
public class C2172e extends BaseAdapter {

    /* renamed from: d */
    private final int f7557d;

    /* renamed from: e */
    private int f7558e;

    /* renamed from: f */
    private Context f7559f;

    /* renamed from: i */
    private LayoutInflater f7562i;

    /* renamed from: j */
    private ListView f7563j;

    /* renamed from: k */
    C2175c f7564k;

    /* renamed from: l */
    private Activity f7565l;

    /* renamed from: m */
    private int f7566m;

    /* renamed from: n */
    private int f7567n;

    /* renamed from: o */
    private int f7568o;

    /* renamed from: p */
    private int f7569p;

    /* renamed from: h */
    private HashMap<String, Integer> f7561h = new HashMap<>();

    /* renamed from: g */
    private List<CallLogBean> f7560g = new ArrayList();

    /* renamed from: com.allinone.callerid.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/e$a.class */
    class View$OnClickListenerC2173a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7570d;

        View$OnClickListenerC2173a(int i) {
            C2172e.this = r4;
            this.f7570d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AdapterView.OnItemClickListener onItemClickListener = C2172e.this.f7563j.getOnItemClickListener();
            ListView listView = C2172e.this.f7563j;
            int i = this.f7570d;
            onItemClickListener.onItemClick(listView, view, i, C2172e.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.e$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/e$b.class */
    public class View$OnClickListenerC2174b implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7572d;

        View$OnClickListenerC2174b(CallLogBean callLogBean) {
            C2172e.this = r4;
            this.f7572d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                EZDialerActivity.f9993u = true;
                if (C3711a1.m24599Q()) {
                    C3711a1.m24534h1(true);
                }
                if (!C3714b1.m24448j(C2172e.this.f7559f)) {
                    if (this.f7572d.m24880o() == null || C3767h1.m24216w0(this.f7572d.m24880o())) {
                        return;
                    }
                    C3809p0.m24078a(C2172e.this.f7559f, this.f7572d.m24880o());
                } else if (C3711a1.m24639G()) {
                    C3714b1.m24454d(C2172e.this.f7559f, C3711a1.m24504p(), this.f7572d.m24880o());
                } else if (Build.VERSION.SDK_INT >= 22) {
                    C3714b1.m24439s(C2172e.this.f7565l, this.f7572d.m24880o());
                } else if (this.f7572d.m24880o() == null || C3767h1.m24216w0(this.f7572d.m24880o())) {
                } else {
                    C3809p0.m24078a(C2172e.this.f7559f, this.f7572d.m24880o());
                }
            } catch (Exception e) {
                Toast.makeText(C2172e.this.f7559f, C2172e.this.f7559f.getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.e$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/e$c.class */
    private static class C2175c {

        /* renamed from: a */
        ImageView f7574a;

        /* renamed from: b */
        TextView f7575b;

        /* renamed from: c */
        TextView f7576c;

        /* renamed from: d */
        TextView f7577d;

        /* renamed from: e */
        TextView f7578e;

        /* renamed from: f */
        TextView f7579f;

        /* renamed from: g */
        RelativeLayout f7580g;

        /* renamed from: h */
        TextView f7581h;

        /* renamed from: i */
        TextView f7582i;

        /* renamed from: j */
        ImageView f7583j;

        /* renamed from: k */
        ImageView f7584k;

        /* renamed from: l */
        ImageView f7585l;

        /* renamed from: m */
        ImageView f7586m;

        /* renamed from: n */
        FrameLayout f7587n;

        /* renamed from: o */
        RelativeLayout f7588o;

        /* renamed from: p */
        View f7589p;

        /* renamed from: q */
        View f7590q;

        /* renamed from: r */
        ImageView f7591r;

        /* renamed from: s */
        ImageView f7592s;

        /* renamed from: t */
        ImageView f7593t;

        private C2175c() {
        }

        /* synthetic */ C2175c(View$OnClickListenerC2173a view$OnClickListenerC2173a) {
            this();
        }
    }

    public C2172e(EZDialerActivity eZDialerActivity, Context context, ListView listView) {
        this.f7565l = eZDialerActivity;
        this.f7559f = context;
        this.f7562i = LayoutInflater.from(this.f7565l);
        this.f7563j = listView;
        this.f7566m = C3719c1.m24432a(this.f7565l, R$attr.color_333333, R$color.color_333333);
        this.f7567n = C3719c1.m24432a(this.f7565l, R$attr.color_weak, R$color.color_999999);
        this.f7568o = C3719c1.m24432a(this.f7565l, R$attr.color_FF0000, R$color.color_FF0000);
        this.f7569p = C3719c1.m24432a(this.f7565l, R$attr.color_333333, R$color.color_333333);
        this.f7558e = C3719c1.m24431b(this.f7565l, R$attr.bg_tag, R$drawable.bg_tag);
        this.f7557d = C3719c1.m24431b(this.f7565l, R$attr.bg_tag_identified, R$drawable.bg_tag_identified);
    }

    /* renamed from: d */
    private void m27883d(View view, CallLogBean callLogBean, int i) {
        view.setOnClickListener(new View$OnClickListenerC2174b(callLogBean));
    }

    /* renamed from: e */
    public void m27882e(List<CallLogBean> list, HashMap<String, Integer> hashMap) {
        if (hashMap != null && hashMap.size() > 0) {
            this.f7561h = hashMap;
        }
        if (list != null) {
            this.f7560g.clear();
            this.f7560g.addAll(list);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7560g.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7560g.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0435 -> B:204:0x045e). Please submit an issue!!! */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        Integer num;
        if (view == null) {
            view = this.f7562i.inflate(R$layout.contact_record_list_item, viewGroup, false);
            C2175c c2175c = new C2175c(null);
            this.f7564k = c2175c;
            c2175c.f7574a = (ImageView) view.findViewById(R$id.call_type);
            this.f7564k.f7585l = (ImageView) view.findViewById(R$id.call_type1);
            this.f7564k.f7586m = (ImageView) view.findViewById(R$id.call_type2);
            this.f7564k.f7585l.setVisibility(8);
            this.f7564k.f7586m.setVisibility(8);
            this.f7564k.f7575b = (TextView) view.findViewById(R$id.name);
            this.f7564k.f7576c = (TextView) view.findViewById(2131297757);
            this.f7564k.f7577d = (TextView) view.findViewById(R$id.belong_area);
            this.f7564k.f7581h = (TextView) view.findViewById(R$id.tv_counts);
            this.f7564k.f7582i = (TextView) view.findViewById(R$id.tv_number_type);
            this.f7564k.f7578e = (TextView) view.findViewById(R$id.tv_spam);
            this.f7564k.f7579f = (TextView) view.findViewById(R$id.tv_date);
            this.f7564k.f7580g = (RelativeLayout) view.findViewById(R$id.rl_date_top);
            this.f7564k.f7578e.setVisibility(8);
            this.f7564k.f7579f.setVisibility(8);
            this.f7564k.f7580g.setVisibility(8);
            this.f7564k.f7582i.setVisibility(8);
            this.f7564k.f7578e.setBackgroundResource(this.f7558e);
            this.f7564k.f7578e.setTextColor(this.f7568o);
            this.f7564k.f7583j = (ImageView) view.findViewById(R$id.call_btn_dial);
            this.f7564k.f7584k = (ImageView) view.findViewById(R$id.ib_filter);
            this.f7564k.f7584k.setVisibility(8);
            this.f7564k.f7581h.setText("");
            this.f7564k.f7581h.setVisibility(8);
            this.f7564k.f7587n = (FrameLayout) view.findViewById(R$id.ripple_bg);
            this.f7564k.f7588o = (RelativeLayout) view.findViewById(R$id.ripple);
            this.f7564k.f7589p = view.findViewById(R$id.rl_bottom);
            this.f7564k.f7589p.setVisibility(8);
            this.f7564k.f7590q = view.findViewById(R$id.rl_top);
            this.f7564k.f7590q.setVisibility(8);
            this.f7564k.f7592s = (ImageView) view.findViewById(R$id.iv_sim1);
            this.f7564k.f7593t = (ImageView) view.findViewById(R$id.iv_sim2);
            this.f7564k.f7592s.setVisibility(8);
            this.f7564k.f7593t.setVisibility(8);
            this.f7564k.f7591r = (ImageView) view.findViewById(R$id.record_photo);
            this.f7564k.f7575b.setTypeface(C3739f1.m24359b());
            this.f7564k.f7581h.setTypeface(C3739f1.m24359b());
            this.f7564k.f7576c.setTypeface(C3739f1.m24359b());
            this.f7564k.f7582i.setTypeface(C3739f1.m24359b());
            this.f7564k.f7577d.setTypeface(C3739f1.m24359b());
            this.f7564k.f7578e.setTypeface(C3739f1.m24359b());
            this.f7564k.f7579f.setTypeface(C3739f1.m24360a());
            view.setTag(this.f7564k);
        } else {
            this.f7564k = (C2175c) view.getTag();
        }
        this.f7564k.f7591r.setImageResource(R$drawable.ic_photo_normal);
        this.f7564k.f7575b.setTextColor(this.f7566m);
        this.f7564k.f7581h.setTextColor(this.f7567n);
        this.f7564k.f7582i.setTextColor(this.f7567n);
        this.f7564k.f7576c.setTextColor(this.f7567n);
        CallLogBean callLogBean = this.f7560g.get(i);
        if (C3714b1.m24448j(this.f7559f.getApplicationContext())) {
            try {
                if (callLogBean.m24956C() != null) {
                    if (callLogBean.m24956C().equals("0")) {
                        this.f7564k.f7592s.setVisibility(0);
                        this.f7564k.f7593t.setVisibility(8);
                    } else if (callLogBean.m24956C().equals("1")) {
                        this.f7564k.f7593t.setVisibility(0);
                        this.f7564k.f7592s.setVisibility(8);
                    } else {
                        this.f7564k.f7592s.setVisibility(8);
                        this.f7564k.f7593t.setVisibility(8);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            this.f7564k.f7592s.setVisibility(8);
            this.f7564k.f7593t.setVisibility(8);
        }
        this.f7564k.f7579f.setVisibility(0);
        this.f7564k.f7580g.setVisibility(0);
        this.f7564k.f7590q.setVisibility(0);
        this.f7564k.f7579f.setText(callLogBean.m24897g());
        try {
            List<CallLogBean> list = this.f7560g;
            if (list != null && list.size() > 1 && i > 0) {
                if (this.f7560g.get(i - 1).m24897g().equals(this.f7560g.get(i).m24897g())) {
                    this.f7564k.f7579f.setVisibility(8);
                    this.f7564k.f7580g.setVisibility(8);
                    this.f7564k.f7590q.setVisibility(8);
                } else {
                    this.f7564k.f7579f.setVisibility(0);
                    this.f7564k.f7580g.setVisibility(0);
                    this.f7564k.f7590q.setVisibility(0);
                }
            }
        } catch (Exception e2) {
            this.f7564k.f7579f.setVisibility(8);
            this.f7564k.f7580g.setVisibility(8);
            this.f7564k.f7590q.setVisibility(8);
            e2.printStackTrace();
        }
        try {
            List<CallLogBean> list2 = this.f7560g;
            if (list2 == null || list2.size() <= 1 || i <= 0) {
                if (i == this.f7560g.size() - 1) {
                    this.f7564k.f7589p.setVisibility(0);
                } else if (!this.f7560g.get(i + 1).m24897g().equals(this.f7560g.get(i).m24897g())) {
                    if (i == 0) {
                        this.f7564k.f7589p.setVisibility(0);
                    } else {
                        this.f7564k.f7589p.setVisibility(0);
                    }
                }
            } else if (this.f7560g.get(i - 1).m24897g().equals(this.f7560g.get(i).m24897g())) {
                if (i == this.f7560g.size() - 1) {
                    this.f7564k.f7589p.setVisibility(0);
                } else if (!this.f7560g.get(i + 1).m24897g().equals(this.f7560g.get(i).m24897g())) {
                    this.f7564k.f7589p.setVisibility(0);
                }
            } else if (i == this.f7560g.size() - 1) {
                this.f7564k.f7589p.setVisibility(0);
            } else if (!this.f7560g.get(i + 1).m24897g().equals(this.f7560g.get(i).m24897g())) {
                this.f7564k.f7589p.setVisibility(0);
            }
        } catch (Exception e3) {
            this.f7564k.f7589p.setVisibility(0);
            e3.printStackTrace();
        }
        if (callLogBean.m24909c() == null || callLogBean.m24909c().equals("")) {
            this.f7564k.f7577d.setText("");
            this.f7564k.f7577d.setVisibility(8);
        } else {
            this.f7564k.f7577d.setVisibility(0);
            this.f7564k.f7577d.setText(callLogBean.m24909c() + " ");
        }
        if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P()) || callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
            String m24884m = callLogBean.m24884m();
            if (m24884m != null && !"".equals(m24884m)) {
                this.f7564k.f7578e.setVisibility(8);
            } else if (callLogBean.m24861z() == null || "".equals(callLogBean.m24861z())) {
                this.f7564k.f7578e.setVisibility(8);
                this.f7564k.f7578e.setBackgroundResource(this.f7558e);
                this.f7564k.f7578e.setTextColor(this.f7568o);
            } else {
                this.f7564k.f7578e.setBackgroundResource(this.f7557d);
                this.f7564k.f7578e.setVisibility(0);
                this.f7564k.f7578e.setTextColor(this.f7569p);
                this.f7564k.f7578e.setText(this.f7559f.getResources().getString(R$string.identified));
            }
            if (callLogBean.m24909c() == null || callLogBean.m24909c().equals("")) {
                this.f7564k.f7577d.setText("");
                this.f7564k.f7577d.setVisibility(8);
            }
        } else if (!callLogBean.m24918Y()) {
            this.f7564k.f7578e.setVisibility(0);
            this.f7564k.f7578e.setBackgroundResource(this.f7558e);
            this.f7564k.f7578e.setTextColor(this.f7568o);
            this.f7564k.f7578e.setText(callLogBean.m24932P());
        } else {
            this.f7564k.f7578e.setVisibility(8);
        }
        String m24884m2 = callLogBean.m24884m();
        if (m24884m2 != null && !"".equals(m24884m2)) {
            this.f7564k.f7575b.setText(m24884m2);
        } else if (callLogBean.m24861z() != null && !"".equals(callLogBean.m24861z())) {
            this.f7564k.f7575b.setText(callLogBean.m24861z());
        } else if (callLogBean.m24880o() != null) {
            String m24906d = callLogBean.m24906d();
            if (m24906d != null && !"".equals(m24906d)) {
                this.f7564k.f7575b.setText(m24906d);
            } else if (callLogBean.m24892i() != null && !"".equals(callLogBean.m24892i())) {
                this.f7564k.f7575b.setText(callLogBean.m24892i());
            } else if (C3767h1.m24216w0(callLogBean.m24880o())) {
                this.f7564k.f7575b.setText(this.f7559f.getResources().getString(R$string.unknow_call));
            } else {
                this.f7564k.f7575b.setText(callLogBean.m24880o());
            }
        }
        int m24934O = callLogBean.m24934O();
        if (m24934O == 1) {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_incomming_normal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_incomming_normal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_incomming_normal);
        } else if (m24934O == 2) {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_outgoing_nomal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_outgoing_nomal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_outgoing_nomal);
        } else if (m24934O == 3) {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
        } else if (m24934O == 5) {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
        } else if (m24934O != 9) {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
        } else {
            this.f7564k.f7574a.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7585l.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
            this.f7564k.f7586m.setBackgroundResource(R$drawable.ic_calllog_missed_normal);
        }
        HashMap<String, Integer> hashMap = this.f7561h;
        if (hashMap != null && hashMap.size() != 0 && (num = this.f7561h.get(callLogBean.m24938M())) != null) {
            int intValue = num.intValue();
            if (intValue == 1) {
                this.f7564k.f7585l.setVisibility(8);
                this.f7564k.f7586m.setVisibility(8);
                this.f7564k.f7581h.setText("");
                this.f7564k.f7581h.setVisibility(8);
            } else if (intValue == 2) {
                this.f7564k.f7585l.setVisibility(0);
                this.f7564k.f7586m.setVisibility(8);
                this.f7564k.f7581h.setText("");
                this.f7564k.f7581h.setVisibility(8);
            } else if (intValue == 3) {
                this.f7564k.f7585l.setVisibility(0);
                this.f7564k.f7586m.setVisibility(0);
                this.f7564k.f7581h.setText("");
                this.f7564k.f7581h.setVisibility(8);
            } else if (intValue > 3) {
                this.f7564k.f7585l.setVisibility(0);
                this.f7564k.f7586m.setVisibility(0);
                this.f7564k.f7581h.setText("(" + intValue + ") ");
                this.f7564k.f7581h.setVisibility(0);
            }
        }
        if (callLogBean.m24958B() == null || "".equals(callLogBean.m24958B())) {
            this.f7564k.f7582i.setText("");
            this.f7564k.f7582i.setVisibility(8);
        } else {
            this.f7564k.f7582i.setText(callLogBean.m24958B());
            this.f7564k.f7582i.setVisibility(0);
        }
        this.f7564k.f7576c.setText(callLogBean.m24926T());
        m27883d(this.f7564k.f7583j, callLogBean, i);
        this.f7564k.f7587n.setOnClickListener(new View$OnClickListenerC2173a(i));
        if (callLogBean.m24918Y()) {
            if (callLogBean.m24880o() != null) {
                C3852t.m23960c(this.f7565l, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, callLogBean.m24868v()), null, R$drawable.ic_photo_normal, this.f7564k.f7591r);
            }
        } else if (callLogBean.m24914a() != null && !"".equals(callLogBean.m24914a())) {
            if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P()) || callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
                this.f7564k.f7591r.setImageResource(R$drawable.ic_photo_normal);
                i2 = 2131231156;
            } else {
                this.f7564k.f7591r.setImageResource(R$drawable.ic_photo_spam);
                i2 = 2131231157;
            }
            if (callLogBean.m24880o() != null) {
                C3852t.m23961b(this.f7559f, callLogBean.m24914a(), i2, this.f7564k.f7591r);
            }
        } else if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P()) || callLogBean.m24864x() == null || "".equals(callLogBean.m24864x())) {
            this.f7564k.f7591r.setImageResource(R$drawable.ic_photo_normal);
        } else {
            this.f7564k.f7591r.setImageResource(R$drawable.ic_photo_spam);
        }
        return view;
    }
}
