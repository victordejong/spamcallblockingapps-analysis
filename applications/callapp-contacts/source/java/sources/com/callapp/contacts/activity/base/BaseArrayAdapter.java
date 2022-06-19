package com.callapp.contacts.activity.base;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.callapp.contacts.CallAppApplication;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseArrayAdapter.class */
public abstract class BaseArrayAdapter<T> extends ArrayAdapter<T> {

    /* renamed from: a */
    private final LayoutInflater f20244a = LayoutInflater.from(CallAppApplication.get());

    public BaseArrayAdapter(List<T> list) {
        super(CallAppApplication.get(), 0, list);
    }

    /* renamed from: a */
    protected abstract View mo28016a(View view, int i);

    /* renamed from: a */
    protected abstract void mo28015a(View view, int i, T t);

    protected abstract int getLayoutResourceId(int i);

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = mo28016a(this.f20244a.inflate(getLayoutResourceId(i), viewGroup, false), i);
        }
        mo28015a(view2, i, getItem(i));
        return view2;
    }
}
