package p1727n3.p1909z;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.atomic.AtomicBoolean;
import p1727n3.p1909z.p1910j3.C27578g;
import q3.a.i0;
import q3.a.x2.d1;
import q3.a.x2.f;
import s1.u.w;
import s1.w.d;
import s1.z.c.l;
/* renamed from: n3.z.h */
/* loaded from: classes-dex2jar.jar:n3/z/h.class */
public final class C27571h<T> {

    /* renamed from: a */
    public final C27614z<T> f77691a;

    /* renamed from: c */
    public final C27578g<w<AbstractC27557c1<T>>> f77693c;

    /* renamed from: b */
    public final AtomicBoolean f77692b = new AtomicBoolean(false);

    /* renamed from: d */
    public final f<AbstractC27557c1<T>> f77694d = MediaSessionCompat.m43320A1(new a(this, (d) null));

    public C27571h(f<? extends AbstractC27557c1<T>> fVar, i0 i0Var) {
        l.e(fVar, "src");
        l.e(i0Var, "scope");
        C27614z<T> c27614z = new C27614z<>();
        this.f77691a = c27614z;
        this.f77693c = new C27578g<>(i0Var, 0, new d1(new b(this, fVar, (d) null)), false, new c(c27614z), true, 8);
    }
}
