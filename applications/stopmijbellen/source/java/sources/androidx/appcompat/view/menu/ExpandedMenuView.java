package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.C0136e;
import p097g.C2788a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements C0136e.AbstractC0138b, AbstractC0146j, AdapterView.OnItemClickListener {

    /* renamed from: b */
    public static final int[] f348b = {16842964, 16843049};

    /* renamed from: a */
    public C0136e f349a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int resourceId;
        int resourceId2;
        setOnItemClickListener(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f348b, 16842868, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable((!obtainStyledAttributes.hasValue(0) || (resourceId2 = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C2788a.m3015b(context, resourceId2));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            setDivider((!obtainStyledAttributes.hasValue(1) || (resourceId = obtainStyledAttributes.getResourceId(1, 0)) == 0) ? obtainStyledAttributes.getDrawable(1) : C2788a.m3015b(context, resourceId));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0138b
    /* renamed from: a */
    public boolean mo8663a(C0140g c0140g) {
        return this.f349a.m8706r(c0140g, null, 0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j
    /* renamed from: b */
    public void mo4551b(C0136e c0136e) {
        this.f349a = c0136e;
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
        mo8663a((C0140g) getAdapter().getItem(i));
    }
}
