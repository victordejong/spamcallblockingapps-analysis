package com.uservoice.uservoicesdk.ui;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.uservoice.uservoicesdk.d;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/k.class */
public final class k<T> extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private static int f4798a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static int f4799b = 1;
    private final List<T> c;
    private final List<Integer> d;
    private LayoutInflater e;
    private int f;
    private Context g;

    public k(Activity activity, List<T> list) {
        this(activity, list, null);
    }

    public k(Activity activity, List<T> list, List<Integer> list2) {
        this.c = list;
        this.e = activity.getLayoutInflater();
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(16842806, typedValue, true);
        this.f = activity.getResources().getColor(typedValue.resourceId);
        this.g = activity;
        this.d = list2;
    }

    private int a(int i) {
        return this.d == null ? 0 : this.d.get(i).intValue();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.c.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i);
        if (view == null) {
            view = this.e.inflate(17367043, (ViewGroup) null);
        }
        TextView textView = (TextView) view;
        if (itemViewType == f4799b) {
            textView.setTextColor(this.f);
            this.g.getPackageName();
            int identifier = this.g.getResources().getIdentifier("uf_sdk_translation_" + String.valueOf(a(i)), "string", this.g.getPackageName());
            textView.setText(identifier == 0 ? getItem(i).toString() : this.g.getResources().getString(identifier));
        } else {
            textView.setTextColor(-7829368);
            textView.setText(d.f.O);
        }
        return view;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.c.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return f4799b;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i);
        if (view == null) {
            view = this.e.inflate(17367043, (ViewGroup) null);
        }
        TextView textView = (TextView) view;
        if (itemViewType == f4799b) {
            textView.setTextColor(this.f);
            this.g.getPackageName();
            int identifier = this.g.getResources().getIdentifier("uf_sdk_translation_" + String.valueOf(a(i)), "string", this.g.getPackageName());
            textView.setText(identifier == 0 ? getItem(i).toString() : this.g.getResources().getString(identifier));
        } else {
            textView.setTextColor(this.f);
            textView.setText(d.f.P);
        }
        return view;
    }
}
