package com.callerid.block.p034b;

import android.content.Context;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.util.C1221v;
/* renamed from: com.callerid.block.b.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/e.class */
public class C0890e extends BaseAdapter {

    /* renamed from: b */
    private Context f3961b;

    /* renamed from: c */
    private String[] f3962c;

    /* renamed from: d */
    private String f3963d;

    /* renamed from: e */
    private LayoutInflater f3964e;

    /* renamed from: com.callerid.block.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/b/e$a.class */
    public class C0891a {

        /* renamed from: a */
        private TextView f3965a;

        public C0891a(C0890e c0890e, View view) {
            this.f3965a = (TextView) view.findViewById(R$id.tv_num);
        }
    }

    public C0890e(Context context, String[] strArr, String str) {
        this.f3961b = context;
        this.f3962c = strArr;
        this.f3963d = str;
        this.f3964e = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3962c.length;
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
        C0891a c0891a;
        TextView textView;
        SpannableString spannableString;
        if (view == null) {
            view = this.f3964e.inflate(R$layout.multinum_layout, (ViewGroup) null, false);
            c0891a = new C0891a(this, view);
            view.setTag(c0891a);
        } else {
            c0891a = (C0891a) view.getTag();
        }
        if (this.f3963d != null) {
            SpannableString m9540a = C1221v.m9540a(this.f3961b, this.f3962c[i].replaceAll(" ", ""), this.f3963d);
            textView = c0891a.f3965a;
            spannableString = m9540a;
        } else {
            textView = c0891a.f3965a;
            spannableString = this.f3962c[i].replace(" ", "");
        }
        textView.setText(spannableString);
        return view;
    }
}
