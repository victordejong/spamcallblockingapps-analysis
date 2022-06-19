package org.mistergroup.shouldianswer.p101ui.main;

import androidx.fragment.app.AbstractC0717h;
import androidx.fragment.app.AbstractC0737k;
import androidx.fragment.app.Fragment;
import androidx.p014c.C0388h;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p101ui.main.p102a.C2590a;
import org.mistergroup.shouldianswer.p101ui.main.p103b.C2631c;
import org.mistergroup.shouldianswer.p101ui.main.p104c.C2690m;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c.class */
public final class C2642c extends AbstractC0737k {

    /* renamed from: a */
    private final C0388h<Fragment> f7754a = new C0388h<>();

    /* renamed from: b */
    private MainFragment f7755b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2642c(AbstractC0717h abstractC0717h, MainFragment mainFragment) {
        super(abstractC0717h);
        C1694h.m3117b(abstractC0717h, "fm");
        C1694h.m3117b(mainFragment, "homeFragment");
        this.f7755b = mainFragment;
    }

    @Override // androidx.fragment.app.AbstractC0737k
    /* renamed from: a */
    public Fragment mo237a(int i) {
        C2590a m6805a = this.f7754a.m6805a(i);
        Fragment fragment = m6805a;
        if (m6805a == null) {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MainPagerAdapter.getItem creating fragment " + String.valueOf(i), (String) null, 2, (Object) null);
            if (i == 0) {
                m6805a = new C2631c();
            } else if (i == 1) {
                m6805a = new C2690m();
            } else if (i == 2) {
                m6805a = new C2590a();
            }
            this.f7754a.m6800b(i, m6805a);
            fragment = m6805a;
        }
        if (fragment == null) {
            C1694h.m3124a();
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: b */
    public int mo236b() {
        return 3;
    }

    @Override // androidx.viewpager.widget.AbstractC1100a
    /* renamed from: b */
    public CharSequence mo235b(int i) {
        return "";
    }
}
