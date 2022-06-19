package com.allinone.callerid.p136b.p138b0;

import android.app.Activity;
import android.content.ContentUris;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3852t;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.b0.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/a.class */
public class C2159a extends BaseAdapter {

    /* renamed from: d */
    private Activity f7488d;

    /* renamed from: e */
    private List<CallLogBean> f7489e = new ArrayList();

    /* renamed from: f */
    private int f7490f;

    /* renamed from: g */
    private int f7491g;

    /* renamed from: h */
    private int f7492h;

    /* renamed from: i */
    private int f7493i;

    /* renamed from: j */
    private AbstractC2162c f7494j;

    /* renamed from: com.allinone.callerid.b.b0.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/a$a.class */
    class View$OnClickListenerC2160a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CallLogBean f7495d;

        View$OnClickListenerC2160a(CallLogBean callLogBean) {
            C2159a.this = r4;
            this.f7495d = callLogBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2159a.this.f7494j != null) {
                C2159a.this.f7494j.mo25871a(this.f7495d.m24880o());
            }
        }
    }

    /* renamed from: com.allinone.callerid.b.b0.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/a$b.class */
    private static class C2161b {

        /* renamed from: a */
        TextView f7497a;

        /* renamed from: b */
        TextView f7498b;

        /* renamed from: c */
        TextView f7499c;

        /* renamed from: d */
        ImageView f7500d;

        /* renamed from: e */
        FrameLayout f7501e;

        /* renamed from: f */
        LinearLayout f7502f;

        private C2161b() {
        }

        /* synthetic */ C2161b(View$OnClickListenerC2160a view$OnClickListenerC2160a) {
            this();
        }
    }

    /* renamed from: com.allinone.callerid.b.b0.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/b0/a$c.class */
    public interface AbstractC2162c {
        /* renamed from: a */
        void mo25871a(String str);
    }

    public C2159a(Activity activity) {
        this.f7488d = activity;
        this.f7490f = C3719c1.m24431b(this.f7488d, R$attr.bg_list_card_bottom, R$drawable.bg_list_card_bottom);
        this.f7491g = C3719c1.m24431b(this.f7488d, R$attr.bg_list_card, R$drawable.bg_list_card);
        this.f7492h = C3719c1.m24431b(this.f7488d, R$attr.bg_list_card_center, R$drawable.bg_list_card_center);
        this.f7493i = C3719c1.m24431b(this.f7488d, R$attr.bg_list_card_top, R$drawable.bg_list_card_top);
    }

    /* renamed from: b */
    public void m27895b(List<CallLogBean> list) {
        if (list != null) {
            this.f7489e.clear();
            this.f7489e.addAll(list);
        }
    }

    /* renamed from: c */
    public void m27894c(AbstractC2162c abstractC2162c) {
        this.f7494j = abstractC2162c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7489e.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7489e.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C2161b c2161b;
        if (view == null) {
            view = LayoutInflater.from(this.f7488d).inflate(R$layout.item_search_history, viewGroup, false);
            c2161b = new C2161b(null);
            c2161b.f7498b = (TextView) view.findViewById(R$id.nameText);
            c2161b.f7497a = (TextView) view.findViewById(R$id.tv_title);
            TextView textView = (TextView) view.findViewById(R$id.numberText);
            c2161b.f7499c = textView;
            textView.setVisibility(0);
            c2161b.f7498b.setTypeface(C3739f1.m24359b());
            c2161b.f7497a.setTypeface(C3739f1.m24359b());
            c2161b.f7499c.setTypeface(C3739f1.m24359b());
            c2161b.f7500d = (ImageView) view.findViewById(R$id.photoview);
            c2161b.f7501e = (FrameLayout) view.findViewById(R$id.ripple_bg);
            c2161b.f7502f = (LinearLayout) view.findViewById(R$id.ll_bg);
            view.setTag(c2161b);
        } else {
            c2161b = (C2161b) view.getTag();
        }
        try {
            c2161b.f7500d.setImageResource(R$drawable.ic_photo_normal);
            if (i == 0) {
                c2161b.f7497a.setVisibility(0);
                List<CallLogBean> list = this.f7489e;
                if (list == null || list.size() != 1) {
                    c2161b.f7502f.setBackgroundResource(this.f7493i);
                } else {
                    c2161b.f7502f.setBackgroundResource(this.f7491g);
                }
            } else {
                c2161b.f7497a.setVisibility(8);
                List<CallLogBean> list2 = this.f7489e;
                if (list2 == null || list2.size() <= 0 || i != this.f7489e.size() - 1) {
                    c2161b.f7502f.setBackgroundResource(this.f7492h);
                } else {
                    c2161b.f7502f.setBackgroundResource(this.f7490f);
                }
            }
            CallLogBean callLogBean = this.f7489e.get(i);
            if (callLogBean.m24906d() != null && !"".equals(callLogBean.m24906d())) {
                c2161b.f7499c.setText(callLogBean.m24906d());
            } else if (callLogBean.m24892i() == null || "".equals(callLogBean.m24892i())) {
                c2161b.f7499c.setText(callLogBean.m24880o());
            } else {
                c2161b.f7499c.setText(callLogBean.m24892i());
            }
            if (callLogBean.m24884m() != null && !"".equals(callLogBean.m24884m())) {
                c2161b.f7498b.setText(callLogBean.m24884m());
                c2161b.f7499c.setVisibility(0);
            } else if (callLogBean.m24861z() != null && !"".equals(callLogBean.m24861z())) {
                c2161b.f7498b.setText(callLogBean.m24861z());
                c2161b.f7499c.setVisibility(0);
            } else if (callLogBean.m24932P() == null || "".equals(callLogBean.m24932P())) {
                c2161b.f7498b.setText(callLogBean.m24880o());
                c2161b.f7499c.setVisibility(8);
            } else {
                c2161b.f7498b.setText(callLogBean.m24932P());
                c2161b.f7499c.setVisibility(0);
            }
            if (callLogBean.m24918Y()) {
                C3852t.m23960c(this.f7488d, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, callLogBean.m24868v()), callLogBean.m24914a(), R$drawable.ic_photo_normal, c2161b.f7500d);
            } else {
                int i2 = 2131231156;
                if (callLogBean.m24932P() != null) {
                    i2 = 2131231156;
                    if (!"".equals(callLogBean.m24932P())) {
                        i2 = 2131231157;
                        c2161b.f7500d.setImageResource(R$drawable.ic_photo_spam);
                    }
                }
                if (callLogBean.m24914a() != null && !"".equals(callLogBean.m24914a())) {
                    C3852t.m23962a(this.f7488d, callLogBean.m24914a(), i2, c2161b.f7500d);
                }
            }
            c2161b.f7501e.setOnClickListener(new View$OnClickListenerC2160a(callLogBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return view;
    }
}
