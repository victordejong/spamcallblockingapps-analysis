package p459j.p460a.p531k0;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.k0.d */
/* loaded from: classes3-dex2jar.jar:j/a/k0/d.class */
public class C12858d extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f29085a;

    /* renamed from: b */
    public String[] f29086b;

    /* renamed from: c */
    public int f29087c = -1;

    /* renamed from: j.a.k0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/d$a.class */
    public class C12859a {

        /* renamed from: a */
        public TextView f29088a;

        /* renamed from: b */
        public ImageView f29089b;

        public C12859a(C12858d dVar) {
        }
    }

    public C12858d(Context context, String[] strArr) {
        this.f29085a = LayoutInflater.from(context);
        this.f29086b = strArr;
    }

    /* renamed from: a */
    public int m5136a() {
        return this.f29087c;
    }

    /* renamed from: a */
    public String m5135a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: b */
    public void m5134b(int i) {
        this.f29087c = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        String[] strArr = this.f29086b;
        return strArr == null ? 0 : strArr.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f29086b[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C12859a aVar;
        if (view == null || (view instanceof TextView)) {
            view = this.f29085a.inflate(R$layout.favorite_dialog_item, viewGroup, false);
            aVar = new C12859a(this);
            aVar.f29088a = (TextView) view.findViewById(2131363272);
            aVar.f29089b = (ImageView) view.findViewById(R$id.image1);
            view.setTag(aVar);
        } else {
            aVar = (C12859a) view.getTag();
        }
        if (i == 0) {
            aVar.f29088a.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_end_add_icon, 0, 0, 0);
            aVar.f29088a.setCompoundDrawablePadding(C14217x3.m2201a(6.0f));
            aVar.f29088a.setText(m5135a(R$string.callend_favorite_dialog_new));
            aVar.f29088a.setTextColor(Color.parseColor("#333333"));
            aVar.f29089b.setVisibility(4);
        } else {
            aVar.f29088a.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            aVar.f29088a.setCompoundDrawablePadding(0);
            aVar.f29088a.setText(this.f29086b[i]);
            if (this.f29087c == i) {
                view.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                aVar.f29089b.setVisibility(0);
                aVar.f29088a.setTextColor(Color.parseColor("#32c024"));
            } else {
                aVar.f29089b.setVisibility(4);
                aVar.f29088a.setTextColor(Color.parseColor("#333333"));
            }
        }
        if (i == getCount() - 1) {
            view.findViewById(R$id.line).setVisibility(8);
        } else {
            view.findViewById(R$id.line).setVisibility(0);
        }
        return view;
    }
}
