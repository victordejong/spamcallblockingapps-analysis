package androidx.p027d.p028a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.d.a.c */
/* loaded from: classes-dex2jar.jar:androidx/d/a/c.class */
public abstract class AbstractC0629c extends AbstractC0624a {

    /* renamed from: j */
    private int f2086j;

    /* renamed from: k */
    private int f2087k;

    /* renamed from: l */
    private LayoutInflater f2088l;

    @Deprecated
    public AbstractC0629c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f2087k = i;
        this.f2086j = i;
        this.f2088l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.p027d.p028a.AbstractC0624a
    /* renamed from: a */
    public View mo5879a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2088l.inflate(this.f2086j, viewGroup, false);
    }

    @Override // androidx.p027d.p028a.AbstractC0624a
    /* renamed from: b */
    public View mo5878b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2088l.inflate(this.f2087k, viewGroup, false);
    }
}
