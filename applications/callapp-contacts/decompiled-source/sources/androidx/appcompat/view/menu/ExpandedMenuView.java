package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ab;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements AdapterView.OnItemClickListener, g.b, n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f767a = {16842964, 16843049};

    /* renamed from: b  reason: collision with root package name */
    private g f768b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        ab a2 = ab.a(context, attributeSet, f767a, i, 0);
        if (a2.g(0)) {
            setBackgroundDrawable(a2.a(0));
        }
        if (a2.g(1)) {
            setDivider(a2.a(1));
        }
        a2.f1044a.recycle();
    }

    @Override // androidx.appcompat.view.menu.n
    public final void a(g gVar) {
        this.f768b = gVar;
    }

    @Override // androidx.appcompat.view.menu.g.b
    public final boolean a(i iVar) {
        return this.f768b.a(iVar, (m) null, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((i) getAdapter().getItem(i));
    }
}
