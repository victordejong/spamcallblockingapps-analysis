package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/ResourceCursorAdapter.class */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* renamed from: o */
    private int f3457o;

    /* renamed from: p */
    private int f3458p;

    /* renamed from: q */
    private LayoutInflater f3459q;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f3458p = i;
        this.f3457o = i;
        this.f3459q = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: g */
    public View mo18803g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3459q.inflate(this.f3458p, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    /* renamed from: h */
    public View mo18802h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3459q.inflate(this.f3457o, viewGroup, false);
    }
}
