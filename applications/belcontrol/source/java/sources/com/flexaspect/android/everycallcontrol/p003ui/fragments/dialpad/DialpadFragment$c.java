package com.flexaspect.android.everycallcontrol.p003ui.fragments.dialpad;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.dialpad.DialpadFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c.class */
public class DialpadFragment$c extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f3120a;

    /* renamed from: b */
    public C0399a[] f3121b = new C0399a[3];

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.dialpad.DialpadFragment$c$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a.class */
    public static class C0399a {

        /* renamed from: a */
        public String f3122a;

        /* renamed from: b */
        public Bitmap f3123b;

        /* renamed from: c */
        public int f3124c;

        public C0399a(String str, Bitmap bitmap, int i) {
            this.f3122a = str;
            this.f3123b = bitmap;
            this.f3124c = i;
        }
    }

    public DialpadFragment$c(Context context) {
        this.f3120a = LayoutInflater.from(context);
        this.f3121b[0] = new C0399a(context.getString(2131821188), BitmapFactory.decodeResource(context.getResources(), 2131231191), 101);
        this.f3121b[1] = new C0399a(context.getString(2131821187), BitmapFactory.decodeResource(context.getResources(), 2131231190), 102);
        this.f3121b[2] = new C0399a(context.getString(2131821185), BitmapFactory.decodeResource(context.getResources(), 2131231189), 103);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 3;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3121b[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f3120a.inflate(2131558571, (ViewGroup) null);
        }
        ((TextView) view2.findViewById(2131363293)).setText(this.f3121b[i].f3122a);
        ((ImageView) view2.findViewById(2131362570)).setImageBitmap(this.f3121b[i].f3123b);
        return view2;
    }
}
