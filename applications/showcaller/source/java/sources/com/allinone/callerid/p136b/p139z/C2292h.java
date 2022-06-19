package com.allinone.callerid.p136b.p139z;

import android.os.Parcelable;
import androidx.fragment.app.AbstractC0747n;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.b.z.h */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/z/h.class */
public class C2292h extends AbstractC0747n {

    /* renamed from: h */
    private final List<Fragment> f8057h = new ArrayList();

    /* renamed from: i */
    private final List<String> f8058i = new ArrayList();

    public C2292h(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: e */
    public int mo25082e() {
        return this.f8057h.size();
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: g */
    public CharSequence mo25081g(int i) {
        return this.f8058i.get(i);
    }

    @Override // androidx.fragment.app.AbstractC0747n, androidx.viewpager.widget.AbstractC1197a
    /* renamed from: n */
    public void mo27513n(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.fragment.app.AbstractC0747n
    /* renamed from: v */
    public Fragment mo27709v(int i) {
        if (this.f8057h.size() > i) {
            return this.f8057h.get(i);
        }
        return null;
    }

    /* renamed from: y */
    public void m27708y(Fragment fragment, String str) {
        this.f8057h.add(fragment);
        this.f8058i.add(str);
    }
}
