package androidx.e.a;

import androidx.e.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/e/a/e.class */
public final class e extends b<e> {
    public f w;
    private float x;
    private boolean y;

    public e(d dVar) {
        super(dVar);
        this.w = null;
        this.x = Float.MAX_VALUE;
        this.y = false;
    }

    public <K> e(K k, c<K> cVar) {
        super(k, cVar);
        this.w = null;
        this.x = Float.MAX_VALUE;
        this.y = false;
    }

    public <K> e(K k, c<K> cVar, float f) {
        super(k, cVar);
        this.w = null;
        this.x = Float.MAX_VALUE;
        this.y = false;
        this.w = new f(f);
    }

    @Override // androidx.e.a.b
    public final void a() {
        f fVar = this.w;
        if (fVar != null) {
            double d2 = (float) fVar.f;
            if (d2 > this.u) {
                throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
            } else if (d2 >= this.v) {
                f fVar2 = this.w;
                fVar2.f2136d = Math.abs(c());
                fVar2.e = fVar2.f2136d * 62.5d;
                super.a();
            } else {
                throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
            }
        } else {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
    }

    public final void a(float f) {
        if (this.t) {
            this.x = f;
            return;
        }
        if (this.w == null) {
            this.w = new f(f);
        }
        this.w.f = f;
        a();
    }

    @Override // androidx.e.a.b
    final boolean b(long j) {
        if (this.y) {
            float f = this.x;
            if (f != Float.MAX_VALUE) {
                this.w.f = f;
                this.x = Float.MAX_VALUE;
            }
            this.p = (float) this.w.f;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.y = false;
            return true;
        }
        if (this.x != Float.MAX_VALUE) {
            long j2 = j / 2;
            b.a a2 = this.w.a(this.p, this.o, j2);
            this.w.f = this.x;
            this.x = Float.MAX_VALUE;
            b.a a3 = this.w.a(a2.f2129a, a2.f2130b, j2);
            this.p = a3.f2129a;
            this.o = a3.f2130b;
        } else {
            b.a a4 = this.w.a(this.p, this.o, j);
            this.p = a4.f2129a;
            this.o = a4.f2130b;
        }
        this.p = Math.max(this.p, this.v);
        this.p = Math.min(this.p, this.u);
        float f2 = this.p;
        float f3 = this.o;
        f fVar = this.w;
        if (!(((double) Math.abs(f3)) < fVar.e && ((double) Math.abs(f2 - ((float) fVar.f))) < fVar.f2136d)) {
            return false;
        }
        this.p = (float) this.w.f;
        this.o = BitmapDescriptorFactory.HUE_RED;
        return true;
    }
}
