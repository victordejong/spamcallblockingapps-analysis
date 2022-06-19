package androidx.p015c.p016a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.c.a.c */
/* loaded from: classes-dex2jar.jar:androidx/c/a/c.class */
public abstract class AbstractC0399c extends AbstractC0394a {

    /* renamed from: j */
    private int f1629j;

    /* renamed from: k */
    private int f1630k;

    /* renamed from: l */
    private LayoutInflater f1631l;

    @Deprecated
    public AbstractC0399c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f1630k = i;
        this.f1629j = i;
        this.f1631l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.p015c.p016a.AbstractC0394a
    /* renamed from: a */
    public View mo21055a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f1631l.inflate(this.f1629j, viewGroup, false);
    }

    @Override // androidx.p015c.p016a.AbstractC0394a
    /* renamed from: b */
    public View mo21054b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f1631l.inflate(this.f1630k, viewGroup, false);
    }
}
