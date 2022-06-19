package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements C25469g.AbstractC25471b, AbstractC25485n, AdapterView.OnItemClickListener {

    /* renamed from: b */
    public static final int[] f179b = {16842964, 16843049};

    /* renamed from: a */
    public C25469g f180a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int resourceId;
        int resourceId2;
        setOnItemClickListener(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f179b, 16842868, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable((!obtainStyledAttributes.hasValue(0) || (resourceId2 = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C25440a.m3540a(context, resourceId2));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            setDivider((!obtainStyledAttributes.hasValue(1) || (resourceId = obtainStyledAttributes.getResourceId(1, 0)) == 0) ? obtainStyledAttributes.getDrawable(1) : C25440a.m3540a(context, resourceId));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25485n
    /* renamed from: a */
    public void mo3411a(C25469g c25469g) {
        this.f180a = c25469g;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25471b
    /* renamed from: e */
    public boolean mo3457e(C25473i c25473i) {
        return this.f180a.m3465s(c25473i, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo3457e((C25473i) getAdapter().getItem(i));
    }
}
