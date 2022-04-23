package androidx.constraintlayout.motion.widget;

import android.util.Log;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.motion.a.c;
import androidx.constraintlayout.motion.widget.q;
import androidx.constraintlayout.widget.a;
import androidx.constraintlayout.widget.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.LinkedHashMap;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/l.class */
public final class l implements Comparable<l> {
    static String[] r = {"position", "x", "y", "width", "height", "pathRotate"};
    private float A;
    private float B;
    private float C;

    /* renamed from: c  reason: collision with root package name */
    int f1519c;
    private c w;
    private float y;
    private float z;

    /* renamed from: a  reason: collision with root package name */
    float f1517a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    int f1518b = 0;

    /* renamed from: d  reason: collision with root package name */
    boolean f1520d = false;
    float e = BitmapDescriptorFactory.HUE_RED;
    float f = BitmapDescriptorFactory.HUE_RED;
    float g = BitmapDescriptorFactory.HUE_RED;
    public float h = BitmapDescriptorFactory.HUE_RED;
    float i = 1.0f;
    float j = 1.0f;
    float k = Float.NaN;
    float l = Float.NaN;
    float m = BitmapDescriptorFactory.HUE_RED;
    float n = BitmapDescriptorFactory.HUE_RED;
    float o = BitmapDescriptorFactory.HUE_RED;
    private int x = 0;
    float p = Float.NaN;
    float q = Float.NaN;
    LinkedHashMap<String, a> s = new LinkedHashMap<>();
    int t = 0;
    double[] u = new double[18];
    double[] v = new double[18];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3, float f4) {
        this.z = f;
        this.A = f2;
        this.B = f3;
        this.C = f4;
    }

    public final void a(e eVar, androidx.constraintlayout.widget.c cVar, int i) {
        a(eVar.m(), eVar.n(), eVar.o(), eVar.p());
        c.a e = cVar.e(i);
        this.f1518b = e.f1626b.f1639c;
        this.f1519c = e.f1626b.f1638b;
        this.f1517a = (e.f1626b.f1638b == 0 || this.f1518b != 0) ? e.f1626b.f1640d : BitmapDescriptorFactory.HUE_RED;
        this.f1520d = e.e.l;
        this.e = e.e.m;
        this.f = e.e.f1642b;
        this.g = e.e.f1643c;
        this.h = e.e.f1644d;
        this.i = e.e.e;
        this.j = e.e.f;
        this.k = e.e.g;
        this.l = e.e.h;
        this.m = e.e.i;
        this.n = e.e.j;
        this.o = e.e.k;
        this.w = androidx.constraintlayout.motion.a.c.a(e.f1627c.f1635c);
        this.p = e.f1627c.g;
        this.x = e.f1627c.e;
        this.q = e.f1626b.e;
        for (String str : e.f.keySet()) {
            a aVar = e.f.get(str);
            if (aVar.f1605b != a.EnumC0036a.STRING_TYPE) {
                this.s.put(str, aVar);
            }
        }
    }

    public final void a(HashMap<String, q> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            q qVar = hashMap.get(str);
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals(EventConstants.PROGRESS)) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c2 = '\r';
                        break;
                    }
                    break;
            }
            float f = 1.0f;
            float f2 = BitmapDescriptorFactory.HUE_RED;
            float f3 = BitmapDescriptorFactory.HUE_RED;
            float f4 = BitmapDescriptorFactory.HUE_RED;
            float f5 = BitmapDescriptorFactory.HUE_RED;
            float f6 = BitmapDescriptorFactory.HUE_RED;
            float f7 = BitmapDescriptorFactory.HUE_RED;
            float f8 = BitmapDescriptorFactory.HUE_RED;
            float f9 = BitmapDescriptorFactory.HUE_RED;
            float f10 = BitmapDescriptorFactory.HUE_RED;
            float f11 = BitmapDescriptorFactory.HUE_RED;
            float f12 = BitmapDescriptorFactory.HUE_RED;
            switch (c2) {
                case 0:
                    if (!Float.isNaN(this.g)) {
                        f11 = this.g;
                    }
                    qVar.a(i, f11);
                    break;
                case 1:
                    if (!Float.isNaN(this.h)) {
                        f10 = this.h;
                    }
                    qVar.a(i, f10);
                    break;
                case 2:
                    if (!Float.isNaN(this.m)) {
                        f9 = this.m;
                    }
                    qVar.a(i, f9);
                    break;
                case 3:
                    if (!Float.isNaN(this.n)) {
                        f8 = this.n;
                    }
                    qVar.a(i, f8);
                    break;
                case 4:
                    if (!Float.isNaN(this.o)) {
                        f7 = this.o;
                    }
                    qVar.a(i, f7);
                    break;
                case 5:
                    if (!Float.isNaN(this.q)) {
                        f6 = this.q;
                    }
                    qVar.a(i, f6);
                    break;
                case 6:
                    if (!Float.isNaN(this.i)) {
                        f = this.i;
                    }
                    qVar.a(i, f);
                    break;
                case 7:
                    if (!Float.isNaN(this.j)) {
                        f = this.j;
                    }
                    qVar.a(i, f);
                    break;
                case '\b':
                    if (!Float.isNaN(this.k)) {
                        f5 = this.k;
                    }
                    qVar.a(i, f5);
                    break;
                case '\t':
                    if (!Float.isNaN(this.l)) {
                        f4 = this.l;
                    }
                    qVar.a(i, f4);
                    break;
                case '\n':
                    if (!Float.isNaN(this.f)) {
                        f3 = this.f;
                    }
                    qVar.a(i, f3);
                    break;
                case 11:
                    if (!Float.isNaN(this.e)) {
                        f2 = this.e;
                    }
                    qVar.a(i, f2);
                    break;
                case '\f':
                    if (!Float.isNaN(this.p)) {
                        f12 = this.p;
                    }
                    qVar.a(i, f12);
                    break;
                case '\r':
                    if (!Float.isNaN(this.f1517a)) {
                        f = this.f1517a;
                    }
                    qVar.a(i, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.s.containsKey(str2)) {
                            a aVar = this.s.get(str2);
                            if (qVar instanceof q.b) {
                                ((q.b) qVar).a(i, aVar);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + aVar.b() + qVar);
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName ".concat(String.valueOf(str2)));
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline ".concat(String.valueOf(str)));
                        break;
                    }
            }
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(l lVar) {
        return Float.compare(this.y, lVar.y);
    }
}
