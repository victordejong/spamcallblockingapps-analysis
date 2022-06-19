package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.io.IOException;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
/* renamed from: e.f.a.n.q.d.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/a.class */
public class C22482a<DataType> implements AbstractC22269k<DataType, BitmapDrawable> {

    /* renamed from: a */
    public final AbstractC22269k<DataType, Bitmap> f62345a;

    /* renamed from: b */
    public final Resources f62346b;

    public C22482a(Resources resources, AbstractC22269k<DataType, Bitmap> abstractC22269k) {
        Objects.requireNonNull(resources, "Argument must not be null");
        this.f62346b = resources;
        this.f62345a = abstractC22269k;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(DataType datatype, C22267i c22267i) throws IOException {
        return this.f62345a.mo8147a(datatype, c22267i);
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<BitmapDrawable> mo8146b(DataType datatype, int i, int i2, C22267i c22267i) throws IOException {
        return C22519v.m8173d(this.f62346b, this.f62345a.mo8146b(datatype, i, i2, c22267i));
    }
}
