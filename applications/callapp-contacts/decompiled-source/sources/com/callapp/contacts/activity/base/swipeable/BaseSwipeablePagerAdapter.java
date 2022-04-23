package com.callapp.contacts.activity.base.swipeable;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.q;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/swipeable/BaseSwipeablePagerAdapter.class */
public class BaseSwipeablePagerAdapter extends q {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Fragment> f11172a = new LinkedHashMap();

    public BaseSwipeablePagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Fragment fragment, String str) {
        this.f11172a.put(str, fragment);
    }

    @Override // androidx.viewpager.widget.a
    public int getCount() {
        return this.f11172a.size();
    }

    @Override // androidx.fragment.app.q
    public Fragment getItem(int i) {
        return (Fragment) this.f11172a.values().toArray()[i];
    }

    @Override // androidx.viewpager.widget.a
    public CharSequence getPageTitle(int i) {
        return (CharSequence) this.f11172a.keySet().toArray()[i];
    }

    public Map<String, Fragment> getPages() {
        return this.f11172a;
    }
}
