package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import n3.y.b.a.t0.d;
import n3.y.b.a.t0.m;
import n3.y.b.a.t0.s;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27342j0;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.AbstractC27383e;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.AbstractC27387g;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27386f;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27389h;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27401b;
/* renamed from: n3.y.b.a.z */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/z.class */
public final class C27464z {

    /* renamed from: a */
    public final s f77293a;

    /* renamed from: b */
    public final Object f77294b;

    /* renamed from: c */
    public final AbstractC27342j0[] f77295c;

    /* renamed from: d */
    public boolean f77296d;

    /* renamed from: e */
    public boolean f77297e;

    /* renamed from: f */
    public C27071a0 f77298f;

    /* renamed from: g */
    public final boolean[] f77299g;

    /* renamed from: h */
    public final b[] f77300h;

    /* renamed from: i */
    public final AbstractC27387g f77301i;

    /* renamed from: j */
    public final AbstractC27371t f77302j;

    /* renamed from: k */
    public C27464z f77303k;

    /* renamed from: l */
    public TrackGroupArray f77304l = TrackGroupArray.f1041d;

    /* renamed from: m */
    public C27389h f77305m;

    /* renamed from: n */
    public long f77306n;

    public C27464z(b[] bVarArr, long j, AbstractC27387g abstractC27387g, AbstractC27401b abstractC27401b, AbstractC27371t abstractC27371t, C27071a0 c27071a0, C27389h c27389h) {
        this.f77300h = bVarArr;
        this.f77306n = j;
        this.f77301i = abstractC27387g;
        this.f77302j = abstractC27371t;
        AbstractC27371t.C27372a c27372a = c27071a0.f75637a;
        this.f77294b = c27372a.f77037a;
        this.f77298f = c27071a0;
        this.f77305m = c27389h;
        this.f77295c = new AbstractC27342j0[bVarArr.length];
        this.f77299g = new boolean[bVarArr.length];
        long j2 = c27071a0.f75638b;
        long j3 = c27071a0.f75640d;
        d m443e = abstractC27371t.m443e(c27372a, abstractC27401b, j2);
        d dVar = m443e;
        if (j3 != -9223372036854775807L) {
            dVar = m443e;
            if (j3 != Long.MIN_VALUE) {
                dVar = new d(m443e, true, 0L, j3);
            }
        }
        this.f77293a = dVar;
    }

    /* renamed from: a */
    public long m243a(C27389h c27389h, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c27389h.f77095a) {
                break;
            }
            boolean[] zArr2 = this.f77299g;
            if (z || !c27389h.m413a(this.f77305m, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        AbstractC27342j0[] abstractC27342j0Arr = this.f77295c;
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f77300h;
            if (i2 >= bVarArr.length) {
                break;
            }
            if (bVarArr[i2].a == 6) {
                abstractC27342j0Arr[i2] = null;
            }
            i2++;
        }
        m242b();
        this.f77305m = c27389h;
        m241c();
        C27386f c27386f = c27389h.f77097c;
        long r = this.f77293a.r(c27386f.m416a(), this.f77299g, this.f77295c, zArr, j);
        AbstractC27342j0[] abstractC27342j0Arr2 = this.f77295c;
        int i3 = 0;
        while (true) {
            b[] bVarArr2 = this.f77300h;
            if (i3 >= bVarArr2.length) {
                break;
            }
            if (bVarArr2[i3].a == 6 && this.f77305m.m412b(i3)) {
                abstractC27342j0Arr2[i3] = new m();
            }
            i3++;
        }
        this.f77297e = false;
        int i4 = 0;
        while (true) {
            AbstractC27342j0[] abstractC27342j0Arr3 = this.f77295c;
            if (i4 < abstractC27342j0Arr3.length) {
                if (abstractC27342j0Arr3[i4] != null) {
                    MediaSessionCompat.m43184y(c27389h.m412b(i4));
                    if (this.f77300h[i4].a != 6) {
                        this.f77297e = true;
                    }
                } else {
                    MediaSessionCompat.m43184y(c27386f.f77091b[i4] == null);
                }
                i4++;
            } else {
                return r;
            }
        }
    }

    /* renamed from: b */
    public final void m242b() {
        if (!m238f()) {
            return;
        }
        int i = 0;
        while (true) {
            C27389h c27389h = this.f77305m;
            if (i >= c27389h.f77095a) {
                return;
            }
            boolean m412b = c27389h.m412b(i);
            AbstractC27383e abstractC27383e = this.f77305m.f77097c.f77091b[i];
            if (m412b && abstractC27383e != null) {
                abstractC27383e.m431a();
            }
            i++;
        }
    }

    /* renamed from: c */
    public final void m241c() {
        if (!m238f()) {
            return;
        }
        int i = 0;
        while (true) {
            C27389h c27389h = this.f77305m;
            if (i >= c27389h.f77095a) {
                return;
            }
            boolean m412b = c27389h.m412b(i);
            AbstractC27383e abstractC27383e = this.f77305m.f77097c.f77091b[i];
            if (m412b && abstractC27383e != null) {
                abstractC27383e.m430b();
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: d */
    public long m240d() {
        if (!this.f77296d) {
            return this.f77298f.f75638b;
        }
        char b = this.f77297e ? this.f77293a.b() : (char) 0;
        char c = b;
        if (b == Long.MIN_VALUE) {
            c = this.f77298f.f75641e;
        }
        return c;
    }

    /* renamed from: e */
    public boolean m239e() {
        return this.f77296d && (!this.f77297e || this.f77293a.b() == Long.MIN_VALUE);
    }

    /* renamed from: f */
    public final boolean m238f() {
        return this.f77303k == null;
    }

    /* renamed from: g */
    public void m237g() {
        m242b();
        long j = this.f77298f.f75640d;
        AbstractC27371t abstractC27371t = this.f77302j;
        d dVar = this.f77293a;
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                abstractC27371t.m445c(dVar);
            } else {
                abstractC27371t.m445c(dVar.a);
            }
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: h */
    public C27389h m236h(float f, AbstractC27096l0 abstractC27096l0) throws C27080f {
        AbstractC27383e[] m416a;
        C27389h m414b = this.f77301i.m414b(this.f77300h, this.f77304l, this.f77298f.f75637a, abstractC27096l0);
        for (AbstractC27383e abstractC27383e : m414b.f77097c.m416a()) {
            if (abstractC27383e != null) {
                abstractC27383e.m423i(f);
            }
        }
        return m414b;
    }
}
