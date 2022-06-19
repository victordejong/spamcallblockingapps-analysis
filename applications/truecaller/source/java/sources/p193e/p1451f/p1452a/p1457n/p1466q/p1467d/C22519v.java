package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
/* renamed from: e.f.a.n.q.d.v */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/v.class */
public final class C22519v implements AbstractC22394w<BitmapDrawable>, AbstractC22389s {

    /* renamed from: a */
    public final Resources f62408a;

    /* renamed from: b */
    public final AbstractC22394w<Bitmap> f62409b;

    public C22519v(Resources resources, AbstractC22394w<Bitmap> abstractC22394w) {
        Objects.requireNonNull(resources, "Argument must not be null");
        this.f62408a = resources;
        this.f62409b = abstractC22394w;
    }

    /* renamed from: d */
    public static AbstractC22394w<BitmapDrawable> m8173d(Resources resources, AbstractC22394w<Bitmap> abstractC22394w) {
        if (abstractC22394w == null) {
            return null;
        }
        return new C22519v(resources, abstractC22394w);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: a */
    public int mo8163a() {
        return this.f62409b.mo8163a();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: b */
    public void mo8162b() {
        this.f62409b.mo8162b();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: c */
    public Class<BitmapDrawable> mo8161c() {
        return BitmapDrawable.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public BitmapDrawable get() {
        return new BitmapDrawable(this.f62408a, this.f62409b.get());
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s
    public void initialize() {
        AbstractC22394w<Bitmap> abstractC22394w = this.f62409b;
        if (abstractC22394w instanceof AbstractC22389s) {
            ((AbstractC22389s) abstractC22394w).initialize();
        }
    }
}
