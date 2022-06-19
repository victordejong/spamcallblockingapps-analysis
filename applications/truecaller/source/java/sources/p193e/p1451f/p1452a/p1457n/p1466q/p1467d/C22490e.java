package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.n.q.d.e */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e.class */
public class C22490e implements AbstractC22394w<Bitmap>, AbstractC22389s {

    /* renamed from: a */
    public final Bitmap f62358a;

    /* renamed from: b */
    public final AbstractC22303d f62359b;

    public C22490e(Bitmap bitmap, AbstractC22303d abstractC22303d) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        this.f62358a = bitmap;
        Objects.requireNonNull(abstractC22303d, "BitmapPool must not be null");
        this.f62359b = abstractC22303d;
    }

    /* renamed from: d */
    public static C22490e m8203d(Bitmap bitmap, AbstractC22303d abstractC22303d) {
        if (bitmap == null) {
            return null;
        }
        return new C22490e(bitmap, abstractC22303d);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: a */
    public int mo8163a() {
        return C22623j.m8020d(this.f62358a);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: b */
    public void mo8162b() {
        this.f62359b.mo8327c(this.f62358a);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    /* renamed from: c */
    public Class<Bitmap> mo8161c() {
        return Bitmap.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w
    public Bitmap get() {
        return this.f62358a;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22389s
    public void initialize() {
        this.f62358a.prepareToDraw();
    }
}
