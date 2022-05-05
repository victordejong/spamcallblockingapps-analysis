package com.asus.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/c/c.class */
public final class c extends ArrayAdapter<b> {

    /* renamed from: a  reason: collision with root package name */
    Context f2545a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<b> f2546b;

    /* loaded from: classes-dex2jar.jar:com/asus/c/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        ImageView f2547a;

        /* renamed from: b  reason: collision with root package name */
        TextView f2548b;

        a() {
        }
    }

    public c(Context context, ArrayList<b> arrayList) {
        super(context, 17367046, arrayList);
        this.f2545a = context;
        this.f2546b = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        a aVar2 = new a();
        if (view == null) {
            view = ((LayoutInflater) this.f2545a.getSystemService("layout_inflater")).inflate(2131427660, viewGroup, false);
            aVar2.f2547a = (ImageView) view.findViewById(2131297284);
            aVar2.f2548b = (TextView) view.findViewById(2131297285);
            view.setTag(aVar2);
            aVar = aVar2;
        } else {
            aVar = (a) view.getTag();
        }
        aVar.f2547a.setImageDrawable(this.f2546b.get(i).f2543b);
        aVar.f2548b.setText(this.f2546b.get(i).f2542a);
        return view;
    }
}
