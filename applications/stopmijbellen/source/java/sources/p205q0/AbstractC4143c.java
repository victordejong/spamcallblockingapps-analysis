package p205q0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
/* renamed from: q0.c */
/* loaded from: classes-dex2jar.jar:q0/c.class */
public abstract class AbstractC4143c extends AbstractC4138a {

    /* renamed from: i */
    public int f13067i;

    /* renamed from: j */
    public int f13068j;

    /* renamed from: k */
    public LayoutInflater f13069k;

    @Deprecated
    public AbstractC4143c(Context context, int i, Cursor cursor, boolean z) {
        super(context, null, z);
        this.f13068j = i;
        this.f13067i = i;
        this.f13069k = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
