package p012b.p057j.p058a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: b.j.a.c */
/* loaded from: classes-dex2jar.jar:b/j/a/c.class */
public abstract class AbstractC1042c extends AbstractC1037a {

    /* renamed from: i */
    public int f4337i;

    /* renamed from: j */
    public int f4338j;

    /* renamed from: k */
    public LayoutInflater f4339k;

    @Deprecated
    public AbstractC1042c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f4338j = i;
        this.f4337i = i;
        this.f4339k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // p012b.p057j.p058a.AbstractC1037a
    /* renamed from: a */
    public View mo35075a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f4339k.inflate(this.f4338j, viewGroup, false);
    }

    @Override // p012b.p057j.p058a.AbstractC1037a
    /* renamed from: b */
    public View mo35074b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f4339k.inflate(this.f4337i, viewGroup, false);
    }
}
