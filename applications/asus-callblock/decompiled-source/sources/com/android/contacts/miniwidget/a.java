package com.android.contacts.miniwidget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/a.class */
public final class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f1958a;

    /* renamed from: b  reason: collision with root package name */
    private List<g> f1959b;
    private Context c;

    /* renamed from: com.android.contacts.miniwidget.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/a$a.class */
    private final class C0049a {

        /* renamed from: a  reason: collision with root package name */
        TextView f1960a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1961b;
        RadioButton c;

        private C0049a() {
        }

        /* synthetic */ C0049a(a aVar, byte b2) {
            this();
        }
    }

    public a(Context context, List<g> list) {
        this.f1958a = LayoutInflater.from(context);
        this.f1959b = list;
        this.c = context;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f1959b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f1959b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        C0049a aVar;
        if (view == null) {
            view = this.f1958a.inflate(2131427332, (ViewGroup) null);
            aVar = new C0049a(this, (byte) 0);
            aVar.f1960a = (TextView) view.findViewById(2131296276);
            aVar.f1961b = (TextView) view.findViewById(2131296631);
            aVar.c = (RadioButton) view.findViewById(2131297207);
            view.setTag(aVar);
        } else {
            aVar = (C0049a) view.getTag();
        }
        aVar.f1960a.setText(this.f1959b.get(i).a());
        aVar.f1961b.setText(this.f1959b.get(i).b());
        aVar.c.setChecked(this.f1959b.get(i).c);
        if (SelectActionActivity.class.isInstance(this.c)) {
            aVar.c.setVisibility(8);
        } else {
            aVar.c.setVisibility(0);
        }
        if (this.f1959b.get(i).b().equals(BuildConfig.FLAVOR)) {
            aVar.f1961b.setVisibility(8);
        } else {
            aVar.f1961b.setVisibility(0);
        }
        return view;
    }
}
