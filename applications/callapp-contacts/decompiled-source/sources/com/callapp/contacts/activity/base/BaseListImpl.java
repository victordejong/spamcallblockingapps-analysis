package com.callapp.contacts.activity.base;

import android.app.Activity;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListImpl.class */
public class BaseListImpl implements BaseListFunctions {

    /* renamed from: a  reason: collision with root package name */
    private ListAdapter f11134a;

    /* renamed from: b  reason: collision with root package name */
    private ListView f11135b;

    /* renamed from: d  reason: collision with root package name */
    private IAdapterReady f11137d;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11136c = false;
    private Runnable e = new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListImpl.1
        @Override // java.lang.Runnable
        public void run() {
            BaseListImpl.this.f11135b.focusableViewAvailable(BaseListImpl.this.f11135b);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListImpl$IAdapterReady.class */
    public interface IAdapterReady {
    }

    public BaseListImpl(IAdapterReady iAdapterReady) {
        this.f11137d = iAdapterReady;
    }

    public final void a(Activity activity) {
        View findViewById = activity.findViewById(16908292);
        ListView listView = (ListView) activity.findViewById(16908298);
        this.f11135b = listView;
        if (listView != null) {
            if (findViewById != null) {
                listView.setEmptyView(findViewById);
            }
            if (this.f11136c) {
                setListAdapter(this.f11134a);
            }
            CallAppApplication.get().d(this.e);
            this.f11136c = true;
            return;
        }
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public ListAdapter getListAdapter() {
        return this.f11134a;
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public ListView getListView() {
        return this.f11135b;
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public void setListAdapter(ListAdapter listAdapter) {
        synchronized (this) {
            this.f11134a = listAdapter;
            this.f11135b.setAdapter(listAdapter);
        }
    }
}
