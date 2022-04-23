package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.b;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import androidx.constraintlayout.a.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/o.class */
public final class o {

    /* renamed from: b  reason: collision with root package name */
    static int f1344b;

    /* renamed from: c  reason: collision with root package name */
    int f1346c;
    public int e;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<e> f1345a = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public boolean f1347d = false;
    ArrayList<a> f = null;
    private int g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/o$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<e> f1348a;

        /* renamed from: b  reason: collision with root package name */
        int f1349b;

        /* renamed from: c  reason: collision with root package name */
        int f1350c;

        /* renamed from: d  reason: collision with root package name */
        int f1351d;
        int e;
        int f;
        int g;

        public a(e eVar, d dVar, int i) {
            this.f1348a = new WeakReference<>(eVar);
            this.f1349b = d.b(eVar.H);
            this.f1350c = d.b(eVar.I);
            this.f1351d = d.b(eVar.J);
            this.e = d.b(eVar.K);
            this.f = d.b(eVar.L);
            this.g = i;
        }
    }

    public o(int i) {
        this.f1346c = -1;
        this.e = 0;
        int i2 = f1344b;
        f1344b = i2 + 1;
        this.f1346c = i2;
        this.e = i;
    }

    private int a(d dVar, ArrayList<e> arrayList, int i) {
        int b2;
        int b3;
        f fVar = (f) arrayList.get(0).S;
        dVar.b();
        fVar.a(dVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).a(dVar, false);
        }
        if (i == 0 && fVar.aO > 0) {
            b.a(fVar, dVar, arrayList, 0);
        }
        if (i == 1 && fVar.aP > 0) {
            b.a(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.e();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f.add(new a(arrayList.get(i3), dVar, i));
        }
        if (i == 0) {
            b2 = d.b(fVar.H);
            b3 = d.b(fVar.J);
            dVar.b();
        } else {
            b2 = d.b(fVar.I);
            b3 = d.b(fVar.K);
            dVar.b();
        }
        return b3 - b2;
    }

    public final int a(d dVar, int i) {
        if (this.f1345a.size() == 0) {
            return 0;
        }
        return a(dVar, this.f1345a, i);
    }

    public final void a(int i, o oVar) {
        Iterator<e> it2 = this.f1345a.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            oVar.a(next);
            if (i == 0) {
                next.aG = oVar.f1346c;
            } else {
                next.aH = oVar.f1346c;
            }
        }
        this.g = oVar.f1346c;
    }

    public final void a(ArrayList<o> arrayList) {
        int size = this.f1345a.size();
        if (this.g != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                o oVar = arrayList.get(i);
                if (this.g == oVar.f1346c) {
                    a(this.e, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final boolean a(e eVar) {
        if (this.f1345a.contains(eVar)) {
            return false;
        }
        this.f1345a.add(eVar);
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.e;
        sb.append(i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown");
        sb.append(" [");
        sb.append(this.f1346c);
        sb.append("] <");
        String sb2 = sb.toString();
        Iterator<e> it2 = this.f1345a.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            sb2 = sb2 + StringUtils.SPACE + next.al;
        }
        return sb2 + " >";
    }
}
