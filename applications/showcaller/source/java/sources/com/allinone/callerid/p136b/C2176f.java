package com.allinone.callerid.p136b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3713b0;
/* renamed from: com.allinone.callerid.b.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/f.class */
public class C2176f extends BaseAdapter {

    /* renamed from: d */
    private Context f7594d;

    /* renamed from: e */
    private String[] f7595e;

    /* renamed from: f */
    private String f7596f;

    /* renamed from: g */
    private LayoutInflater f7597g;

    /* renamed from: com.allinone.callerid.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/f$a.class */
    public static class C2177a {

        /* renamed from: a */
        private TextView f7598a;

        public C2177a(View view) {
            this.f7598a = (TextView) view.findViewById(R$id.tv_num);
        }
    }

    public C2176f(Context context, String[] strArr, String str) {
        this.f7594d = context;
        this.f7595e = strArr;
        this.f7596f = str;
        this.f7597g = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f7595e.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C2177a c2177a;
        if (view == null) {
            view = this.f7597g.inflate(R$layout.multinum_layout, viewGroup, false);
            c2177a = new C2177a(view);
            view.setTag(c2177a);
        } else {
            c2177a = (C2177a) view.getTag();
        }
        if (this.f7596f != null) {
            c2177a.f7598a.setText(C3713b0.m24458a(this.f7594d, this.f7595e[i].replaceAll(" ", ""), this.f7596f));
        } else {
            c2177a.f7598a.setText(this.f7595e[i].replace(" ", ""));
        }
        return view;
    }
}
