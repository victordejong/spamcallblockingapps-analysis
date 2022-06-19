package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.d;
import androidx.constraintlayout.solver.widgets.f;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: b */
    SparseArray<View> f1315b = new SparseArray<>();

    /* renamed from: c */
    private ArrayList<ConstraintHelper> f1316c = new ArrayList<>(4);

    /* renamed from: d */
    protected d f1317d = new d();

    /* renamed from: e */
    private int f1318e = 0;

    /* renamed from: f */
    private int f1319f = 0;

    /* renamed from: g */
    private int f1320g = Integer.MAX_VALUE;

    /* renamed from: h */
    private int f1321h = Integer.MAX_VALUE;

    /* renamed from: i */
    protected boolean f1322i = true;

    /* renamed from: j */
    private int f1323j = 263;

    /* renamed from: k */
    private C0221b f1324k = null;

    /* renamed from: l */
    protected C0218a f1325l = null;

    /* renamed from: m */
    private int f1326m = -1;

    /* renamed from: n */
    private HashMap<String, Integer> f1327n = new HashMap<>();

    /* renamed from: o */
    private int f1328o = -1;

    /* renamed from: p */
    private int f1329p = -1;

    /* renamed from: q */
    private SparseArray<ConstraintWidget> f1330q = new SparseArray<>();

    /* renamed from: r */
    b f1331r = new b(this, this);

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f1332A;

        /* renamed from: B */
        public String f1333B;

        /* renamed from: C */
        int f1334C;

        /* renamed from: D */
        public float f1335D;

        /* renamed from: E */
        public float f1336E;

        /* renamed from: F */
        public int f1337F;

        /* renamed from: G */
        public int f1338G;

        /* renamed from: H */
        public int f1339H;

        /* renamed from: I */
        public int f1340I;

        /* renamed from: J */
        public int f1341J;

        /* renamed from: K */
        public int f1342K;

        /* renamed from: L */
        public int f1343L;

        /* renamed from: M */
        public int f1344M;

        /* renamed from: N */
        public float f1345N;

        /* renamed from: O */
        public float f1346O;

        /* renamed from: P */
        public int f1347P;

        /* renamed from: Q */
        public int f1348Q;

        /* renamed from: R */
        public int f1349R;

        /* renamed from: S */
        public boolean f1350S;

        /* renamed from: T */
        public boolean f1351T;

        /* renamed from: U */
        public String f1352U;

        /* renamed from: V */
        boolean f1353V;

        /* renamed from: W */
        boolean f1354W;

        /* renamed from: X */
        boolean f1355X;

        /* renamed from: Y */
        boolean f1356Y;

        /* renamed from: Z */
        boolean f1357Z;

        /* renamed from: a */
        public int f1358a;

        /* renamed from: a0 */
        boolean f1359a0;

        /* renamed from: b */
        public int f1360b;

        /* renamed from: b0 */
        boolean f1361b0;

        /* renamed from: c */
        public float f1362c;

        /* renamed from: c0 */
        int f1363c0;

        /* renamed from: d */
        public int f1364d;

        /* renamed from: d0 */
        int f1365d0;

        /* renamed from: e */
        public int f1366e;

        /* renamed from: e0 */
        int f1367e0;

        /* renamed from: f */
        public int f1368f;

        /* renamed from: f0 */
        int f1369f0;

        /* renamed from: g */
        public int f1370g;

        /* renamed from: g0 */
        int f1371g0;

        /* renamed from: h */
        public int f1372h;

        /* renamed from: h0 */
        int f1373h0;

        /* renamed from: i */
        public int f1374i;

        /* renamed from: i0 */
        float f1375i0;

        /* renamed from: j */
        public int f1376j;

        /* renamed from: j0 */
        int f1377j0;

        /* renamed from: k */
        public int f1378k;

        /* renamed from: k0 */
        int f1379k0;

        /* renamed from: l */
        public int f1380l;

        /* renamed from: l0 */
        float f1381l0;

        /* renamed from: m */
        public int f1382m;

        /* renamed from: m0 */
        ConstraintWidget f1383m0;

        /* renamed from: n */
        public int f1384n;

        /* renamed from: n0 */
        public boolean f1385n0;

        /* renamed from: o */
        public float f1386o;

        /* renamed from: p */
        public int f1387p;

        /* renamed from: q */
        public int f1388q;

        /* renamed from: r */
        public int f1389r;

        /* renamed from: s */
        public int f1390s;

        /* renamed from: t */
        public int f1391t;

        /* renamed from: u */
        public int f1392u;

        /* renamed from: v */
        public int f1393v;

        /* renamed from: w */
        public int f1394w;

        /* renamed from: x */
        public int f1395x;

        /* renamed from: y */
        public int f1396y;

        /* renamed from: z */
        public float f1397z;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        public static class C0216a {

            /* renamed from: a */
            public static final SparseIntArray f1398a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1398a = sparseIntArray;
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C0229e.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f1398a.append(C0229e.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1358a = -1;
            this.f1360b = -1;
            this.f1362c = -1.0f;
            this.f1364d = -1;
            this.f1366e = -1;
            this.f1368f = -1;
            this.f1370g = -1;
            this.f1372h = -1;
            this.f1374i = -1;
            this.f1376j = -1;
            this.f1378k = -1;
            this.f1380l = -1;
            this.f1382m = -1;
            this.f1384n = 0;
            this.f1386o = 0.0f;
            this.f1387p = -1;
            this.f1388q = -1;
            this.f1389r = -1;
            this.f1390s = -1;
            this.f1391t = -1;
            this.f1392u = -1;
            this.f1393v = -1;
            this.f1394w = -1;
            this.f1395x = -1;
            this.f1396y = -1;
            this.f1397z = 0.5f;
            this.f1332A = 0.5f;
            this.f1333B = null;
            this.f1334C = 1;
            this.f1335D = -1.0f;
            this.f1336E = -1.0f;
            this.f1337F = 0;
            this.f1338G = 0;
            this.f1339H = 0;
            this.f1340I = 0;
            this.f1341J = 0;
            this.f1342K = 0;
            this.f1343L = 0;
            this.f1344M = 0;
            this.f1345N = 1.0f;
            this.f1346O = 1.0f;
            this.f1347P = -1;
            this.f1348Q = -1;
            this.f1349R = -1;
            this.f1350S = false;
            this.f1351T = false;
            this.f1352U = null;
            this.f1353V = true;
            this.f1354W = true;
            this.f1355X = false;
            this.f1356Y = false;
            this.f1357Z = false;
            this.f1359a0 = false;
            this.f1361b0 = false;
            this.f1363c0 = -1;
            this.f1365d0 = -1;
            this.f1367e0 = -1;
            this.f1369f0 = -1;
            this.f1371g0 = -1;
            this.f1373h0 = -1;
            this.f1375i0 = 0.5f;
            this.f1383m0 = new ConstraintWidget();
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            String str;
            int i;
            this.f1358a = -1;
            this.f1360b = -1;
            this.f1362c = -1.0f;
            this.f1364d = -1;
            this.f1366e = -1;
            this.f1368f = -1;
            this.f1370g = -1;
            this.f1372h = -1;
            this.f1374i = -1;
            this.f1376j = -1;
            this.f1378k = -1;
            this.f1380l = -1;
            this.f1382m = -1;
            this.f1384n = 0;
            this.f1386o = 0.0f;
            this.f1387p = -1;
            this.f1388q = -1;
            this.f1389r = -1;
            this.f1390s = -1;
            this.f1391t = -1;
            this.f1392u = -1;
            this.f1393v = -1;
            this.f1394w = -1;
            this.f1395x = -1;
            this.f1396y = -1;
            this.f1397z = 0.5f;
            this.f1332A = 0.5f;
            this.f1333B = null;
            this.f1334C = 1;
            this.f1335D = -1.0f;
            this.f1336E = -1.0f;
            this.f1337F = 0;
            this.f1338G = 0;
            this.f1339H = 0;
            this.f1340I = 0;
            this.f1341J = 0;
            this.f1342K = 0;
            this.f1343L = 0;
            this.f1344M = 0;
            this.f1345N = 1.0f;
            this.f1346O = 1.0f;
            this.f1347P = -1;
            this.f1348Q = -1;
            this.f1349R = -1;
            this.f1350S = false;
            this.f1351T = false;
            this.f1352U = null;
            this.f1353V = true;
            this.f1354W = true;
            this.f1355X = false;
            this.f1356Y = false;
            this.f1357Z = false;
            this.f1359a0 = false;
            this.f1361b0 = false;
            this.f1363c0 = -1;
            this.f1365d0 = -1;
            this.f1367e0 = -1;
            this.f1369f0 = -1;
            this.f1371g0 = -1;
            this.f1373h0 = -1;
            this.f1375i0 = 0.5f;
            this.f1383m0 = new ConstraintWidget();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0216a.f1398a.get(index);
                switch (i3) {
                    case 1:
                        this.f1349R = obtainStyledAttributes.getInt(index, this.f1349R);
                        continue;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f1382m);
                        this.f1382m = resourceId;
                        if (resourceId == -1) {
                            this.f1382m = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 3:
                        this.f1384n = obtainStyledAttributes.getDimensionPixelSize(index, this.f1384n);
                        continue;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f1386o) % 360.0f;
                        this.f1386o = f;
                        if (f < 0.0f) {
                            this.f1386o = (360.0f - f) % 360.0f;
                        } else {
                            continue;
                        }
                    case 5:
                        this.f1358a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1358a);
                        continue;
                    case 6:
                        this.f1360b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1360b);
                        continue;
                    case 7:
                        this.f1362c = obtainStyledAttributes.getFloat(index, this.f1362c);
                        continue;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f1364d);
                        this.f1364d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1364d = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f1366e);
                        this.f1366e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1366e = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f1368f);
                        this.f1368f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1368f = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f1370g);
                        this.f1370g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1370g = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f1372h);
                        this.f1372h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1372h = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f1374i);
                        this.f1374i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1374i = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f1376j);
                        this.f1376j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1376j = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f1378k);
                        this.f1378k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1378k = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f1380l);
                        this.f1380l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1380l = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f1387p);
                        this.f1387p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1387p = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f1388q);
                        this.f1388q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1388q = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f1389r);
                        this.f1389r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1389r = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f1390s);
                        this.f1390s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1390s = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 21:
                        this.f1391t = obtainStyledAttributes.getDimensionPixelSize(index, this.f1391t);
                        continue;
                    case 22:
                        this.f1392u = obtainStyledAttributes.getDimensionPixelSize(index, this.f1392u);
                        continue;
                    case 23:
                        this.f1393v = obtainStyledAttributes.getDimensionPixelSize(index, this.f1393v);
                        continue;
                    case 24:
                        this.f1394w = obtainStyledAttributes.getDimensionPixelSize(index, this.f1394w);
                        continue;
                    case 25:
                        this.f1395x = obtainStyledAttributes.getDimensionPixelSize(index, this.f1395x);
                        continue;
                    case 26:
                        this.f1396y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1396y);
                        continue;
                    case 27:
                        this.f1350S = obtainStyledAttributes.getBoolean(index, this.f1350S);
                        continue;
                    case 28:
                        this.f1351T = obtainStyledAttributes.getBoolean(index, this.f1351T);
                        continue;
                    case 29:
                        this.f1397z = obtainStyledAttributes.getFloat(index, this.f1397z);
                        continue;
                    case 30:
                        this.f1332A = obtainStyledAttributes.getFloat(index, this.f1332A);
                        continue;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f1339H = i4;
                        if (i4 == 1) {
                            str = "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.";
                            break;
                        } else {
                            continue;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f1340I = i5;
                        if (i5 == 1) {
                            str = "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.";
                            break;
                        } else {
                            continue;
                        }
                    case 33:
                        try {
                            this.f1341J = obtainStyledAttributes.getDimensionPixelSize(index, this.f1341J);
                            continue;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f1341J) == -2) {
                                this.f1341J = -2;
                            }
                        }
                    case 34:
                        try {
                            this.f1343L = obtainStyledAttributes.getDimensionPixelSize(index, this.f1343L);
                            continue;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f1343L) == -2) {
                                this.f1343L = -2;
                            }
                        }
                    case 35:
                        this.f1345N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f1345N));
                        this.f1339H = 2;
                        continue;
                    case 36:
                        try {
                            this.f1342K = obtainStyledAttributes.getDimensionPixelSize(index, this.f1342K);
                            continue;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f1342K) == -2) {
                                this.f1342K = -2;
                            }
                        }
                    case 37:
                        try {
                            this.f1344M = obtainStyledAttributes.getDimensionPixelSize(index, this.f1344M);
                            continue;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f1344M) == -2) {
                                this.f1344M = -2;
                            }
                        }
                    case 38:
                        this.f1346O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f1346O));
                        this.f1340I = 2;
                        continue;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f1333B = string;
                                this.f1334C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f1333B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f1333B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f1334C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f1334C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f1333B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f1333B.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f1333B.substring(i, indexOf2);
                                        String substring4 = this.f1333B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f1334C == 1) {
                                                        Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException e5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                                break;
                            case 45:
                                this.f1335D = obtainStyledAttributes.getFloat(index, this.f1335D);
                                continue;
                            case 46:
                                this.f1336E = obtainStyledAttributes.getFloat(index, this.f1336E);
                                continue;
                            case 47:
                                this.f1337F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f1338G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f1347P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1347P);
                                continue;
                            case 50:
                                this.f1348Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1348Q);
                                continue;
                            case 51:
                                this.f1352U = obtainStyledAttributes.getString(index);
                                continue;
                                continue;
                        }
                        break;
                }
                Log.e("ConstraintLayout", str);
            }
            obtainStyledAttributes.recycle();
            m13826c();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1358a = -1;
            this.f1360b = -1;
            this.f1362c = -1.0f;
            this.f1364d = -1;
            this.f1366e = -1;
            this.f1368f = -1;
            this.f1370g = -1;
            this.f1372h = -1;
            this.f1374i = -1;
            this.f1376j = -1;
            this.f1378k = -1;
            this.f1380l = -1;
            this.f1382m = -1;
            this.f1384n = 0;
            this.f1386o = 0.0f;
            this.f1387p = -1;
            this.f1388q = -1;
            this.f1389r = -1;
            this.f1390s = -1;
            this.f1391t = -1;
            this.f1392u = -1;
            this.f1393v = -1;
            this.f1394w = -1;
            this.f1395x = -1;
            this.f1396y = -1;
            this.f1397z = 0.5f;
            this.f1332A = 0.5f;
            this.f1333B = null;
            this.f1334C = 1;
            this.f1335D = -1.0f;
            this.f1336E = -1.0f;
            this.f1337F = 0;
            this.f1338G = 0;
            this.f1339H = 0;
            this.f1340I = 0;
            this.f1341J = 0;
            this.f1342K = 0;
            this.f1343L = 0;
            this.f1344M = 0;
            this.f1345N = 1.0f;
            this.f1346O = 1.0f;
            this.f1347P = -1;
            this.f1348Q = -1;
            this.f1349R = -1;
            this.f1350S = false;
            this.f1351T = false;
            this.f1352U = null;
            this.f1353V = true;
            this.f1354W = true;
            this.f1355X = false;
            this.f1356Y = false;
            this.f1357Z = false;
            this.f1359a0 = false;
            this.f1361b0 = false;
            this.f1363c0 = -1;
            this.f1365d0 = -1;
            this.f1367e0 = -1;
            this.f1369f0 = -1;
            this.f1371g0 = -1;
            this.f1373h0 = -1;
            this.f1375i0 = 0.5f;
            this.f1383m0 = new ConstraintWidget();
        }

        /* renamed from: a */
        public String m13828a() {
            return this.f1352U;
        }

        /* renamed from: b */
        public ConstraintWidget m13827b() {
            return this.f1383m0;
        }

        /* renamed from: c */
        public void m13826c() {
            this.f1356Y = false;
            this.f1353V = true;
            this.f1354W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f1350S) {
                this.f1353V = false;
                if (this.f1339H == 0) {
                    this.f1339H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f1351T) {
                this.f1354W = false;
                if (this.f1340I == 0) {
                    this.f1340I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f1353V = false;
                if (i == 0 && this.f1339H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f1350S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f1354W = false;
                if (i2 == 0 && this.f1340I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f1351T = true;
                }
            }
            if (this.f1362c == -1.0f && this.f1358a == -1 && this.f1360b == -1) {
                return;
            }
            this.f1356Y = true;
            this.f1353V = true;
            this.f1354W = true;
            if (!(this.f1383m0 instanceof f)) {
                this.f1383m0 = new f();
            }
            this.f1383m0.S0(this.f1349R);
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x01fe, code lost:
            if (r0 > 0) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0201, code lost:
            ((android.view.ViewGroup.MarginLayoutParams) r4).rightMargin = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0220, code lost:
            if (r0 > 0) goto L78;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x012a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x016d  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0230  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0248  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 614
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    static /* synthetic */ class C0217a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1399a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f1399a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1399a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1399a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1399a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        m13837p(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13837p(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13837p(attributeSet, i, 0);
    }

    private int getPaddingWidth() {
        int i = 0;
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        if (Build.VERSION.SDK_INT >= 17) {
            i = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        }
        if (i > 0) {
            max = i;
        }
        return max;
    }

    /* renamed from: j */
    private final ConstraintWidget m13840j(int i) {
        if (i == 0) {
            return this.f1317d;
        }
        View view = this.f1315b.get(i);
        View view2 = view;
        if (view == null) {
            View findViewById = findViewById(i);
            view2 = findViewById;
            if (findViewById != null) {
                view2 = findViewById;
                if (findViewById != this) {
                    view2 = findViewById;
                    if (findViewById.getParent() == this) {
                        onViewAdded(findViewById);
                        view2 = findViewById;
                    }
                }
            }
        }
        if (view2 == this) {
            return this.f1317d;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).f1383m0;
    }

    /* renamed from: p */
    private void m13837p(AttributeSet attributeSet, int i, int i2) {
        this.f1317d.m13968d0(this);
        this.f1317d.h1(this.f1331r);
        this.f1315b.put(getId(), this);
        this.f1324k = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0229e.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0229e.ConstraintLayout_Layout_android_minWidth) {
                    this.f1318e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1318e);
                } else if (index == C0229e.ConstraintLayout_Layout_android_minHeight) {
                    this.f1319f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1319f);
                } else if (index == C0229e.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1320g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1320g);
                } else if (index == C0229e.ConstraintLayout_Layout_android_maxHeight) {
                    this.f1321h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1321h);
                } else if (index == C0229e.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f1323j = obtainStyledAttributes.getInt(index, this.f1323j);
                } else if (index == C0229e.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m13834s(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f1325l = null;
                        }
                    }
                } else if (index == C0229e.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0221b c0221b = new C0221b();
                        this.f1324k = c0221b;
                        c0221b.m13786w(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f1324k = null;
                    }
                    this.f1326m = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f1317d.i1(this.f1323j);
    }

    /* renamed from: r */
    private void m13835r() {
        this.f1322i = true;
        this.f1328o = -1;
        this.f1329p = -1;
    }

    /* renamed from: v */
    private void m13831v() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget m13838o = m13838o(getChildAt(i));
            if (m13838o != null) {
                m13838o.m13973Z();
            }
        }
        if (isInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    String str = resourceName;
                    if (indexOf != -1) {
                        str = resourceName.substring(indexOf + 1);
                    }
                    m13840j(childAt.getId()).m13966e0(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (this.f1326m != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f1326m && (childAt2 instanceof Constraints)) {
                    this.f1324k = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        C0221b c0221b = this.f1324k;
        if (c0221b != null) {
            c0221b.m13803f(this, true);
        }
        this.f1317d.O0();
        int size = this.f1316c.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f1316c.get(i4).m13847t(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).m13820c(this);
            }
        }
        this.f1330q.clear();
        this.f1330q.put(0, this.f1317d);
        this.f1330q.put(getId(), this.f1317d);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f1330q.put(childAt4.getId(), m13838o(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            ConstraintWidget m13838o2 = m13838o(childAt5);
            if (m13838o2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.f1317d.a(m13838o2);
                m13844c(isInEditMode, childAt5, m13838o2, layoutParams, this.f1330q);
            }
        }
    }

    /* renamed from: x */
    private boolean m13829x() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            z = false;
            if (i >= childCount) {
                break;
            } else if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            m13831v();
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03a7  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m13844c(boolean r8, android.view.View r9, androidx.constraintlayout.solver.widgets.ConstraintWidget r10, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r11, android.util.SparseArray<androidx.constraintlayout.solver.widgets.ConstraintWidget> r12) {
        /*
            Method dump skipped, instructions count: 1471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m13844c(boolean, android.view.View, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f1316c;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f1316c.get(i).m13849r(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        int i5 = (int) ((parseInt3 / 1080.0f) * width);
                        int i6 = (int) ((parseInt4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + i5;
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i4 + i6;
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        m13835r();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getMaxHeight() {
        return this.f1321h;
    }

    public int getMaxWidth() {
        return this.f1320g;
    }

    public int getMinHeight() {
        return this.f1319f;
    }

    public int getMinWidth() {
        return this.f1318e;
    }

    public int getOptimizationLevel() {
        return this.f1317d.X0();
    }

    /* renamed from: i */
    public Object m13841i(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f1327n;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.f1327n.get(str);
        }
        return null;
    }

    /* renamed from: n */
    public View m13839n(int i) {
        return this.f1315b.get(i);
    }

    /* renamed from: o */
    public final ConstraintWidget m13838o(View view) {
        if (view == this) {
            return this.f1317d;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).f1383m0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f1383m0;
            if ((childAt.getVisibility() != 8 || layoutParams.f1356Y || layoutParams.f1357Z || layoutParams.f1361b0 || isInEditMode) && !layoutParams.f1359a0) {
                int m13981R = constraintWidget.m13981R();
                int m13980S = constraintWidget.m13980S();
                int m13982Q = constraintWidget.m13982Q() + m13981R;
                int m13931w = constraintWidget.m13931w() + m13980S;
                childAt.layout(m13981R, m13980S, m13982Q, m13931w);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(m13981R, m13980S, m13982Q, m13931w);
                }
            }
        }
        int size = this.f1316c.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f1316c.get(i6).m13851p(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.f1317d.j1(m13836q());
        if (this.f1322i) {
            this.f1322i = false;
            if (m13829x()) {
                this.f1317d.l1();
            }
        }
        m13832u(this.f1317d, this.f1323j, i, i2);
        m13833t(i, i2, this.f1317d.m13982Q(), this.f1317d.m13931w(), this.f1317d.d1(), this.f1317d.b1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget m13838o = m13838o(view);
        if ((view instanceof Guideline) && !(m13838o instanceof f)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            f fVar = new f();
            layoutParams.f1383m0 = fVar;
            layoutParams.f1356Y = true;
            fVar.S0(layoutParams.f1349R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m13846u();
            ((LayoutParams) view.getLayoutParams()).f1357Z = true;
            if (!this.f1316c.contains(constraintHelper)) {
                this.f1316c.add(constraintHelper);
            }
        }
        this.f1315b.put(view.getId(), view);
        this.f1322i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f1315b.remove(view.getId());
        this.f1317d.N0(m13838o(view));
        this.f1316c.remove(view);
        this.f1322i = true;
    }

    /* renamed from: q */
    protected boolean m13836q() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if ((getContext().getApplicationInfo().flags & 4194304) != 0) {
                z = false;
                if (1 == getLayoutDirection()) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        m13835r();
        super.requestLayout();
    }

    /* renamed from: s */
    protected void m13834s(int i) {
        this.f1325l = new C0218a(getContext(), this, i);
    }

    public void setConstraintSet(C0221b c0221b) {
        this.f1324k = c0221b;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f1327n == null) {
            this.f1327n = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f1327n.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f1315b.remove(getId());
        super.setId(i);
        this.f1315b.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f1321h) {
            return;
        }
        this.f1321h = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f1320g) {
            return;
        }
        this.f1320g = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f1319f) {
            return;
        }
        this.f1319f = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f1318e) {
            return;
        }
        this.f1318e = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0227c abstractC0227c) {
        C0218a c0218a = this.f1325l;
        if (c0218a != null) {
            c0218a.m13817c(abstractC0227c);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f1323j = i;
        this.f1317d.i1(i);
    }

    public void setState(int i, int i2, int i3) {
        C0218a c0218a = this.f1325l;
        if (c0218a != null) {
            c0218a.m13816d(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: t */
    protected void m13833t(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        b bVar = this.f1331r;
        int i5 = bVar.e;
        int i6 = i3 + bVar.d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.f1328o = i6;
            this.f1329p = i7;
            return;
        }
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0);
        int min = Math.min(this.f1320g, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f1321h, resolveSizeAndState2 & 16777215);
        int i8 = min;
        if (z) {
            i8 = min | 16777216;
        }
        int i9 = min2;
        if (z2) {
            i9 = min2 | 16777216;
        }
        setMeasuredDimension(i8, i9);
        this.f1328o = i8;
        this.f1329p = i9;
    }

    /* renamed from: u */
    protected void m13832u(d dVar, int i, int i2, int i3) {
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i5 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f1331r.c(i2, i3, max, max2, paddingWidth, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            i4 = Math.max(0, getPaddingStart());
            int max3 = Math.max(0, getPaddingEnd());
            if (i4 <= 0 && max3 <= 0) {
                i4 = Math.max(0, getPaddingLeft());
            } else if (m13836q()) {
                i4 = max3;
            }
        } else {
            i4 = Math.max(0, getPaddingLeft());
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        m13830w(dVar, mode, i6, mode2, i7);
        dVar.e1(i, mode, i6, mode2, i7, this.f1328o, this.f1329p, i4, max);
    }

    /* renamed from: w */
    protected void m13830w(d dVar, int i, int i2, int i3, int i4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        b bVar = this.f1331r;
        int i5 = bVar.e;
        int i6 = bVar.d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i != Integer.MIN_VALUE) {
            if (i == 0) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                dimensionBehaviour = dimensionBehaviour3;
                if (childCount == 0) {
                    dimensionBehaviour = dimensionBehaviour3;
                    i2 = Math.max(0, this.f1318e);
                }
            } else if (i != 1073741824) {
                dimensionBehaviour = dimensionBehaviour2;
            } else {
                i2 = Math.min(this.f1320g - i6, i2);
                dimensionBehaviour = dimensionBehaviour2;
            }
            i2 = 0;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour = dimensionBehaviour4;
            if (childCount == 0) {
                dimensionBehaviour = dimensionBehaviour4;
                i2 = Math.max(0, this.f1318e);
            }
        }
        if (i3 != Integer.MIN_VALUE) {
            if (i3 == 0) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                dimensionBehaviour2 = dimensionBehaviour5;
                if (childCount == 0) {
                    dimensionBehaviour2 = dimensionBehaviour5;
                    i4 = Math.max(0, this.f1319f);
                }
            } else if (i3 == 1073741824) {
                i4 = Math.min(this.f1321h - i5, i4);
            }
            i4 = 0;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour2 = dimensionBehaviour6;
            if (childCount == 0) {
                dimensionBehaviour2 = dimensionBehaviour6;
                i4 = Math.max(0, this.f1319f);
            }
        }
        if (i2 != dVar.m13982Q() || i4 != dVar.m13931w()) {
            dVar.a1();
        }
        dVar.m13996G0(0);
        dVar.m13994H0(0);
        dVar.m13936t0(this.f1320g - i6);
        dVar.m13938s0(this.f1321h - i5);
        dVar.m13932v0(0);
        dVar.m13934u0(0);
        dVar.m13950m0(dimensionBehaviour);
        dVar.m13998F0(i2);
        dVar.m14006B0(dimensionBehaviour2);
        dVar.m13958i0(i4);
        dVar.m13932v0(this.f1318e - i6);
        dVar.m13934u0(this.f1319f - i5);
    }
}
