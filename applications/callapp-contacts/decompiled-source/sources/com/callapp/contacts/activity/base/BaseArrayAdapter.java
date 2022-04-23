package com.callapp.contacts.activity.base;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.callapp.contacts.CallAppApplication;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseArrayAdapter.class */
public abstract class BaseArrayAdapter<T> extends ArrayAdapter<T> {

    /* renamed from: a  reason: collision with root package name */
    private final LayoutInflater f11074a = LayoutInflater.from(CallAppApplication.get());

    public BaseArrayAdapter(List<T> list) {
        super(CallAppApplication.get(), 0, list);
    }

    protected abstract View a(View view, int i);

    protected abstract void a(View view, int i, T t);

    protected abstract int getLayoutResourceId(int i);

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = a(this.f11074a.inflate(getLayoutResourceId(i), viewGroup, false), i);
        }
        a(view2, i, getItem(i));
        return view2;
    }
}
