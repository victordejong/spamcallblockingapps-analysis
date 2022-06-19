package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.C0317ap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, C0199g.AbstractC0201b, AbstractC0216n {

    /* renamed from: a */
    private static final int[] f660a = {16842964, 16843049};

    /* renamed from: b */
    private C0199g f661b;

    /* renamed from: c */
    private int f662c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, f660a, i, 0);
        if (m21433a.m21421g(0)) {
            setBackgroundDrawable(m21433a.m21440a(0));
        }
        if (m21433a.m21421g(1)) {
            setDivider(m21433a.m21440a(1));
        }
        m21433a.m21441a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n
    /* renamed from: a */
    public void mo2905a(C0199g c0199g) {
        this.f661b = c0199g;
    }

    @Override // androidx.appcompat.view.menu.C0199g.AbstractC0201b
    /* renamed from: a */
    public boolean mo21748a(C0203i c0203i) {
        return this.f661b.m21888a(c0203i, 0);
    }

    public int getWindowAnimations() {
        return this.f662c;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo21748a((C0203i) getAdapter().getItem(i));
    }
}
