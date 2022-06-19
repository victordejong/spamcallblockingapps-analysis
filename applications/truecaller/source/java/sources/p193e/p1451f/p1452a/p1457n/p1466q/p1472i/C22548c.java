package p193e.p1451f.p1452a.p1457n.p1466q.p1472i;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22490e;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
/* renamed from: e.f.a.n.q.i.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/i/c.class */
public final class C22548c implements AbstractC22550e<Drawable, byte[]> {

    /* renamed from: a */
    public final AbstractC22303d f62475a;

    /* renamed from: b */
    public final AbstractC22550e<Bitmap, byte[]> f62476b;

    /* renamed from: c */
    public final AbstractC22550e<C22538c, byte[]> f62477c;

    public C22548c(AbstractC22303d abstractC22303d, AbstractC22550e<Bitmap, byte[]> abstractC22550e, AbstractC22550e<C22538c, byte[]> abstractC22550e2) {
        this.f62475a = abstractC22303d;
        this.f62476b = abstractC22550e;
        this.f62477c = abstractC22550e2;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1472i.AbstractC22550e
    /* renamed from: a */
    public AbstractC22394w<byte[]> mo8143a(AbstractC22394w<Drawable> abstractC22394w, C22267i c22267i) {
        Drawable drawable = abstractC22394w.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f62476b.mo8143a(C22490e.m8203d(((BitmapDrawable) drawable).getBitmap(), this.f62475a), c22267i);
        }
        if (!(drawable instanceof C22538c)) {
            return null;
        }
        return this.f62477c.mo8143a(abstractC22394w, c22267i);
    }
}
