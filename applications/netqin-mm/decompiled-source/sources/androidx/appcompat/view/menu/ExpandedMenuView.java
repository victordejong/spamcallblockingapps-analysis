package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p026q.C0691f0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ExpandedMenuView.class */
public final class ExpandedMenuView extends ListView implements C0647g.AbstractC0649b, AbstractC0664n, AdapterView.OnItemClickListener {

    /* renamed from: c */
    public static final int[] f382c = {16842964, 16843049};

    /* renamed from: a */
    public C0647g f383a;

    /* renamed from: b */
    public int f384b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        C0691f0 a = C0691f0.m36414a(context, attributeSet, f382c, i, 0);
        if (a.m36402g(0)) {
            setBackgroundDrawable(a.m36412b(0));
        }
        if (a.m36402g(1)) {
            setDivider(a.m36412b(1));
        }
        a.m36413b();
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n
    /* renamed from: a */
    public void mo36520a(C0647g gVar) {
        this.f383a = gVar;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0649b
    /* renamed from: a */
    public boolean mo36575a(C0651i iVar) {
        return this.f383a.m36613a(iVar, 0);
    }

    public int getWindowAnimations() {
        return this.f384b;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        mo36575a((C0651i) getAdapter().getItem(i));
    }
}
