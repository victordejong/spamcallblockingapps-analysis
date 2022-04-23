package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.motion.a.b;
import androidx.constraintlayout.motion.a.c;
import androidx.constraintlayout.motion.widget.f;
import androidx.constraintlayout.motion.widget.q;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.a;
import androidx.constraintlayout.widget.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/m.class */
public final class m {
    private HashMap<String, r> A;
    private k[] B;

    /* renamed from: a  reason: collision with root package name */
    View f1521a;

    /* renamed from: b  reason: collision with root package name */
    int f1522b;

    /* renamed from: c  reason: collision with root package name */
    String f1523c;
    public b[] g;
    public b h;
    public int[] l;
    public double[] m;
    public double[] n;
    public HashMap<String, q> q;
    public HashMap<String, f> r;
    private String[] v;
    private int[] w;
    private int t = -1;

    /* renamed from: d  reason: collision with root package name */
    public o f1524d = new o();
    public o e = new o();
    l f = new l();
    private l u = new l();
    float i = Float.NaN;
    float j = BitmapDescriptorFactory.HUE_RED;
    float k = 1.0f;
    private int x = 4;
    private float[] y = new float[4];
    private ArrayList<o> z = new ArrayList<>();
    public float[] o = new float[1];
    ArrayList<b> p = new ArrayList<>();
    int s = b.f1492a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(View view) {
        this.f1521a = view;
        this.f1522b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f1523c = ((ConstraintLayout.LayoutParams) layoutParams).V;
        }
    }

    private void a(o oVar) {
        oVar.a((int) this.f1521a.getX(), (int) this.f1521a.getY(), this.f1521a.getWidth(), this.f1521a.getHeight());
    }

    private float b() {
        float f;
        float[] fArr = new float[2];
        double d2 = 0.0d;
        double d3 = 0.0d;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < 100; i++) {
            float f3 = i * 0.01010101f;
            double d4 = f3;
            c cVar = this.f1524d.f1526b;
            float f4 = Float.NaN;
            Iterator<o> it2 = this.z.iterator();
            float f5 = BitmapDescriptorFactory.HUE_RED;
            while (it2.hasNext()) {
                o next = it2.next();
                if (next.f1526b != null) {
                    if (next.f1528d < f3) {
                        cVar = next.f1526b;
                        f5 = next.f1528d;
                    } else if (Float.isNaN(f4)) {
                        f4 = next.f1528d;
                    }
                }
            }
            if (cVar != null) {
                float f6 = f4;
                if (Float.isNaN(f4)) {
                    f6 = 1.0f;
                }
                d4 = (((float) cVar.a((f3 - f5) / f)) * (f6 - f5)) + f5;
            }
            this.g[0].a(d4, this.m);
            this.f1524d.a(this.l, this.m, fArr, 0);
            f2 = f2;
            if (i > 0) {
                f2 = (float) (f2 + Math.hypot(d3 - fArr[1], d2 - fArr[0]));
            }
            d2 = fArr[0];
            d3 = fArr[1];
        }
        return f2;
    }

    public final float a(float f, float[] fArr) {
        float f2;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = 1.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f5 = this.k;
            f2 = f;
            if (f5 != 1.0d) {
                float f6 = this.j;
                float f7 = f;
                if (f < f6) {
                    f7 = BitmapDescriptorFactory.HUE_RED;
                }
                f2 = f7;
                if (f7 > f6) {
                    f2 = f7;
                    if (f7 < 1.0d) {
                        f2 = (f7 - f6) * f5;
                    }
                }
            }
        }
        c cVar = this.f1524d.f1526b;
        f4 = Float.NaN;
        Iterator<o> it2 = this.z.iterator();
        while (it2.hasNext()) {
            o next = it2.next();
            if (next.f1526b != null) {
                if (next.f1528d < f2) {
                    cVar = next.f1526b;
                    f3 = next.f1528d;
                } else if (Float.isNaN(f4)) {
                    f4 = next.f1528d;
                }
            }
        }
        float f8 = f2;
        if (cVar != null) {
            if (Float.isNaN(f4)) {
            }
            float f9 = f4 - f3;
            double d2 = (f2 - f3) / f9;
            float a2 = (((float) cVar.a(d2)) * f9) + f3;
            f8 = a2;
            if (fArr != null) {
                fArr[0] = (float) cVar.b(d2);
                f8 = a2;
            }
        }
        return f8;
    }

    public final int a() {
        int i = this.f1524d.f1527c;
        Iterator<o> it2 = this.z.iterator();
        while (it2.hasNext()) {
            i = Math.max(i, it2.next().f1527c);
        }
        return Math.max(i, this.e.f1527c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] a2 = this.g[0].a();
        if (iArr != null) {
            Iterator<o> it2 = this.z.iterator();
            int i = 0;
            while (it2.hasNext()) {
                iArr[i] = it2.next().n;
                i++;
            }
        }
        int i2 = 0;
        for (double d2 : a2) {
            this.g[0].a(d2, this.m);
            this.f1524d.a(this.l, this.m, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o a(int i) {
        return this.z.get(i);
    }

    public final void a(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float a2 = a(f, this.o);
        b[] bVarArr = this.g;
        int i = 0;
        if (bVarArr != null) {
            b bVar = bVarArr[0];
            double d2 = a2;
            bVar.b(d2, this.n);
            this.g[0].a(d2, this.m);
            float f4 = this.o[0];
            while (true) {
                dArr = this.n;
                if (i >= dArr.length) {
                    break;
                }
                dArr[i] = dArr[i] * f4;
                i++;
            }
            b bVar2 = this.h;
            if (bVar2 != null) {
                double[] dArr2 = this.m;
                if (dArr2.length > 0) {
                    bVar2.a(d2, dArr2);
                    this.h.b(d2, this.n);
                    o.a(f2, f3, fArr, this.l, this.n);
                    return;
                }
                return;
            }
            o.a(f2, f3, fArr, this.l, dArr);
            return;
        }
        float f5 = this.e.f - this.f1524d.f;
        float f6 = this.e.g - this.f1524d.g;
        float f7 = this.e.h;
        float f8 = this.f1524d.h;
        float f9 = this.e.i;
        float f10 = this.f1524d.i;
        fArr[0] = (f5 * (1.0f - f2)) + (((f7 - f8) + f5) * f2);
        fArr[1] = (f6 * (1.0f - f3)) + (((f9 - f10) + f6) * f3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(int i, int i2, long j) {
        ArrayList arrayList;
        Object obj;
        Object obj2;
        String str;
        Object obj3;
        String str2;
        String str3;
        HashSet<String> hashSet;
        Object obj4;
        f fVar;
        char c2;
        r rVar;
        a aVar;
        q qVar;
        Object obj5;
        char c3;
        a aVar2;
        new HashSet();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashSet<String> hashSet4 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.s != b.f1492a) {
            this.f1524d.l = this.s;
        }
        l lVar = this.f;
        l lVar2 = this.u;
        if (l.a(lVar.f1517a, lVar2.f1517a)) {
            hashSet3.add("alpha");
        }
        if (l.a(lVar.e, lVar2.e)) {
            hashSet3.add("elevation");
        }
        if (lVar.f1519c != lVar2.f1519c && lVar.f1518b == 0 && (lVar.f1519c == 0 || lVar2.f1519c == 0)) {
            hashSet3.add("alpha");
        }
        String str4 = "rotation";
        if (l.a(lVar.f, lVar2.f)) {
            hashSet3.add("rotation");
        }
        if (!Float.isNaN(lVar.p) || !Float.isNaN(lVar2.p)) {
            hashSet3.add("transitionPathRotate");
        }
        if (!Float.isNaN(lVar.q) || !Float.isNaN(lVar2.q)) {
            hashSet3.add(EventConstants.PROGRESS);
        }
        if (l.a(lVar.g, lVar2.g)) {
            hashSet3.add("rotationX");
        }
        if (l.a(lVar.h, lVar2.h)) {
            hashSet3.add("rotationY");
        }
        if (l.a(lVar.k, lVar2.k)) {
            hashSet3.add("transformPivotX");
        }
        if (l.a(lVar.l, lVar2.l)) {
            hashSet3.add("transformPivotY");
        }
        String str5 = "scaleX";
        if (l.a(lVar.i, lVar2.i)) {
            hashSet3.add("scaleX");
        }
        if (l.a(lVar.j, lVar2.j)) {
            hashSet3.add("scaleY");
        }
        if (l.a(lVar.m, lVar2.m)) {
            hashSet3.add("translationX");
        }
        String str6 = "translationY";
        if (l.a(lVar.n, lVar2.n)) {
            hashSet3.add("translationY");
        }
        String str7 = "translationZ";
        if (l.a(lVar.o, lVar2.o)) {
            hashSet3.add("translationZ");
        }
        ArrayList<b> arrayList2 = this.p;
        if (arrayList2 != null) {
            Iterator<b> it2 = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (it2.hasNext()) {
                b next = it2.next();
                if (next instanceof h) {
                    h hVar = (h) next;
                    o oVar = new o(i, i2, hVar, this.f1524d, this.e);
                    int binarySearch = Collections.binarySearch(this.z, oVar);
                    if (binarySearch == 0) {
                        Log.e("MotionController", " KeyPath positon \"" + oVar.e + "\" outside of range");
                    }
                    this.z.add((-binarySearch) - 1, oVar);
                    arrayList3 = arrayList3;
                    if (hVar.q != b.f1492a) {
                        this.t = hVar.q;
                        arrayList3 = arrayList3;
                    }
                } else if (next instanceof e) {
                    next.a(hashSet4);
                    arrayList3 = arrayList3;
                } else if (next instanceof j) {
                    next.a(hashSet2);
                    arrayList3 = arrayList3;
                } else if (next instanceof k) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add((k) next);
                    arrayList3 = arrayList3;
                } else {
                    next.b(hashMap);
                    next.a(hashSet3);
                    arrayList3 = arrayList3;
                }
            }
            arrayList = arrayList3;
        } else {
            str7 = "translationZ";
            str6 = "translationY";
            str5 = "scaleX";
            arrayList = null;
        }
        if (arrayList != null) {
            this.B = (k[]) arrayList.toArray(new k[0]);
        }
        if (!hashSet3.isEmpty()) {
            this.q = new HashMap<>();
            Iterator<String> it3 = hashSet3.iterator();
            Object obj6 = "translationX";
            Object obj7 = "rotationY";
            Object obj8 = "rotationX";
            HashSet<String> hashSet5 = hashSet4;
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (!next2.startsWith("CUSTOM,")) {
                    next2.hashCode();
                    switch (next2.hashCode()) {
                        case -1249320806:
                            if (next2.equals(obj8)) {
                                c3 = 0;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -1249320805:
                            if (next2.equals(obj7)) {
                                c3 = 1;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -1225497657:
                            if (next2.equals(obj6)) {
                                c3 = 2;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -1225497656:
                            if (next2.equals(str6)) {
                                c3 = 3;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -1225497655:
                            if (next2.equals(str7)) {
                                c3 = 4;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -1001078227:
                            if (next2.equals(EventConstants.PROGRESS)) {
                                c3 = 5;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -908189618:
                            if (next2.equals(str5)) {
                                c3 = 6;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -908189617:
                            if (next2.equals("scaleY")) {
                                c3 = 7;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -797520672:
                            if (next2.equals("waveVariesBy")) {
                                c3 = '\b';
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -760884510:
                            if (next2.equals("transformPivotX")) {
                                c3 = '\t';
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -760884509:
                            if (next2.equals("transformPivotY")) {
                                c3 = '\n';
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -40300674:
                            if (next2.equals("rotation")) {
                                c3 = 11;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case -4379043:
                            if (next2.equals("elevation")) {
                                c3 = '\f';
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case 37232917:
                            if (next2.equals("transitionPathRotate")) {
                                c3 = '\r';
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case 92909918:
                            if (next2.equals("alpha")) {
                                c3 = 14;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        case 156108012:
                            if (next2.equals("waveOffset")) {
                                c3 = 15;
                                obj5 = obj6;
                                break;
                            }
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                        default:
                            c3 = 65535;
                            obj5 = obj6;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            qVar = new q.i();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 1:
                            qVar = new q.j();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 2:
                            qVar = new q.n();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 3:
                            qVar = new q.o();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 4:
                            qVar = new q.p();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 5:
                            qVar = new q.g();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 6:
                            qVar = new q.k();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 7:
                            qVar = new q.l();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case '\b':
                            qVar = new q.a();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case '\t':
                            qVar = new q.e();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case '\n':
                            qVar = new q.f();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 11:
                            qVar = new q.h();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case '\f':
                            qVar = new q.c();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case '\r':
                            qVar = new q.d();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 14:
                            qVar = new q.a();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        case 15:
                            qVar = new q.a();
                            obj7 = obj7;
                            obj6 = obj5;
                            obj8 = obj8;
                            hashSet5 = hashSet5;
                            break;
                        default:
                            obj8 = obj8;
                            qVar = null;
                            obj7 = obj7;
                            obj6 = obj5;
                            hashSet5 = hashSet5;
                            break;
                    }
                } else {
                    SparseArray sparseArray = new SparseArray();
                    String str8 = next2.split(",")[1];
                    Iterator<b> it4 = this.p.iterator();
                    while (it4.hasNext()) {
                        b next3 = it4.next();
                        if (!(next3.f == null || (aVar2 = next3.f.get(str8)) == null)) {
                            sparseArray.append(next3.f1493b, aVar2);
                        }
                    }
                    qVar = new q.b(next2, sparseArray);
                    obj7 = obj7;
                    obj6 = obj6;
                    obj8 = obj8;
                    hashSet5 = hashSet5;
                }
                if (qVar != null) {
                    qVar.f1545d = next2;
                    this.q.put(next2, qVar);
                }
            }
            ArrayList<b> arrayList4 = this.p;
            if (arrayList4 != null) {
                Iterator<b> it5 = arrayList4.iterator();
                while (it5.hasNext()) {
                    b next4 = it5.next();
                    if (next4 instanceof c) {
                        next4.a(this.q);
                    }
                }
            }
            this.f.a(this.q, 0);
            this.u.a(this.q, 100);
            Iterator<String> it6 = this.q.keySet().iterator();
            while (true) {
                str3 = str5;
                obj3 = EventConstants.PROGRESS;
                str = str7;
                obj4 = obj7;
                obj2 = obj6;
                obj = obj8;
                hashSet = hashSet5;
                str2 = str6;
                if (it6.hasNext()) {
                    String next5 = it6.next();
                    this.q.get(next5).a(hashMap.containsKey(next5) ? hashMap.get(next5).intValue() : 0);
                }
            }
        } else {
            str = str7;
            obj = "rotationX";
            str2 = str6;
            hashSet = hashSet4;
            obj2 = "translationX";
            obj4 = "rotationY";
            obj3 = EventConstants.PROGRESS;
            str3 = str5;
        }
        if (!hashSet2.isEmpty()) {
            if (this.A == null) {
                this.A = new HashMap<>();
            }
            Iterator<String> it7 = hashSet2.iterator();
            while (it7.hasNext()) {
                String next6 = it7.next();
                if (!this.A.containsKey(next6)) {
                    if (next6.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str9 = next6.split(",")[1];
                        Iterator<b> it8 = this.p.iterator();
                        while (it8.hasNext()) {
                            b next7 = it8.next();
                            if (!(next7.f == null || (aVar = next7.f.get(str9)) == null)) {
                                sparseArray2.append(next7.f1493b, aVar);
                            }
                        }
                        rVar = r.a(next6, sparseArray2);
                    } else {
                        rVar = r.a(next6, j);
                    }
                    if (rVar != null) {
                        rVar.e = next6;
                        this.A.put(next6, rVar);
                    }
                }
            }
            ArrayList<b> arrayList5 = this.p;
            if (arrayList5 != null) {
                Iterator<b> it9 = arrayList5.iterator();
                while (it9.hasNext()) {
                    b next8 = it9.next();
                    if (next8 instanceof j) {
                        ((j) next8).c(this.A);
                    }
                }
            }
            Iterator<String> it10 = this.A.keySet().iterator();
            while (true) {
                str = str;
                if (it10.hasNext()) {
                    String next9 = it10.next();
                    this.A.get(next9).a(hashMap.containsKey(next9) ? hashMap.get(next9).intValue() : 0);
                }
            }
        }
        int size = this.z.size() + 2;
        o[] oVarArr = new o[size];
        oVarArr[0] = this.f1524d;
        oVarArr[size - 1] = this.e;
        if (this.z.size() > 0 && this.t == -1) {
            this.t = 0;
        }
        Iterator<o> it11 = this.z.iterator();
        int i3 = 1;
        while (it11.hasNext()) {
            oVarArr[i3] = it11.next();
            i3++;
        }
        HashSet hashSet6 = new HashSet();
        for (String str10 : this.e.m.keySet()) {
            if (this.f1524d.m.containsKey(str10) && !hashSet3.contains("CUSTOM,".concat(String.valueOf(str10)))) {
                hashSet6.add(str10);
            }
        }
        String[] strArr = (String[]) hashSet6.toArray(new String[0]);
        this.v = strArr;
        this.w = new int[strArr.length];
        int i4 = 0;
        while (true) {
            String[] strArr2 = this.v;
            if (i4 < strArr2.length) {
                String str11 = strArr2[i4];
                this.w[i4] = 0;
                int i5 = 0;
                while (true) {
                    if (i5 >= size) {
                        break;
                    } else if (oVarArr[i5].m.containsKey(str11)) {
                        int[] iArr = this.w;
                        iArr[i4] = iArr[i4] + oVarArr[i5].m.get(str11).a();
                    } else {
                        i5++;
                    }
                }
                i4++;
            } else {
                boolean z = oVarArr[0].l != b.f1492a;
                int length = this.v.length + 18;
                boolean[] zArr = new boolean[length];
                for (int i6 = 1; i6 < size; i6++) {
                    o oVar2 = oVarArr[i6];
                    o oVar3 = oVarArr[i6 - 1];
                    zArr[0] = zArr[0] | o.a(oVar2.e, oVar3.e);
                    zArr[1] = o.a(oVar2.f, oVar3.f) | z | zArr[1];
                    zArr[2] = o.a(oVar2.g, oVar3.g) | z | zArr[2];
                    zArr[3] = o.a(oVar2.h, oVar3.h) | zArr[3];
                    zArr[4] = o.a(oVar2.i, oVar3.i) | zArr[4];
                }
                int i7 = 0;
                for (int i8 = 1; i8 < length; i8++) {
                    i7 = i7;
                    if (zArr[i8]) {
                        i7++;
                    }
                }
                int[] iArr2 = new int[i7];
                this.l = iArr2;
                this.m = new double[iArr2.length];
                this.n = new double[iArr2.length];
                int i9 = 0;
                for (int i10 = 1; i10 < length; i10++) {
                    i9 = i9;
                    if (zArr[i10]) {
                        this.l[i9] = i10;
                        i9++;
                    }
                }
                double[][] dArr = new double[size][this.l.length];
                double[] dArr2 = new double[size];
                for (int i11 = 0; i11 < size; i11++) {
                    oVarArr[i11].a(dArr[i11], this.l);
                    dArr2[i11] = oVarArr[i11].f1528d;
                }
                int i12 = 0;
                while (true) {
                    int[] iArr3 = this.l;
                    if (i12 < iArr3.length) {
                        oVarArr = oVarArr;
                        if (iArr3[i12] < o.f1525a.length) {
                            String str12 = o.f1525a[this.l[i12]] + " [";
                            int i13 = 0;
                            while (true) {
                                oVarArr = oVarArr;
                                if (i13 < size) {
                                    str12 = str12 + dArr[i13][i12];
                                    i13++;
                                }
                            }
                        }
                        i12++;
                    } else {
                        this.g = new b[this.v.length + 1];
                        int i14 = 0;
                        while (true) {
                            String[] strArr3 = this.v;
                            if (i14 < strArr3.length) {
                                String str13 = strArr3[i14];
                                int i15 = 0;
                                double[] dArr3 = null;
                                double[][] dArr4 = null;
                                for (int i16 = 0; i16 < size; i16++) {
                                    if (oVarArr[i16].m.containsKey(str13)) {
                                        double[][] dArr5 = dArr4;
                                        if (dArr4 == null) {
                                            dArr3 = new double[size];
                                            dArr5 = new double[size][oVarArr[i16].m.get(str13).a()];
                                        }
                                        dArr3[i15] = oVarArr[i16].f1528d;
                                        oVarArr[i16].a(str13, dArr5[i15], 0);
                                        i15++;
                                        dArr4 = dArr5;
                                    }
                                }
                                i14++;
                                this.g[i14] = b.a(this.t, Arrays.copyOf(dArr3, i15), (double[][]) Arrays.copyOf(dArr4, i15));
                                str4 = str4;
                            } else {
                                this.g[0] = b.a(this.t, dArr2, dArr);
                                if (oVarArr[0].l != b.f1492a) {
                                    int[] iArr4 = new int[size];
                                    double[] dArr6 = new double[size];
                                    double[][] dArr7 = new double[size][2];
                                    for (int i17 = 0; i17 < size; i17++) {
                                        iArr4[i17] = oVarArr[i17].l;
                                        dArr6[i17] = oVarArr[i17].f1528d;
                                        dArr7[i17][0] = oVarArr[i17].f;
                                        dArr7[i17][1] = oVarArr[i17].g;
                                    }
                                    this.h = new androidx.constraintlayout.motion.a.a(iArr4, dArr6, dArr7);
                                }
                                float f = Float.NaN;
                                this.r = new HashMap<>();
                                if (this.p != null) {
                                    Iterator<String> it12 = hashSet.iterator();
                                    while (it12.hasNext()) {
                                        String next10 = it12.next();
                                        if (!next10.startsWith("CUSTOM")) {
                                            next10.hashCode();
                                            switch (next10.hashCode()) {
                                                case -1249320806:
                                                    if (next10.equals(obj)) {
                                                        c2 = 0;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -1249320805:
                                                    if (next10.equals(obj4)) {
                                                        c2 = 1;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -1225497657:
                                                    if (next10.equals(obj2)) {
                                                        c2 = 2;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -1225497656:
                                                    if (next10.equals(str2)) {
                                                        c2 = 3;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -1225497655:
                                                    if (next10.equals(str)) {
                                                        c2 = 4;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -1001078227:
                                                    if (next10.equals(obj3)) {
                                                        c2 = 5;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -908189618:
                                                    if (next10.equals(str3)) {
                                                        c2 = 6;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -908189617:
                                                    if (next10.equals("scaleY")) {
                                                        c2 = 7;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -797520672:
                                                    if (next10.equals("waveVariesBy")) {
                                                        c2 = '\b';
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -40300674:
                                                    if (next10.equals(str4)) {
                                                        c2 = '\t';
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case -4379043:
                                                    if (next10.equals("elevation")) {
                                                        c2 = '\n';
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case 37232917:
                                                    if (next10.equals("transitionPathRotate")) {
                                                        c2 = 11;
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case 92909918:
                                                    if (next10.equals("alpha")) {
                                                        c2 = '\f';
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                case 156108012:
                                                    if (next10.equals("waveOffset")) {
                                                        c2 = '\r';
                                                        break;
                                                    }
                                                    c2 = 65535;
                                                    break;
                                                default:
                                                    c2 = 65535;
                                                    break;
                                            }
                                            switch (c2) {
                                                case 0:
                                                    fVar = new f.h();
                                                    break;
                                                case 1:
                                                    fVar = new f.i();
                                                    break;
                                                case 2:
                                                    fVar = new f.l();
                                                    break;
                                                case 3:
                                                    fVar = new f.m();
                                                    break;
                                                case 4:
                                                    fVar = new f.n();
                                                    break;
                                                case 5:
                                                    fVar = new f.C0034f();
                                                    break;
                                                case 6:
                                                    fVar = new f.j();
                                                    break;
                                                case 7:
                                                    fVar = new f.k();
                                                    break;
                                                case '\b':
                                                    fVar = new f.a();
                                                    break;
                                                case '\t':
                                                    fVar = new f.g();
                                                    break;
                                                case '\n':
                                                    fVar = new f.d();
                                                    break;
                                                case 11:
                                                    fVar = new f.e();
                                                    break;
                                                case '\f':
                                                    fVar = new f.a();
                                                    break;
                                                case '\r':
                                                    fVar = new f.a();
                                                    break;
                                                default:
                                                    fVar = null;
                                                    break;
                                            }
                                        } else {
                                            fVar = new f.b();
                                        }
                                        if (fVar != null) {
                                            f = f;
                                            if (fVar.f1502d == 1) {
                                                f = f;
                                                if (Float.isNaN(f)) {
                                                    f = b();
                                                }
                                            }
                                            fVar.f1500b = next10;
                                            this.r.put(next10, fVar);
                                        }
                                    }
                                    Iterator<b> it13 = this.p.iterator();
                                    while (it13.hasNext()) {
                                        b next11 = it13.next();
                                        if (next11 instanceof e) {
                                            ((e) next11).c(this.r);
                                        }
                                    }
                                    for (f fVar2 : this.r.values()) {
                                        fVar2.c(f);
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e eVar, androidx.constraintlayout.widget.c cVar) {
        this.f1524d.f1528d = BitmapDescriptorFactory.HUE_RED;
        this.f1524d.e = BitmapDescriptorFactory.HUE_RED;
        a(this.f1524d);
        this.f1524d.a(eVar.m(), eVar.n(), eVar.o(), eVar.p());
        c.a e = cVar.e(this.f1522b);
        this.f1524d.a(e);
        this.i = e.f1627c.f;
        this.f.a(eVar, cVar, this.f1522b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, q> hashMap = this.q;
        f fVar = null;
        q qVar = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, q> hashMap2 = this.q;
        q qVar2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, f> hashMap3 = this.r;
        f fVar2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, f> hashMap4 = this.r;
        if (hashMap4 != null) {
            fVar = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = this.k;
            float f5 = f3;
            if (f4 != 1.0f) {
                float f6 = this.j;
                float f7 = f3;
                if (f3 < f6) {
                    f7 = BitmapDescriptorFactory.HUE_RED;
                }
                f5 = f7;
                if (f7 > f6) {
                    f5 = f7;
                    if (f7 < 1.0d) {
                        f5 = (f7 - f6) * f4;
                    }
                }
            }
            double d2 = f5;
            androidx.constraintlayout.motion.a.c cVar = this.f1524d.f1526b;
            float f8 = Float.NaN;
            Iterator<o> it2 = this.z.iterator();
            float f9 = BitmapDescriptorFactory.HUE_RED;
            while (it2.hasNext()) {
                o next = it2.next();
                if (next.f1526b != null) {
                    if (next.f1528d < f5) {
                        cVar = next.f1526b;
                        f9 = next.f1528d;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.f1528d;
                    }
                }
            }
            if (cVar != null) {
                float f10 = f8;
                if (Float.isNaN(f8)) {
                    f10 = 1.0f;
                }
                d2 = (((float) cVar.a((f5 - f9) / f)) * (f10 - f9)) + f9;
            }
            this.g[0].a(d2, this.m);
            b bVar = this.h;
            if (bVar != null) {
                double[] dArr = this.m;
                if (dArr.length > 0) {
                    bVar.a(d2, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f1524d.a(this.l, this.m, fArr, i3);
            if (fVar2 != null) {
                fArr[i3] = fArr[i3] + fVar2.a(f5);
            } else if (qVar != null) {
                fArr[i3] = fArr[i3] + qVar.a(f5);
            }
            if (fVar != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + fVar.a(f5);
            } else if (qVar2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + qVar2.a(f5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:147:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x08b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x07d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.View r13, float r14, long r15, androidx.constraintlayout.motion.widget.d r17) {
        /*
            Method dump skipped, instructions count: 2827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.m.a(android.view.View, float, long, androidx.constraintlayout.motion.widget.d):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(e eVar, androidx.constraintlayout.widget.c cVar) {
        this.e.f1528d = 1.0f;
        this.e.e = 1.0f;
        a(this.e);
        this.e.a(eVar.m(), eVar.n(), eVar.o(), eVar.p());
        this.e.a(cVar.e(this.f1522b));
        this.u.a(eVar, cVar, this.f1522b);
    }

    public final String toString() {
        return " start: x: " + this.f1524d.f + " y: " + this.f1524d.g + " end: x: " + this.e.f + " y: " + this.e.g;
    }
}
