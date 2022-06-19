package com.cocosw.bottomsheet;

import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Objects;
/* renamed from: com.cocosw.bottomsheet.e */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/e.class */
public class C1595e extends BaseAdapter {

    /* renamed from: a */
    public final /* synthetic */ DialogC1599h f5914a;

    /* renamed from: com.cocosw.bottomsheet.e$a */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/e$a.class */
    public class C1596a {

        /* renamed from: a */
        public TextView f5915a;

        /* renamed from: b */
        public ImageView f5916b;

        public C1596a(C1595e c1595e) {
        }
    }

    public C1595e(DialogC1599h dialogC1599h) {
        this.f5914a = dialogC1599h;
    }

    /* renamed from: a */
    public MenuItem m4860a(int i) {
        return this.f5914a.f5938s.f5899c.get(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f5914a.f5938s.size() - this.f5914a.f5920a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f5914a.f5938s.f5899c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1596a c1596a;
        int i2;
        if (view == null) {
            LayoutInflater layoutInflater = (LayoutInflater) this.f5914a.getContext().getSystemService("layout_inflater");
            Objects.requireNonNull(this.f5914a.f5931l);
            view = layoutInflater.inflate(this.f5914a.f5926g, viewGroup, false);
            c1596a = new C1596a(this);
            c1596a.f5915a = (TextView) view.findViewById(2131296390);
            c1596a.f5916b = (ImageView) view.findViewById(2131296389);
            view.setTag(c1596a);
        } else {
            c1596a = (C1596a) view.getTag();
        }
        int i3 = 0;
        while (true) {
            i2 = i;
            if (i3 >= this.f5914a.f5920a.size()) {
                break;
            }
            i = i2;
            if (this.f5914a.f5920a.valueAt(i3) <= i2) {
                i = i2 + 1;
            }
            i3++;
        }
        MenuItem m4860a = m4860a(i2);
        c1596a.f5915a.setText(m4860a.getTitle());
        if (m4860a.getIcon() == null) {
            c1596a.f5916b.setVisibility(this.f5914a.f5928i ? 8 : 4);
        } else {
            c1596a.f5916b.setVisibility(0);
            c1596a.f5916b.setImageDrawable(m4860a.getIcon());
        }
        c1596a.f5916b.setEnabled(m4860a.isEnabled());
        c1596a.f5915a.setEnabled(m4860a.isEnabled());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.f5914a.f5938s.f5899c.get(i).isEnabled();
    }
}
