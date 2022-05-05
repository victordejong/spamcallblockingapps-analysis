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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: f */
    SparseArray<View> f2504f = new SparseArray<>();

    /* renamed from: g */
    private ArrayList<ConstraintHelper> f2505g = new ArrayList<>(4);

    /* renamed from: h */
    protected ConstraintWidgetContainer f2506h = new ConstraintWidgetContainer();

    /* renamed from: i */
    private int f2507i = 0;

    /* renamed from: j */
    private int f2508j = 0;

    /* renamed from: k */
    private int f2509k = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: l */
    private int f2510l = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: m */
    protected boolean f2511m = true;

    /* renamed from: n */
    private int f2512n = 257;

    /* renamed from: o */
    private ConstraintSet f2513o = null;

    /* renamed from: p */
    protected ConstraintLayoutStates f2514p = null;

    /* renamed from: q */
    private int f2515q = -1;

    /* renamed from: r */
    private HashMap<String, Integer> f2516r = new HashMap<>();

    /* renamed from: s */
    private int f2517s = -1;

    /* renamed from: t */
    private int f2518t = -1;

    /* renamed from: u */
    private SparseArray<ConstraintWidget> f2519u = new SparseArray<>();

    /* renamed from: v */
    Measurer f2520v = new Measurer(this);

    /* renamed from: w */
    private int f2521w = 0;

    /* renamed from: x */
    private int f2522x = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$1.class */
    static /* synthetic */ class C01771 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2523a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f2523a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2523a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2523a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2523a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f2524A;

        /* renamed from: B */
        public String f2525B;

        /* renamed from: C */
        int f2526C;

        /* renamed from: D */
        public float f2527D;

        /* renamed from: E */
        public float f2528E;

        /* renamed from: F */
        public int f2529F;

        /* renamed from: G */
        public int f2530G;

        /* renamed from: H */
        public int f2531H;

        /* renamed from: I */
        public int f2532I;

        /* renamed from: J */
        public int f2533J;

        /* renamed from: K */
        public int f2534K;

        /* renamed from: L */
        public int f2535L;

        /* renamed from: M */
        public int f2536M;

        /* renamed from: N */
        public float f2537N;

        /* renamed from: O */
        public float f2538O;

        /* renamed from: P */
        public int f2539P;

        /* renamed from: Q */
        public int f2540Q;

        /* renamed from: R */
        public int f2541R;

        /* renamed from: S */
        public boolean f2542S;

        /* renamed from: T */
        public boolean f2543T;

        /* renamed from: U */
        public String f2544U;

        /* renamed from: V */
        boolean f2545V;

        /* renamed from: W */
        boolean f2546W;

        /* renamed from: X */
        boolean f2547X;

        /* renamed from: Y */
        boolean f2548Y;

        /* renamed from: Z */
        boolean f2549Z;

        /* renamed from: a */
        public int f2550a;

        /* renamed from: a0 */
        boolean f2551a0;

        /* renamed from: b */
        public int f2552b;

        /* renamed from: b0 */
        boolean f2553b0;

        /* renamed from: c */
        public float f2554c;

        /* renamed from: c0 */
        int f2555c0;

        /* renamed from: d */
        public int f2556d;

        /* renamed from: d0 */
        int f2557d0;

        /* renamed from: e */
        public int f2558e;

        /* renamed from: e0 */
        int f2559e0;

        /* renamed from: f */
        public int f2560f;

        /* renamed from: f0 */
        int f2561f0;

        /* renamed from: g */
        public int f2562g;

        /* renamed from: g0 */
        int f2563g0;

        /* renamed from: h */
        public int f2564h;

        /* renamed from: h0 */
        int f2565h0;

        /* renamed from: i */
        public int f2566i;

        /* renamed from: i0 */
        float f2567i0;

        /* renamed from: j */
        public int f2568j;

        /* renamed from: j0 */
        int f2569j0;

        /* renamed from: k */
        public int f2570k;

        /* renamed from: k0 */
        int f2571k0;

        /* renamed from: l */
        public int f2572l;

        /* renamed from: l0 */
        float f2573l0;

        /* renamed from: m */
        public int f2574m;

        /* renamed from: m0 */
        ConstraintWidget f2575m0;

        /* renamed from: n */
        public int f2576n;

        /* renamed from: n0 */
        public boolean f2577n0;

        /* renamed from: o */
        public float f2578o;

        /* renamed from: p */
        public int f2579p;

        /* renamed from: q */
        public int f2580q;

        /* renamed from: r */
        public int f2581r;

        /* renamed from: s */
        public int f2582s;

        /* renamed from: t */
        public int f2583t;

        /* renamed from: u */
        public int f2584u;

        /* renamed from: v */
        public int f2585v;

        /* renamed from: w */
        public int f2586w;

        /* renamed from: x */
        public int f2587x;

        /* renamed from: y */
        public int f2588y;

        /* renamed from: z */
        public float f2589z;

        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table.class */
        private static class Table {

            /* renamed from: a */
            public static final SparseIntArray f2590a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f2590a = sparseIntArray;
                sparseIntArray.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f2590a.append(C0178R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
            }

            private Table() {
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2550a = -1;
            this.f2552b = -1;
            this.f2554c = -1.0f;
            this.f2556d = -1;
            this.f2558e = -1;
            this.f2560f = -1;
            this.f2562g = -1;
            this.f2564h = -1;
            this.f2566i = -1;
            this.f2568j = -1;
            this.f2570k = -1;
            this.f2572l = -1;
            this.f2574m = -1;
            this.f2576n = 0;
            this.f2578o = 0.0f;
            this.f2579p = -1;
            this.f2580q = -1;
            this.f2581r = -1;
            this.f2582s = -1;
            this.f2583t = -1;
            this.f2584u = -1;
            this.f2585v = -1;
            this.f2586w = -1;
            this.f2587x = -1;
            this.f2588y = -1;
            this.f2589z = 0.5f;
            this.f2524A = 0.5f;
            this.f2525B = null;
            this.f2526C = 1;
            this.f2527D = -1.0f;
            this.f2528E = -1.0f;
            this.f2529F = 0;
            this.f2530G = 0;
            this.f2531H = 0;
            this.f2532I = 0;
            this.f2533J = 0;
            this.f2534K = 0;
            this.f2535L = 0;
            this.f2536M = 0;
            this.f2537N = 1.0f;
            this.f2538O = 1.0f;
            this.f2539P = -1;
            this.f2540Q = -1;
            this.f2541R = -1;
            this.f2542S = false;
            this.f2543T = false;
            this.f2544U = null;
            this.f2545V = true;
            this.f2546W = true;
            this.f2547X = false;
            this.f2548Y = false;
            this.f2549Z = false;
            this.f2551a0 = false;
            this.f2553b0 = false;
            this.f2555c0 = -1;
            this.f2557d0 = -1;
            this.f2559e0 = -1;
            this.f2561f0 = -1;
            this.f2563g0 = -1;
            this.f2565h0 = -1;
            this.f2567i0 = 0.5f;
            this.f2575m0 = new ConstraintWidget();
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f2550a = -1;
            this.f2552b = -1;
            this.f2554c = -1.0f;
            this.f2556d = -1;
            this.f2558e = -1;
            this.f2560f = -1;
            this.f2562g = -1;
            this.f2564h = -1;
            this.f2566i = -1;
            this.f2568j = -1;
            this.f2570k = -1;
            this.f2572l = -1;
            this.f2574m = -1;
            this.f2576n = 0;
            this.f2578o = 0.0f;
            this.f2579p = -1;
            this.f2580q = -1;
            this.f2581r = -1;
            this.f2582s = -1;
            this.f2583t = -1;
            this.f2584u = -1;
            this.f2585v = -1;
            this.f2586w = -1;
            this.f2587x = -1;
            this.f2588y = -1;
            this.f2589z = 0.5f;
            this.f2524A = 0.5f;
            this.f2525B = null;
            this.f2526C = 1;
            this.f2527D = -1.0f;
            this.f2528E = -1.0f;
            this.f2529F = 0;
            this.f2530G = 0;
            this.f2531H = 0;
            this.f2532I = 0;
            this.f2533J = 0;
            this.f2534K = 0;
            this.f2535L = 0;
            this.f2536M = 0;
            this.f2537N = 1.0f;
            this.f2538O = 1.0f;
            this.f2539P = -1;
            this.f2540Q = -1;
            this.f2541R = -1;
            this.f2542S = false;
            this.f2543T = false;
            this.f2544U = null;
            this.f2545V = true;
            this.f2546W = true;
            this.f2547X = false;
            this.f2548Y = false;
            this.f2549Z = false;
            this.f2551a0 = false;
            this.f2553b0 = false;
            this.f2555c0 = -1;
            this.f2557d0 = -1;
            this.f2559e0 = -1;
            this.f2561f0 = -1;
            this.f2563g0 = -1;
            this.f2565h0 = -1;
            this.f2567i0 = 0.5f;
            this.f2575m0 = new ConstraintWidget();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = Table.f2590a.get(index);
                switch (i3) {
                    case 1:
                        this.f2541R = obtainStyledAttributes.getInt(index, this.f2541R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f2574m);
                        this.f2574m = resourceId;
                        if (resourceId == -1) {
                            this.f2574m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f2576n = obtainStyledAttributes.getDimensionPixelSize(index, this.f2576n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f2578o) % 360.0f;
                        this.f2578o = f;
                        if (f < 0.0f) {
                            this.f2578o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f2550a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2550a);
                        break;
                    case 6:
                        this.f2552b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2552b);
                        break;
                    case 7:
                        this.f2554c = obtainStyledAttributes.getFloat(index, this.f2554c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f2556d);
                        this.f2556d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f2556d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f2558e);
                        this.f2558e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f2558e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f2560f);
                        this.f2560f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f2560f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f2562g);
                        this.f2562g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f2562g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f2564h);
                        this.f2564h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f2564h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f2566i);
                        this.f2566i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f2566i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f2568j);
                        this.f2568j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f2568j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f2570k);
                        this.f2570k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f2570k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f2572l);
                        this.f2572l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f2572l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f2579p);
                        this.f2579p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f2579p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f2580q);
                        this.f2580q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f2580q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f2581r);
                        this.f2581r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f2581r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f2582s);
                        this.f2582s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f2582s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f2583t = obtainStyledAttributes.getDimensionPixelSize(index, this.f2583t);
                        break;
                    case 22:
                        this.f2584u = obtainStyledAttributes.getDimensionPixelSize(index, this.f2584u);
                        break;
                    case 23:
                        this.f2585v = obtainStyledAttributes.getDimensionPixelSize(index, this.f2585v);
                        break;
                    case 24:
                        this.f2586w = obtainStyledAttributes.getDimensionPixelSize(index, this.f2586w);
                        break;
                    case 25:
                        this.f2587x = obtainStyledAttributes.getDimensionPixelSize(index, this.f2587x);
                        break;
                    case 26:
                        this.f2588y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2588y);
                        break;
                    case 27:
                        this.f2542S = obtainStyledAttributes.getBoolean(index, this.f2542S);
                        break;
                    case 28:
                        this.f2543T = obtainStyledAttributes.getBoolean(index, this.f2543T);
                        break;
                    case 29:
                        this.f2589z = obtainStyledAttributes.getFloat(index, this.f2589z);
                        break;
                    case 30:
                        this.f2524A = obtainStyledAttributes.getFloat(index, this.f2524A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f2531H = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f2532I = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.f2533J = obtainStyledAttributes.getDimensionPixelSize(index, this.f2533J);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f2533J) == -2) {
                                this.f2533J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f2535L = obtainStyledAttributes.getDimensionPixelSize(index, this.f2535L);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f2535L) == -2) {
                                this.f2535L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f2537N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2537N));
                        this.f2531H = 2;
                        break;
                    case 36:
                        try {
                            this.f2534K = obtainStyledAttributes.getDimensionPixelSize(index, this.f2534K);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f2534K) == -2) {
                                this.f2534K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f2536M = obtainStyledAttributes.getDimensionPixelSize(index, this.f2536M);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f2536M) == -2) {
                                this.f2536M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f2538O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2538O));
                        this.f2532I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f2525B = string;
                                this.f2526C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f2525B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f2525B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f2526C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f2526C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f2525B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f2525B.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f2525B.substring(i, indexOf2);
                                        String substring4 = this.f2525B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f2526C == 1) {
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
                                this.f2527D = obtainStyledAttributes.getFloat(index, this.f2527D);
                                continue;
                            case 46:
                                this.f2528E = obtainStyledAttributes.getFloat(index, this.f2528E);
                                continue;
                            case 47:
                                this.f2529F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f2530G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f2539P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2539P);
                                continue;
                            case 50:
                                this.f2540Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2540Q);
                                continue;
                            case 51:
                                this.f2544U = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m20030c();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2550a = -1;
            this.f2552b = -1;
            this.f2554c = -1.0f;
            this.f2556d = -1;
            this.f2558e = -1;
            this.f2560f = -1;
            this.f2562g = -1;
            this.f2564h = -1;
            this.f2566i = -1;
            this.f2568j = -1;
            this.f2570k = -1;
            this.f2572l = -1;
            this.f2574m = -1;
            this.f2576n = 0;
            this.f2578o = 0.0f;
            this.f2579p = -1;
            this.f2580q = -1;
            this.f2581r = -1;
            this.f2582s = -1;
            this.f2583t = -1;
            this.f2584u = -1;
            this.f2585v = -1;
            this.f2586w = -1;
            this.f2587x = -1;
            this.f2588y = -1;
            this.f2589z = 0.5f;
            this.f2524A = 0.5f;
            this.f2525B = null;
            this.f2526C = 1;
            this.f2527D = -1.0f;
            this.f2528E = -1.0f;
            this.f2529F = 0;
            this.f2530G = 0;
            this.f2531H = 0;
            this.f2532I = 0;
            this.f2533J = 0;
            this.f2534K = 0;
            this.f2535L = 0;
            this.f2536M = 0;
            this.f2537N = 1.0f;
            this.f2538O = 1.0f;
            this.f2539P = -1;
            this.f2540Q = -1;
            this.f2541R = -1;
            this.f2542S = false;
            this.f2543T = false;
            this.f2544U = null;
            this.f2545V = true;
            this.f2546W = true;
            this.f2547X = false;
            this.f2548Y = false;
            this.f2549Z = false;
            this.f2551a0 = false;
            this.f2553b0 = false;
            this.f2555c0 = -1;
            this.f2557d0 = -1;
            this.f2559e0 = -1;
            this.f2561f0 = -1;
            this.f2563g0 = -1;
            this.f2565h0 = -1;
            this.f2567i0 = 0.5f;
            this.f2575m0 = new ConstraintWidget();
        }

        /* renamed from: a */
        public String m20032a() {
            return this.f2544U;
        }

        /* renamed from: b */
        public ConstraintWidget m20031b() {
            return this.f2575m0;
        }

        /* renamed from: c */
        public void m20030c() {
            this.f2548Y = false;
            this.f2545V = true;
            this.f2546W = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.f2542S) {
                this.f2545V = false;
                if (this.f2531H == 0) {
                    this.f2531H = 1;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.f2543T) {
                this.f2546W = false;
                if (this.f2532I == 0) {
                    this.f2532I = 1;
                }
            }
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == 0 || i == -1) {
                this.f2545V = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.f2531H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f2542S = true;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == 0 || i2 == -1) {
                this.f2546W = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.f2532I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f2543T = true;
                }
            }
            if (this.f2554c != -1.0f || this.f2550a != -1 || this.f2552b != -1) {
                this.f2548Y = true;
                this.f2545V = true;
                this.f2546W = true;
                if (!(this.f2575m0 instanceof Guideline)) {
                    this.f2575m0 = new Guideline();
                }
                ((Guideline) this.f2575m0).m20200n1(this.f2541R);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0137  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0171  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 622
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$Measurer.class */
    public class Measurer implements BasicMeasure.Measurer {

        /* renamed from: a */
        ConstraintLayout f2591a;

        /* renamed from: b */
        int f2592b;

        /* renamed from: c */
        int f2593c;

        /* renamed from: d */
        int f2594d;

        /* renamed from: e */
        int f2595e;

        /* renamed from: f */
        int f2596f;

        /* renamed from: g */
        int f2597g;

        public Measurer(ConstraintLayout constraintLayout) {
            this.f2591a = constraintLayout;
        }

        /* renamed from: d */
        private boolean m20026d(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.Measurer
        /* renamed from: a */
        public final void mo20029a() {
            int childCount = this.f2591a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f2591a.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    ((Placeholder) childAt).m19964b(this.f2591a);
                }
            }
            int size = this.f2591a.f2505g.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ((ConstraintHelper) this.f2591a.f2505g.get(i2)).m20055q(this.f2591a);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x00ec, code lost:
            if (r15 != false) goto L_0x00ef;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01da, code lost:
            if (r11 != false) goto L_0x01dd;
         */
        /* JADX WARN: Removed duplicated region for block: B:105:0x02c8  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x02e8  */
        /* JADX WARN: Removed duplicated region for block: B:110:0x02ee  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x02f9  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x02ff  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x030a  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x0325  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x033d  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0354  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0376  */
        /* JADX WARN: Removed duplicated region for block: B:152:0x03a5  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x03ee  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x0403  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x0418  */
        /* JADX WARN: Removed duplicated region for block: B:163:0x042d  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x0448  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x0454  */
        /* JADX WARN: Removed duplicated region for block: B:170:0x0467  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x047b  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x0487  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x049a  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x04b9  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x0513  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x0533  */
        /* JADX WARN: Removed duplicated region for block: B:200:0x0546  */
        /* JADX WARN: Removed duplicated region for block: B:204:0x057e  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x0584  */
        /* JADX WARN: Removed duplicated region for block: B:208:0x0590  */
        /* JADX WARN: Removed duplicated region for block: B:214:0x05b2  */
        /* JADX WARN: Removed duplicated region for block: B:217:0x05bd  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0221  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0243  */
        @Override // androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.Measurer
        @android.annotation.SuppressLint({"WrongCall"})
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo20028b(androidx.constraintlayout.solver.widgets.ConstraintWidget r6, androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.Measure r7) {
            /*
                Method dump skipped, instructions count: 1514
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.Measurer.mo20028b(androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure$Measure):void");
        }

        /* renamed from: c */
        public void m20027c(int i, int i2, int i3, int i4, int i5, int i6) {
            this.f2592b = i3;
            this.f2593c = i4;
            this.f2594d = i5;
            this.f2595e = i6;
            this.f2596f = i;
            this.f2597g = i2;
        }
    }

    public ConstraintLayout(@NonNull Context context) {
        super(context);
        m20041p(null, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m20041p(attributeSet, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m20041p(attributeSet, i, 0);
    }

    /* renamed from: g */
    private final ConstraintWidget m20044g(int i) {
        if (i == 0) {
            return this.f2506h;
        }
        View view = this.f2504f.get(i);
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
            return this.f2506h;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).f2575m0;
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

    /* renamed from: p */
    private void m20041p(AttributeSet attributeSet, int i, int i2) {
        this.f2506h.m20322p0(this);
        this.f2506h.m20293I1(this.f2520v);
        this.f2504f.put(getId(), this);
        this.f2513o = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0178R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f2507i = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2507i);
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f2508j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2508j);
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f2509k = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2509k);
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f2510l = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2510l);
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f2512n = obtainStyledAttributes.getInt(index, this.f2512n);
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            mo20038s(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f2514p = null;
                        }
                    }
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f2513o = constraintSet;
                        constraintSet.m19991w(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f2513o = null;
                    }
                    this.f2515q = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2506h.m20292J1(this.f2512n);
    }

    /* renamed from: r */
    private void m20039r() {
        this.f2511m = true;
        this.f2517s = -1;
        this.f2518t = -1;
    }

    /* renamed from: v */
    private void m20035v() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ConstraintWidget o = m20042o(getChildAt(i));
            if (o != null) {
                o.mo20164k0();
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
                    m20044g(childAt.getId()).m20320q0(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (this.f2515q != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f2515q && (childAt2 instanceof Constraints)) {
                    this.f2513o = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        ConstraintSet constraintSet = this.f2513o;
        if (constraintSet != null) {
            constraintSet.m20008f(this, true);
        }
        this.f2506h.m20165h1();
        int size = this.f2505g.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f2505g.get(i4).m20052t(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).m19963c(this);
            }
        }
        this.f2519u.clear();
        this.f2519u.put(0, this.f2506h);
        this.f2519u.put(getId(), this.f2506h);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f2519u.put(childAt4.getId(), m20042o(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            ConstraintWidget o2 = m20042o(childAt5);
            if (o2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.f2506h.m20169a(o2);
                m20048c(isInEditMode, childAt5, o2, layoutParams, this.f2519u);
            }
        }
    }

    /* renamed from: x */
    private boolean m20033x() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
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
            m20035v();
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f4  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20048c(boolean r8, android.view.View r9, androidx.constraintlayout.solver.widgets.ConstraintWidget r10, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r11, android.util.SparseArray<androidx.constraintlayout.solver.widgets.ConstraintWidget> r12) {
        /*
            Method dump skipped, instructions count: 1426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m20048c(boolean, android.view.View, androidx.constraintlayout.solver.widgets.ConstraintWidget, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f2505g;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f2505g.get(i).mo20054r(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (!(childAt.getVisibility() == 8 || (tag = childAt.getTag()) == null || !(tag instanceof String))) {
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

    /* renamed from: f */
    public Object m20045f(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f2516r;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.f2516r.get(str);
    }

    @Override // android.view.View
    public void forceLayout() {
        m20039r();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getMaxHeight() {
        return this.f2510l;
    }

    public int getMaxWidth() {
        return this.f2509k;
    }

    public int getMinHeight() {
        return this.f2508j;
    }

    public int getMinWidth() {
        return this.f2507i;
    }

    public int getOptimizationLevel() {
        return this.f2506h.m20273w1();
    }

    /* renamed from: h */
    public View m20043h(int i) {
        return this.f2504f.get(i);
    }

    /* renamed from: o */
    public final ConstraintWidget m20042o(View view) {
        if (view == this) {
            return this.f2506h;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).f2575m0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f2575m0;
            if ((childAt.getVisibility() != 8 || layoutParams.f2548Y || layoutParams.f2549Z || layoutParams.f2553b0 || isInEditMode) && !layoutParams.f2551a0) {
                int V = constraintWidget.m20354V();
                int W = constraintWidget.m20352W();
                int U = constraintWidget.m20356U() + V;
                int y = constraintWidget.m20305y() + W;
                childAt.layout(V, W, U, y);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(V, W, U, y);
                }
            }
        }
        int size = this.f2505g.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f2505g.get(i6).mo19966p(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f2511m) {
            if (this.f2521w == i && this.f2522x == i2) {
                m20037t(i, i2, this.f2506h.m20356U(), this.f2506h.m20305y(), this.f2506h.m20298D1(), this.f2506h.m20300B1());
                return;
            } else if (this.f2521w == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f2522x) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f2506h.m20305y()) {
                this.f2521w = i;
                this.f2522x = i2;
                m20037t(i, i2, this.f2506h.m20356U(), this.f2506h.m20305y(), this.f2506h.m20298D1(), this.f2506h.m20300B1());
                return;
            }
        }
        this.f2521w = i;
        this.f2522x = i2;
        this.f2506h.m20291K1(m20040q());
        if (this.f2511m) {
            this.f2511m = false;
            if (m20033x()) {
                this.f2506h.m20289M1();
            }
        }
        m20036u(this.f2506h, this.f2512n, i, i2);
        m20037t(i, i2, this.f2506h.m20356U(), this.f2506h.m20305y(), this.f2506h.m20298D1(), this.f2506h.m20300B1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget o = m20042o(view);
        if ((view instanceof Guideline) && !(o instanceof Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Guideline guideline = new Guideline();
            layoutParams.f2575m0 = guideline;
            layoutParams.f2548Y = true;
            guideline.m20200n1(layoutParams.f2541R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m20051u();
            ((LayoutParams) view.getLayoutParams()).f2549Z = true;
            if (!this.f2505g.contains(constraintHelper)) {
                this.f2505g.add(constraintHelper);
            }
        }
        this.f2504f.put(view.getId(), view);
        this.f2511m = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f2504f.remove(view.getId());
        this.f2506h.m20166g1(m20042o(view));
        this.f2505g.remove(view);
        this.f2511m = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q */
    public boolean m20040q() {
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
        m20039r();
        super.requestLayout();
    }

    /* renamed from: s */
    protected void mo20038s(int i) {
        this.f2514p = new ConstraintLayoutStates(getContext(), this, i);
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.f2513o = constraintSet;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.f2516r == null) {
                this.f2516r = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            String str2 = str;
            if (indexOf != -1) {
                str2 = str.substring(indexOf + 1);
            }
            this.f2516r.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f2504f.remove(getId());
        super.setId(i);
        this.f2504f.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i != this.f2510l) {
            this.f2510l = i;
            requestLayout();
        }
    }

    public void setMaxWidth(int i) {
        if (i != this.f2509k) {
            this.f2509k = i;
            requestLayout();
        }
    }

    public void setMinHeight(int i) {
        if (i != this.f2508j) {
            this.f2508j = i;
            requestLayout();
        }
    }

    public void setMinWidth(int i) {
        if (i != this.f2507i) {
            this.f2507i = i;
            requestLayout();
        }
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        ConstraintLayoutStates constraintLayoutStates = this.f2514p;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.m20023c(constraintsChangedListener);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f2512n = i;
        this.f2506h.m20292J1(i);
    }

    public void setState(int i, int i2, int i3) {
        ConstraintLayoutStates constraintLayoutStates = this.f2514p;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.m20022d(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: t */
    public void m20037t(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Measurer measurer = this.f2520v;
        int i5 = measurer.f2595e;
        int i6 = i3 + measurer.f2594d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
            int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0);
            int min = Math.min(this.f2509k, resolveSizeAndState & 16777215);
            int min2 = Math.min(this.f2510l, resolveSizeAndState2 & 16777215);
            int i8 = min;
            if (z) {
                i8 = min | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
            int i9 = min2;
            if (z2) {
                i9 = min2 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
            setMeasuredDimension(i8, i9);
            this.f2517s = i8;
            this.f2518t = i9;
            return;
        }
        setMeasuredDimension(i6, i7);
        this.f2517s = i6;
        this.f2518t = i7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public void m20036u(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3) {
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i5 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f2520v.m20027c(i2, i3, max, max2, paddingWidth, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            i4 = Math.max(0, getPaddingStart());
            int max3 = Math.max(0, getPaddingEnd());
            if (i4 <= 0 && max3 <= 0) {
                i4 = Math.max(0, getPaddingLeft());
            } else if (m20040q()) {
                i4 = max3;
            }
        } else {
            i4 = Math.max(0, getPaddingLeft());
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        m20034w(constraintWidgetContainer, mode, i6, mode2, i7);
        constraintWidgetContainer.m20297E1(i, mode, i6, mode2, i7, this.f2517s, this.f2518t, i4, max);
    }

    /* renamed from: w */
    protected void m20034w(ConstraintWidgetContainer constraintWidgetContainer, int i, int i2, int i3, int i4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        Measurer measurer = this.f2520v;
        int i5 = measurer.f2595e;
        int i6 = measurer.f2594d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour = dimensionBehaviour3;
            if (childCount == 0) {
                i2 = Math.max(0, this.f2507i);
                dimensionBehaviour = dimensionBehaviour3;
            }
        } else if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour = dimensionBehaviour4;
            if (childCount == 0) {
                i2 = Math.max(0, this.f2507i);
                dimensionBehaviour = dimensionBehaviour4;
            }
            i2 = 0;
        } else if (i != 1073741824) {
            dimensionBehaviour = dimensionBehaviour2;
            i2 = 0;
        } else {
            i2 = Math.min(this.f2509k - i6, i2);
            dimensionBehaviour = dimensionBehaviour2;
        }
        if (i3 == Integer.MIN_VALUE) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour2 = dimensionBehaviour5;
            if (childCount == 0) {
                i4 = Math.max(0, this.f2508j);
                dimensionBehaviour2 = dimensionBehaviour5;
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.f2510l - i5, i4);
            }
            i4 = 0;
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dimensionBehaviour2 = dimensionBehaviour6;
            if (childCount == 0) {
                i4 = Math.max(0, this.f2508j);
                dimensionBehaviour2 = dimensionBehaviour6;
            }
            i4 = 0;
        }
        if (!(i2 == constraintWidgetContainer.m20356U() && i4 == constraintWidgetContainer.m20305y())) {
            constraintWidgetContainer.m20301A1();
        }
        constraintWidgetContainer.m20345Z0(0);
        constraintWidgetContainer.m20343a1(0);
        constraintWidgetContainer.m20373L0(this.f2509k - i6);
        constraintWidgetContainer.m20375K0(this.f2510l - i5);
        constraintWidgetContainer.m20367O0(0);
        constraintWidgetContainer.m20369N0(0);
        constraintWidgetContainer.m20389D0(dimensionBehaviour);
        constraintWidgetContainer.m20347Y0(i2);
        constraintWidgetContainer.m20355U0(dimensionBehaviour2);
        constraintWidgetContainer.m20302z0(i4);
        constraintWidgetContainer.m20367O0(this.f2507i - i6);
        constraintWidgetContainer.m20369N0(this.f2508j - i5);
    }
}
