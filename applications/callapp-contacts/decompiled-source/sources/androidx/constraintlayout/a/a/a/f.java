package androidx.constraintlayout.a.a.a;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/f.class */
public class f implements d {

    /* renamed from: d  reason: collision with root package name */
    p f1333d;
    int f;
    public int g;

    /* renamed from: a  reason: collision with root package name */
    public d f1330a = null;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1331b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1332c = false;
    a e = a.UNKNOWN;
    int h = 1;
    g i = null;
    public boolean j = false;
    List<d> k = new ArrayList();
    List<f> l = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/f$a.class */
    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.f1333d = pVar;
    }

    public final void a() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.f1332c = false;
        this.f1331b = false;
    }

    public void a(int i) {
        if (!this.j) {
            this.j = true;
            this.g = i;
            for (d dVar : this.k) {
                dVar.d();
            }
        }
    }

    public final void a(d dVar) {
        this.k.add(dVar);
        if (this.j) {
            dVar.d();
        }
    }

    @Override // androidx.constraintlayout.a.a.a.d
    public final void d() {
        for (f fVar : this.l) {
            if (!fVar.j) {
                return;
            }
        }
        this.f1332c = true;
        d dVar = this.f1330a;
        if (dVar != null) {
            dVar.d();
        }
        if (this.f1331b) {
            this.f1333d.d();
            return;
        }
        f fVar2 = null;
        int i = 0;
        for (f fVar3 : this.l) {
            if (!(fVar3 instanceof g)) {
                i++;
                fVar2 = fVar3;
            }
        }
        if (fVar2 != null && i == 1 && fVar2.j) {
            g gVar = this.i;
            if (gVar != null) {
                if (gVar.j) {
                    this.f = this.h * this.i.g;
                } else {
                    return;
                }
            }
            a(fVar2.g + this.f);
        }
        d dVar2 = this.f1330a;
        if (dVar2 != null) {
            dVar2.d();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1333d.f1353d.al);
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
