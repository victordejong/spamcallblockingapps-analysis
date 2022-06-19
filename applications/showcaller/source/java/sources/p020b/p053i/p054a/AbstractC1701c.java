package p020b.p053i.p054a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: b.i.a.c */
/* loaded from: classes-dex2jar.jar:b/i/a/c.class */
public abstract class AbstractC1701c extends AbstractC1696a {

    /* renamed from: l */
    private int f6376l;

    /* renamed from: m */
    private int f6377m;

    /* renamed from: n */
    private LayoutInflater f6378n;

    @Deprecated
    public AbstractC1701c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f6377m = i;
        this.f6376l = i;
        this.f6378n = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // p020b.p053i.p054a.AbstractC1696a
    /* renamed from: o */
    public View mo29196o(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f6378n.inflate(this.f6377m, viewGroup, false);
    }

    @Override // p020b.p053i.p054a.AbstractC1696a
    /* renamed from: p */
    public View mo29195p(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f6378n.inflate(this.f6376l, viewGroup, false);
    }
}
