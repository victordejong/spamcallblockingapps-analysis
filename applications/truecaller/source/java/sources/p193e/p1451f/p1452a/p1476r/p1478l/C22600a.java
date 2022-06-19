package p193e.p1451f.p1452a.p1476r.p1478l;

import android.graphics.drawable.Drawable;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
/* renamed from: e.f.a.r.l.a */
/* loaded from: classes-dex2jar.jar:e/f/a/r/l/a.class */
public class C22600a implements AbstractC22606e<Drawable> {

    /* renamed from: a */
    public final int f62613a;

    /* renamed from: b */
    public C22601b f62614b;

    public C22600a(int i, boolean z) {
        this.f62613a = i;
    }

    @Override // p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22606e
    /* renamed from: a */
    public AbstractC22604d<Drawable> mo8037a(EnumC22258a enumC22258a, boolean z) {
        C22602c<?> c22602c;
        if (enumC22258a == EnumC22258a.MEMORY_CACHE) {
            c22602c = C22602c.f62617a;
        } else {
            if (this.f62614b == null) {
                this.f62614b = new C22601b(this.f62613a, false);
            }
            c22602c = this.f62614b;
        }
        return c22602c;
    }
}
