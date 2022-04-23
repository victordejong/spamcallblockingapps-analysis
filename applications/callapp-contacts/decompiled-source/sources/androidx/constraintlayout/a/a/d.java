package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.a.i;
import androidx.constraintlayout.a.a.a.o;
import androidx.constraintlayout.a.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    int f1364b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1365c;

    /* renamed from: d  reason: collision with root package name */
    public final e f1366d;
    public final a e;
    public d f;
    public h i;

    /* renamed from: a  reason: collision with root package name */
    public HashSet<d> f1363a = null;
    public int g = 0;
    int h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.a.a.d$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1367a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f1367a = iArr;
            try {
                iArr[a.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1367a[a.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1367a[a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1367a[a.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1367a[a.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1367a[a.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1367a[a.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1367a[a.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1367a[a.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/d$a.class */
    public enum a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public d(e eVar, a aVar) {
        this.f1366d = eVar;
        this.e = aVar;
    }

    public final void a(int i) {
        this.f1364b = i;
        this.f1365c = true;
    }

    public final void a(int i, ArrayList<o> arrayList, o oVar) {
        HashSet<d> hashSet = this.f1363a;
        if (hashSet != null) {
            Iterator<d> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                i.a(it2.next().f1366d, i, arrayList, oVar);
            }
        }
    }

    public final boolean a() {
        HashSet<d> hashSet = this.f1363a;
        return hashSet != null && hashSet.size() > 0;
    }

    public final boolean a(d dVar) {
        boolean z = false;
        boolean z2 = false;
        if (dVar == null) {
            return false;
        }
        a aVar = dVar.e;
        a aVar2 = this.e;
        if (aVar != aVar2) {
            switch (AnonymousClass1.f1367a[this.e.ordinal()]) {
                case 1:
                    return (aVar == a.BASELINE || aVar == a.CENTER_X || aVar == a.CENTER_Y) ? false : true;
                case 2:
                case 3:
                    boolean z3 = aVar == a.LEFT || aVar == a.RIGHT;
                    z = z3;
                    if (dVar.f1366d instanceof h) {
                        if (z3 || aVar == a.CENTER_X) {
                            z = true;
                        }
                    }
                    return z;
                case 4:
                case 5:
                    boolean z4 = aVar == a.TOP || aVar == a.BOTTOM;
                    z2 = z4;
                    if (dVar.f1366d instanceof h) {
                        if (z4 || aVar == a.CENTER_Y) {
                            z2 = true;
                        }
                    }
                    return z2;
                case 6:
                case 7:
                case 8:
                case 9:
                    return false;
                default:
                    throw new AssertionError(this.e.name());
            }
        } else if (aVar2 == a.BASELINE) {
            return dVar.f1366d.C && this.f1366d.C;
        } else {
            return true;
        }
    }

    public final boolean a(d dVar, int i) {
        return a(dVar, i, -1, false);
    }

    public final boolean a(d dVar, int i, int i2, boolean z) {
        if (dVar == null) {
            f();
            return true;
        } else if (!z && !a(dVar)) {
            return false;
        } else {
            this.f = dVar;
            if (dVar.f1363a == null) {
                dVar.f1363a = new HashSet<>();
            }
            HashSet<d> hashSet = this.f.f1363a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            if (i > 0) {
                this.g = i;
            } else {
                this.g = 0;
            }
            this.h = i2;
            return true;
        }
    }

    public final void b(int i) {
        if (g()) {
            this.h = i;
        }
    }

    public final boolean b() {
        HashSet<d> hashSet = this.f1363a;
        if (hashSet == null) {
            return false;
        }
        Iterator<d> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            if (it2.next().h().g()) {
                return true;
            }
        }
        return false;
    }

    public final int c() {
        if (!this.f1365c) {
            return 0;
        }
        return this.f1364b;
    }

    public final void d() {
        h hVar = this.i;
        if (hVar == null) {
            this.i = new h(h.a.UNRESTRICTED, (String) null);
        } else {
            hVar.b();
        }
    }

    public final int e() {
        d dVar;
        if (this.f1366d.ak == 8) {
            return 0;
        }
        return (this.h < 0 || (dVar = this.f) == null || dVar.f1366d.ak != 8) ? this.g : this.h;
    }

    public final void f() {
        HashSet<d> hashSet;
        d dVar = this.f;
        if (!(dVar == null || (hashSet = dVar.f1363a) == null)) {
            hashSet.remove(this);
            if (this.f.f1363a.size() == 0) {
                this.f.f1363a = null;
            }
        }
        this.f1363a = null;
        this.f = null;
        this.g = 0;
        this.h = -1;
        this.f1365c = false;
        this.f1364b = 0;
    }

    public final boolean g() {
        return this.f != null;
    }

    public final d h() {
        switch (AnonymousClass1.f1367a[this.e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f1366d.J;
            case 3:
                return this.f1366d.H;
            case 4:
                return this.f1366d.K;
            case 5:
                return this.f1366d.I;
            default:
                throw new AssertionError(this.e.name());
        }
    }

    public final String toString() {
        return this.f1366d.al + ":" + this.e.toString();
    }
}
