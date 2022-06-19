package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.C0175a;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.h;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import d.f.a.a.c;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public class C0221b {

    /* renamed from: d */
    private static final int[] f1421d = {0, 4, 8};

    /* renamed from: e */
    private static SparseIntArray f1422e;

    /* renamed from: a */
    private HashMap<String, ConstraintAttribute> f1423a = new HashMap<>();

    /* renamed from: b */
    private boolean f1424b = true;

    /* renamed from: c */
    private HashMap<Integer, C0222a> f1425c = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a.class */
    public static class C0222a {

        /* renamed from: a */
        int f1426a;

        /* renamed from: b */
        public final C0225d f1427b = new C0225d();

        /* renamed from: c */
        public final C0224c f1428c = new C0224c();

        /* renamed from: d */
        public final C0223b f1429d = new C0223b();

        /* renamed from: e */
        public final C0226e f1430e = new C0226e();

        /* renamed from: f */
        public HashMap<String, ConstraintAttribute> f1431f = new HashMap<>();

        /* renamed from: f */
        public void m13777f(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f1426a = i;
            C0223b c0223b = this.f1429d;
            c0223b.f1473h = layoutParams.f1364d;
            c0223b.f1475i = layoutParams.f1366e;
            c0223b.f1477j = layoutParams.f1368f;
            c0223b.f1479k = layoutParams.f1370g;
            c0223b.f1480l = layoutParams.f1372h;
            c0223b.f1481m = layoutParams.f1374i;
            c0223b.f1482n = layoutParams.f1376j;
            c0223b.f1483o = layoutParams.f1378k;
            c0223b.f1484p = layoutParams.f1380l;
            c0223b.f1485q = layoutParams.f1387p;
            c0223b.f1486r = layoutParams.f1388q;
            c0223b.f1487s = layoutParams.f1389r;
            c0223b.f1488t = layoutParams.f1390s;
            c0223b.f1489u = layoutParams.f1397z;
            c0223b.f1490v = layoutParams.f1332A;
            c0223b.f1491w = layoutParams.f1333B;
            c0223b.f1492x = layoutParams.f1382m;
            c0223b.f1493y = layoutParams.f1384n;
            c0223b.f1494z = layoutParams.f1386o;
            c0223b.f1433A = layoutParams.f1347P;
            c0223b.f1434B = layoutParams.f1348Q;
            c0223b.f1435C = layoutParams.f1349R;
            c0223b.f1471g = layoutParams.f1362c;
            c0223b.f1467e = layoutParams.f1358a;
            c0223b.f1469f = layoutParams.f1360b;
            C0223b c0223b2 = this.f1429d;
            c0223b2.f1463c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            c0223b2.f1465d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            c0223b2.f1436D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            c0223b2.f1437E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            c0223b2.f1438F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            c0223b2.f1439G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            c0223b2.f1448P = layoutParams.f1336E;
            c0223b2.f1449Q = layoutParams.f1335D;
            c0223b2.f1451S = layoutParams.f1338G;
            c0223b2.f1450R = layoutParams.f1337F;
            c0223b2.f1474h0 = layoutParams.f1350S;
            c0223b2.f1476i0 = layoutParams.f1351T;
            c0223b2.f1452T = layoutParams.f1339H;
            c0223b2.f1453U = layoutParams.f1340I;
            c0223b2.f1454V = layoutParams.f1343L;
            c0223b2.f1455W = layoutParams.f1344M;
            c0223b2.f1456X = layoutParams.f1341J;
            c0223b2.f1457Y = layoutParams.f1342K;
            c0223b2.f1458Z = layoutParams.f1345N;
            c0223b2.f1460a0 = layoutParams.f1346O;
            c0223b2.f1472g0 = layoutParams.f1352U;
            c0223b2.f1443K = layoutParams.f1392u;
            c0223b2.f1445M = layoutParams.f1394w;
            c0223b2.f1442J = layoutParams.f1391t;
            c0223b2.f1444L = layoutParams.f1393v;
            C0223b c0223b3 = this.f1429d;
            c0223b3.f1447O = layoutParams.f1395x;
            c0223b3.f1446N = layoutParams.f1396y;
            if (Build.VERSION.SDK_INT >= 17) {
                c0223b3.f1440H = layoutParams.getMarginEnd();
                this.f1429d.f1441I = layoutParams.getMarginStart();
            }
        }

        /* renamed from: g */
        public void m13776g(int i, Constraints.LayoutParams layoutParams) {
            m13777f(i, layoutParams);
            this.f1427b.f1506d = layoutParams.o0;
            C0226e c0226e = this.f1430e;
            c0226e.f1510b = layoutParams.r0;
            c0226e.f1511c = layoutParams.s0;
            c0226e.f1512d = layoutParams.t0;
            c0226e.f1513e = layoutParams.u0;
            c0226e.f1514f = layoutParams.v0;
            c0226e.f1515g = layoutParams.w0;
            c0226e.f1516h = layoutParams.x0;
            c0226e.f1517i = layoutParams.y0;
            c0226e.f1518j = layoutParams.z0;
            c0226e.f1519k = layoutParams.A0;
            c0226e.f1521m = layoutParams.q0;
            c0226e.f1520l = layoutParams.p0;
        }

        /* renamed from: h */
        public void m13775h(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m13776g(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                C0223b c0223b = this.f1429d;
                c0223b.f1466d0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                c0223b.f1462b0 = barrier.getType();
                this.f1429d.f1468e0 = barrier.getReferencedIds();
                this.f1429d.f1464c0 = barrier.getMargin();
            }
        }

        /* renamed from: d */
        public void m13779d(ConstraintLayout.LayoutParams layoutParams) {
            C0223b c0223b = this.f1429d;
            layoutParams.f1364d = c0223b.f1473h;
            layoutParams.f1366e = c0223b.f1475i;
            layoutParams.f1368f = c0223b.f1477j;
            layoutParams.f1370g = c0223b.f1479k;
            layoutParams.f1372h = c0223b.f1480l;
            layoutParams.f1374i = c0223b.f1481m;
            layoutParams.f1376j = c0223b.f1482n;
            layoutParams.f1378k = c0223b.f1483o;
            layoutParams.f1380l = c0223b.f1484p;
            layoutParams.f1387p = c0223b.f1485q;
            layoutParams.f1388q = c0223b.f1486r;
            layoutParams.f1389r = c0223b.f1487s;
            layoutParams.f1390s = c0223b.f1488t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = c0223b.f1436D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = c0223b.f1437E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = c0223b.f1438F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = c0223b.f1439G;
            layoutParams.f1395x = c0223b.f1447O;
            layoutParams.f1396y = c0223b.f1446N;
            layoutParams.f1392u = c0223b.f1443K;
            layoutParams.f1394w = c0223b.f1445M;
            layoutParams.f1397z = c0223b.f1489u;
            layoutParams.f1332A = c0223b.f1490v;
            layoutParams.f1382m = c0223b.f1492x;
            layoutParams.f1384n = c0223b.f1493y;
            C0223b c0223b2 = this.f1429d;
            layoutParams.f1386o = c0223b2.f1494z;
            layoutParams.f1333B = c0223b2.f1491w;
            layoutParams.f1347P = c0223b2.f1433A;
            layoutParams.f1348Q = c0223b2.f1434B;
            layoutParams.f1336E = c0223b2.f1448P;
            layoutParams.f1335D = c0223b2.f1449Q;
            layoutParams.f1338G = c0223b2.f1451S;
            layoutParams.f1337F = c0223b2.f1450R;
            layoutParams.f1350S = c0223b2.f1474h0;
            layoutParams.f1351T = c0223b2.f1476i0;
            layoutParams.f1339H = c0223b2.f1452T;
            layoutParams.f1340I = c0223b2.f1453U;
            layoutParams.f1343L = c0223b2.f1454V;
            layoutParams.f1344M = c0223b2.f1455W;
            layoutParams.f1341J = c0223b2.f1456X;
            layoutParams.f1342K = c0223b2.f1457Y;
            layoutParams.f1345N = c0223b2.f1458Z;
            layoutParams.f1346O = c0223b2.f1460a0;
            layoutParams.f1349R = c0223b2.f1435C;
            layoutParams.f1362c = c0223b2.f1471g;
            layoutParams.f1358a = c0223b2.f1467e;
            layoutParams.f1360b = c0223b2.f1469f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = c0223b2.f1463c;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = c0223b2.f1465d;
            String str = c0223b2.f1472g0;
            if (str != null) {
                layoutParams.f1352U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f1429d.f1441I);
                layoutParams.setMarginEnd(this.f1429d.f1440H);
            }
            layoutParams.m13826c();
        }

        /* renamed from: e */
        public C0222a clone() {
            C0222a c0222a = new C0222a();
            c0222a.f1429d.m13774a(this.f1429d);
            c0222a.f1428c.m13772a(this.f1428c);
            c0222a.f1427b.m13770a(this.f1427b);
            c0222a.f1430e.m13768a(this.f1430e);
            c0222a.f1426a = this.f1426a;
            return c0222a;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$b.class */
    public static class C0223b {

        /* renamed from: k0 */
        private static SparseIntArray f1432k0;

        /* renamed from: c */
        public int f1463c;

        /* renamed from: d */
        public int f1465d;

        /* renamed from: e0 */
        public int[] f1468e0;

        /* renamed from: f0 */
        public String f1470f0;

        /* renamed from: g0 */
        public String f1472g0;

        /* renamed from: a */
        public boolean f1459a = false;

        /* renamed from: b */
        public boolean f1461b = false;

        /* renamed from: e */
        public int f1467e = -1;

        /* renamed from: f */
        public int f1469f = -1;

        /* renamed from: g */
        public float f1471g = -1.0f;

        /* renamed from: h */
        public int f1473h = -1;

        /* renamed from: i */
        public int f1475i = -1;

        /* renamed from: j */
        public int f1477j = -1;

        /* renamed from: k */
        public int f1479k = -1;

        /* renamed from: l */
        public int f1480l = -1;

        /* renamed from: m */
        public int f1481m = -1;

        /* renamed from: n */
        public int f1482n = -1;

        /* renamed from: o */
        public int f1483o = -1;

        /* renamed from: p */
        public int f1484p = -1;

        /* renamed from: q */
        public int f1485q = -1;

        /* renamed from: r */
        public int f1486r = -1;

        /* renamed from: s */
        public int f1487s = -1;

        /* renamed from: t */
        public int f1488t = -1;

        /* renamed from: u */
        public float f1489u = 0.5f;

        /* renamed from: v */
        public float f1490v = 0.5f;

        /* renamed from: w */
        public String f1491w = null;

        /* renamed from: x */
        public int f1492x = -1;

        /* renamed from: y */
        public int f1493y = 0;

        /* renamed from: z */
        public float f1494z = 0.0f;

        /* renamed from: A */
        public int f1433A = -1;

        /* renamed from: B */
        public int f1434B = -1;

        /* renamed from: C */
        public int f1435C = -1;

        /* renamed from: D */
        public int f1436D = -1;

        /* renamed from: E */
        public int f1437E = -1;

        /* renamed from: F */
        public int f1438F = -1;

        /* renamed from: G */
        public int f1439G = -1;

        /* renamed from: H */
        public int f1440H = -1;

        /* renamed from: I */
        public int f1441I = -1;

        /* renamed from: J */
        public int f1442J = -1;

        /* renamed from: K */
        public int f1443K = -1;

        /* renamed from: L */
        public int f1444L = -1;

        /* renamed from: M */
        public int f1445M = -1;

        /* renamed from: N */
        public int f1446N = -1;

        /* renamed from: O */
        public int f1447O = -1;

        /* renamed from: P */
        public float f1448P = -1.0f;

        /* renamed from: Q */
        public float f1449Q = -1.0f;

        /* renamed from: R */
        public int f1450R = 0;

        /* renamed from: S */
        public int f1451S = 0;

        /* renamed from: T */
        public int f1452T = 0;

        /* renamed from: U */
        public int f1453U = 0;

        /* renamed from: V */
        public int f1454V = -1;

        /* renamed from: W */
        public int f1455W = -1;

        /* renamed from: X */
        public int f1456X = -1;

        /* renamed from: Y */
        public int f1457Y = -1;

        /* renamed from: Z */
        public float f1458Z = 1.0f;

        /* renamed from: a0 */
        public float f1460a0 = 1.0f;

        /* renamed from: b0 */
        public int f1462b0 = -1;

        /* renamed from: c0 */
        public int f1464c0 = 0;

        /* renamed from: d0 */
        public int f1466d0 = -1;

        /* renamed from: h0 */
        public boolean f1474h0 = false;

        /* renamed from: i0 */
        public boolean f1476i0 = false;

        /* renamed from: j0 */
        public boolean f1478j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1432k0 = sparseIntArray;
            sparseIntArray.append(C0229e.Layout_layout_constraintLeft_toLeftOf, 24);
            f1432k0.append(C0229e.Layout_layout_constraintLeft_toRightOf, 25);
            f1432k0.append(C0229e.Layout_layout_constraintRight_toLeftOf, 28);
            f1432k0.append(C0229e.Layout_layout_constraintRight_toRightOf, 29);
            f1432k0.append(C0229e.Layout_layout_constraintTop_toTopOf, 35);
            f1432k0.append(C0229e.Layout_layout_constraintTop_toBottomOf, 34);
            f1432k0.append(C0229e.Layout_layout_constraintBottom_toTopOf, 4);
            f1432k0.append(C0229e.Layout_layout_constraintBottom_toBottomOf, 3);
            f1432k0.append(C0229e.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f1432k0.append(C0229e.Layout_layout_editor_absoluteX, 6);
            f1432k0.append(C0229e.Layout_layout_editor_absoluteY, 7);
            f1432k0.append(C0229e.Layout_layout_constraintGuide_begin, 17);
            f1432k0.append(C0229e.Layout_layout_constraintGuide_end, 18);
            f1432k0.append(C0229e.Layout_layout_constraintGuide_percent, 19);
            f1432k0.append(C0229e.Layout_android_orientation, 26);
            f1432k0.append(C0229e.Layout_layout_constraintStart_toEndOf, 31);
            f1432k0.append(C0229e.Layout_layout_constraintStart_toStartOf, 32);
            f1432k0.append(C0229e.Layout_layout_constraintEnd_toStartOf, 10);
            f1432k0.append(C0229e.Layout_layout_constraintEnd_toEndOf, 9);
            f1432k0.append(C0229e.Layout_layout_goneMarginLeft, 13);
            f1432k0.append(C0229e.Layout_layout_goneMarginTop, 16);
            f1432k0.append(C0229e.Layout_layout_goneMarginRight, 14);
            f1432k0.append(C0229e.Layout_layout_goneMarginBottom, 11);
            f1432k0.append(C0229e.Layout_layout_goneMarginStart, 15);
            f1432k0.append(C0229e.Layout_layout_goneMarginEnd, 12);
            f1432k0.append(C0229e.Layout_layout_constraintVertical_weight, 38);
            f1432k0.append(C0229e.Layout_layout_constraintHorizontal_weight, 37);
            f1432k0.append(C0229e.Layout_layout_constraintHorizontal_chainStyle, 39);
            f1432k0.append(C0229e.Layout_layout_constraintVertical_chainStyle, 40);
            f1432k0.append(C0229e.Layout_layout_constraintHorizontal_bias, 20);
            f1432k0.append(C0229e.Layout_layout_constraintVertical_bias, 36);
            f1432k0.append(C0229e.Layout_layout_constraintDimensionRatio, 5);
            f1432k0.append(C0229e.Layout_layout_constraintLeft_creator, 76);
            f1432k0.append(C0229e.Layout_layout_constraintTop_creator, 76);
            f1432k0.append(C0229e.Layout_layout_constraintRight_creator, 76);
            f1432k0.append(C0229e.Layout_layout_constraintBottom_creator, 76);
            f1432k0.append(C0229e.Layout_layout_constraintBaseline_creator, 76);
            f1432k0.append(C0229e.Layout_android_layout_marginLeft, 23);
            f1432k0.append(C0229e.Layout_android_layout_marginRight, 27);
            f1432k0.append(C0229e.Layout_android_layout_marginStart, 30);
            f1432k0.append(C0229e.Layout_android_layout_marginEnd, 8);
            f1432k0.append(C0229e.Layout_android_layout_marginTop, 33);
            f1432k0.append(C0229e.Layout_android_layout_marginBottom, 2);
            f1432k0.append(C0229e.Layout_android_layout_width, 22);
            f1432k0.append(C0229e.Layout_android_layout_height, 21);
            f1432k0.append(C0229e.Layout_layout_constraintCircle, 61);
            f1432k0.append(C0229e.Layout_layout_constraintCircleRadius, 62);
            f1432k0.append(C0229e.Layout_layout_constraintCircleAngle, 63);
            f1432k0.append(C0229e.Layout_layout_constraintWidth_percent, 69);
            f1432k0.append(C0229e.Layout_layout_constraintHeight_percent, 70);
            f1432k0.append(C0229e.Layout_chainUseRtl, 71);
            f1432k0.append(C0229e.Layout_barrierDirection, 72);
            f1432k0.append(C0229e.Layout_barrierMargin, 73);
            f1432k0.append(C0229e.Layout_constraint_referenced_ids, 74);
            f1432k0.append(C0229e.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m13774a(C0223b c0223b) {
            this.f1459a = c0223b.f1459a;
            this.f1463c = c0223b.f1463c;
            this.f1461b = c0223b.f1461b;
            this.f1465d = c0223b.f1465d;
            this.f1467e = c0223b.f1467e;
            this.f1469f = c0223b.f1469f;
            this.f1471g = c0223b.f1471g;
            this.f1473h = c0223b.f1473h;
            this.f1475i = c0223b.f1475i;
            this.f1477j = c0223b.f1477j;
            this.f1479k = c0223b.f1479k;
            this.f1480l = c0223b.f1480l;
            this.f1481m = c0223b.f1481m;
            this.f1482n = c0223b.f1482n;
            this.f1483o = c0223b.f1483o;
            this.f1484p = c0223b.f1484p;
            this.f1485q = c0223b.f1485q;
            this.f1486r = c0223b.f1486r;
            this.f1487s = c0223b.f1487s;
            this.f1488t = c0223b.f1488t;
            this.f1489u = c0223b.f1489u;
            this.f1490v = c0223b.f1490v;
            this.f1491w = c0223b.f1491w;
            this.f1492x = c0223b.f1492x;
            this.f1493y = c0223b.f1493y;
            this.f1494z = c0223b.f1494z;
            this.f1433A = c0223b.f1433A;
            this.f1434B = c0223b.f1434B;
            this.f1435C = c0223b.f1435C;
            this.f1436D = c0223b.f1436D;
            this.f1437E = c0223b.f1437E;
            this.f1438F = c0223b.f1438F;
            this.f1439G = c0223b.f1439G;
            this.f1440H = c0223b.f1440H;
            this.f1441I = c0223b.f1441I;
            this.f1442J = c0223b.f1442J;
            this.f1443K = c0223b.f1443K;
            this.f1444L = c0223b.f1444L;
            this.f1445M = c0223b.f1445M;
            this.f1446N = c0223b.f1446N;
            this.f1447O = c0223b.f1447O;
            this.f1448P = c0223b.f1448P;
            this.f1449Q = c0223b.f1449Q;
            this.f1450R = c0223b.f1450R;
            this.f1451S = c0223b.f1451S;
            this.f1452T = c0223b.f1452T;
            this.f1453U = c0223b.f1453U;
            this.f1454V = c0223b.f1454V;
            this.f1455W = c0223b.f1455W;
            this.f1456X = c0223b.f1456X;
            this.f1457Y = c0223b.f1457Y;
            this.f1458Z = c0223b.f1458Z;
            this.f1460a0 = c0223b.f1460a0;
            this.f1462b0 = c0223b.f1462b0;
            this.f1464c0 = c0223b.f1464c0;
            this.f1466d0 = c0223b.f1466d0;
            this.f1472g0 = c0223b.f1472g0;
            int[] iArr = c0223b.f1468e0;
            if (iArr != null) {
                this.f1468e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f1468e0 = null;
            }
            this.f1470f0 = c0223b.f1470f0;
            this.f1474h0 = c0223b.f1474h0;
            this.f1476i0 = c0223b.f1476i0;
            this.f1478j0 = c0223b.f1478j0;
        }

        /* renamed from: b */
        void m13773b(Context context, AttributeSet attributeSet) {
            StringBuilder sb;
            String str;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Layout);
            this.f1461b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f1432k0.get(index);
                if (i2 == 80) {
                    this.f1474h0 = obtainStyledAttributes.getBoolean(index, this.f1474h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f1484p = C0221b.m13784y(obtainStyledAttributes, index, this.f1484p);
                            continue;
                        case 2:
                            this.f1439G = obtainStyledAttributes.getDimensionPixelSize(index, this.f1439G);
                            continue;
                        case 3:
                            this.f1483o = C0221b.m13784y(obtainStyledAttributes, index, this.f1483o);
                            continue;
                        case 4:
                            this.f1482n = C0221b.m13784y(obtainStyledAttributes, index, this.f1482n);
                            continue;
                        case 5:
                            this.f1491w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f1433A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1433A);
                            continue;
                        case 7:
                            this.f1434B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1434B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f1440H = obtainStyledAttributes.getDimensionPixelSize(index, this.f1440H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f1488t = C0221b.m13784y(obtainStyledAttributes, index, this.f1488t);
                            continue;
                        case 10:
                            this.f1487s = C0221b.m13784y(obtainStyledAttributes, index, this.f1487s);
                            continue;
                        case 11:
                            this.f1445M = obtainStyledAttributes.getDimensionPixelSize(index, this.f1445M);
                            continue;
                        case 12:
                            this.f1446N = obtainStyledAttributes.getDimensionPixelSize(index, this.f1446N);
                            continue;
                        case 13:
                            this.f1442J = obtainStyledAttributes.getDimensionPixelSize(index, this.f1442J);
                            continue;
                        case 14:
                            this.f1444L = obtainStyledAttributes.getDimensionPixelSize(index, this.f1444L);
                            continue;
                        case 15:
                            this.f1447O = obtainStyledAttributes.getDimensionPixelSize(index, this.f1447O);
                            continue;
                        case 16:
                            this.f1443K = obtainStyledAttributes.getDimensionPixelSize(index, this.f1443K);
                            continue;
                        case 17:
                            this.f1467e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1467e);
                            continue;
                        case 18:
                            this.f1469f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1469f);
                            continue;
                        case 19:
                            this.f1471g = obtainStyledAttributes.getFloat(index, this.f1471g);
                            continue;
                        case 20:
                            this.f1489u = obtainStyledAttributes.getFloat(index, this.f1489u);
                            continue;
                        case 21:
                            this.f1465d = obtainStyledAttributes.getLayoutDimension(index, this.f1465d);
                            continue;
                        case 22:
                            this.f1463c = obtainStyledAttributes.getLayoutDimension(index, this.f1463c);
                            continue;
                        case 23:
                            this.f1436D = obtainStyledAttributes.getDimensionPixelSize(index, this.f1436D);
                            continue;
                        case 24:
                            this.f1473h = C0221b.m13784y(obtainStyledAttributes, index, this.f1473h);
                            continue;
                        case 25:
                            this.f1475i = C0221b.m13784y(obtainStyledAttributes, index, this.f1475i);
                            continue;
                        case 26:
                            this.f1435C = obtainStyledAttributes.getInt(index, this.f1435C);
                            continue;
                        case 27:
                            this.f1437E = obtainStyledAttributes.getDimensionPixelSize(index, this.f1437E);
                            continue;
                        case 28:
                            this.f1477j = C0221b.m13784y(obtainStyledAttributes, index, this.f1477j);
                            continue;
                        case 29:
                            this.f1479k = C0221b.m13784y(obtainStyledAttributes, index, this.f1479k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f1441I = obtainStyledAttributes.getDimensionPixelSize(index, this.f1441I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f1485q = C0221b.m13784y(obtainStyledAttributes, index, this.f1485q);
                            continue;
                        case 32:
                            this.f1486r = C0221b.m13784y(obtainStyledAttributes, index, this.f1486r);
                            continue;
                        case 33:
                            this.f1438F = obtainStyledAttributes.getDimensionPixelSize(index, this.f1438F);
                            continue;
                        case 34:
                            this.f1481m = C0221b.m13784y(obtainStyledAttributes, index, this.f1481m);
                            continue;
                        case 35:
                            this.f1480l = C0221b.m13784y(obtainStyledAttributes, index, this.f1480l);
                            continue;
                        case 36:
                            this.f1490v = obtainStyledAttributes.getFloat(index, this.f1490v);
                            continue;
                        case 37:
                            this.f1449Q = obtainStyledAttributes.getFloat(index, this.f1449Q);
                            continue;
                        case 38:
                            this.f1448P = obtainStyledAttributes.getFloat(index, this.f1448P);
                            continue;
                        case 39:
                            this.f1450R = obtainStyledAttributes.getInt(index, this.f1450R);
                            continue;
                        case 40:
                            this.f1451S = obtainStyledAttributes.getInt(index, this.f1451S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f1452T = obtainStyledAttributes.getInt(index, this.f1452T);
                                    continue;
                                case 55:
                                    this.f1453U = obtainStyledAttributes.getInt(index, this.f1453U);
                                    continue;
                                case 56:
                                    this.f1454V = obtainStyledAttributes.getDimensionPixelSize(index, this.f1454V);
                                    continue;
                                case 57:
                                    this.f1455W = obtainStyledAttributes.getDimensionPixelSize(index, this.f1455W);
                                    continue;
                                case 58:
                                    this.f1456X = obtainStyledAttributes.getDimensionPixelSize(index, this.f1456X);
                                    continue;
                                case 59:
                                    this.f1457Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1457Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f1492x = C0221b.m13784y(obtainStyledAttributes, index, this.f1492x);
                                            continue;
                                        case 62:
                                            this.f1493y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1493y);
                                            continue;
                                        case 63:
                                            this.f1494z = obtainStyledAttributes.getFloat(index, this.f1494z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f1458Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.f1460a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    break;
                                                case 72:
                                                    this.f1462b0 = obtainStyledAttributes.getInt(index, this.f1462b0);
                                                    break;
                                                case 73:
                                                    this.f1464c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1464c0);
                                                    break;
                                                case 74:
                                                    this.f1470f0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.f1478j0 = obtainStyledAttributes.getBoolean(index, this.f1478j0);
                                                    break;
                                                case 76:
                                                    sb = new StringBuilder();
                                                    str = "unused attribute 0x";
                                                    sb.append(str);
                                                    sb.append(Integer.toHexString(index));
                                                    sb.append("   ");
                                                    sb.append(f1432k0.get(index));
                                                    Log.w("ConstraintSet", sb.toString());
                                                    continue;
                                                    continue;
                                                    continue;
                                                case 77:
                                                    this.f1472g0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    sb = new StringBuilder();
                                                    str = "Unknown attribute 0x";
                                                    sb.append(str);
                                                    sb.append(Integer.toHexString(index));
                                                    sb.append("   ");
                                                    sb.append(f1432k0.get(index));
                                                    Log.w("ConstraintSet", sb.toString());
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f1476i0 = obtainStyledAttributes.getBoolean(index, this.f1476i0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$c.class */
    public static class C0224c {

        /* renamed from: h */
        private static SparseIntArray f1495h;

        /* renamed from: a */
        public boolean f1496a = false;

        /* renamed from: b */
        public int f1497b = -1;

        /* renamed from: c */
        public String f1498c = null;

        /* renamed from: d */
        public int f1499d = -1;

        /* renamed from: e */
        public int f1500e = 0;

        /* renamed from: f */
        public float f1501f = Float.NaN;

        /* renamed from: g */
        public float f1502g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1495h = sparseIntArray;
            sparseIntArray.append(C0229e.Motion_motionPathRotate, 1);
            f1495h.append(C0229e.Motion_pathMotionArc, 2);
            f1495h.append(C0229e.Motion_transitionEasing, 3);
            f1495h.append(C0229e.Motion_drawPath, 4);
            f1495h.append(C0229e.Motion_animate_relativeTo, 5);
            f1495h.append(C0229e.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        public void m13772a(C0224c c0224c) {
            this.f1496a = c0224c.f1496a;
            this.f1497b = c0224c.f1497b;
            this.f1498c = c0224c.f1498c;
            this.f1499d = c0224c.f1499d;
            this.f1500e = c0224c.f1500e;
            this.f1502g = c0224c.f1502g;
            this.f1501f = c0224c.f1501f;
        }

        /* renamed from: b */
        void m13771b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Motion);
            this.f1496a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f1495h.get(index)) {
                    case 1:
                        this.f1502g = obtainStyledAttributes.getFloat(index, this.f1502g);
                        break;
                    case 2:
                        this.f1499d = obtainStyledAttributes.getInt(index, this.f1499d);
                        break;
                    case 3:
                        this.f1498c = obtainStyledAttributes.peekValue(index).type == 3 ? obtainStyledAttributes.getString(index) : c.c[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    case 4:
                        this.f1500e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1497b = C0221b.m13784y(obtainStyledAttributes, index, this.f1497b);
                        break;
                    case 6:
                        this.f1501f = obtainStyledAttributes.getFloat(index, this.f1501f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$d.class */
    public static class C0225d {

        /* renamed from: a */
        public boolean f1503a = false;

        /* renamed from: b */
        public int f1504b = 0;

        /* renamed from: c */
        public int f1505c = 0;

        /* renamed from: d */
        public float f1506d = 1.0f;

        /* renamed from: e */
        public float f1507e = Float.NaN;

        /* renamed from: a */
        public void m13770a(C0225d c0225d) {
            this.f1503a = c0225d.f1503a;
            this.f1504b = c0225d.f1504b;
            this.f1506d = c0225d.f1506d;
            this.f1507e = c0225d.f1507e;
            this.f1505c = c0225d.f1505c;
        }

        /* renamed from: b */
        void m13769b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.PropertySet);
            this.f1503a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.PropertySet_android_alpha) {
                    this.f1506d = obtainStyledAttributes.getFloat(index, this.f1506d);
                } else if (index == C0229e.PropertySet_android_visibility) {
                    this.f1504b = obtainStyledAttributes.getInt(index, this.f1504b);
                    this.f1504b = C0221b.f1421d[this.f1504b];
                } else if (index == C0229e.PropertySet_visibilityMode) {
                    this.f1505c = obtainStyledAttributes.getInt(index, this.f1505c);
                } else if (index == C0229e.PropertySet_motionProgress) {
                    this.f1507e = obtainStyledAttributes.getFloat(index, this.f1507e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$e.class */
    public static class C0226e {

        /* renamed from: n */
        private static SparseIntArray f1508n;

        /* renamed from: a */
        public boolean f1509a = false;

        /* renamed from: b */
        public float f1510b = 0.0f;

        /* renamed from: c */
        public float f1511c = 0.0f;

        /* renamed from: d */
        public float f1512d = 0.0f;

        /* renamed from: e */
        public float f1513e = 1.0f;

        /* renamed from: f */
        public float f1514f = 1.0f;

        /* renamed from: g */
        public float f1515g = Float.NaN;

        /* renamed from: h */
        public float f1516h = Float.NaN;

        /* renamed from: i */
        public float f1517i = 0.0f;

        /* renamed from: j */
        public float f1518j = 0.0f;

        /* renamed from: k */
        public float f1519k = 0.0f;

        /* renamed from: l */
        public boolean f1520l = false;

        /* renamed from: m */
        public float f1521m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1508n = sparseIntArray;
            sparseIntArray.append(C0229e.Transform_android_rotation, 1);
            f1508n.append(C0229e.Transform_android_rotationX, 2);
            f1508n.append(C0229e.Transform_android_rotationY, 3);
            f1508n.append(C0229e.Transform_android_scaleX, 4);
            f1508n.append(C0229e.Transform_android_scaleY, 5);
            f1508n.append(C0229e.Transform_android_transformPivotX, 6);
            f1508n.append(C0229e.Transform_android_transformPivotY, 7);
            f1508n.append(C0229e.Transform_android_translationX, 8);
            f1508n.append(C0229e.Transform_android_translationY, 9);
            f1508n.append(C0229e.Transform_android_translationZ, 10);
            f1508n.append(C0229e.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        public void m13768a(C0226e c0226e) {
            this.f1509a = c0226e.f1509a;
            this.f1510b = c0226e.f1510b;
            this.f1511c = c0226e.f1511c;
            this.f1512d = c0226e.f1512d;
            this.f1513e = c0226e.f1513e;
            this.f1514f = c0226e.f1514f;
            this.f1515g = c0226e.f1515g;
            this.f1516h = c0226e.f1516h;
            this.f1517i = c0226e.f1517i;
            this.f1518j = c0226e.f1518j;
            this.f1519k = c0226e.f1519k;
            this.f1520l = c0226e.f1520l;
            this.f1521m = c0226e.f1521m;
        }

        /* renamed from: b */
        void m13767b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Transform);
            this.f1509a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f1508n.get(index)) {
                    case 1:
                        this.f1510b = obtainStyledAttributes.getFloat(index, this.f1510b);
                        break;
                    case 2:
                        this.f1511c = obtainStyledAttributes.getFloat(index, this.f1511c);
                        break;
                    case 3:
                        this.f1512d = obtainStyledAttributes.getFloat(index, this.f1512d);
                        break;
                    case 4:
                        this.f1513e = obtainStyledAttributes.getFloat(index, this.f1513e);
                        break;
                    case 5:
                        this.f1514f = obtainStyledAttributes.getFloat(index, this.f1514f);
                        break;
                    case 6:
                        this.f1515g = obtainStyledAttributes.getDimension(index, this.f1515g);
                        break;
                    case 7:
                        this.f1516h = obtainStyledAttributes.getDimension(index, this.f1516h);
                        break;
                    case 8:
                        this.f1517i = obtainStyledAttributes.getDimension(index, this.f1517i);
                        break;
                    case 9:
                        this.f1518j = obtainStyledAttributes.getDimension(index, this.f1518j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1519k = obtainStyledAttributes.getDimension(index, this.f1519k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f1520l = true;
                            this.f1521m = obtainStyledAttributes.getDimension(index, this.f1521m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f1422e = sparseIntArray;
        sparseIntArray.append(C0229e.Constraint_layout_constraintLeft_toLeftOf, 25);
        f1422e.append(C0229e.Constraint_layout_constraintLeft_toRightOf, 26);
        f1422e.append(C0229e.Constraint_layout_constraintRight_toLeftOf, 29);
        f1422e.append(C0229e.Constraint_layout_constraintRight_toRightOf, 30);
        f1422e.append(C0229e.Constraint_layout_constraintTop_toTopOf, 36);
        f1422e.append(C0229e.Constraint_layout_constraintTop_toBottomOf, 35);
        f1422e.append(C0229e.Constraint_layout_constraintBottom_toTopOf, 4);
        f1422e.append(C0229e.Constraint_layout_constraintBottom_toBottomOf, 3);
        f1422e.append(C0229e.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f1422e.append(C0229e.Constraint_layout_editor_absoluteX, 6);
        f1422e.append(C0229e.Constraint_layout_editor_absoluteY, 7);
        f1422e.append(C0229e.Constraint_layout_constraintGuide_begin, 17);
        f1422e.append(C0229e.Constraint_layout_constraintGuide_end, 18);
        f1422e.append(C0229e.Constraint_layout_constraintGuide_percent, 19);
        f1422e.append(C0229e.Constraint_android_orientation, 27);
        f1422e.append(C0229e.Constraint_layout_constraintStart_toEndOf, 32);
        f1422e.append(C0229e.Constraint_layout_constraintStart_toStartOf, 33);
        f1422e.append(C0229e.Constraint_layout_constraintEnd_toStartOf, 10);
        f1422e.append(C0229e.Constraint_layout_constraintEnd_toEndOf, 9);
        f1422e.append(C0229e.Constraint_layout_goneMarginLeft, 13);
        f1422e.append(C0229e.Constraint_layout_goneMarginTop, 16);
        f1422e.append(C0229e.Constraint_layout_goneMarginRight, 14);
        f1422e.append(C0229e.Constraint_layout_goneMarginBottom, 11);
        f1422e.append(C0229e.Constraint_layout_goneMarginStart, 15);
        f1422e.append(C0229e.Constraint_layout_goneMarginEnd, 12);
        f1422e.append(C0229e.Constraint_layout_constraintVertical_weight, 40);
        f1422e.append(C0229e.Constraint_layout_constraintHorizontal_weight, 39);
        f1422e.append(C0229e.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f1422e.append(C0229e.Constraint_layout_constraintVertical_chainStyle, 42);
        f1422e.append(C0229e.Constraint_layout_constraintHorizontal_bias, 20);
        f1422e.append(C0229e.Constraint_layout_constraintVertical_bias, 37);
        f1422e.append(C0229e.Constraint_layout_constraintDimensionRatio, 5);
        f1422e.append(C0229e.Constraint_layout_constraintLeft_creator, 82);
        f1422e.append(C0229e.Constraint_layout_constraintTop_creator, 82);
        f1422e.append(C0229e.Constraint_layout_constraintRight_creator, 82);
        f1422e.append(C0229e.Constraint_layout_constraintBottom_creator, 82);
        f1422e.append(C0229e.Constraint_layout_constraintBaseline_creator, 82);
        f1422e.append(C0229e.Constraint_android_layout_marginLeft, 24);
        f1422e.append(C0229e.Constraint_android_layout_marginRight, 28);
        f1422e.append(C0229e.Constraint_android_layout_marginStart, 31);
        f1422e.append(C0229e.Constraint_android_layout_marginEnd, 8);
        f1422e.append(C0229e.Constraint_android_layout_marginTop, 34);
        f1422e.append(C0229e.Constraint_android_layout_marginBottom, 2);
        f1422e.append(C0229e.Constraint_android_layout_width, 23);
        f1422e.append(C0229e.Constraint_android_layout_height, 21);
        f1422e.append(C0229e.Constraint_android_visibility, 22);
        f1422e.append(C0229e.Constraint_android_alpha, 43);
        f1422e.append(C0229e.Constraint_android_elevation, 44);
        f1422e.append(C0229e.Constraint_android_rotationX, 45);
        f1422e.append(C0229e.Constraint_android_rotationY, 46);
        f1422e.append(C0229e.Constraint_android_rotation, 60);
        f1422e.append(C0229e.Constraint_android_scaleX, 47);
        f1422e.append(C0229e.Constraint_android_scaleY, 48);
        f1422e.append(C0229e.Constraint_android_transformPivotX, 49);
        f1422e.append(C0229e.Constraint_android_transformPivotY, 50);
        f1422e.append(C0229e.Constraint_android_translationX, 51);
        f1422e.append(C0229e.Constraint_android_translationY, 52);
        f1422e.append(C0229e.Constraint_android_translationZ, 53);
        f1422e.append(C0229e.Constraint_layout_constraintWidth_default, 54);
        f1422e.append(C0229e.Constraint_layout_constraintHeight_default, 55);
        f1422e.append(C0229e.Constraint_layout_constraintWidth_max, 56);
        f1422e.append(C0229e.Constraint_layout_constraintHeight_max, 57);
        f1422e.append(C0229e.Constraint_layout_constraintWidth_min, 58);
        f1422e.append(C0229e.Constraint_layout_constraintHeight_min, 59);
        f1422e.append(C0229e.Constraint_layout_constraintCircle, 61);
        f1422e.append(C0229e.Constraint_layout_constraintCircleRadius, 62);
        f1422e.append(C0229e.Constraint_layout_constraintCircleAngle, 63);
        f1422e.append(C0229e.Constraint_animate_relativeTo, 64);
        f1422e.append(C0229e.Constraint_transitionEasing, 65);
        f1422e.append(C0229e.Constraint_drawPath, 66);
        f1422e.append(C0229e.Constraint_transitionPathRotate, 67);
        f1422e.append(C0229e.Constraint_motionStagger, 79);
        f1422e.append(C0229e.Constraint_android_id, 38);
        f1422e.append(C0229e.Constraint_motionProgress, 68);
        f1422e.append(C0229e.Constraint_layout_constraintWidth_percent, 69);
        f1422e.append(C0229e.Constraint_layout_constraintHeight_percent, 70);
        f1422e.append(C0229e.Constraint_chainUseRtl, 71);
        f1422e.append(C0229e.Constraint_barrierDirection, 72);
        f1422e.append(C0229e.Constraint_barrierMargin, 73);
        f1422e.append(C0229e.Constraint_constraint_referenced_ids, 74);
        f1422e.append(C0229e.Constraint_barrierAllowsGoneWidgets, 75);
        f1422e.append(C0229e.Constraint_pathMotionArc, 76);
        f1422e.append(C0229e.Constraint_layout_constraintTag, 77);
        f1422e.append(C0229e.Constraint_visibilityMode, 78);
        f1422e.append(C0229e.Constraint_layout_constrainedWidth, 80);
        f1422e.append(C0229e.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: m */
    private int[] m13796m(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0228d.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i4 = i;
            if (i == 0) {
                i4 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            int i5 = i4;
            if (i4 == 0) {
                i5 = i4;
                if (view.isInEditMode()) {
                    i5 = i4;
                    if (view.getParent() instanceof ConstraintLayout) {
                        Object m13841i = ((ConstraintLayout) view.getParent()).m13841i(0, trim);
                        i5 = i4;
                        if (m13841i != null) {
                            i5 = i4;
                            if (m13841i instanceof Integer) {
                                i5 = ((Integer) m13841i).intValue();
                            }
                        }
                    }
                }
            }
            iArr[i3] = i5;
            i2++;
            i3++;
        }
        int[] iArr2 = iArr;
        if (i3 != split.length) {
            iArr2 = Arrays.copyOf(iArr, i3);
        }
        return iArr2;
    }

    /* renamed from: n */
    private C0222a m13795n(Context context, AttributeSet attributeSet) {
        C0222a c0222a = new C0222a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Constraint);
        m13783z(context, c0222a, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return c0222a;
    }

    /* renamed from: o */
    private C0222a m13794o(int i) {
        if (!this.f1425c.containsKey(Integer.valueOf(i))) {
            this.f1425c.put(Integer.valueOf(i), new C0222a());
        }
        return this.f1425c.get(Integer.valueOf(i));
    }

    /* renamed from: y */
    public static int m13784y(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: z */
    private void m13783z(Context context, C0222a c0222a, TypedArray typedArray) {
        String str;
        C0224c c0224c;
        String str2;
        StringBuilder sb;
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C0229e.Constraint_android_id && C0229e.Constraint_android_layout_marginStart != index && C0229e.Constraint_android_layout_marginEnd != index) {
                c0222a.f1428c.f1496a = true;
                c0222a.f1429d.f1461b = true;
                c0222a.f1427b.f1503a = true;
                c0222a.f1430e.f1509a = true;
            }
            switch (f1422e.get(index)) {
                case 1:
                    C0223b c0223b = c0222a.f1429d;
                    c0223b.f1484p = m13784y(typedArray, index, c0223b.f1484p);
                    continue;
                case 2:
                    C0223b c0223b2 = c0222a.f1429d;
                    c0223b2.f1439G = typedArray.getDimensionPixelSize(index, c0223b2.f1439G);
                    continue;
                case 3:
                    C0223b c0223b3 = c0222a.f1429d;
                    c0223b3.f1483o = m13784y(typedArray, index, c0223b3.f1483o);
                    continue;
                case 4:
                    C0223b c0223b4 = c0222a.f1429d;
                    c0223b4.f1482n = m13784y(typedArray, index, c0223b4.f1482n);
                    continue;
                case 5:
                    c0222a.f1429d.f1491w = typedArray.getString(index);
                    continue;
                case 6:
                    C0223b c0223b5 = c0222a.f1429d;
                    c0223b5.f1433A = typedArray.getDimensionPixelOffset(index, c0223b5.f1433A);
                    continue;
                case 7:
                    C0223b c0223b6 = c0222a.f1429d;
                    c0223b6.f1434B = typedArray.getDimensionPixelOffset(index, c0223b6.f1434B);
                    continue;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0223b c0223b7 = c0222a.f1429d;
                        c0223b7.f1440H = typedArray.getDimensionPixelSize(index, c0223b7.f1440H);
                    } else {
                        continue;
                    }
                case 9:
                    C0223b c0223b8 = c0222a.f1429d;
                    c0223b8.f1488t = m13784y(typedArray, index, c0223b8.f1488t);
                    continue;
                case 10:
                    C0223b c0223b9 = c0222a.f1429d;
                    c0223b9.f1487s = m13784y(typedArray, index, c0223b9.f1487s);
                    continue;
                case 11:
                    C0223b c0223b10 = c0222a.f1429d;
                    c0223b10.f1445M = typedArray.getDimensionPixelSize(index, c0223b10.f1445M);
                    continue;
                case 12:
                    C0223b c0223b11 = c0222a.f1429d;
                    c0223b11.f1446N = typedArray.getDimensionPixelSize(index, c0223b11.f1446N);
                    continue;
                case 13:
                    C0223b c0223b12 = c0222a.f1429d;
                    c0223b12.f1442J = typedArray.getDimensionPixelSize(index, c0223b12.f1442J);
                    continue;
                case 14:
                    C0223b c0223b13 = c0222a.f1429d;
                    c0223b13.f1444L = typedArray.getDimensionPixelSize(index, c0223b13.f1444L);
                    continue;
                case 15:
                    C0223b c0223b14 = c0222a.f1429d;
                    c0223b14.f1447O = typedArray.getDimensionPixelSize(index, c0223b14.f1447O);
                    continue;
                case 16:
                    C0223b c0223b15 = c0222a.f1429d;
                    c0223b15.f1443K = typedArray.getDimensionPixelSize(index, c0223b15.f1443K);
                    continue;
                case 17:
                    C0223b c0223b16 = c0222a.f1429d;
                    c0223b16.f1467e = typedArray.getDimensionPixelOffset(index, c0223b16.f1467e);
                    continue;
                case 18:
                    C0223b c0223b17 = c0222a.f1429d;
                    c0223b17.f1469f = typedArray.getDimensionPixelOffset(index, c0223b17.f1469f);
                    continue;
                case 19:
                    C0223b c0223b18 = c0222a.f1429d;
                    c0223b18.f1471g = typedArray.getFloat(index, c0223b18.f1471g);
                    continue;
                case 20:
                    C0223b c0223b19 = c0222a.f1429d;
                    c0223b19.f1489u = typedArray.getFloat(index, c0223b19.f1489u);
                    continue;
                case 21:
                    C0223b c0223b20 = c0222a.f1429d;
                    c0223b20.f1465d = typedArray.getLayoutDimension(index, c0223b20.f1465d);
                    continue;
                case 22:
                    C0225d c0225d = c0222a.f1427b;
                    c0225d.f1504b = typedArray.getInt(index, c0225d.f1504b);
                    C0225d c0225d2 = c0222a.f1427b;
                    c0225d2.f1504b = f1421d[c0225d2.f1504b];
                    continue;
                case 23:
                    C0223b c0223b21 = c0222a.f1429d;
                    c0223b21.f1463c = typedArray.getLayoutDimension(index, c0223b21.f1463c);
                    continue;
                case 24:
                    C0223b c0223b22 = c0222a.f1429d;
                    c0223b22.f1436D = typedArray.getDimensionPixelSize(index, c0223b22.f1436D);
                    continue;
                case 25:
                    C0223b c0223b23 = c0222a.f1429d;
                    c0223b23.f1473h = m13784y(typedArray, index, c0223b23.f1473h);
                    continue;
                case 26:
                    C0223b c0223b24 = c0222a.f1429d;
                    c0223b24.f1475i = m13784y(typedArray, index, c0223b24.f1475i);
                    continue;
                case 27:
                    C0223b c0223b25 = c0222a.f1429d;
                    c0223b25.f1435C = typedArray.getInt(index, c0223b25.f1435C);
                    continue;
                case 28:
                    C0223b c0223b26 = c0222a.f1429d;
                    c0223b26.f1437E = typedArray.getDimensionPixelSize(index, c0223b26.f1437E);
                    continue;
                case 29:
                    C0223b c0223b27 = c0222a.f1429d;
                    c0223b27.f1477j = m13784y(typedArray, index, c0223b27.f1477j);
                    continue;
                case 30:
                    C0223b c0223b28 = c0222a.f1429d;
                    c0223b28.f1479k = m13784y(typedArray, index, c0223b28.f1479k);
                    continue;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0223b c0223b29 = c0222a.f1429d;
                        c0223b29.f1441I = typedArray.getDimensionPixelSize(index, c0223b29.f1441I);
                    } else {
                        continue;
                    }
                case 32:
                    C0223b c0223b30 = c0222a.f1429d;
                    c0223b30.f1485q = m13784y(typedArray, index, c0223b30.f1485q);
                    continue;
                case 33:
                    C0223b c0223b31 = c0222a.f1429d;
                    c0223b31.f1486r = m13784y(typedArray, index, c0223b31.f1486r);
                    continue;
                case 34:
                    C0223b c0223b32 = c0222a.f1429d;
                    c0223b32.f1438F = typedArray.getDimensionPixelSize(index, c0223b32.f1438F);
                    continue;
                case 35:
                    C0223b c0223b33 = c0222a.f1429d;
                    c0223b33.f1481m = m13784y(typedArray, index, c0223b33.f1481m);
                    continue;
                case 36:
                    C0223b c0223b34 = c0222a.f1429d;
                    c0223b34.f1480l = m13784y(typedArray, index, c0223b34.f1480l);
                    continue;
                case 37:
                    C0223b c0223b35 = c0222a.f1429d;
                    c0223b35.f1490v = typedArray.getFloat(index, c0223b35.f1490v);
                    continue;
                case 38:
                    c0222a.f1426a = typedArray.getResourceId(index, c0222a.f1426a);
                    continue;
                case 39:
                    C0223b c0223b36 = c0222a.f1429d;
                    c0223b36.f1449Q = typedArray.getFloat(index, c0223b36.f1449Q);
                    continue;
                case 40:
                    C0223b c0223b37 = c0222a.f1429d;
                    c0223b37.f1448P = typedArray.getFloat(index, c0223b37.f1448P);
                    continue;
                case 41:
                    C0223b c0223b38 = c0222a.f1429d;
                    c0223b38.f1450R = typedArray.getInt(index, c0223b38.f1450R);
                    continue;
                case 42:
                    C0223b c0223b39 = c0222a.f1429d;
                    c0223b39.f1451S = typedArray.getInt(index, c0223b39.f1451S);
                    continue;
                case 43:
                    C0225d c0225d3 = c0222a.f1427b;
                    c0225d3.f1506d = typedArray.getFloat(index, c0225d3.f1506d);
                    continue;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0226e c0226e = c0222a.f1430e;
                        c0226e.f1520l = true;
                        c0226e.f1521m = typedArray.getDimension(index, c0226e.f1521m);
                    } else {
                        continue;
                    }
                case 45:
                    C0226e c0226e2 = c0222a.f1430e;
                    c0226e2.f1511c = typedArray.getFloat(index, c0226e2.f1511c);
                    continue;
                case 46:
                    C0226e c0226e3 = c0222a.f1430e;
                    c0226e3.f1512d = typedArray.getFloat(index, c0226e3.f1512d);
                    continue;
                case 47:
                    C0226e c0226e4 = c0222a.f1430e;
                    c0226e4.f1513e = typedArray.getFloat(index, c0226e4.f1513e);
                    continue;
                case 48:
                    C0226e c0226e5 = c0222a.f1430e;
                    c0226e5.f1514f = typedArray.getFloat(index, c0226e5.f1514f);
                    continue;
                case 49:
                    C0226e c0226e6 = c0222a.f1430e;
                    c0226e6.f1515g = typedArray.getDimension(index, c0226e6.f1515g);
                    continue;
                case 50:
                    C0226e c0226e7 = c0222a.f1430e;
                    c0226e7.f1516h = typedArray.getDimension(index, c0226e7.f1516h);
                    continue;
                case 51:
                    C0226e c0226e8 = c0222a.f1430e;
                    c0226e8.f1517i = typedArray.getDimension(index, c0226e8.f1517i);
                    continue;
                case 52:
                    C0226e c0226e9 = c0222a.f1430e;
                    c0226e9.f1518j = typedArray.getDimension(index, c0226e9.f1518j);
                    continue;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0226e c0226e10 = c0222a.f1430e;
                        c0226e10.f1519k = typedArray.getDimension(index, c0226e10.f1519k);
                    } else {
                        continue;
                    }
                case 54:
                    C0223b c0223b40 = c0222a.f1429d;
                    c0223b40.f1452T = typedArray.getInt(index, c0223b40.f1452T);
                    continue;
                case 55:
                    C0223b c0223b41 = c0222a.f1429d;
                    c0223b41.f1453U = typedArray.getInt(index, c0223b41.f1453U);
                    continue;
                case 56:
                    C0223b c0223b42 = c0222a.f1429d;
                    c0223b42.f1454V = typedArray.getDimensionPixelSize(index, c0223b42.f1454V);
                    continue;
                case 57:
                    C0223b c0223b43 = c0222a.f1429d;
                    c0223b43.f1455W = typedArray.getDimensionPixelSize(index, c0223b43.f1455W);
                    continue;
                case 58:
                    C0223b c0223b44 = c0222a.f1429d;
                    c0223b44.f1456X = typedArray.getDimensionPixelSize(index, c0223b44.f1456X);
                    continue;
                case 59:
                    C0223b c0223b45 = c0222a.f1429d;
                    c0223b45.f1457Y = typedArray.getDimensionPixelSize(index, c0223b45.f1457Y);
                    continue;
                case 60:
                    C0226e c0226e11 = c0222a.f1430e;
                    c0226e11.f1510b = typedArray.getFloat(index, c0226e11.f1510b);
                    continue;
                case 61:
                    C0223b c0223b46 = c0222a.f1429d;
                    c0223b46.f1492x = m13784y(typedArray, index, c0223b46.f1492x);
                    continue;
                case 62:
                    C0223b c0223b47 = c0222a.f1429d;
                    c0223b47.f1493y = typedArray.getDimensionPixelSize(index, c0223b47.f1493y);
                    continue;
                case 63:
                    C0223b c0223b48 = c0222a.f1429d;
                    c0223b48.f1494z = typedArray.getFloat(index, c0223b48.f1494z);
                    continue;
                case 64:
                    C0224c c0224c2 = c0222a.f1428c;
                    c0224c2.f1497b = m13784y(typedArray, index, c0224c2.f1497b);
                    continue;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0224c = c0222a.f1428c;
                        str = typedArray.getString(index);
                    } else {
                        c0224c = c0222a.f1428c;
                        str = c.c[typedArray.getInteger(index, 0)];
                    }
                    c0224c.f1498c = str;
                    continue;
                case 66:
                    c0222a.f1428c.f1500e = typedArray.getInt(index, 0);
                    continue;
                case 67:
                    C0224c c0224c3 = c0222a.f1428c;
                    c0224c3.f1502g = typedArray.getFloat(index, c0224c3.f1502g);
                    continue;
                case 68:
                    C0225d c0225d4 = c0222a.f1427b;
                    c0225d4.f1507e = typedArray.getFloat(index, c0225d4.f1507e);
                    continue;
                case 69:
                    c0222a.f1429d.f1458Z = typedArray.getFloat(index, 1.0f);
                    continue;
                case 70:
                    c0222a.f1429d.f1460a0 = typedArray.getFloat(index, 1.0f);
                    continue;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    continue;
                case 72:
                    C0223b c0223b49 = c0222a.f1429d;
                    c0223b49.f1462b0 = typedArray.getInt(index, c0223b49.f1462b0);
                    continue;
                case 73:
                    C0223b c0223b50 = c0222a.f1429d;
                    c0223b50.f1464c0 = typedArray.getDimensionPixelSize(index, c0223b50.f1464c0);
                    continue;
                case 74:
                    c0222a.f1429d.f1470f0 = typedArray.getString(index);
                    continue;
                case 75:
                    C0223b c0223b51 = c0222a.f1429d;
                    c0223b51.f1478j0 = typedArray.getBoolean(index, c0223b51.f1478j0);
                    continue;
                case 76:
                    C0224c c0224c4 = c0222a.f1428c;
                    c0224c4.f1499d = typedArray.getInt(index, c0224c4.f1499d);
                    continue;
                case 77:
                    c0222a.f1429d.f1472g0 = typedArray.getString(index);
                    continue;
                case 78:
                    C0225d c0225d5 = c0222a.f1427b;
                    c0225d5.f1505c = typedArray.getInt(index, c0225d5.f1505c);
                    continue;
                case 79:
                    C0224c c0224c5 = c0222a.f1428c;
                    c0224c5.f1501f = typedArray.getFloat(index, c0224c5.f1501f);
                    continue;
                case 80:
                    C0223b c0223b52 = c0222a.f1429d;
                    c0223b52.f1474h0 = typedArray.getBoolean(index, c0223b52.f1474h0);
                    continue;
                case 81:
                    C0223b c0223b53 = c0222a.f1429d;
                    c0223b53.f1476i0 = typedArray.getBoolean(index, c0223b53.f1476i0);
                    continue;
                case 82:
                    sb = new StringBuilder();
                    str2 = "unused attribute 0x";
                    break;
                default:
                    sb = new StringBuilder();
                    str2 = "Unknown attribute 0x";
                    break;
            }
            sb.append(str2);
            sb.append(Integer.toHexString(index));
            sb.append("   ");
            sb.append(f1422e.get(index));
            Log.w("ConstraintSet", sb.toString());
        }
    }

    /* renamed from: A */
    public void m13812A(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Barrier childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1424b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                this.f1425c.put(Integer.valueOf(id), new C0222a());
            }
            C0222a c0222a = this.f1425c.get(Integer.valueOf(id));
            if (!c0222a.f1429d.f1461b) {
                c0222a.m13777f(id, layoutParams);
                if (childAt instanceof ConstraintHelper) {
                    c0222a.f1429d.f1468e0 = ((ConstraintHelper) childAt).getReferencedIds();
                    if (childAt instanceof Barrier) {
                        Barrier barrier = childAt;
                        c0222a.f1429d.f1478j0 = barrier.v();
                        c0222a.f1429d.f1462b0 = barrier.getType();
                        c0222a.f1429d.f1464c0 = barrier.getMargin();
                    }
                }
                c0222a.f1429d.f1461b = true;
            }
            C0225d c0225d = c0222a.f1427b;
            if (!c0225d.f1503a) {
                c0225d.f1504b = childAt.getVisibility();
                c0222a.f1427b.f1506d = childAt.getAlpha();
                c0222a.f1427b.f1503a = true;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                C0226e c0226e = c0222a.f1430e;
                if (!c0226e.f1509a) {
                    c0226e.f1509a = true;
                    c0226e.f1510b = childAt.getRotation();
                    c0222a.f1430e.f1511c = childAt.getRotationX();
                    c0222a.f1430e.f1512d = childAt.getRotationY();
                    c0222a.f1430e.f1513e = childAt.getScaleX();
                    c0222a.f1430e.f1514f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        C0226e c0226e2 = c0222a.f1430e;
                        c0226e2.f1515g = pivotX;
                        c0226e2.f1516h = pivotY;
                    }
                    c0222a.f1430e.f1517i = childAt.getTranslationX();
                    c0222a.f1430e.f1518j = childAt.getTranslationY();
                    if (i2 >= 21) {
                        c0222a.f1430e.f1519k = childAt.getTranslationZ();
                        C0226e c0226e3 = c0222a.f1430e;
                        if (c0226e3.f1520l) {
                            c0226e3.f1521m = childAt.getElevation();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: B */
    public void m13811B(C0221b c0221b) {
        for (Integer num : c0221b.f1425c.keySet()) {
            int intValue = num.intValue();
            C0222a c0222a = c0221b.f1425c.get(num);
            if (!this.f1425c.containsKey(Integer.valueOf(intValue))) {
                this.f1425c.put(Integer.valueOf(intValue), new C0222a());
            }
            C0222a c0222a2 = this.f1425c.get(Integer.valueOf(intValue));
            C0223b c0223b = c0222a2.f1429d;
            if (!c0223b.f1461b) {
                c0223b.m13774a(c0222a.f1429d);
            }
            C0225d c0225d = c0222a2.f1427b;
            if (!c0225d.f1503a) {
                c0225d.m13770a(c0222a.f1427b);
            }
            C0226e c0226e = c0222a2.f1430e;
            if (!c0226e.f1509a) {
                c0226e.m13768a(c0222a.f1430e);
            }
            C0224c c0224c = c0222a2.f1428c;
            if (!c0224c.f1496a) {
                c0224c.m13772a(c0222a.f1428c);
            }
            for (String str : c0222a.f1431f.keySet()) {
                if (!c0222a2.f1431f.containsKey(str)) {
                    c0222a2.f1431f.put(str, c0222a.f1431f.get(str));
                }
            }
        }
    }

    /* renamed from: C */
    public void m13810C(boolean z) {
        this.f1424b = z;
    }

    /* renamed from: D */
    public void m13809D(boolean z) {
    }

    /* renamed from: c */
    public void m13806c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                Log.v("ConstraintSet", "id unknown " + C0175a.m14282c(childAt));
            } else if (this.f1424b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f1425c.containsKey(Integer.valueOf(id))) {
                    ConstraintAttribute.m13865h(childAt, this.f1425c.get(Integer.valueOf(id)).f1431f);
                }
            }
        }
    }

    /* renamed from: d */
    public void m13805d(ConstraintLayout constraintLayout) {
        m13803f(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: e */
    public void m13804e(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f1425c.containsKey(Integer.valueOf(id))) {
            C0222a c0222a = this.f1425c.get(Integer.valueOf(id));
            if (!(constraintWidget instanceof h)) {
                return;
            }
            constraintHelper.m13853n(c0222a, (h) constraintWidget, layoutParams, sparseArray);
        }
    }

    /* renamed from: f */
    public void m13803f(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f1425c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + C0175a.m14282c(childAt));
            } else if (this.f1424b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.f1425c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        C0222a c0222a = this.f1425c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            c0222a.f1429d.f1466d0 = 1;
                        }
                        int i2 = c0222a.f1429d.f1466d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(c0222a.f1429d.f1462b0);
                            barrier.setMargin(c0222a.f1429d.f1464c0);
                            barrier.setAllowsGoneWidget(c0222a.f1429d.f1478j0);
                            C0223b c0223b = c0222a.f1429d;
                            int[] iArr = c0223b.f1468e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = c0223b.f1470f0;
                                if (str != null) {
                                    c0223b.f1468e0 = m13796m(barrier, str);
                                    barrier.setReferencedIds(c0222a.f1429d.f1468e0);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.m13826c();
                        c0222a.m13779d(layoutParams);
                        if (z) {
                            ConstraintAttribute.m13865h(childAt, c0222a.f1431f);
                        }
                        childAt.setLayoutParams(layoutParams);
                        C0225d c0225d = c0222a.f1427b;
                        if (c0225d.f1505c == 0) {
                            childAt.setVisibility(c0225d.f1504b);
                        }
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 17) {
                            childAt.setAlpha(c0222a.f1427b.f1506d);
                            childAt.setRotation(c0222a.f1430e.f1510b);
                            childAt.setRotationX(c0222a.f1430e.f1511c);
                            childAt.setRotationY(c0222a.f1430e.f1512d);
                            childAt.setScaleX(c0222a.f1430e.f1513e);
                            childAt.setScaleY(c0222a.f1430e.f1514f);
                            if (!Float.isNaN(c0222a.f1430e.f1515g)) {
                                childAt.setPivotX(c0222a.f1430e.f1515g);
                            }
                            if (!Float.isNaN(c0222a.f1430e.f1516h)) {
                                childAt.setPivotY(c0222a.f1430e.f1516h);
                            }
                            childAt.setTranslationX(c0222a.f1430e.f1517i);
                            childAt.setTranslationY(c0222a.f1430e.f1518j);
                            if (i3 >= 21) {
                                childAt.setTranslationZ(c0222a.f1430e.f1519k);
                                C0226e c0226e = c0222a.f1430e;
                                if (c0226e.f1520l) {
                                    childAt.setElevation(c0226e.f1521m);
                                }
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0222a c0222a2 = this.f1425c.get(num);
            int i4 = c0222a2.f1429d.f1466d0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C0223b c0223b2 = c0222a2.f1429d;
                int[] iArr2 = c0223b2.f1468e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c0223b2.f1470f0;
                    if (str2 != null) {
                        c0223b2.f1468e0 = m13796m(barrier2, str2);
                        barrier2.setReferencedIds(c0222a2.f1429d.f1468e0);
                    }
                }
                barrier2.setType(c0222a2.f1429d.f1462b0);
                barrier2.setMargin(c0222a2.f1429d.f1464c0);
                ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m13846u();
                c0222a2.m13779d(generateDefaultLayoutParams);
                constraintLayout.addView((View) barrier2, (ViewGroup.LayoutParams) generateDefaultLayoutParams);
            }
            if (c0222a2.f1429d.f1459a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c0222a2.m13779d(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: g */
    public void m13802g(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f1425c.containsKey(Integer.valueOf(i))) {
            this.f1425c.get(Integer.valueOf(i)).m13779d(layoutParams);
        }
    }

    /* renamed from: h */
    public void m13801h(int i, int i2) {
        if (this.f1425c.containsKey(Integer.valueOf(i))) {
            C0222a c0222a = this.f1425c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C0223b c0223b = c0222a.f1429d;
                    c0223b.f1475i = -1;
                    c0223b.f1473h = -1;
                    c0223b.f1436D = -1;
                    c0223b.f1442J = -1;
                    return;
                case 2:
                    C0223b c0223b2 = c0222a.f1429d;
                    c0223b2.f1479k = -1;
                    c0223b2.f1477j = -1;
                    c0223b2.f1437E = -1;
                    c0223b2.f1444L = -1;
                    return;
                case 3:
                    C0223b c0223b3 = c0222a.f1429d;
                    c0223b3.f1481m = -1;
                    c0223b3.f1480l = -1;
                    c0223b3.f1438F = -1;
                    c0223b3.f1443K = -1;
                    return;
                case 4:
                    C0223b c0223b4 = c0222a.f1429d;
                    c0223b4.f1482n = -1;
                    c0223b4.f1483o = -1;
                    c0223b4.f1439G = -1;
                    c0223b4.f1445M = -1;
                    return;
                case 5:
                    c0222a.f1429d.f1484p = -1;
                    return;
                case 6:
                    C0223b c0223b5 = c0222a.f1429d;
                    c0223b5.f1485q = -1;
                    c0223b5.f1486r = -1;
                    c0223b5.f1441I = -1;
                    c0223b5.f1447O = -1;
                    return;
                case 7:
                    C0223b c0223b6 = c0222a.f1429d;
                    c0223b6.f1487s = -1;
                    c0223b6.f1488t = -1;
                    c0223b6.f1440H = -1;
                    c0223b6.f1446N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: i */
    public void m13800i(Context context, int i) {
        m13799j((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: j */
    public void m13799j(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1425c.clear();
        for (int i = 0; i < childCount; i++) {
            Barrier childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1424b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                this.f1425c.put(Integer.valueOf(id), new C0222a());
            }
            C0222a c0222a = this.f1425c.get(Integer.valueOf(id));
            c0222a.f1431f = ConstraintAttribute.m13871b(this.f1423a, childAt);
            c0222a.m13777f(id, layoutParams);
            c0222a.f1427b.f1504b = childAt.getVisibility();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                c0222a.f1427b.f1506d = childAt.getAlpha();
                c0222a.f1430e.f1510b = childAt.getRotation();
                c0222a.f1430e.f1511c = childAt.getRotationX();
                c0222a.f1430e.f1512d = childAt.getRotationY();
                c0222a.f1430e.f1513e = childAt.getScaleX();
                c0222a.f1430e.f1514f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    C0226e c0226e = c0222a.f1430e;
                    c0226e.f1515g = pivotX;
                    c0226e.f1516h = pivotY;
                }
                c0222a.f1430e.f1517i = childAt.getTranslationX();
                c0222a.f1430e.f1518j = childAt.getTranslationY();
                if (i2 >= 21) {
                    c0222a.f1430e.f1519k = childAt.getTranslationZ();
                    C0226e c0226e2 = c0222a.f1430e;
                    if (c0226e2.f1520l) {
                        c0226e2.f1521m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = childAt;
                c0222a.f1429d.f1478j0 = barrier.v();
                c0222a.f1429d.f1468e0 = barrier.getReferencedIds();
                c0222a.f1429d.f1462b0 = barrier.getType();
                c0222a.f1429d.f1464c0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: k */
    public void m13798k(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f1425c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1424b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                this.f1425c.put(Integer.valueOf(id), new C0222a());
            }
            C0222a c0222a = this.f1425c.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                c0222a.m13775h((ConstraintHelper) childAt, id, layoutParams);
            }
            c0222a.m13776g(id, layoutParams);
        }
    }

    /* renamed from: l */
    public void m13797l(int i, int i2, int i3, float f) {
        C0223b c0223b = m13794o(i).f1429d;
        c0223b.f1492x = i2;
        c0223b.f1493y = i3;
        c0223b.f1494z = f;
    }

    /* renamed from: p */
    public C0222a m13793p(int i) {
        if (this.f1425c.containsKey(Integer.valueOf(i))) {
            return this.f1425c.get(Integer.valueOf(i));
        }
        return null;
    }

    /* renamed from: q */
    public int m13792q(int i) {
        return m13794o(i).f1429d.f1465d;
    }

    /* renamed from: r */
    public int[] m13791r() {
        Integer[] numArr = (Integer[]) this.f1425c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: s */
    public C0222a m13790s(int i) {
        return m13794o(i);
    }

    /* renamed from: t */
    public int m13789t(int i) {
        return m13794o(i).f1427b.f1504b;
    }

    /* renamed from: u */
    public int m13788u(int i) {
        return m13794o(i).f1427b.f1505c;
    }

    /* renamed from: v */
    public int m13787v(int i) {
        return m13794o(i).f1429d.f1463c;
    }

    /* renamed from: w */
    public void m13786w(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0222a m13795n = m13795n(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m13795n.f1429d.f1459a = true;
                    }
                    this.f1425c.put(Integer.valueOf(m13795n.f1426a), m13795n);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: x */
    public void m13785x(Context context, XmlPullParser xmlPullParser) {
        C0222a c0222a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C0222a c0222a2 = null;
            while (true) {
                C0222a c0222a3 = c0222a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0222a = c0222a3;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -2025855158:
                            if (name.equals("Layout")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1984451626:
                            if (name.equals("Motion")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1269513683:
                            if (name.equals("PropertySet")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1238332596:
                            if (name.equals("Transform")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -71750448:
                            if (name.equals("Guideline")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1331510167:
                            if (name.equals("Barrier")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1791837707:
                            if (name.equals("CustomAttribute")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1803088381:
                            if (name.equals("Constraint")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            c0222a = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c0222a = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                            C0223b c0223b = c0222a.f1429d;
                            c0223b.f1459a = true;
                            c0223b.f1461b = true;
                            break;
                        case true:
                            c0222a = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                            c0222a.f1429d.f1466d0 = 1;
                            break;
                        case true:
                            if (c0222a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0222a3.f1427b.m13769b(context, Xml.asAttributeSet(xmlPullParser));
                            c0222a = c0222a3;
                            break;
                        case true:
                            if (c0222a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0222a3.f1430e.m13767b(context, Xml.asAttributeSet(xmlPullParser));
                            c0222a = c0222a3;
                            break;
                        case true:
                            if (c0222a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0222a3.f1429d.m13773b(context, Xml.asAttributeSet(xmlPullParser));
                            c0222a = c0222a3;
                            break;
                        case true:
                            if (c0222a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0222a3.f1428c.m13771b(context, Xml.asAttributeSet(xmlPullParser));
                            c0222a = c0222a3;
                            break;
                        case true:
                            if (c0222a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            ConstraintAttribute.m13866g(context, xmlPullParser, c0222a3.f1431f);
                            c0222a = c0222a3;
                            break;
                        default:
                            c0222a = c0222a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c0222a = c0222a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c0222a = c0222a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f1425c.put(Integer.valueOf(c0222a3.f1426a), c0222a3);
                        c0222a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c0222a2 = c0222a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
