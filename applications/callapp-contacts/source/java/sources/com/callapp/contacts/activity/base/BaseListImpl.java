package com.callapp.contacts.activity.base;

import android.app.Activity;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListImpl.class */
public class BaseListImpl implements BaseListFunctions {

    /* renamed from: a */
    private ListAdapter f20326a;

    /* renamed from: b */
    private ListView f20327b;

    /* renamed from: d */
    private IAdapterReady f20329d;

    /* renamed from: c */
    private boolean f20328c = false;

    /* renamed from: e */
    private Runnable f20330e = new Runnable() { // from class: com.callapp.contacts.activity.base.BaseListImpl.1
        @Override // java.lang.Runnable
        public void run() {
            BaseListImpl.this.f20327b.focusableViewAvailable(BaseListImpl.this.f20327b);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseListImpl$IAdapterReady.class */
    public interface IAdapterReady {
    }

    public BaseListImpl(IAdapterReady iAdapterReady) {
        this.f20329d = iAdapterReady;
    }

    /* renamed from: a */
    public final void m31487a(Activity activity) {
        View findViewById = activity.findViewById(16908292);
        ListView listView = (ListView) activity.findViewById(16908298);
        this.f20327b = listView;
        if (listView != null) {
            if (findViewById != null) {
                listView.setEmptyView(findViewById);
            }
            if (this.f20328c) {
                setListAdapter(this.f20326a);
            }
            CallAppApplication.get().m31858d(this.f20330e);
            this.f20328c = true;
            return;
        }
        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public ListAdapter getListAdapter() {
        return this.f20326a;
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public ListView getListView() {
        return this.f20327b;
    }

    @Override // com.callapp.contacts.activity.base.BaseListFunctions
    public void setListAdapter(ListAdapter listAdapter) {
        synchronized (this) {
            this.f20326a = listAdapter;
            this.f20327b.setAdapter(listAdapter);
        }
    }
}
