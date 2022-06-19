package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.C0286e0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements C0178g.AbstractC0180b, AbstractC0195n, AdapterView.OnItemClickListener {

    /* renamed from: d */
    private static final int[] f521d = {16842964, 16843049};

    /* renamed from: e */
    private C0178g f522e;

    /* renamed from: f */
    private int f523f;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, f521d, i, 0);
        if (m34946v.m34949s(0)) {
            setBackgroundDrawable(m34946v.m34961g(0));
        }
        if (m34946v.m34949s(1)) {
            setDivider(m34946v.m34961g(1));
        }
        m34946v.m34945w();
    }

    @Override // androidx.appcompat.view.menu.C0178g.AbstractC0180b
    /* renamed from: a */
    public boolean mo35227a(C0182i c0182i) {
        return this.f522e.m35406N(c0182i, 0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n
    /* renamed from: b */
    public void mo4639b(C0178g c0178g) {
        this.f522e = c0178g;
    }

    public int getWindowAnimations() {
        return this.f523f;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo35227a((C0182i) getAdapter().getItem(i));
    }
}
