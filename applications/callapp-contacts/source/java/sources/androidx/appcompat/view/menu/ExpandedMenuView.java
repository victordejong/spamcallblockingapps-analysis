package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.C0370ab;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, C0268g.AbstractC0270b, AbstractC0285n {

    /* renamed from: a */
    private static final int[] f774a = {16842964, 16843049};

    /* renamed from: b */
    private C0268g f775b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, f774a, i, 0);
        if (m45804a.m45793g(0)) {
            setBackgroundDrawable(m45804a.m45810a(0));
        }
        if (m45804a.m45793g(1)) {
            setDivider(m45804a.m45810a(1));
        }
        m45804a.f1491a.recycle();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n
    /* renamed from: a */
    public final void mo10610a(C0268g c0268g) {
        this.f775b = c0268g;
    }

    @Override // androidx.appcompat.view.menu.C0268g.AbstractC0270b
    /* renamed from: a */
    public final boolean mo45999a(C0272i c0272i) {
        return this.f775b.m46102a(c0272i, (AbstractC0283m) null, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo45999a((C0272i) getAdapter().getItem(i));
    }
}
