package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public f f1318b;

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<e> f1317a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private a f1319c = new a();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static int f1320a = 0;

        /* renamed from: b  reason: collision with root package name */
        public static int f1321b = 1;

        /* renamed from: c  reason: collision with root package name */
        public static int f1322c = 2;

        /* renamed from: d  reason: collision with root package name */
        public e.a f1323d;
        public e.a e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public boolean l;
        public int m;
    }

    /* renamed from: androidx.constraintlayout.a.a.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/b$b.class */
    public interface AbstractC0032b {
        void a();

        void a(e eVar, a aVar);
    }

    public b(f fVar) {
        this.f1318b = fVar;
    }

    public final void a(f fVar) {
        this.f1317a.clear();
        int size = fVar.be.size();
        for (int i = 0; i < size; i++) {
            e eVar = fVar.be.get(i);
            if (eVar.R[0] == e.a.MATCH_CONSTRAINT || eVar.R[1] == e.a.MATCH_CONSTRAINT) {
                this.f1317a.add(eVar);
            }
        }
        fVar.d();
    }

    public final void a(f fVar, int i, int i2) {
        int q = fVar.q();
        int r = fVar.r();
        fVar.i(0);
        fVar.j(0);
        fVar.g(i);
        fVar.h(i2);
        fVar.i(q);
        fVar.j(r);
        this.f1318b.z();
    }

    public final boolean a(AbstractC0032b bVar, e eVar, int i) {
        this.f1319c.f1323d = eVar.R[0];
        this.f1319c.e = eVar.R[1];
        this.f1319c.f = eVar.o();
        this.f1319c.g = eVar.p();
        this.f1319c.l = false;
        this.f1319c.m = i;
        boolean z = this.f1319c.f1323d == e.a.MATCH_CONSTRAINT;
        boolean z2 = this.f1319c.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.V > BitmapDescriptorFactory.HUE_RED;
        boolean z4 = z2 && eVar.V > BitmapDescriptorFactory.HUE_RED;
        if (z3 && eVar.q[0] == 4) {
            this.f1319c.f1323d = e.a.FIXED;
        }
        if (z4 && eVar.q[1] == 4) {
            this.f1319c.e = e.a.FIXED;
        }
        bVar.a(eVar, this.f1319c);
        eVar.g(this.f1319c.h);
        eVar.h(this.f1319c.i);
        eVar.C = this.f1319c.k;
        eVar.k(this.f1319c.j);
        this.f1319c.m = a.f1320a;
        return this.f1319c.l;
    }
}
