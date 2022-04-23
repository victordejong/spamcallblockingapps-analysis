package com.callapp.contacts.activity.contact.list;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.n;
import com.callapp.contacts.util.CLog;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/TabsAdapter.class */
public final class TabsAdapter extends n {

    /* renamed from: a  reason: collision with root package name */
    private List<Fragment> f12649a;

    public TabsAdapter(FragmentManager fragmentManager, List<Fragment> list) {
        super(fragmentManager);
        this.f12649a = list;
    }

    @Override // androidx.fragment.app.n, androidx.viewpager.widget.a
    public final void a(ViewGroup viewGroup, int i, Object obj) {
        CLog.a(getClass(), "ACTIVITY: destroying fragments in pager");
        super.a(viewGroup, i, obj);
    }

    @Override // androidx.viewpager.widget.a
    public final int getCount() {
        return this.f12649a.size();
    }

    @Override // androidx.fragment.app.n
    public final Fragment getItem(int i) {
        return this.f12649a.get(i);
    }
}
