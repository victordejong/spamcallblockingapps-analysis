package com.allinone.callerid.p136b;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.viewpager.widget.AbstractC1197a;
import java.util.List;
/* renamed from: com.allinone.callerid.b.q */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/b/q.class */
public class C2217q extends AbstractC1197a {

    /* renamed from: c */
    private List<View> f7772c;

    public C2217q(List<View> list) {
        this.f7772c = list;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: b */
    public void mo27516b(ViewGroup viewGroup, int i, Object obj) {
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: e */
    public int mo25082e() {
        return this.f7772c.size();
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: j */
    public Object mo27515j(ViewGroup viewGroup, int i) {
        View view = this.f7772c.get(i % this.f7772c.size());
        ViewParent parent = view.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(view);
        }
        viewGroup.addView(view);
        return view;
    }

    @Override // androidx.viewpager.widget.AbstractC1197a
    /* renamed from: k */
    public boolean mo27514k(View view, Object obj) {
        return view == ((View) obj);
    }
}
