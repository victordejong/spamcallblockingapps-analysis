package androidx.p040d.p041a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.d.a.c */
/* loaded from: classes-dex2jar.jar:androidx/d/a/c.class */
public abstract class AbstractC0983c extends AbstractC0978a {

    /* renamed from: a */
    private int f3932a;

    /* renamed from: k */
    private int f3933k;

    /* renamed from: l */
    private LayoutInflater f3934l;

    @Deprecated
    public AbstractC0983c(Context context, int i, Cursor cursor) {
        super(context, cursor);
        this.f3933k = i;
        this.f3932a = i;
        this.f3934l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public AbstractC0983c(Context context, int i, Cursor cursor, int i2) {
        super(context, cursor, i2);
        this.f3933k = i;
        this.f3932a = i;
        this.f3934l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Deprecated
    public AbstractC0983c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f3933k = i;
        this.f3932a = i;
        this.f3934l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.p040d.p041a.AbstractC0978a
    /* renamed from: a */
    public View mo43872a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3934l.inflate(this.f3932a, viewGroup, false);
    }

    @Override // androidx.p040d.p041a.AbstractC0978a
    /* renamed from: b */
    public final View mo43871b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f3934l.inflate(this.f3933k, viewGroup, false);
    }
}
