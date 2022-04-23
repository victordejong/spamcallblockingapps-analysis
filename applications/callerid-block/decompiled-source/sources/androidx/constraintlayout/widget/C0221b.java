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

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public void m13777f(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f1426a = i;
            C0223b bVar = this.f1429d;
            bVar.f1473h = layoutParams.f1364d;
            bVar.f1475i = layoutParams.f1366e;
            bVar.f1477j = layoutParams.f1368f;
            bVar.f1479k = layoutParams.f1370g;
            bVar.f1480l = layoutParams.f1372h;
            bVar.f1481m = layoutParams.f1374i;
            bVar.f1482n = layoutParams.f1376j;
            bVar.f1483o = layoutParams.f1378k;
            bVar.f1484p = layoutParams.f1380l;
            bVar.f1485q = layoutParams.f1387p;
            bVar.f1486r = layoutParams.f1388q;
            bVar.f1487s = layoutParams.f1389r;
            bVar.f1488t = layoutParams.f1390s;
            bVar.f1489u = layoutParams.f1397z;
            bVar.f1490v = layoutParams.f1332A;
            bVar.f1491w = layoutParams.f1333B;
            bVar.f1492x = layoutParams.f1382m;
            bVar.f1493y = layoutParams.f1384n;
            bVar.f1494z = layoutParams.f1386o;
            bVar.f1433A = layoutParams.f1347P;
            bVar.f1434B = layoutParams.f1348Q;
            bVar.f1435C = layoutParams.f1349R;
            bVar.f1471g = layoutParams.f1362c;
            bVar.f1467e = layoutParams.f1358a;
            bVar.f1469f = layoutParams.f1360b;
            C0223b bVar2 = this.f1429d;
            bVar2.f1463c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            bVar2.f1465d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            bVar2.f1436D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            bVar2.f1437E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            bVar2.f1438F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            bVar2.f1439G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            bVar2.f1448P = layoutParams.f1336E;
            bVar2.f1449Q = layoutParams.f1335D;
            bVar2.f1451S = layoutParams.f1338G;
            bVar2.f1450R = layoutParams.f1337F;
            bVar2.f1474h0 = layoutParams.f1350S;
            bVar2.f1476i0 = layoutParams.f1351T;
            bVar2.f1452T = layoutParams.f1339H;
            bVar2.f1453U = layoutParams.f1340I;
            bVar2.f1454V = layoutParams.f1343L;
            bVar2.f1455W = layoutParams.f1344M;
            bVar2.f1456X = layoutParams.f1341J;
            bVar2.f1457Y = layoutParams.f1342K;
            bVar2.f1458Z = layoutParams.f1345N;
            bVar2.f1460a0 = layoutParams.f1346O;
            bVar2.f1472g0 = layoutParams.f1352U;
            bVar2.f1443K = layoutParams.f1392u;
            bVar2.f1445M = layoutParams.f1394w;
            bVar2.f1442J = layoutParams.f1391t;
            bVar2.f1444L = layoutParams.f1393v;
            C0223b bVar3 = this.f1429d;
            bVar3.f1447O = layoutParams.f1395x;
            bVar3.f1446N = layoutParams.f1396y;
            if (Build.VERSION.SDK_INT >= 17) {
                bVar3.f1440H = layoutParams.getMarginEnd();
                this.f1429d.f1441I = layoutParams.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public void m13776g(int i, Constraints.LayoutParams layoutParams) {
            m13777f(i, layoutParams);
            this.f1427b.f1506d = layoutParams.o0;
            C0226e eVar = this.f1430e;
            eVar.f1510b = layoutParams.r0;
            eVar.f1511c = layoutParams.s0;
            eVar.f1512d = layoutParams.t0;
            eVar.f1513e = layoutParams.u0;
            eVar.f1514f = layoutParams.v0;
            eVar.f1515g = layoutParams.w0;
            eVar.f1516h = layoutParams.x0;
            eVar.f1517i = layoutParams.y0;
            eVar.f1518j = layoutParams.z0;
            eVar.f1519k = layoutParams.A0;
            eVar.f1521m = layoutParams.q0;
            eVar.f1520l = layoutParams.p0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public void m13775h(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m13776g(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                C0223b bVar = this.f1429d;
                bVar.f1466d0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                bVar.f1462b0 = barrier.getType();
                this.f1429d.f1468e0 = barrier.getReferencedIds();
                this.f1429d.f1464c0 = barrier.getMargin();
            }
        }

        /* renamed from: d */
        public void m13779d(ConstraintLayout.LayoutParams layoutParams) {
            C0223b bVar = this.f1429d;
            layoutParams.f1364d = bVar.f1473h;
            layoutParams.f1366e = bVar.f1475i;
            layoutParams.f1368f = bVar.f1477j;
            layoutParams.f1370g = bVar.f1479k;
            layoutParams.f1372h = bVar.f1480l;
            layoutParams.f1374i = bVar.f1481m;
            layoutParams.f1376j = bVar.f1482n;
            layoutParams.f1378k = bVar.f1483o;
            layoutParams.f1380l = bVar.f1484p;
            layoutParams.f1387p = bVar.f1485q;
            layoutParams.f1388q = bVar.f1486r;
            layoutParams.f1389r = bVar.f1487s;
            layoutParams.f1390s = bVar.f1488t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bVar.f1436D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bVar.f1437E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = bVar.f1438F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bVar.f1439G;
            layoutParams.f1395x = bVar.f1447O;
            layoutParams.f1396y = bVar.f1446N;
            layoutParams.f1392u = bVar.f1443K;
            layoutParams.f1394w = bVar.f1445M;
            layoutParams.f1397z = bVar.f1489u;
            layoutParams.f1332A = bVar.f1490v;
            layoutParams.f1382m = bVar.f1492x;
            layoutParams.f1384n = bVar.f1493y;
            C0223b bVar2 = this.f1429d;
            layoutParams.f1386o = bVar2.f1494z;
            layoutParams.f1333B = bVar2.f1491w;
            layoutParams.f1347P = bVar2.f1433A;
            layoutParams.f1348Q = bVar2.f1434B;
            layoutParams.f1336E = bVar2.f1448P;
            layoutParams.f1335D = bVar2.f1449Q;
            layoutParams.f1338G = bVar2.f1451S;
            layoutParams.f1337F = bVar2.f1450R;
            layoutParams.f1350S = bVar2.f1474h0;
            layoutParams.f1351T = bVar2.f1476i0;
            layoutParams.f1339H = bVar2.f1452T;
            layoutParams.f1340I = bVar2.f1453U;
            layoutParams.f1343L = bVar2.f1454V;
            layoutParams.f1344M = bVar2.f1455W;
            layoutParams.f1341J = bVar2.f1456X;
            layoutParams.f1342K = bVar2.f1457Y;
            layoutParams.f1345N = bVar2.f1458Z;
            layoutParams.f1346O = bVar2.f1460a0;
            layoutParams.f1349R = bVar2.f1435C;
            layoutParams.f1362c = bVar2.f1471g;
            layoutParams.f1358a = bVar2.f1467e;
            layoutParams.f1360b = bVar2.f1469f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = bVar2.f1463c;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = bVar2.f1465d;
            String str = bVar2.f1472g0;
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
            C0222a aVar = new C0222a();
            aVar.f1429d.m13774a(this.f1429d);
            aVar.f1428c.m13772a(this.f1428c);
            aVar.f1427b.m13770a(this.f1427b);
            aVar.f1430e.m13768a(this.f1430e);
            aVar.f1426a = this.f1426a;
            return aVar;
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
        public void m13774a(C0223b bVar) {
            this.f1459a = bVar.f1459a;
            this.f1463c = bVar.f1463c;
            this.f1461b = bVar.f1461b;
            this.f1465d = bVar.f1465d;
            this.f1467e = bVar.f1467e;
            this.f1469f = bVar.f1469f;
            this.f1471g = bVar.f1471g;
            this.f1473h = bVar.f1473h;
            this.f1475i = bVar.f1475i;
            this.f1477j = bVar.f1477j;
            this.f1479k = bVar.f1479k;
            this.f1480l = bVar.f1480l;
            this.f1481m = bVar.f1481m;
            this.f1482n = bVar.f1482n;
            this.f1483o = bVar.f1483o;
            this.f1484p = bVar.f1484p;
            this.f1485q = bVar.f1485q;
            this.f1486r = bVar.f1486r;
            this.f1487s = bVar.f1487s;
            this.f1488t = bVar.f1488t;
            this.f1489u = bVar.f1489u;
            this.f1490v = bVar.f1490v;
            this.f1491w = bVar.f1491w;
            this.f1492x = bVar.f1492x;
            this.f1493y = bVar.f1493y;
            this.f1494z = bVar.f1494z;
            this.f1433A = bVar.f1433A;
            this.f1434B = bVar.f1434B;
            this.f1435C = bVar.f1435C;
            this.f1436D = bVar.f1436D;
            this.f1437E = bVar.f1437E;
            this.f1438F = bVar.f1438F;
            this.f1439G = bVar.f1439G;
            this.f1440H = bVar.f1440H;
            this.f1441I = bVar.f1441I;
            this.f1442J = bVar.f1442J;
            this.f1443K = bVar.f1443K;
            this.f1444L = bVar.f1444L;
            this.f1445M = bVar.f1445M;
            this.f1446N = bVar.f1446N;
            this.f1447O = bVar.f1447O;
            this.f1448P = bVar.f1448P;
            this.f1449Q = bVar.f1449Q;
            this.f1450R = bVar.f1450R;
            this.f1451S = bVar.f1451S;
            this.f1452T = bVar.f1452T;
            this.f1453U = bVar.f1453U;
            this.f1454V = bVar.f1454V;
            this.f1455W = bVar.f1455W;
            this.f1456X = bVar.f1456X;
            this.f1457Y = bVar.f1457Y;
            this.f1458Z = bVar.f1458Z;
            this.f1460a0 = bVar.f1460a0;
            this.f1462b0 = bVar.f1462b0;
            this.f1464c0 = bVar.f1464c0;
            this.f1466d0 = bVar.f1466d0;
            this.f1472g0 = bVar.f1472g0;
            int[] iArr = bVar.f1468e0;
            if (iArr != null) {
                this.f1468e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f1468e0 = null;
            }
            this.f1470f0 = bVar.f1470f0;
            this.f1474h0 = bVar.f1474h0;
            this.f1476i0 = bVar.f1476i0;
            this.f1478j0 = bVar.f1478j0;
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
        public void m13772a(C0224c cVar) {
            this.f1496a = cVar.f1496a;
            this.f1497b = cVar.f1497b;
            this.f1498c = cVar.f1498c;
            this.f1499d = cVar.f1499d;
            this.f1500e = cVar.f1500e;
            this.f1502g = cVar.f1502g;
            this.f1501f = cVar.f1501f;
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
        public void m13770a(C0225d dVar) {
            this.f1503a = dVar.f1503a;
            this.f1504b = dVar.f1504b;
            this.f1506d = dVar.f1506d;
            this.f1507e = dVar.f1507e;
            this.f1505c = dVar.f1505c;
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
        public void m13768a(C0226e eVar) {
            this.f1509a = eVar.f1509a;
            this.f1510b = eVar.f1510b;
            this.f1511c = eVar.f1511c;
            this.f1512d = eVar.f1512d;
            this.f1513e = eVar.f1513e;
            this.f1514f = eVar.f1514f;
            this.f1515g = eVar.f1515g;
            this.f1516h = eVar.f1516h;
            this.f1517i = eVar.f1517i;
            this.f1518j = eVar.f1518j;
            this.f1519k = eVar.f1519k;
            this.f1520l = eVar.f1520l;
            this.f1521m = eVar.f1521m;
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
                        Object i6 = ((ConstraintLayout) view.getParent()).m13841i(0, trim);
                        i5 = i4;
                        if (i6 != null) {
                            i5 = i4;
                            if (i6 instanceof Integer) {
                                i5 = ((Integer) i6).intValue();
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
        C0222a aVar = new C0222a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Constraint);
        m13783z(context, aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    /* renamed from: o */
    private C0222a m13794o(int i) {
        if (!this.f1425c.containsKey(Integer.valueOf(i))) {
            this.f1425c.put(Integer.valueOf(i), new C0222a());
        }
        return this.f1425c.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
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
    private void m13783z(Context context, C0222a aVar, TypedArray typedArray) {
        String str;
        C0224c cVar;
        String str2;
        StringBuilder sb;
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (!(index == C0229e.Constraint_android_id || C0229e.Constraint_android_layout_marginStart == index || C0229e.Constraint_android_layout_marginEnd == index)) {
                aVar.f1428c.f1496a = true;
                aVar.f1429d.f1461b = true;
                aVar.f1427b.f1503a = true;
                aVar.f1430e.f1509a = true;
            }
            switch (f1422e.get(index)) {
                case 1:
                    C0223b bVar = aVar.f1429d;
                    bVar.f1484p = m13784y(typedArray, index, bVar.f1484p);
                    continue;
                case 2:
                    C0223b bVar2 = aVar.f1429d;
                    bVar2.f1439G = typedArray.getDimensionPixelSize(index, bVar2.f1439G);
                    continue;
                case 3:
                    C0223b bVar3 = aVar.f1429d;
                    bVar3.f1483o = m13784y(typedArray, index, bVar3.f1483o);
                    continue;
                case 4:
                    C0223b bVar4 = aVar.f1429d;
                    bVar4.f1482n = m13784y(typedArray, index, bVar4.f1482n);
                    continue;
                case 5:
                    aVar.f1429d.f1491w = typedArray.getString(index);
                    continue;
                case 6:
                    C0223b bVar5 = aVar.f1429d;
                    bVar5.f1433A = typedArray.getDimensionPixelOffset(index, bVar5.f1433A);
                    continue;
                case 7:
                    C0223b bVar6 = aVar.f1429d;
                    bVar6.f1434B = typedArray.getDimensionPixelOffset(index, bVar6.f1434B);
                    continue;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0223b bVar7 = aVar.f1429d;
                        bVar7.f1440H = typedArray.getDimensionPixelSize(index, bVar7.f1440H);
                    } else {
                        continue;
                    }
                case 9:
                    C0223b bVar8 = aVar.f1429d;
                    bVar8.f1488t = m13784y(typedArray, index, bVar8.f1488t);
                    continue;
                case 10:
                    C0223b bVar9 = aVar.f1429d;
                    bVar9.f1487s = m13784y(typedArray, index, bVar9.f1487s);
                    continue;
                case 11:
                    C0223b bVar10 = aVar.f1429d;
                    bVar10.f1445M = typedArray.getDimensionPixelSize(index, bVar10.f1445M);
                    continue;
                case 12:
                    C0223b bVar11 = aVar.f1429d;
                    bVar11.f1446N = typedArray.getDimensionPixelSize(index, bVar11.f1446N);
                    continue;
                case 13:
                    C0223b bVar12 = aVar.f1429d;
                    bVar12.f1442J = typedArray.getDimensionPixelSize(index, bVar12.f1442J);
                    continue;
                case 14:
                    C0223b bVar13 = aVar.f1429d;
                    bVar13.f1444L = typedArray.getDimensionPixelSize(index, bVar13.f1444L);
                    continue;
                case 15:
                    C0223b bVar14 = aVar.f1429d;
                    bVar14.f1447O = typedArray.getDimensionPixelSize(index, bVar14.f1447O);
                    continue;
                case 16:
                    C0223b bVar15 = aVar.f1429d;
                    bVar15.f1443K = typedArray.getDimensionPixelSize(index, bVar15.f1443K);
                    continue;
                case 17:
                    C0223b bVar16 = aVar.f1429d;
                    bVar16.f1467e = typedArray.getDimensionPixelOffset(index, bVar16.f1467e);
                    continue;
                case 18:
                    C0223b bVar17 = aVar.f1429d;
                    bVar17.f1469f = typedArray.getDimensionPixelOffset(index, bVar17.f1469f);
                    continue;
                case 19:
                    C0223b bVar18 = aVar.f1429d;
                    bVar18.f1471g = typedArray.getFloat(index, bVar18.f1471g);
                    continue;
                case 20:
                    C0223b bVar19 = aVar.f1429d;
                    bVar19.f1489u = typedArray.getFloat(index, bVar19.f1489u);
                    continue;
                case 21:
                    C0223b bVar20 = aVar.f1429d;
                    bVar20.f1465d = typedArray.getLayoutDimension(index, bVar20.f1465d);
                    continue;
                case 22:
                    C0225d dVar = aVar.f1427b;
                    dVar.f1504b = typedArray.getInt(index, dVar.f1504b);
                    C0225d dVar2 = aVar.f1427b;
                    dVar2.f1504b = f1421d[dVar2.f1504b];
                    continue;
                case 23:
                    C0223b bVar21 = aVar.f1429d;
                    bVar21.f1463c = typedArray.getLayoutDimension(index, bVar21.f1463c);
                    continue;
                case 24:
                    C0223b bVar22 = aVar.f1429d;
                    bVar22.f1436D = typedArray.getDimensionPixelSize(index, bVar22.f1436D);
                    continue;
                case 25:
                    C0223b bVar23 = aVar.f1429d;
                    bVar23.f1473h = m13784y(typedArray, index, bVar23.f1473h);
                    continue;
                case 26:
                    C0223b bVar24 = aVar.f1429d;
                    bVar24.f1475i = m13784y(typedArray, index, bVar24.f1475i);
                    continue;
                case 27:
                    C0223b bVar25 = aVar.f1429d;
                    bVar25.f1435C = typedArray.getInt(index, bVar25.f1435C);
                    continue;
                case 28:
                    C0223b bVar26 = aVar.f1429d;
                    bVar26.f1437E = typedArray.getDimensionPixelSize(index, bVar26.f1437E);
                    continue;
                case 29:
                    C0223b bVar27 = aVar.f1429d;
                    bVar27.f1477j = m13784y(typedArray, index, bVar27.f1477j);
                    continue;
                case 30:
                    C0223b bVar28 = aVar.f1429d;
                    bVar28.f1479k = m13784y(typedArray, index, bVar28.f1479k);
                    continue;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0223b bVar29 = aVar.f1429d;
                        bVar29.f1441I = typedArray.getDimensionPixelSize(index, bVar29.f1441I);
                    } else {
                        continue;
                    }
                case 32:
                    C0223b bVar30 = aVar.f1429d;
                    bVar30.f1485q = m13784y(typedArray, index, bVar30.f1485q);
                    continue;
                case 33:
                    C0223b bVar31 = aVar.f1429d;
                    bVar31.f1486r = m13784y(typedArray, index, bVar31.f1486r);
                    continue;
                case 34:
                    C0223b bVar32 = aVar.f1429d;
                    bVar32.f1438F = typedArray.getDimensionPixelSize(index, bVar32.f1438F);
                    continue;
                case 35:
                    C0223b bVar33 = aVar.f1429d;
                    bVar33.f1481m = m13784y(typedArray, index, bVar33.f1481m);
                    continue;
                case 36:
                    C0223b bVar34 = aVar.f1429d;
                    bVar34.f1480l = m13784y(typedArray, index, bVar34.f1480l);
                    continue;
                case 37:
                    C0223b bVar35 = aVar.f1429d;
                    bVar35.f1490v = typedArray.getFloat(index, bVar35.f1490v);
                    continue;
                case 38:
                    aVar.f1426a = typedArray.getResourceId(index, aVar.f1426a);
                    continue;
                case 39:
                    C0223b bVar36 = aVar.f1429d;
                    bVar36.f1449Q = typedArray.getFloat(index, bVar36.f1449Q);
                    continue;
                case 40:
                    C0223b bVar37 = aVar.f1429d;
                    bVar37.f1448P = typedArray.getFloat(index, bVar37.f1448P);
                    continue;
                case 41:
                    C0223b bVar38 = aVar.f1429d;
                    bVar38.f1450R = typedArray.getInt(index, bVar38.f1450R);
                    continue;
                case 42:
                    C0223b bVar39 = aVar.f1429d;
                    bVar39.f1451S = typedArray.getInt(index, bVar39.f1451S);
                    continue;
                case 43:
                    C0225d dVar3 = aVar.f1427b;
                    dVar3.f1506d = typedArray.getFloat(index, dVar3.f1506d);
                    continue;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0226e eVar = aVar.f1430e;
                        eVar.f1520l = true;
                        eVar.f1521m = typedArray.getDimension(index, eVar.f1521m);
                    } else {
                        continue;
                    }
                case 45:
                    C0226e eVar2 = aVar.f1430e;
                    eVar2.f1511c = typedArray.getFloat(index, eVar2.f1511c);
                    continue;
                case 46:
                    C0226e eVar3 = aVar.f1430e;
                    eVar3.f1512d = typedArray.getFloat(index, eVar3.f1512d);
                    continue;
                case 47:
                    C0226e eVar4 = aVar.f1430e;
                    eVar4.f1513e = typedArray.getFloat(index, eVar4.f1513e);
                    continue;
                case 48:
                    C0226e eVar5 = aVar.f1430e;
                    eVar5.f1514f = typedArray.getFloat(index, eVar5.f1514f);
                    continue;
                case 49:
                    C0226e eVar6 = aVar.f1430e;
                    eVar6.f1515g = typedArray.getDimension(index, eVar6.f1515g);
                    continue;
                case 50:
                    C0226e eVar7 = aVar.f1430e;
                    eVar7.f1516h = typedArray.getDimension(index, eVar7.f1516h);
                    continue;
                case 51:
                    C0226e eVar8 = aVar.f1430e;
                    eVar8.f1517i = typedArray.getDimension(index, eVar8.f1517i);
                    continue;
                case 52:
                    C0226e eVar9 = aVar.f1430e;
                    eVar9.f1518j = typedArray.getDimension(index, eVar9.f1518j);
                    continue;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0226e eVar10 = aVar.f1430e;
                        eVar10.f1519k = typedArray.getDimension(index, eVar10.f1519k);
                    } else {
                        continue;
                    }
                case 54:
                    C0223b bVar40 = aVar.f1429d;
                    bVar40.f1452T = typedArray.getInt(index, bVar40.f1452T);
                    continue;
                case 55:
                    C0223b bVar41 = aVar.f1429d;
                    bVar41.f1453U = typedArray.getInt(index, bVar41.f1453U);
                    continue;
                case 56:
                    C0223b bVar42 = aVar.f1429d;
                    bVar42.f1454V = typedArray.getDimensionPixelSize(index, bVar42.f1454V);
                    continue;
                case 57:
                    C0223b bVar43 = aVar.f1429d;
                    bVar43.f1455W = typedArray.getDimensionPixelSize(index, bVar43.f1455W);
                    continue;
                case 58:
                    C0223b bVar44 = aVar.f1429d;
                    bVar44.f1456X = typedArray.getDimensionPixelSize(index, bVar44.f1456X);
                    continue;
                case 59:
                    C0223b bVar45 = aVar.f1429d;
                    bVar45.f1457Y = typedArray.getDimensionPixelSize(index, bVar45.f1457Y);
                    continue;
                case 60:
                    C0226e eVar11 = aVar.f1430e;
                    eVar11.f1510b = typedArray.getFloat(index, eVar11.f1510b);
                    continue;
                case 61:
                    C0223b bVar46 = aVar.f1429d;
                    bVar46.f1492x = m13784y(typedArray, index, bVar46.f1492x);
                    continue;
                case 62:
                    C0223b bVar47 = aVar.f1429d;
                    bVar47.f1493y = typedArray.getDimensionPixelSize(index, bVar47.f1493y);
                    continue;
                case 63:
                    C0223b bVar48 = aVar.f1429d;
                    bVar48.f1494z = typedArray.getFloat(index, bVar48.f1494z);
                    continue;
                case 64:
                    C0224c cVar2 = aVar.f1428c;
                    cVar2.f1497b = m13784y(typedArray, index, cVar2.f1497b);
                    continue;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        cVar = aVar.f1428c;
                        str = typedArray.getString(index);
                    } else {
                        cVar = aVar.f1428c;
                        str = c.c[typedArray.getInteger(index, 0)];
                    }
                    cVar.f1498c = str;
                    continue;
                case 66:
                    aVar.f1428c.f1500e = typedArray.getInt(index, 0);
                    continue;
                case 67:
                    C0224c cVar3 = aVar.f1428c;
                    cVar3.f1502g = typedArray.getFloat(index, cVar3.f1502g);
                    continue;
                case 68:
                    C0225d dVar4 = aVar.f1427b;
                    dVar4.f1507e = typedArray.getFloat(index, dVar4.f1507e);
                    continue;
                case 69:
                    aVar.f1429d.f1458Z = typedArray.getFloat(index, 1.0f);
                    continue;
                case 70:
                    aVar.f1429d.f1460a0 = typedArray.getFloat(index, 1.0f);
                    continue;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    continue;
                case 72:
                    C0223b bVar49 = aVar.f1429d;
                    bVar49.f1462b0 = typedArray.getInt(index, bVar49.f1462b0);
                    continue;
                case 73:
                    C0223b bVar50 = aVar.f1429d;
                    bVar50.f1464c0 = typedArray.getDimensionPixelSize(index, bVar50.f1464c0);
                    continue;
                case 74:
                    aVar.f1429d.f1470f0 = typedArray.getString(index);
                    continue;
                case 75:
                    C0223b bVar51 = aVar.f1429d;
                    bVar51.f1478j0 = typedArray.getBoolean(index, bVar51.f1478j0);
                    continue;
                case 76:
                    C0224c cVar4 = aVar.f1428c;
                    cVar4.f1499d = typedArray.getInt(index, cVar4.f1499d);
                    continue;
                case 77:
                    aVar.f1429d.f1472g0 = typedArray.getString(index);
                    continue;
                case 78:
                    C0225d dVar5 = aVar.f1427b;
                    dVar5.f1505c = typedArray.getInt(index, dVar5.f1505c);
                    continue;
                case 79:
                    C0224c cVar5 = aVar.f1428c;
                    cVar5.f1501f = typedArray.getFloat(index, cVar5.f1501f);
                    continue;
                case 80:
                    C0223b bVar52 = aVar.f1429d;
                    bVar52.f1474h0 = typedArray.getBoolean(index, bVar52.f1474h0);
                    continue;
                case 81:
                    C0223b bVar53 = aVar.f1429d;
                    bVar53.f1476i0 = typedArray.getBoolean(index, bVar53.f1476i0);
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
            if (!this.f1424b || id != -1) {
                if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                    this.f1425c.put(Integer.valueOf(id), new C0222a());
                }
                C0222a aVar = this.f1425c.get(Integer.valueOf(id));
                if (!aVar.f1429d.f1461b) {
                    aVar.m13777f(id, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        aVar.f1429d.f1468e0 = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = childAt;
                            aVar.f1429d.f1478j0 = barrier.v();
                            aVar.f1429d.f1462b0 = barrier.getType();
                            aVar.f1429d.f1464c0 = barrier.getMargin();
                        }
                    }
                    aVar.f1429d.f1461b = true;
                }
                C0225d dVar = aVar.f1427b;
                if (!dVar.f1503a) {
                    dVar.f1504b = childAt.getVisibility();
                    aVar.f1427b.f1506d = childAt.getAlpha();
                    aVar.f1427b.f1503a = true;
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 17) {
                    C0226e eVar = aVar.f1430e;
                    if (!eVar.f1509a) {
                        eVar.f1509a = true;
                        eVar.f1510b = childAt.getRotation();
                        aVar.f1430e.f1511c = childAt.getRotationX();
                        aVar.f1430e.f1512d = childAt.getRotationY();
                        aVar.f1430e.f1513e = childAt.getScaleX();
                        aVar.f1430e.f1514f = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                            C0226e eVar2 = aVar.f1430e;
                            eVar2.f1515g = pivotX;
                            eVar2.f1516h = pivotY;
                        }
                        aVar.f1430e.f1517i = childAt.getTranslationX();
                        aVar.f1430e.f1518j = childAt.getTranslationY();
                        if (i2 >= 21) {
                            aVar.f1430e.f1519k = childAt.getTranslationZ();
                            C0226e eVar3 = aVar.f1430e;
                            if (eVar3.f1520l) {
                                eVar3.f1521m = childAt.getElevation();
                            }
                        }
                    }
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* renamed from: B */
    public void m13811B(C0221b bVar) {
        for (Integer num : bVar.f1425c.keySet()) {
            int intValue = num.intValue();
            C0222a aVar = bVar.f1425c.get(num);
            if (!this.f1425c.containsKey(Integer.valueOf(intValue))) {
                this.f1425c.put(Integer.valueOf(intValue), new C0222a());
            }
            C0222a aVar2 = this.f1425c.get(Integer.valueOf(intValue));
            C0223b bVar2 = aVar2.f1429d;
            if (!bVar2.f1461b) {
                bVar2.m13774a(aVar.f1429d);
            }
            C0225d dVar = aVar2.f1427b;
            if (!dVar.f1503a) {
                dVar.m13770a(aVar.f1427b);
            }
            C0226e eVar = aVar2.f1430e;
            if (!eVar.f1509a) {
                eVar.m13768a(aVar.f1430e);
            }
            C0224c cVar = aVar2.f1428c;
            if (!cVar.f1496a) {
                cVar.m13772a(aVar.f1428c);
            }
            for (String str : aVar.f1431f.keySet()) {
                if (!aVar2.f1431f.containsKey(str)) {
                    aVar2.f1431f.put(str, aVar.f1431f.get(str));
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
            } else if (this.f1425c.containsKey(Integer.valueOf(id))) {
                ConstraintAttribute.m13865h(childAt, this.f1425c.get(Integer.valueOf(id)).f1431f);
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
            C0222a aVar = this.f1425c.get(Integer.valueOf(id));
            if (constraintWidget instanceof h) {
                constraintHelper.m13853n(aVar, (h) constraintWidget, layoutParams, sparseArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
            } else if (id != -1) {
                if (this.f1425c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C0222a aVar = this.f1425c.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        aVar.f1429d.f1466d0 = 1;
                    }
                    int i2 = aVar.f1429d.f1466d0;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(aVar.f1429d.f1462b0);
                        barrier.setMargin(aVar.f1429d.f1464c0);
                        barrier.setAllowsGoneWidget(aVar.f1429d.f1478j0);
                        C0223b bVar = aVar.f1429d;
                        int[] iArr = bVar.f1468e0;
                        if (iArr != null) {
                            barrier.setReferencedIds(iArr);
                        } else {
                            String str = bVar.f1470f0;
                            if (str != null) {
                                bVar.f1468e0 = m13796m(barrier, str);
                                barrier.setReferencedIds(aVar.f1429d.f1468e0);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.m13826c();
                    aVar.m13779d(layoutParams);
                    if (z) {
                        ConstraintAttribute.m13865h(childAt, aVar.f1431f);
                    }
                    childAt.setLayoutParams(layoutParams);
                    C0225d dVar = aVar.f1427b;
                    if (dVar.f1505c == 0) {
                        childAt.setVisibility(dVar.f1504b);
                    }
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 17) {
                        childAt.setAlpha(aVar.f1427b.f1506d);
                        childAt.setRotation(aVar.f1430e.f1510b);
                        childAt.setRotationX(aVar.f1430e.f1511c);
                        childAt.setRotationY(aVar.f1430e.f1512d);
                        childAt.setScaleX(aVar.f1430e.f1513e);
                        childAt.setScaleY(aVar.f1430e.f1514f);
                        if (!Float.isNaN(aVar.f1430e.f1515g)) {
                            childAt.setPivotX(aVar.f1430e.f1515g);
                        }
                        if (!Float.isNaN(aVar.f1430e.f1516h)) {
                            childAt.setPivotY(aVar.f1430e.f1516h);
                        }
                        childAt.setTranslationX(aVar.f1430e.f1517i);
                        childAt.setTranslationY(aVar.f1430e.f1518j);
                        if (i3 >= 21) {
                            childAt.setTranslationZ(aVar.f1430e.f1519k);
                            C0226e eVar = aVar.f1430e;
                            if (eVar.f1520l) {
                                childAt.setElevation(eVar.f1521m);
                            }
                        }
                    }
                } else {
                    Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0222a aVar2 = this.f1425c.get(num);
            int i4 = aVar2.f1429d.f1466d0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C0223b bVar2 = aVar2.f1429d;
                int[] iArr2 = bVar2.f1468e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = bVar2.f1470f0;
                    if (str2 != null) {
                        bVar2.f1468e0 = m13796m(barrier2, str2);
                        barrier2.setReferencedIds(aVar2.f1429d.f1468e0);
                    }
                }
                barrier2.setType(aVar2.f1429d.f1462b0);
                barrier2.setMargin(aVar2.f1429d.f1464c0);
                ConstraintLayout.LayoutParams d = constraintLayout.generateDefaultLayoutParams();
                barrier2.m13846u();
                aVar2.m13779d(d);
                constraintLayout.addView((View) barrier2, (ViewGroup.LayoutParams) d);
            }
            if (aVar2.f1429d.f1459a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams d2 = constraintLayout.generateDefaultLayoutParams();
                aVar2.m13779d(d2);
                constraintLayout.addView(guideline, d2);
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
            C0222a aVar = this.f1425c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C0223b bVar = aVar.f1429d;
                    bVar.f1475i = -1;
                    bVar.f1473h = -1;
                    bVar.f1436D = -1;
                    bVar.f1442J = -1;
                    return;
                case 2:
                    C0223b bVar2 = aVar.f1429d;
                    bVar2.f1479k = -1;
                    bVar2.f1477j = -1;
                    bVar2.f1437E = -1;
                    bVar2.f1444L = -1;
                    return;
                case 3:
                    C0223b bVar3 = aVar.f1429d;
                    bVar3.f1481m = -1;
                    bVar3.f1480l = -1;
                    bVar3.f1438F = -1;
                    bVar3.f1443K = -1;
                    return;
                case 4:
                    C0223b bVar4 = aVar.f1429d;
                    bVar4.f1482n = -1;
                    bVar4.f1483o = -1;
                    bVar4.f1439G = -1;
                    bVar4.f1445M = -1;
                    return;
                case 5:
                    aVar.f1429d.f1484p = -1;
                    return;
                case 6:
                    C0223b bVar5 = aVar.f1429d;
                    bVar5.f1485q = -1;
                    bVar5.f1486r = -1;
                    bVar5.f1441I = -1;
                    bVar5.f1447O = -1;
                    return;
                case 7:
                    C0223b bVar6 = aVar.f1429d;
                    bVar6.f1487s = -1;
                    bVar6.f1488t = -1;
                    bVar6.f1440H = -1;
                    bVar6.f1446N = -1;
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
            if (!this.f1424b || id != -1) {
                if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                    this.f1425c.put(Integer.valueOf(id), new C0222a());
                }
                C0222a aVar = this.f1425c.get(Integer.valueOf(id));
                aVar.f1431f = ConstraintAttribute.m13871b(this.f1423a, childAt);
                aVar.m13777f(id, layoutParams);
                aVar.f1427b.f1504b = childAt.getVisibility();
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 17) {
                    aVar.f1427b.f1506d = childAt.getAlpha();
                    aVar.f1430e.f1510b = childAt.getRotation();
                    aVar.f1430e.f1511c = childAt.getRotationX();
                    aVar.f1430e.f1512d = childAt.getRotationY();
                    aVar.f1430e.f1513e = childAt.getScaleX();
                    aVar.f1430e.f1514f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                        C0226e eVar = aVar.f1430e;
                        eVar.f1515g = pivotX;
                        eVar.f1516h = pivotY;
                    }
                    aVar.f1430e.f1517i = childAt.getTranslationX();
                    aVar.f1430e.f1518j = childAt.getTranslationY();
                    if (i2 >= 21) {
                        aVar.f1430e.f1519k = childAt.getTranslationZ();
                        C0226e eVar2 = aVar.f1430e;
                        if (eVar2.f1520l) {
                            eVar2.f1521m = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = childAt;
                    aVar.f1429d.f1478j0 = barrier.v();
                    aVar.f1429d.f1468e0 = barrier.getReferencedIds();
                    aVar.f1429d.f1462b0 = barrier.getType();
                    aVar.f1429d.f1464c0 = barrier.getMargin();
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
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
            if (!this.f1424b || id != -1) {
                if (!this.f1425c.containsKey(Integer.valueOf(id))) {
                    this.f1425c.put(Integer.valueOf(id), new C0222a());
                }
                C0222a aVar = this.f1425c.get(Integer.valueOf(id));
                if (childAt instanceof ConstraintHelper) {
                    aVar.m13775h((ConstraintHelper) childAt, id, layoutParams);
                }
                aVar.m13776g(id, layoutParams);
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* renamed from: l */
    public void m13797l(int i, int i2, int i3, float f) {
        C0223b bVar = m13794o(i).f1429d;
        bVar.f1492x = i2;
        bVar.f1493y = i3;
        bVar.f1494z = f;
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
                    C0222a n = m13795n(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        n.f1429d.f1459a = true;
                    }
                    this.f1425c.put(Integer.valueOf(n.f1426a), n);
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
        try {
            int eventType = xmlPullParser.getEventType();
            C0222a aVar = null;
            while (eventType != 1) {
                if (eventType != 0) {
                    char c = 3;
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -2025855158:
                                if (name.equals("Layout")) {
                                    c = 5;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    c = 6;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    c = 7;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                                aVar = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case 1:
                                aVar = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                                C0223b bVar = aVar.f1429d;
                                bVar.f1459a = true;
                                bVar.f1461b = true;
                                break;
                            case 2:
                                aVar = m13795n(context, Xml.asAttributeSet(xmlPullParser));
                                aVar.f1429d.f1466d0 = 1;
                                break;
                            case 3:
                                if (aVar != null) {
                                    aVar.f1427b.m13769b(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 4:
                                if (aVar != null) {
                                    aVar.f1430e.m13767b(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 5:
                                if (aVar != null) {
                                    aVar.f1429d.m13773b(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 6:
                                if (aVar != null) {
                                    aVar.f1428c.m13771b(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 7:
                                if (aVar != null) {
                                    ConstraintAttribute.m13866g(context, xmlPullParser, aVar.f1431f);
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            default:
                                aVar = aVar;
                                break;
                        }
                    } else if (eventType != 3) {
                        aVar = aVar;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if (!"ConstraintSet".equals(name2)) {
                            aVar = aVar;
                            if (name2.equalsIgnoreCase("Constraint")) {
                                this.f1425c.put(Integer.valueOf(aVar.f1426a), aVar);
                                aVar = null;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    xmlPullParser.getName();
                    aVar = aVar;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
