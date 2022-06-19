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
import com.allinone.callerid.util.C3739f1;
/* renamed from: com.allinone.callerid.b.x */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/x.class */
public class C2248x extends BaseAdapter {

    /* renamed from: d */
    private Context f7899d;

    /* renamed from: e */
    private String[] f7900e;

    /* renamed from: f */
    C2250b f7901f;

    /* renamed from: g */
    private ListView f7902g;

    /* renamed from: com.allinone.callerid.b.x$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/x$a.class */
    class View$OnClickListenerC2249a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f7903d;

        View$OnClickListenerC2249a(int i) {
            C2248x.this = r4;
            this.f7903d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ListView listView = C2248x.this.f7902g;
            ListView listView2 = C2248x.this.f7902g;
            int i = this.f7903d;
            listView.performItemClick(listView2, i, C2248x.this.getItemId(i));
        }
    }

    /* renamed from: com.allinone.callerid.b.x$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/x$b.class */
    private static class C2250b {

        /* renamed from: a */
        TextView f7905a;

        /* renamed from: b */
        FrameLayout f7906b;

        private C2250b() {
        }

        /* synthetic */ C2250b(View$OnClickListenerC2249a view$OnClickListenerC2249a) {
            this();
        }
    }

    public C2248x(Context context, String[] strArr, ListView listView) {
        this.f7899d = context;
        this.f7900e = strArr;
        this.f7902g = listView;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7900e.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f7900e[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(this.f7899d, R$layout.start_choose_lang_item, null);
            C2250b c2250b = new C2250b(null);
            this.f7901f = c2250b;
            c2250b.f7905a = (TextView) view.findViewById(R$id.tv_lang_name);
            this.f7901f.f7905a.setTypeface(C3739f1.m24359b());
            this.f7901f.f7906b = (FrameLayout) view.findViewById(R$id.flayout_bg);
            view.setTag(this.f7901f);
        } else {
            this.f7901f = (C2250b) view.getTag();
        }
        this.f7901f.f7905a.setText(this.f7900e[i]);
        this.f7901f.f7906b.setTag(Integer.valueOf(i));
        this.f7901f.f7906b.setOnClickListener(new View$OnClickListenerC2249a(i));
        return view;
    }
}
