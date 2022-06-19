package com.allinone.callerid.p136b;

import androidx.fragment.app.AbstractC0747n;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.n */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/n.class */
public class C2210n extends AbstractC0747n {

    /* renamed from: h */
    private final List<Fragment> f7737h = new ArrayList();

    /* renamed from: i */
    private final List<String> f7738i = new ArrayList();

    public C2210n(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: e */
    public int mo25082e() {
        return this.f7737h.size();
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: g */
    public CharSequence mo25081g(int i) {
        return this.f7738i.get(i);
    }

    @Override // androidx.fragment.app.AbstractC0747n
    /* renamed from: v */
    public Fragment mo27709v(int i) {
        return this.f7737h.get(i);
    }

    /* renamed from: y */
    public void m27854y(Fragment fragment, String str) {
        this.f7737h.add(fragment);
        this.f7738i.add(str);
    }
}
