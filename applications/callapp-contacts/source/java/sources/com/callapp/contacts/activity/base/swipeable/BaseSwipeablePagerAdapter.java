package com.callapp.contacts.activity.base.swipeable;

import androidx.fragment.app.AbstractC1119q;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter.class */
public class BaseSwipeablePagerAdapter extends AbstractC1119q {

    /* renamed from: a */
    private Map<String, Fragment> f20386a = new LinkedHashMap();

    public BaseSwipeablePagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    /* renamed from: a */
    public final void m31467a(Fragment fragment, String str) {
        this.f20386a.put(str, fragment);
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public int getCount() {
        return this.f20386a.size();
    }

    @Override // androidx.fragment.app.AbstractC1119q
    public Fragment getItem(int i) {
        return (Fragment) this.f20386a.values().toArray()[i];
    }

    @Override // androidx.viewpager.widget.AbstractC2941a
    public CharSequence getPageTitle(int i) {
        return (CharSequence) this.f20386a.keySet().toArray()[i];
    }

    public Map<String, Fragment> getPages() {
        return this.f20386a;
    }
}
