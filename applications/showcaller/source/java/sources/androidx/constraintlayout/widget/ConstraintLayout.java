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
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0496f;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.C0473b;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: d */
    SparseArray<View> f2479d = new SparseArray<>();

    /* renamed from: e */
    private ArrayList<ConstraintHelper> f2480e = new ArrayList<>(4);

    /* renamed from: f */
    protected C0493d f2481f = new C0493d();

    /* renamed from: g */
    private int f2482g = 0;

    /* renamed from: h */
    private int f2483h = 0;

    /* renamed from: i */
    private int f2484i = Integer.MAX_VALUE;

    /* renamed from: j */
    private int f2485j = Integer.MAX_VALUE;

    /* renamed from: k */
    protected boolean f2486k = true;

    /* renamed from: l */
    private int f2487l = 257;

    /* renamed from: m */
    private C0515b f2488m = null;

    /* renamed from: n */
    protected C0512a f2489n = null;

    /* renamed from: o */
    private int f2490o = -1;

    /* renamed from: p */
    private HashMap<String, Integer> f2491p = new HashMap<>();

    /* renamed from: q */
    private int f2492q = -1;

    /* renamed from: r */
    private int f2493r = -1;

    /* renamed from: s */
    int f2494s = -1;

    /* renamed from: t */
    int f2495t = -1;

    /* renamed from: u */
    int f2496u = 0;

    /* renamed from: v */
    int f2497v = 0;

    /* renamed from: w */
    private SparseArray<ConstraintWidget> f2498w = new SparseArray<>();

    /* renamed from: x */
    C0511b f2499x = new C0511b(this);

    /* renamed from: y */
    private int f2500y = 0;

    /* renamed from: z */
    private int f2501z = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f2502A;

        /* renamed from: B */
        public String f2503B;

        /* renamed from: C */
        float f2504C;

        /* renamed from: D */
        int f2505D;

        /* renamed from: E */
        public float f2506E;

        /* renamed from: F */
        public float f2507F;

        /* renamed from: G */
        public int f2508G;

        /* renamed from: H */
        public int f2509H;

        /* renamed from: I */
        public int f2510I;

        /* renamed from: J */
        public int f2511J;

        /* renamed from: K */
        public int f2512K;

        /* renamed from: L */
        public int f2513L;

        /* renamed from: M */
        public int f2514M;

        /* renamed from: N */
        public int f2515N;

        /* renamed from: O */
        public float f2516O;

        /* renamed from: P */
        public float f2517P;

        /* renamed from: Q */
        public int f2518Q;

        /* renamed from: R */
        public int f2519R;

        /* renamed from: S */
        public int f2520S;

        /* renamed from: T */
        public boolean f2521T;

        /* renamed from: U */
        public boolean f2522U;

        /* renamed from: V */
        public String f2523V;

        /* renamed from: W */
        boolean f2524W;

        /* renamed from: X */
        boolean f2525X;

        /* renamed from: Y */
        boolean f2526Y;

        /* renamed from: Z */
        boolean f2527Z;

        /* renamed from: a */
        public int f2528a;

        /* renamed from: a0 */
        boolean f2529a0;

        /* renamed from: b */
        public int f2530b;

        /* renamed from: b0 */
        boolean f2531b0;

        /* renamed from: c */
        public float f2532c;

        /* renamed from: c0 */
        boolean f2533c0;

        /* renamed from: d */
        public int f2534d;

        /* renamed from: d0 */
        int f2535d0;

        /* renamed from: e */
        public int f2536e;

        /* renamed from: e0 */
        int f2537e0;

        /* renamed from: f */
        public int f2538f;

        /* renamed from: f0 */
        int f2539f0;

        /* renamed from: g */
        public int f2540g;

        /* renamed from: g0 */
        int f2541g0;

        /* renamed from: h */
        public int f2542h;

        /* renamed from: h0 */
        int f2543h0;

        /* renamed from: i */
        public int f2544i;

        /* renamed from: i0 */
        int f2545i0;

        /* renamed from: j */
        public int f2546j;

        /* renamed from: j0 */
        float f2547j0;

        /* renamed from: k */
        public int f2548k;

        /* renamed from: k0 */
        int f2549k0;

        /* renamed from: l */
        public int f2550l;

        /* renamed from: l0 */
        int f2551l0;

        /* renamed from: m */
        public int f2552m;

        /* renamed from: m0 */
        float f2553m0;

        /* renamed from: n */
        public int f2554n;

        /* renamed from: n0 */
        ConstraintWidget f2555n0;

        /* renamed from: o */
        public float f2556o;

        /* renamed from: o0 */
        public boolean f2557o0;

        /* renamed from: p */
        public int f2558p;

        /* renamed from: q */
        public int f2559q;

        /* renamed from: r */
        public int f2560r;

        /* renamed from: s */
        public int f2561s;

        /* renamed from: t */
        public int f2562t;

        /* renamed from: u */
        public int f2563u;

        /* renamed from: v */
        public int f2564v;

        /* renamed from: w */
        public int f2565w;

        /* renamed from: x */
        public int f2566x;

        /* renamed from: y */
        public int f2567y;

        /* renamed from: z */
        public float f2568z;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        public static class C0509a {

            /* renamed from: a */
            public static final SparseIntArray f2569a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f2569a = sparseIntArray;
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C0523e.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f2569a.append(C0523e.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2528a = -1;
            this.f2530b = -1;
            this.f2532c = -1.0f;
            this.f2534d = -1;
            this.f2536e = -1;
            this.f2538f = -1;
            this.f2540g = -1;
            this.f2542h = -1;
            this.f2544i = -1;
            this.f2546j = -1;
            this.f2548k = -1;
            this.f2550l = -1;
            this.f2552m = -1;
            this.f2554n = 0;
            this.f2556o = 0.0f;
            this.f2558p = -1;
            this.f2559q = -1;
            this.f2560r = -1;
            this.f2561s = -1;
            this.f2562t = -1;
            this.f2563u = -1;
            this.f2564v = -1;
            this.f2565w = -1;
            this.f2566x = -1;
            this.f2567y = -1;
            this.f2568z = 0.5f;
            this.f2502A = 0.5f;
            this.f2503B = null;
            this.f2504C = 0.0f;
            this.f2505D = 1;
            this.f2506E = -1.0f;
            this.f2507F = -1.0f;
            this.f2508G = 0;
            this.f2509H = 0;
            this.f2510I = 0;
            this.f2511J = 0;
            this.f2512K = 0;
            this.f2513L = 0;
            this.f2514M = 0;
            this.f2515N = 0;
            this.f2516O = 1.0f;
            this.f2517P = 1.0f;
            this.f2518Q = -1;
            this.f2519R = -1;
            this.f2520S = -1;
            this.f2521T = false;
            this.f2522U = false;
            this.f2523V = null;
            this.f2524W = true;
            this.f2525X = true;
            this.f2526Y = false;
            this.f2527Z = false;
            this.f2529a0 = false;
            this.f2531b0 = false;
            this.f2533c0 = false;
            this.f2535d0 = -1;
            this.f2537e0 = -1;
            this.f2539f0 = -1;
            this.f2541g0 = -1;
            this.f2543h0 = -1;
            this.f2545i0 = -1;
            this.f2547j0 = 0.5f;
            this.f2555n0 = new ConstraintWidget();
            this.f2557o0 = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f2528a = -1;
            this.f2530b = -1;
            this.f2532c = -1.0f;
            this.f2534d = -1;
            this.f2536e = -1;
            this.f2538f = -1;
            this.f2540g = -1;
            this.f2542h = -1;
            this.f2544i = -1;
            this.f2546j = -1;
            this.f2548k = -1;
            this.f2550l = -1;
            this.f2552m = -1;
            this.f2554n = 0;
            this.f2556o = 0.0f;
            this.f2558p = -1;
            this.f2559q = -1;
            this.f2560r = -1;
            this.f2561s = -1;
            this.f2562t = -1;
            this.f2563u = -1;
            this.f2564v = -1;
            this.f2565w = -1;
            this.f2566x = -1;
            this.f2567y = -1;
            this.f2568z = 0.5f;
            this.f2502A = 0.5f;
            this.f2503B = null;
            this.f2504C = 0.0f;
            this.f2505D = 1;
            this.f2506E = -1.0f;
            this.f2507F = -1.0f;
            this.f2508G = 0;
            this.f2509H = 0;
            this.f2510I = 0;
            this.f2511J = 0;
            this.f2512K = 0;
            this.f2513L = 0;
            this.f2514M = 0;
            this.f2515N = 0;
            this.f2516O = 1.0f;
            this.f2517P = 1.0f;
            this.f2518Q = -1;
            this.f2519R = -1;
            this.f2520S = -1;
            this.f2521T = false;
            this.f2522U = false;
            this.f2523V = null;
            this.f2524W = true;
            this.f2525X = true;
            this.f2526Y = false;
            this.f2527Z = false;
            this.f2529a0 = false;
            this.f2531b0 = false;
            this.f2533c0 = false;
            this.f2535d0 = -1;
            this.f2537e0 = -1;
            this.f2539f0 = -1;
            this.f2541g0 = -1;
            this.f2543h0 = -1;
            this.f2545i0 = -1;
            this.f2547j0 = 0.5f;
            this.f2555n0 = new ConstraintWidget();
            this.f2557o0 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0509a.f2569a.get(index);
                switch (i3) {
                    case 1:
                        this.f2520S = obtainStyledAttributes.getInt(index, this.f2520S);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f2552m);
                        this.f2552m = resourceId;
                        if (resourceId == -1) {
                            this.f2552m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f2554n = obtainStyledAttributes.getDimensionPixelSize(index, this.f2554n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f2556o) % 360.0f;
                        this.f2556o = f;
                        if (f < 0.0f) {
                            this.f2556o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f2528a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2528a);
                        break;
                    case 6:
                        this.f2530b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2530b);
                        break;
                    case 7:
                        this.f2532c = obtainStyledAttributes.getFloat(index, this.f2532c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f2534d);
                        this.f2534d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f2534d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f2536e);
                        this.f2536e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f2536e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f2538f);
                        this.f2538f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f2538f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f2540g);
                        this.f2540g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f2540g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f2542h);
                        this.f2542h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f2542h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f2544i);
                        this.f2544i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f2544i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f2546j);
                        this.f2546j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f2546j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f2548k);
                        this.f2548k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f2548k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f2550l);
                        this.f2550l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f2550l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f2558p);
                        this.f2558p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f2558p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f2559q);
                        this.f2559q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f2559q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f2560r);
                        this.f2560r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f2560r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f2561s);
                        this.f2561s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f2561s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f2562t = obtainStyledAttributes.getDimensionPixelSize(index, this.f2562t);
                        break;
                    case 22:
                        this.f2563u = obtainStyledAttributes.getDimensionPixelSize(index, this.f2563u);
                        break;
                    case 23:
                        this.f2564v = obtainStyledAttributes.getDimensionPixelSize(index, this.f2564v);
                        break;
                    case 24:
                        this.f2565w = obtainStyledAttributes.getDimensionPixelSize(index, this.f2565w);
                        break;
                    case 25:
                        this.f2566x = obtainStyledAttributes.getDimensionPixelSize(index, this.f2566x);
                        break;
                    case 26:
                        this.f2567y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2567y);
                        break;
                    case 27:
                        this.f2521T = obtainStyledAttributes.getBoolean(index, this.f2521T);
                        break;
                    case 28:
                        this.f2522U = obtainStyledAttributes.getBoolean(index, this.f2522U);
                        break;
                    case 29:
                        this.f2568z = obtainStyledAttributes.getFloat(index, this.f2568z);
                        break;
                    case 30:
                        this.f2502A = obtainStyledAttributes.getFloat(index, this.f2502A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f2510I = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f2511J = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.f2512K = obtainStyledAttributes.getDimensionPixelSize(index, this.f2512K);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f2512K) == -2) {
                                this.f2512K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f2514M = obtainStyledAttributes.getDimensionPixelSize(index, this.f2514M);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f2514M) == -2) {
                                this.f2514M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f2516O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2516O));
                        this.f2510I = 2;
                        break;
                    case 36:
                        try {
                            this.f2513L = obtainStyledAttributes.getDimensionPixelSize(index, this.f2513L);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f2513L) == -2) {
                                this.f2513L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f2515N = obtainStyledAttributes.getDimensionPixelSize(index, this.f2515N);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f2515N) == -2) {
                                this.f2515N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f2517P = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2517P));
                        this.f2511J = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f2503B = string;
                                this.f2504C = Float.NaN;
                                this.f2505D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f2503B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f2503B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f2505D = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f2505D = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f2503B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f2503B.substring(i);
                                        if (substring2.length() > 0) {
                                            this.f2504C = Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f2503B.substring(i, indexOf2);
                                        String substring4 = this.f2503B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f2505D == 1) {
                                                        this.f2504C = Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        this.f2504C = Math.abs(parseFloat / parseFloat2);
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
                                this.f2506E = obtainStyledAttributes.getFloat(index, this.f2506E);
                                continue;
                            case 46:
                                this.f2507F = obtainStyledAttributes.getFloat(index, this.f2507F);
                                continue;
                            case 47:
                                this.f2508G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f2509H = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f2518Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2518Q);
                                continue;
                            case 50:
                                this.f2519R = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2519R);
                                continue;
                            case 51:
                                this.f2523V = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m33672c();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2528a = -1;
            this.f2530b = -1;
            this.f2532c = -1.0f;
            this.f2534d = -1;
            this.f2536e = -1;
            this.f2538f = -1;
            this.f2540g = -1;
            this.f2542h = -1;
            this.f2544i = -1;
            this.f2546j = -1;
            this.f2548k = -1;
            this.f2550l = -1;
            this.f2552m = -1;
            this.f2554n = 0;
            this.f2556o = 0.0f;
            this.f2558p = -1;
            this.f2559q = -1;
            this.f2560r = -1;
            this.f2561s = -1;
            this.f2562t = -1;
            this.f2563u = -1;
            this.f2564v = -1;
            this.f2565w = -1;
            this.f2566x = -1;
            this.f2567y = -1;
            this.f2568z = 0.5f;
            this.f2502A = 0.5f;
            this.f2503B = null;
            this.f2504C = 0.0f;
            this.f2505D = 1;
            this.f2506E = -1.0f;
            this.f2507F = -1.0f;
            this.f2508G = 0;
            this.f2509H = 0;
            this.f2510I = 0;
            this.f2511J = 0;
            this.f2512K = 0;
            this.f2513L = 0;
            this.f2514M = 0;
            this.f2515N = 0;
            this.f2516O = 1.0f;
            this.f2517P = 1.0f;
            this.f2518Q = -1;
            this.f2519R = -1;
            this.f2520S = -1;
            this.f2521T = false;
            this.f2522U = false;
            this.f2523V = null;
            this.f2524W = true;
            this.f2525X = true;
            this.f2526Y = false;
            this.f2527Z = false;
            this.f2529a0 = false;
            this.f2531b0 = false;
            this.f2533c0 = false;
            this.f2535d0 = -1;
            this.f2537e0 = -1;
            this.f2539f0 = -1;
            this.f2541g0 = -1;
            this.f2543h0 = -1;
            this.f2545i0 = -1;
            this.f2547j0 = 0.5f;
            this.f2555n0 = new ConstraintWidget();
            this.f2557o0 = false;
        }

        /* renamed from: a */
        public String m33674a() {
            return this.f2523V;
        }

        /* renamed from: b */
        public ConstraintWidget m33673b() {
            return this.f2555n0;
        }

        /* renamed from: c */
        public void m33672c() {
            this.f2527Z = false;
            this.f2524W = true;
            this.f2525X = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f2521T) {
                this.f2524W = false;
                if (this.f2510I == 0) {
                    this.f2510I = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f2522U) {
                this.f2525X = false;
                if (this.f2511J == 0) {
                    this.f2511J = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f2524W = false;
                if (i == 0 && this.f2510I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f2521T = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f2525X = false;
                if (i2 == 0 && this.f2511J == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f2522U = true;
                }
            }
            if (this.f2532c == -1.0f && this.f2528a == -1 && this.f2530b == -1) {
                return;
            }
            this.f2527Z = true;
            this.f2524W = true;
            this.f2525X = true;
            if (!(this.f2555n0 instanceof C0496f)) {
                this.f2555n0 = new C0496f();
            }
            ((C0496f) this.f2555n0).m33770n1(this.f2520S);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x012a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0173  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 624
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    static /* synthetic */ class C0510a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2570a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f2570a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2570a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2570a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2570a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$b.class */
    public class C0511b implements C0473b.AbstractC0475b {

        /* renamed from: a */
        ConstraintLayout f2571a;

        /* renamed from: b */
        int f2572b;

        /* renamed from: c */
        int f2573c;

        /* renamed from: d */
        int f2574d;

        /* renamed from: e */
        int f2575e;

        /* renamed from: f */
        int f2576f;

        /* renamed from: g */
        int f2577g;

        public C0511b(ConstraintLayout constraintLayout) {
            ConstraintLayout.this = r4;
            this.f2571a = constraintLayout;
        }

        /* renamed from: d */
        private boolean m33668d(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                return false;
            }
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }

        @Override // androidx.constraintlayout.solver.widgets.analyzer.C0473b.AbstractC0475b
        /* renamed from: a */
        public final void mo33671a() {
            int childCount = this.f2571a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f2571a.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).m33662b(this.f2571a);
                }
            }
            int size = this.f2571a.f2480e.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((ConstraintHelper) this.f2571a.f2480e.get(i2)).m33697r(this.f2571a);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:205:0x04f1, code lost:
            if (r0 != r12) goto L206;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00bf, code lost:
            if (r0 == androidx.constraintlayout.solver.widgets.analyzer.C0473b.C0474a.f2231c) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01ac, code lost:
            if (r0 == androidx.constraintlayout.solver.widgets.analyzer.C0473b.C0474a.f2231c) goto L72;
         */
        @Override // androidx.constraintlayout.solver.widgets.analyzer.C0473b.AbstractC0475b
        @android.annotation.SuppressLint({"WrongCall"})
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo33670b(androidx.constraintlayout.solver.widgets.ConstraintWidget r6, androidx.constraintlayout.solver.widgets.analyzer.C0473b.C0474a r7) {
            /*
                Method dump skipped, instructions count: 1461
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0511b.mo33670b(androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.analyzer.b$a):void");
        }

        /* renamed from: c */
        public void m33669c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f2572b = i3;
            this.f2573c = i4;
            this.f2574d = i5;
            this.f2575e = i6;
            this.f2576f = i;
            this.f2577g = i2;
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        m33683q(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33683q(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33683q(attributeSet, i, 0);
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

    /* renamed from: n */
    private final ConstraintWidget m33686n(int i) {
        if (i == 0) {
            return this.f2481f;
        }
        View view = this.f2479d.get(i);
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
            return this.f2481f;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).f2555n0;
    }

    /* renamed from: q */
    private void m33683q(AttributeSet attributeSet, int i, int i2) {
        this.f2481f.m33979p0(this);
        this.f2481f.m33863I1(this.f2499x);
        this.f2479d.put(getId(), this);
        this.f2488m = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0523e.ConstraintLayout_Layout_android_minWidth) {
                    this.f2482g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2482g);
                } else if (index == C0523e.ConstraintLayout_Layout_android_minHeight) {
                    this.f2483h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2483h);
                } else if (index == C0523e.ConstraintLayout_Layout_android_maxWidth) {
                    this.f2484i = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2484i);
                } else if (index == C0523e.ConstraintLayout_Layout_android_maxHeight) {
                    this.f2485j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2485j);
                } else if (index == C0523e.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f2487l = obtainStyledAttributes.getInt(index, this.f2487l);
                } else if (index == C0523e.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            mo33680t(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f2489n = null;
                        }
                    }
                } else if (index == C0523e.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0515b c0515b = new C0515b();
                        this.f2488m = c0515b;
                        c0515b.m33625w(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f2488m = null;
                    }
                    this.f2490o = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2481f.m33862J1(this.f2487l);
    }

    /* renamed from: s */
    private void m33681s() {
        this.f2486k = true;
        this.f2492q = -1;
        this.f2493r = -1;
        this.f2494s = -1;
        this.f2495t = -1;
        this.f2496u = 0;
        this.f2497v = 0;
    }

    /* renamed from: w */
    private void m33677w() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget m33684p = m33684p(getChildAt(i));
            if (m33684p != null) {
                m33684p.mo33734k0();
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
                    m33686n(childAt.getId()).m33977q0(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (this.f2490o != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f2490o && (childAt2 instanceof Constraints)) {
                    this.f2488m = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        C0515b c0515b = this.f2488m;
        if (c0515b != null) {
            c0515b.m33642f(this, true);
        }
        this.f2481f.m33735h1();
        int size = this.f2480e.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f2480e.get(i4).m33694u(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).m33661c(this);
            }
        }
        this.f2498w.clear();
        this.f2498w.put(0, this.f2481f);
        this.f2498w.put(getId(), this.f2481f);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f2498w.put(childAt4.getId(), m33684p(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            ConstraintWidget m33684p2 = m33684p(childAt5);
            if (m33684p2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.f2481f.m33739a(m33684p2);
                m33690d(isInEditMode, childAt5, m33684p2, layoutParams, this.f2498w);
            }
        }
    }

    /* renamed from: y */
    private boolean m33675y() {
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
            m33677w();
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

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f0  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33690d(boolean r8, android.view.View r9, androidx.constraintlayout.solver.widgets.ConstraintWidget r10, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r11, android.util.SparseArray<androidx.constraintlayout.solver.widgets.ConstraintWidget> r12) {
        /*
            Method dump skipped, instructions count: 1426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m33690d(boolean, android.view.View, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f2480e;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f2480e.get(i).mo33696s(this);
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
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: f */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        m33681s();
        super.forceLayout();
    }

    /* renamed from: g */
    public Object m33687g(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f2491p;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.f2491p.get(str);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getMaxHeight() {
        return this.f2485j;
    }

    public int getMaxWidth() {
        return this.f2484i;
    }

    public int getMinHeight() {
        return this.f2483h;
    }

    public int getMinWidth() {
        return this.f2482g;
    }

    public int getOptimizationLevel() {
        return this.f2481f.m33843w1();
    }

    /* renamed from: o */
    public View m33685o(int i) {
        return this.f2479d.get(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f2555n0;
            if ((childAt.getVisibility() != 8 || layoutParams.f2527Z || layoutParams.f2529a0 || layoutParams.f2533c0 || isInEditMode) && !layoutParams.f2531b0) {
                int m34011V = constraintWidget.m34011V();
                int m34009W = constraintWidget.m34009W();
                int m34013U = constraintWidget.m34013U() + m34011V;
                int m33962y = constraintWidget.m33962y() + m34009W;
                childAt.layout(m34011V, m34009W, m34013U, m33962y);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(m34011V, m34009W, m34013U, m33962y);
                }
            }
        }
        int size = this.f2480e.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f2480e.get(i6).mo33664q(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f2486k) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.f2486k = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.f2486k) {
            int i4 = this.f2500y;
            if (i4 == i && this.f2501z == i2) {
                m33679u(i, i2, this.f2481f.m34013U(), this.f2481f.m33962y(), this.f2481f.m33868D1(), this.f2481f.m33870B1());
                return;
            } else if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f2501z) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f2481f.m33962y()) {
                this.f2500y = i;
                this.f2501z = i2;
                m33679u(i, i2, this.f2481f.m34013U(), this.f2481f.m33962y(), this.f2481f.m33868D1(), this.f2481f.m33870B1());
                return;
            }
        }
        this.f2500y = i;
        this.f2501z = i2;
        this.f2481f.m33861K1(m33682r());
        if (this.f2486k) {
            this.f2486k = false;
            if (m33675y()) {
                this.f2481f.m33859M1();
            }
        }
        m33678v(this.f2481f, this.f2487l, i, i2);
        m33679u(i, i2, this.f2481f.m34013U(), this.f2481f.m33962y(), this.f2481f.m33868D1(), this.f2481f.m33870B1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget m33684p = m33684p(view);
        if ((view instanceof Guideline) && !(m33684p instanceof C0496f)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            C0496f c0496f = new C0496f();
            layoutParams.f2555n0 = c0496f;
            layoutParams.f2527Z = true;
            c0496f.m33770n1(layoutParams.f2520S);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m33693v();
            ((LayoutParams) view.getLayoutParams()).f2529a0 = true;
            if (!this.f2480e.contains(constraintHelper)) {
                this.f2480e.add(constraintHelper);
            }
        }
        this.f2479d.put(view.getId(), view);
        this.f2486k = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f2479d.remove(view.getId());
        this.f2481f.m33736g1(m33684p(view));
        this.f2480e.remove(view);
        this.f2486k = true;
    }

    /* renamed from: p */
    public final ConstraintWidget m33684p(View view) {
        if (view == this) {
            return this.f2481f;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).f2555n0;
    }

    /* renamed from: r */
    public boolean m33682r() {
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
        m33681s();
        super.requestLayout();
    }

    public void setConstraintSet(C0515b c0515b) {
        this.f2488m = c0515b;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f2491p == null) {
            this.f2491p = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f2491p.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f2479d.remove(getId());
        super.setId(i);
        this.f2479d.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f2485j) {
            return;
        }
        this.f2485j = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f2484i) {
            return;
        }
        this.f2484i = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f2483h) {
            return;
        }
        this.f2483h = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f2482g) {
            return;
        }
        this.f2482g = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0521c abstractC0521c) {
        C0512a c0512a = this.f2489n;
        if (c0512a != null) {
            c0512a.m33656c(abstractC0521c);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f2487l = i;
        this.f2481f.m33862J1(i);
    }

    public void setState(int i, int i2, int i3) {
        C0512a c0512a = this.f2489n;
        if (c0512a != null) {
            c0512a.m33655d(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: t */
    protected void mo33680t(int i) {
        this.f2489n = new C0512a(getContext(), this, i);
    }

    /* renamed from: u */
    public void m33679u(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C0511b c0511b = this.f2499x;
        int i5 = c0511b.f2575e;
        int i6 = i3 + c0511b.f2574d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.f2492q = i6;
            this.f2493r = i7;
            return;
        }
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0);
        int min = Math.min(this.f2484i, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f2485j, resolveSizeAndState2 & 16777215);
        int i8 = min;
        if (z) {
            i8 = min | 16777216;
        }
        int i9 = min2;
        if (z2) {
            i9 = min2 | 16777216;
        }
        setMeasuredDimension(i8, i9);
        this.f2492q = i8;
        this.f2493r = i9;
    }

    /* renamed from: v */
    public void m33678v(C0493d c0493d, int i, int i2, int i3) {
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i5 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f2499x.m33669c(i2, i3, max, max2, paddingWidth, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            i4 = Math.max(0, getPaddingStart());
            int max3 = Math.max(0, getPaddingEnd());
            if (i4 <= 0 && max3 <= 0) {
                i4 = Math.max(0, getPaddingLeft());
            } else if (m33682r()) {
                i4 = max3;
            }
        } else {
            i4 = Math.max(0, getPaddingLeft());
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        m33676x(c0493d, mode, i6, mode2, i7);
        c0493d.m33867E1(i, mode, i6, mode2, i7, this.f2492q, this.f2493r, i4, max);
    }

    /* renamed from: x */
    protected void m33676x(C0493d c0493d, int i, int i2, int i3, int i4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        C0511b c0511b = this.f2499x;
        int i5 = c0511b.f2575e;
        int i6 = c0511b.f2574d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour = dimensionBehaviour3;
            if (childCount == 0) {
                i2 = Math.max(0, this.f2482g);
                dimensionBehaviour = dimensionBehaviour3;
            }
        } else if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour = dimensionBehaviour4;
            if (childCount == 0) {
                i2 = Math.max(0, this.f2482g);
                dimensionBehaviour = dimensionBehaviour4;
            }
            i2 = 0;
        } else if (i != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
            i2 = 0;
        } else {
            i2 = Math.min(this.f2484i - i6, i2);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (i3 == Integer.MIN_VALUE) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour2 = dimensionBehaviour5;
            if (childCount == 0) {
                i4 = Math.max(0, this.f2483h);
                dimensionBehaviour2 = dimensionBehaviour5;
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.f2485j - i5, i4);
            }
            i4 = 0;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour2 = dimensionBehaviour6;
            if (childCount == 0) {
                i4 = Math.max(0, this.f2483h);
                dimensionBehaviour2 = dimensionBehaviour6;
            }
            i4 = 0;
        }
        if (i2 != c0493d.m34013U() || i4 != c0493d.m33962y()) {
            c0493d.m33871A1();
        }
        c0493d.m34002Z0(0);
        c0493d.m34000a1(0);
        c0493d.m34030L0(this.f2484i - i6);
        c0493d.m34032K0(this.f2485j - i5);
        c0493d.m34024O0(0);
        c0493d.m34026N0(0);
        c0493d.m34046D0(dimensionBehaviour);
        c0493d.m34004Y0(i2);
        c0493d.m34012U0(dimensionBehaviour2);
        c0493d.m33959z0(i4);
        c0493d.m34024O0(this.f2482g - i6);
        c0493d.m34026N0(this.f2483h - i5);
    }
}
