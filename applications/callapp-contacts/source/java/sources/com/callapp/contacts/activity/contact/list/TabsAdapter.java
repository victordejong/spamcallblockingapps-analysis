package com.callapp.contacts.activity.contact.list;

import android.view.ViewGroup;
import androidx.fragment.app.AbstractC1114n;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.util.CLog;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/TabsAdapter.class */
public final class TabsAdapter extends AbstractC1114n {

    /* renamed from: a */
    private List<Fragment> f22612a;

    public TabsAdapter(FragmentManager fragmentManager, List<Fragment> list) {
        super(fragmentManager);
        this.f22612a = list;
    }

    @Override // androidx.fragment.app.AbstractC1114n, androidx.viewpager.widget.AbstractC2941a
    /* renamed from: a */
    public final void mo26230a(ViewGroup viewGroup, int i, Object obj) {
        CLog.m27611a(getClass(), "ACTIVITY: destroying fragments in pager");
        super.mo26230a(viewGroup, i, obj);
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public final int getCount() {
        return this.f22612a.size();
    }

    @Override // androidx.fragment.app.AbstractC1114n
    public final Fragment getItem(int i) {
        return this.f22612a.get(i);
    }
}
