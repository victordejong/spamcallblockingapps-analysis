package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.C0311as;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, C0182g.AbstractC0184b, AbstractC0199n {

    /* renamed from: a */
    private static final int[] f608a = {16842964, 16843049};

    /* renamed from: b */
    private C0182g f609b;

    /* renamed from: c */
    private int f610c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0311as m7156a = C0311as.m7156a(context, attributeSet, f608a, i, 0);
        if (m7156a.m7144g(0)) {
            setBackgroundDrawable(m7156a.m7163a(0));
        }
        if (m7156a.m7144g(1)) {
            setDivider(m7156a.m7163a(1));
        }
        m7156a.m7164a();
    }

    @Override // androidx.appcompat.view.menu.C0182g.AbstractC0184b
    /* renamed from: a */
    public boolean mo7448a(C0186i c0186i) {
        return this.f609b.performItemAction(c0186i, 0);
    }

    public int getWindowAnimations() {
        return this.f610c;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n
    public void initialize(C0182g c0182g) {
        this.f609b = c0182g;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo7448a((C0186i) getAdapter().getItem(i));
    }
}
