package p193e.p194a.p1221t.p1222a.p1225v;

import com.google.android.material.tabs.TabLayout;
import com.truecaller.android.truemoji.C2886R;
import e.m.a.g.x.e;
import java.util.List;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p193e.p194a.p1221t.p1222a.p1224u.C20310e;
import s1.z.c.l;
/* renamed from: e.a.t.a.v.f */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/v/f.class */
public final class C20323f implements e.b {

    /* renamed from: a */
    public final /* synthetic */ List f57143a;

    public C20323f(List list) {
        this.f57143a = list;
    }

    /* renamed from: a */
    public final void m11250a(TabLayout.C2114g c2114g, int i) {
        l.e(c2114g, "tab");
        c2114g.f6854g.setPadding(0, 0, 0, 0);
        int i2 = i != 0 ? ((C20310e) this.f57143a.get(i - 1)).f57121a : C2886R.C2887drawable.ic_emoji_clock;
        TabLayout tabLayout = c2114g.f6853f;
        if (tabLayout != null) {
            c2114g.m38373a(C25440a.m3540a(tabLayout.getContext(), i2));
            return;
        }
        throw new IllegalArgumentException("Tab not attached to a TabLayout");
    }
}
