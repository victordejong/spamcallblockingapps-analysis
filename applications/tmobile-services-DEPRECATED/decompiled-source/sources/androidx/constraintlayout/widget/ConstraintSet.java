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
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet.class */
public class ConstraintSet {

    /* renamed from: d */
    private static final int[] f2616d = {0, 4, 8};

    /* renamed from: e */
    private static SparseIntArray f2617e;

    /* renamed from: a */
    private HashMap<String, ConstraintAttribute> f2618a = new HashMap<>();

    /* renamed from: b */
    private boolean f2619b = true;

    /* renamed from: c */
    private HashMap<Integer, Constraint> f2620c = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet$Constraint.class */
    public static class Constraint {

        /* renamed from: a */
        int f2621a;

        /* renamed from: b */
        public final PropertySet f2622b = new PropertySet();

        /* renamed from: c */
        public final Motion f2623c = new Motion();

        /* renamed from: d */
        public final Layout f2624d = new Layout();

        /* renamed from: e */
        public final Transform f2625e = new Transform();

        /* renamed from: f */
        public HashMap<String, ConstraintAttribute> f2626f = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public void m19982f(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f2621a = i;
            Layout layout = this.f2624d;
            layout.f2668h = layoutParams.f2556d;
            layout.f2670i = layoutParams.f2558e;
            layout.f2672j = layoutParams.f2560f;
            layout.f2674k = layoutParams.f2562g;
            layout.f2675l = layoutParams.f2564h;
            layout.f2676m = layoutParams.f2566i;
            layout.f2677n = layoutParams.f2568j;
            layout.f2678o = layoutParams.f2570k;
            layout.f2679p = layoutParams.f2572l;
            layout.f2680q = layoutParams.f2579p;
            layout.f2681r = layoutParams.f2580q;
            layout.f2682s = layoutParams.f2581r;
            layout.f2683t = layoutParams.f2582s;
            layout.f2684u = layoutParams.f2589z;
            layout.f2685v = layoutParams.f2524A;
            layout.f2686w = layoutParams.f2525B;
            layout.f2687x = layoutParams.f2574m;
            layout.f2688y = layoutParams.f2576n;
            layout.f2689z = layoutParams.f2578o;
            layout.f2628A = layoutParams.f2539P;
            layout.f2629B = layoutParams.f2540Q;
            layout.f2630C = layoutParams.f2541R;
            layout.f2666g = layoutParams.f2554c;
            layout.f2662e = layoutParams.f2550a;
            layout.f2664f = layoutParams.f2552b;
            layout.f2658c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.f2660d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.f2631D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.f2632E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.f2633F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.f2634G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.f2643P = layoutParams.f2528E;
            layout.f2644Q = layoutParams.f2527D;
            layout.f2646S = layoutParams.f2530G;
            layout.f2645R = layoutParams.f2529F;
            layout.f2669h0 = layoutParams.f2542S;
            layout.f2671i0 = layoutParams.f2543T;
            layout.f2647T = layoutParams.f2531H;
            layout.f2648U = layoutParams.f2532I;
            layout.f2649V = layoutParams.f2535L;
            layout.f2650W = layoutParams.f2536M;
            layout.f2651X = layoutParams.f2533J;
            layout.f2652Y = layoutParams.f2534K;
            layout.f2653Z = layoutParams.f2537N;
            layout.f2655a0 = layoutParams.f2538O;
            layout.f2667g0 = layoutParams.f2544U;
            layout.f2638K = layoutParams.f2584u;
            layout.f2640M = layoutParams.f2586w;
            layout.f2637J = layoutParams.f2583t;
            layout.f2639L = layoutParams.f2585v;
            layout.f2642O = layoutParams.f2587x;
            layout.f2641N = layoutParams.f2588y;
            if (Build.VERSION.SDK_INT >= 17) {
                layout.f2635H = layoutParams.getMarginEnd();
                this.f2624d.f2636I = layoutParams.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public void m19981g(int i, Constraints.LayoutParams layoutParams) {
            m19982f(i, layoutParams);
            this.f2622b.f2701d = layoutParams.f2719o0;
            Transform transform = this.f2625e;
            transform.f2705b = layoutParams.f2722r0;
            transform.f2706c = layoutParams.f2723s0;
            transform.f2707d = layoutParams.f2724t0;
            transform.f2708e = layoutParams.f2725u0;
            transform.f2709f = layoutParams.f2726v0;
            transform.f2710g = layoutParams.f2727w0;
            transform.f2711h = layoutParams.f2728x0;
            transform.f2712i = layoutParams.f2729y0;
            transform.f2713j = layoutParams.f2730z0;
            transform.f2714k = layoutParams.f2718A0;
            transform.f2716m = layoutParams.f2721q0;
            transform.f2715l = layoutParams.f2720p0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public void m19980h(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m19981g(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                Layout layout = this.f2624d;
                layout.f2661d0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                layout.f2657b0 = barrier.getType();
                this.f2624d.f2663e0 = barrier.getReferencedIds();
                this.f2624d.f2659c0 = barrier.getMargin();
            }
        }

        /* renamed from: d */
        public void m19984d(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.f2624d;
            layoutParams.f2556d = layout.f2668h;
            layoutParams.f2558e = layout.f2670i;
            layoutParams.f2560f = layout.f2672j;
            layoutParams.f2562g = layout.f2674k;
            layoutParams.f2564h = layout.f2675l;
            layoutParams.f2566i = layout.f2676m;
            layoutParams.f2568j = layout.f2677n;
            layoutParams.f2570k = layout.f2678o;
            layoutParams.f2572l = layout.f2679p;
            layoutParams.f2579p = layout.f2680q;
            layoutParams.f2580q = layout.f2681r;
            layoutParams.f2581r = layout.f2682s;
            layoutParams.f2582s = layout.f2683t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.f2631D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.f2632E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.f2633F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.f2634G;
            layoutParams.f2587x = layout.f2642O;
            layoutParams.f2588y = layout.f2641N;
            layoutParams.f2584u = layout.f2638K;
            layoutParams.f2586w = layout.f2640M;
            layoutParams.f2589z = layout.f2684u;
            layoutParams.f2524A = layout.f2685v;
            layoutParams.f2574m = layout.f2687x;
            layoutParams.f2576n = layout.f2688y;
            layoutParams.f2578o = layout.f2689z;
            layoutParams.f2525B = layout.f2686w;
            layoutParams.f2539P = layout.f2628A;
            layoutParams.f2540Q = layout.f2629B;
            layoutParams.f2528E = layout.f2643P;
            layoutParams.f2527D = layout.f2644Q;
            layoutParams.f2530G = layout.f2646S;
            layoutParams.f2529F = layout.f2645R;
            layoutParams.f2542S = layout.f2669h0;
            layoutParams.f2543T = layout.f2671i0;
            layoutParams.f2531H = layout.f2647T;
            layoutParams.f2532I = layout.f2648U;
            layoutParams.f2535L = layout.f2649V;
            layoutParams.f2536M = layout.f2650W;
            layoutParams.f2533J = layout.f2651X;
            layoutParams.f2534K = layout.f2652Y;
            layoutParams.f2537N = layout.f2653Z;
            layoutParams.f2538O = layout.f2655a0;
            layoutParams.f2541R = layout.f2630C;
            layoutParams.f2554c = layout.f2666g;
            layoutParams.f2550a = layout.f2662e;
            layoutParams.f2552b = layout.f2664f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.f2658c;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.f2660d;
            String str = layout.f2667g0;
            if (str != null) {
                layoutParams.f2544U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f2624d.f2636I);
                layoutParams.setMarginEnd(this.f2624d.f2635H);
            }
            layoutParams.m20030c();
        }

        /* renamed from: e */
        public Constraint clone() {
            Constraint constraint = new Constraint();
            constraint.f2624d.m19979a(this.f2624d);
            constraint.f2623c.m19977a(this.f2623c);
            constraint.f2622b.m19975a(this.f2622b);
            constraint.f2625e.m19973a(this.f2625e);
            constraint.f2621a = this.f2621a;
            return constraint;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet$Layout.class */
    public static class Layout {

        /* renamed from: k0 */
        private static SparseIntArray f2627k0;

        /* renamed from: c */
        public int f2658c;

        /* renamed from: d */
        public int f2660d;

        /* renamed from: e0 */
        public int[] f2663e0;

        /* renamed from: f0 */
        public String f2665f0;

        /* renamed from: g0 */
        public String f2667g0;

        /* renamed from: a */
        public boolean f2654a = false;

        /* renamed from: b */
        public boolean f2656b = false;

        /* renamed from: e */
        public int f2662e = -1;

        /* renamed from: f */
        public int f2664f = -1;

        /* renamed from: g */
        public float f2666g = -1.0f;

        /* renamed from: h */
        public int f2668h = -1;

        /* renamed from: i */
        public int f2670i = -1;

        /* renamed from: j */
        public int f2672j = -1;

        /* renamed from: k */
        public int f2674k = -1;

        /* renamed from: l */
        public int f2675l = -1;

        /* renamed from: m */
        public int f2676m = -1;

        /* renamed from: n */
        public int f2677n = -1;

        /* renamed from: o */
        public int f2678o = -1;

        /* renamed from: p */
        public int f2679p = -1;

        /* renamed from: q */
        public int f2680q = -1;

        /* renamed from: r */
        public int f2681r = -1;

        /* renamed from: s */
        public int f2682s = -1;

        /* renamed from: t */
        public int f2683t = -1;

        /* renamed from: u */
        public float f2684u = 0.5f;

        /* renamed from: v */
        public float f2685v = 0.5f;

        /* renamed from: w */
        public String f2686w = null;

        /* renamed from: x */
        public int f2687x = -1;

        /* renamed from: y */
        public int f2688y = 0;

        /* renamed from: z */
        public float f2689z = 0.0f;

        /* renamed from: A */
        public int f2628A = -1;

        /* renamed from: B */
        public int f2629B = -1;

        /* renamed from: C */
        public int f2630C = -1;

        /* renamed from: D */
        public int f2631D = -1;

        /* renamed from: E */
        public int f2632E = -1;

        /* renamed from: F */
        public int f2633F = -1;

        /* renamed from: G */
        public int f2634G = -1;

        /* renamed from: H */
        public int f2635H = -1;

        /* renamed from: I */
        public int f2636I = -1;

        /* renamed from: J */
        public int f2637J = -1;

        /* renamed from: K */
        public int f2638K = -1;

        /* renamed from: L */
        public int f2639L = -1;

        /* renamed from: M */
        public int f2640M = -1;

        /* renamed from: N */
        public int f2641N = -1;

        /* renamed from: O */
        public int f2642O = -1;

        /* renamed from: P */
        public float f2643P = -1.0f;

        /* renamed from: Q */
        public float f2644Q = -1.0f;

        /* renamed from: R */
        public int f2645R = 0;

        /* renamed from: S */
        public int f2646S = 0;

        /* renamed from: T */
        public int f2647T = 0;

        /* renamed from: U */
        public int f2648U = 0;

        /* renamed from: V */
        public int f2649V = -1;

        /* renamed from: W */
        public int f2650W = -1;

        /* renamed from: X */
        public int f2651X = -1;

        /* renamed from: Y */
        public int f2652Y = -1;

        /* renamed from: Z */
        public float f2653Z = 1.0f;

        /* renamed from: a0 */
        public float f2655a0 = 1.0f;

        /* renamed from: b0 */
        public int f2657b0 = -1;

        /* renamed from: c0 */
        public int f2659c0 = 0;

        /* renamed from: d0 */
        public int f2661d0 = -1;

        /* renamed from: h0 */
        public boolean f2669h0 = false;

        /* renamed from: i0 */
        public boolean f2671i0 = false;

        /* renamed from: j0 */
        public boolean f2673j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2627k0 = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f2627k0.append(C0178R.styleable.Layout_layout_editor_absoluteX, 6);
            f2627k0.append(C0178R.styleable.Layout_layout_editor_absoluteY, 7);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintGuide_begin, 17);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintGuide_end, 18);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintGuide_percent, 19);
            f2627k0.append(C0178R.styleable.Layout_android_orientation, 26);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginLeft, 13);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginTop, 16);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginRight, 14);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginBottom, 11);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginStart, 15);
            f2627k0.append(C0178R.styleable.Layout_layout_goneMarginEnd, 12);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintVertical_weight, 38);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintVertical_bias, 36);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintDimensionRatio, 5);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintLeft_creator, 76);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintTop_creator, 76);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintRight_creator, 76);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintBottom_creator, 76);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintBaseline_creator, 76);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginLeft, 23);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginRight, 27);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginStart, 30);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginEnd, 8);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginTop, 33);
            f2627k0.append(C0178R.styleable.Layout_android_layout_marginBottom, 2);
            f2627k0.append(C0178R.styleable.Layout_android_layout_width, 22);
            f2627k0.append(C0178R.styleable.Layout_android_layout_height, 21);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintCircle, 61);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintCircleRadius, 62);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintCircleAngle, 63);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintWidth_percent, 69);
            f2627k0.append(C0178R.styleable.Layout_layout_constraintHeight_percent, 70);
            f2627k0.append(C0178R.styleable.Layout_chainUseRtl, 71);
            f2627k0.append(C0178R.styleable.Layout_barrierDirection, 72);
            f2627k0.append(C0178R.styleable.Layout_barrierMargin, 73);
            f2627k0.append(C0178R.styleable.Layout_constraint_referenced_ids, 74);
            f2627k0.append(C0178R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m19979a(Layout layout) {
            this.f2654a = layout.f2654a;
            this.f2658c = layout.f2658c;
            this.f2656b = layout.f2656b;
            this.f2660d = layout.f2660d;
            this.f2662e = layout.f2662e;
            this.f2664f = layout.f2664f;
            this.f2666g = layout.f2666g;
            this.f2668h = layout.f2668h;
            this.f2670i = layout.f2670i;
            this.f2672j = layout.f2672j;
            this.f2674k = layout.f2674k;
            this.f2675l = layout.f2675l;
            this.f2676m = layout.f2676m;
            this.f2677n = layout.f2677n;
            this.f2678o = layout.f2678o;
            this.f2679p = layout.f2679p;
            this.f2680q = layout.f2680q;
            this.f2681r = layout.f2681r;
            this.f2682s = layout.f2682s;
            this.f2683t = layout.f2683t;
            this.f2684u = layout.f2684u;
            this.f2685v = layout.f2685v;
            this.f2686w = layout.f2686w;
            this.f2687x = layout.f2687x;
            this.f2688y = layout.f2688y;
            this.f2689z = layout.f2689z;
            this.f2628A = layout.f2628A;
            this.f2629B = layout.f2629B;
            this.f2630C = layout.f2630C;
            this.f2631D = layout.f2631D;
            this.f2632E = layout.f2632E;
            this.f2633F = layout.f2633F;
            this.f2634G = layout.f2634G;
            this.f2635H = layout.f2635H;
            this.f2636I = layout.f2636I;
            this.f2637J = layout.f2637J;
            this.f2638K = layout.f2638K;
            this.f2639L = layout.f2639L;
            this.f2640M = layout.f2640M;
            this.f2641N = layout.f2641N;
            this.f2642O = layout.f2642O;
            this.f2643P = layout.f2643P;
            this.f2644Q = layout.f2644Q;
            this.f2645R = layout.f2645R;
            this.f2646S = layout.f2646S;
            this.f2647T = layout.f2647T;
            this.f2648U = layout.f2648U;
            this.f2649V = layout.f2649V;
            this.f2650W = layout.f2650W;
            this.f2651X = layout.f2651X;
            this.f2652Y = layout.f2652Y;
            this.f2653Z = layout.f2653Z;
            this.f2655a0 = layout.f2655a0;
            this.f2657b0 = layout.f2657b0;
            this.f2659c0 = layout.f2659c0;
            this.f2661d0 = layout.f2661d0;
            this.f2667g0 = layout.f2667g0;
            int[] iArr = layout.f2663e0;
            if (iArr != null) {
                this.f2663e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f2663e0 = null;
            }
            this.f2665f0 = layout.f2665f0;
            this.f2669h0 = layout.f2669h0;
            this.f2671i0 = layout.f2671i0;
            this.f2673j0 = layout.f2673j0;
        }

        /* renamed from: b */
        void m19978b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.Layout);
            this.f2656b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f2627k0.get(index);
                if (i2 == 80) {
                    this.f2669h0 = obtainStyledAttributes.getBoolean(index, this.f2669h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f2679p = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2679p);
                            continue;
                        case 2:
                            this.f2634G = obtainStyledAttributes.getDimensionPixelSize(index, this.f2634G);
                            continue;
                        case 3:
                            this.f2678o = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2678o);
                            continue;
                        case 4:
                            this.f2677n = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2677n);
                            continue;
                        case 5:
                            this.f2686w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f2628A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2628A);
                            continue;
                        case 7:
                            this.f2629B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2629B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f2635H = obtainStyledAttributes.getDimensionPixelSize(index, this.f2635H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f2683t = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2683t);
                            continue;
                        case 10:
                            this.f2682s = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2682s);
                            continue;
                        case 11:
                            this.f2640M = obtainStyledAttributes.getDimensionPixelSize(index, this.f2640M);
                            continue;
                        case 12:
                            this.f2641N = obtainStyledAttributes.getDimensionPixelSize(index, this.f2641N);
                            continue;
                        case 13:
                            this.f2637J = obtainStyledAttributes.getDimensionPixelSize(index, this.f2637J);
                            continue;
                        case 14:
                            this.f2639L = obtainStyledAttributes.getDimensionPixelSize(index, this.f2639L);
                            continue;
                        case 15:
                            this.f2642O = obtainStyledAttributes.getDimensionPixelSize(index, this.f2642O);
                            continue;
                        case 16:
                            this.f2638K = obtainStyledAttributes.getDimensionPixelSize(index, this.f2638K);
                            continue;
                        case 17:
                            this.f2662e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2662e);
                            continue;
                        case 18:
                            this.f2664f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2664f);
                            continue;
                        case 19:
                            this.f2666g = obtainStyledAttributes.getFloat(index, this.f2666g);
                            continue;
                        case 20:
                            this.f2684u = obtainStyledAttributes.getFloat(index, this.f2684u);
                            continue;
                        case 21:
                            this.f2660d = obtainStyledAttributes.getLayoutDimension(index, this.f2660d);
                            continue;
                        case 22:
                            this.f2658c = obtainStyledAttributes.getLayoutDimension(index, this.f2658c);
                            continue;
                        case 23:
                            this.f2631D = obtainStyledAttributes.getDimensionPixelSize(index, this.f2631D);
                            continue;
                        case 24:
                            this.f2668h = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2668h);
                            continue;
                        case 25:
                            this.f2670i = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2670i);
                            continue;
                        case 26:
                            this.f2630C = obtainStyledAttributes.getInt(index, this.f2630C);
                            continue;
                        case 27:
                            this.f2632E = obtainStyledAttributes.getDimensionPixelSize(index, this.f2632E);
                            continue;
                        case 28:
                            this.f2672j = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2672j);
                            continue;
                        case 29:
                            this.f2674k = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2674k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f2636I = obtainStyledAttributes.getDimensionPixelSize(index, this.f2636I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f2680q = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2680q);
                            continue;
                        case 32:
                            this.f2681r = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2681r);
                            continue;
                        case 33:
                            this.f2633F = obtainStyledAttributes.getDimensionPixelSize(index, this.f2633F);
                            continue;
                        case 34:
                            this.f2676m = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2676m);
                            continue;
                        case 35:
                            this.f2675l = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2675l);
                            continue;
                        case 36:
                            this.f2685v = obtainStyledAttributes.getFloat(index, this.f2685v);
                            continue;
                        case 37:
                            this.f2644Q = obtainStyledAttributes.getFloat(index, this.f2644Q);
                            continue;
                        case 38:
                            this.f2643P = obtainStyledAttributes.getFloat(index, this.f2643P);
                            continue;
                        case 39:
                            this.f2645R = obtainStyledAttributes.getInt(index, this.f2645R);
                            continue;
                        case 40:
                            this.f2646S = obtainStyledAttributes.getInt(index, this.f2646S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f2647T = obtainStyledAttributes.getInt(index, this.f2647T);
                                    continue;
                                case 55:
                                    this.f2648U = obtainStyledAttributes.getInt(index, this.f2648U);
                                    continue;
                                case 56:
                                    this.f2649V = obtainStyledAttributes.getDimensionPixelSize(index, this.f2649V);
                                    continue;
                                case 57:
                                    this.f2650W = obtainStyledAttributes.getDimensionPixelSize(index, this.f2650W);
                                    continue;
                                case 58:
                                    this.f2651X = obtainStyledAttributes.getDimensionPixelSize(index, this.f2651X);
                                    continue;
                                case 59:
                                    this.f2652Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2652Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f2687x = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2687x);
                                            continue;
                                        case 62:
                                            this.f2688y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2688y);
                                            continue;
                                        case 63:
                                            this.f2689z = obtainStyledAttributes.getFloat(index, this.f2689z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f2653Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.f2655a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    continue;
                                                case 72:
                                                    this.f2657b0 = obtainStyledAttributes.getInt(index, this.f2657b0);
                                                    continue;
                                                case 73:
                                                    this.f2659c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f2659c0);
                                                    continue;
                                                case 74:
                                                    this.f2665f0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.f2673j0 = obtainStyledAttributes.getBoolean(index, this.f2673j0);
                                                    continue;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2627k0.get(index));
                                                    continue;
                                                case 77:
                                                    this.f2667g0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f2627k0.get(index));
                                                    continue;
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f2671i0 = obtainStyledAttributes.getBoolean(index, this.f2671i0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet$Motion.class */
    public static class Motion {

        /* renamed from: h */
        private static SparseIntArray f2690h;

        /* renamed from: a */
        public boolean f2691a = false;

        /* renamed from: b */
        public int f2692b = -1;

        /* renamed from: c */
        public String f2693c = null;

        /* renamed from: d */
        public int f2694d = -1;

        /* renamed from: e */
        public int f2695e = 0;

        /* renamed from: f */
        public float f2696f = Float.NaN;

        /* renamed from: g */
        public float f2697g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2690h = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.Motion_motionPathRotate, 1);
            f2690h.append(C0178R.styleable.Motion_pathMotionArc, 2);
            f2690h.append(C0178R.styleable.Motion_transitionEasing, 3);
            f2690h.append(C0178R.styleable.Motion_drawPath, 4);
            f2690h.append(C0178R.styleable.Motion_animate_relativeTo, 5);
            f2690h.append(C0178R.styleable.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        public void m19977a(Motion motion) {
            this.f2691a = motion.f2691a;
            this.f2692b = motion.f2692b;
            this.f2693c = motion.f2693c;
            this.f2694d = motion.f2694d;
            this.f2695e = motion.f2695e;
            this.f2697g = motion.f2697g;
            this.f2696f = motion.f2696f;
        }

        /* renamed from: b */
        void m19976b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.Motion);
            this.f2691a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f2690h.get(index)) {
                    case 1:
                        this.f2697g = obtainStyledAttributes.getFloat(index, this.f2697g);
                        break;
                    case 2:
                        this.f2694d = obtainStyledAttributes.getInt(index, this.f2694d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f2693c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f2693c = Easing.f1628c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f2695e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f2692b = ConstraintSet.m19989y(obtainStyledAttributes, index, this.f2692b);
                        break;
                    case 6:
                        this.f2696f = obtainStyledAttributes.getFloat(index, this.f2696f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet$PropertySet.class */
    public static class PropertySet {

        /* renamed from: a */
        public boolean f2698a = false;

        /* renamed from: b */
        public int f2699b = 0;

        /* renamed from: c */
        public int f2700c = 0;

        /* renamed from: d */
        public float f2701d = 1.0f;

        /* renamed from: e */
        public float f2702e = Float.NaN;

        /* renamed from: a */
        public void m19975a(PropertySet propertySet) {
            this.f2698a = propertySet.f2698a;
            this.f2699b = propertySet.f2699b;
            this.f2701d = propertySet.f2701d;
            this.f2702e = propertySet.f2702e;
            this.f2700c = propertySet.f2700c;
        }

        /* renamed from: b */
        void m19974b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.PropertySet);
            this.f2698a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.PropertySet_android_alpha) {
                    this.f2701d = obtainStyledAttributes.getFloat(index, this.f2701d);
                } else if (index == C0178R.styleable.PropertySet_android_visibility) {
                    this.f2699b = obtainStyledAttributes.getInt(index, this.f2699b);
                    this.f2699b = ConstraintSet.f2616d[this.f2699b];
                } else if (index == C0178R.styleable.PropertySet_visibilityMode) {
                    this.f2700c = obtainStyledAttributes.getInt(index, this.f2700c);
                } else if (index == C0178R.styleable.PropertySet_motionProgress) {
                    this.f2702e = obtainStyledAttributes.getFloat(index, this.f2702e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintSet$Transform.class */
    public static class Transform {

        /* renamed from: n */
        private static SparseIntArray f2703n;

        /* renamed from: a */
        public boolean f2704a = false;

        /* renamed from: b */
        public float f2705b = 0.0f;

        /* renamed from: c */
        public float f2706c = 0.0f;

        /* renamed from: d */
        public float f2707d = 0.0f;

        /* renamed from: e */
        public float f2708e = 1.0f;

        /* renamed from: f */
        public float f2709f = 1.0f;

        /* renamed from: g */
        public float f2710g = Float.NaN;

        /* renamed from: h */
        public float f2711h = Float.NaN;

        /* renamed from: i */
        public float f2712i = 0.0f;

        /* renamed from: j */
        public float f2713j = 0.0f;

        /* renamed from: k */
        public float f2714k = 0.0f;

        /* renamed from: l */
        public boolean f2715l = false;

        /* renamed from: m */
        public float f2716m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2703n = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.Transform_android_rotation, 1);
            f2703n.append(C0178R.styleable.Transform_android_rotationX, 2);
            f2703n.append(C0178R.styleable.Transform_android_rotationY, 3);
            f2703n.append(C0178R.styleable.Transform_android_scaleX, 4);
            f2703n.append(C0178R.styleable.Transform_android_scaleY, 5);
            f2703n.append(C0178R.styleable.Transform_android_transformPivotX, 6);
            f2703n.append(C0178R.styleable.Transform_android_transformPivotY, 7);
            f2703n.append(C0178R.styleable.Transform_android_translationX, 8);
            f2703n.append(C0178R.styleable.Transform_android_translationY, 9);
            f2703n.append(C0178R.styleable.Transform_android_translationZ, 10);
            f2703n.append(C0178R.styleable.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        public void m19973a(Transform transform) {
            this.f2704a = transform.f2704a;
            this.f2705b = transform.f2705b;
            this.f2706c = transform.f2706c;
            this.f2707d = transform.f2707d;
            this.f2708e = transform.f2708e;
            this.f2709f = transform.f2709f;
            this.f2710g = transform.f2710g;
            this.f2711h = transform.f2711h;
            this.f2712i = transform.f2712i;
            this.f2713j = transform.f2713j;
            this.f2714k = transform.f2714k;
            this.f2715l = transform.f2715l;
            this.f2716m = transform.f2716m;
        }

        /* renamed from: b */
        void m19972b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.Transform);
            this.f2704a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f2703n.get(index)) {
                    case 1:
                        this.f2705b = obtainStyledAttributes.getFloat(index, this.f2705b);
                        break;
                    case 2:
                        this.f2706c = obtainStyledAttributes.getFloat(index, this.f2706c);
                        break;
                    case 3:
                        this.f2707d = obtainStyledAttributes.getFloat(index, this.f2707d);
                        break;
                    case 4:
                        this.f2708e = obtainStyledAttributes.getFloat(index, this.f2708e);
                        break;
                    case 5:
                        this.f2709f = obtainStyledAttributes.getFloat(index, this.f2709f);
                        break;
                    case 6:
                        this.f2710g = obtainStyledAttributes.getDimension(index, this.f2710g);
                        break;
                    case 7:
                        this.f2711h = obtainStyledAttributes.getDimension(index, this.f2711h);
                        break;
                    case 8:
                        this.f2712i = obtainStyledAttributes.getDimension(index, this.f2712i);
                        break;
                    case 9:
                        this.f2713j = obtainStyledAttributes.getDimension(index, this.f2713j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f2714k = obtainStyledAttributes.getDimension(index, this.f2714k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f2715l = true;
                            this.f2716m = obtainStyledAttributes.getDimension(index, this.f2716m);
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
        f2617e = sparseIntArray;
        sparseIntArray.append(C0178R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f2617e.append(C0178R.styleable.Constraint_layout_editor_absoluteX, 6);
        f2617e.append(C0178R.styleable.Constraint_layout_editor_absoluteY, 7);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintGuide_end, 18);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f2617e.append(C0178R.styleable.Constraint_android_orientation, 27);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginLeft, 13);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginTop, 16);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginRight, 14);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginBottom, 11);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginStart, 15);
        f2617e.append(C0178R.styleable.Constraint_layout_goneMarginEnd, 12);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintLeft_creator, 82);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintTop_creator, 82);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintRight_creator, 82);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintBottom_creator, 82);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintBaseline_creator, 82);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginLeft, 24);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginRight, 28);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginStart, 31);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginEnd, 8);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginTop, 34);
        f2617e.append(C0178R.styleable.Constraint_android_layout_marginBottom, 2);
        f2617e.append(C0178R.styleable.Constraint_android_layout_width, 23);
        f2617e.append(C0178R.styleable.Constraint_android_layout_height, 21);
        f2617e.append(C0178R.styleable.Constraint_android_visibility, 22);
        f2617e.append(C0178R.styleable.Constraint_android_alpha, 43);
        f2617e.append(C0178R.styleable.Constraint_android_elevation, 44);
        f2617e.append(C0178R.styleable.Constraint_android_rotationX, 45);
        f2617e.append(C0178R.styleable.Constraint_android_rotationY, 46);
        f2617e.append(C0178R.styleable.Constraint_android_rotation, 60);
        f2617e.append(C0178R.styleable.Constraint_android_scaleX, 47);
        f2617e.append(C0178R.styleable.Constraint_android_scaleY, 48);
        f2617e.append(C0178R.styleable.Constraint_android_transformPivotX, 49);
        f2617e.append(C0178R.styleable.Constraint_android_transformPivotY, 50);
        f2617e.append(C0178R.styleable.Constraint_android_translationX, 51);
        f2617e.append(C0178R.styleable.Constraint_android_translationY, 52);
        f2617e.append(C0178R.styleable.Constraint_android_translationZ, 53);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintWidth_default, 54);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHeight_default, 55);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintWidth_max, 56);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHeight_max, 57);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintWidth_min, 58);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHeight_min, 59);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintCircle, 61);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f2617e.append(C0178R.styleable.Constraint_animate_relativeTo, 64);
        f2617e.append(C0178R.styleable.Constraint_transitionEasing, 65);
        f2617e.append(C0178R.styleable.Constraint_drawPath, 66);
        f2617e.append(C0178R.styleable.Constraint_transitionPathRotate, 67);
        f2617e.append(C0178R.styleable.Constraint_motionStagger, 79);
        f2617e.append(C0178R.styleable.Constraint_android_id, 38);
        f2617e.append(C0178R.styleable.Constraint_motionProgress, 68);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f2617e.append(C0178R.styleable.Constraint_chainUseRtl, 71);
        f2617e.append(C0178R.styleable.Constraint_barrierDirection, 72);
        f2617e.append(C0178R.styleable.Constraint_barrierMargin, 73);
        f2617e.append(C0178R.styleable.Constraint_constraint_referenced_ids, 74);
        f2617e.append(C0178R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f2617e.append(C0178R.styleable.Constraint_pathMotionArc, 76);
        f2617e.append(C0178R.styleable.Constraint_layout_constraintTag, 77);
        f2617e.append(C0178R.styleable.Constraint_visibilityMode, 78);
        f2617e.append(C0178R.styleable.Constraint_layout_constrainedWidth, 80);
        f2617e.append(C0178R.styleable.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: E */
    private String m20014E(int i) {
        switch (i) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    /* renamed from: m */
    private int[] m20001m(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0178R.C0181id.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i4 = i;
            if (i == 0) {
                i4 = context.getResources().getIdentifier(trim, Name.MARK, context.getPackageName());
            }
            int i5 = i4;
            if (i4 == 0) {
                i5 = i4;
                if (view.isInEditMode()) {
                    i5 = i4;
                    if (view.getParent() instanceof ConstraintLayout) {
                        Object f = ((ConstraintLayout) view.getParent()).m20045f(0, trim);
                        i5 = i4;
                        if (f != null) {
                            i5 = i4;
                            if (f instanceof Integer) {
                                i5 = ((Integer) f).intValue();
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
    private Constraint m20000n(Context context, AttributeSet attributeSet) {
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.Constraint);
        m19988z(context, constraint, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return constraint;
    }

    /* renamed from: o */
    private Constraint m19999o(int i) {
        if (!this.f2620c.containsKey(Integer.valueOf(i))) {
            this.f2620c.put(Integer.valueOf(i), new Constraint());
        }
        return this.f2620c.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public static int m19989y(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: z */
    private void m19988z(Context context, Constraint constraint, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (!(index == C0178R.styleable.Constraint_android_id || C0178R.styleable.Constraint_android_layout_marginStart == index || C0178R.styleable.Constraint_android_layout_marginEnd == index)) {
                constraint.f2623c.f2691a = true;
                constraint.f2624d.f2656b = true;
                constraint.f2622b.f2698a = true;
                constraint.f2625e.f2704a = true;
            }
            switch (f2617e.get(index)) {
                case 1:
                    Layout layout = constraint.f2624d;
                    layout.f2679p = m19989y(typedArray, index, layout.f2679p);
                    break;
                case 2:
                    Layout layout2 = constraint.f2624d;
                    layout2.f2634G = typedArray.getDimensionPixelSize(index, layout2.f2634G);
                    break;
                case 3:
                    Layout layout3 = constraint.f2624d;
                    layout3.f2678o = m19989y(typedArray, index, layout3.f2678o);
                    break;
                case 4:
                    Layout layout4 = constraint.f2624d;
                    layout4.f2677n = m19989y(typedArray, index, layout4.f2677n);
                    break;
                case 5:
                    constraint.f2624d.f2686w = typedArray.getString(index);
                    break;
                case 6:
                    Layout layout5 = constraint.f2624d;
                    layout5.f2628A = typedArray.getDimensionPixelOffset(index, layout5.f2628A);
                    break;
                case 7:
                    Layout layout6 = constraint.f2624d;
                    layout6.f2629B = typedArray.getDimensionPixelOffset(index, layout6.f2629B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        Layout layout7 = constraint.f2624d;
                        layout7.f2635H = typedArray.getDimensionPixelSize(index, layout7.f2635H);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    Layout layout8 = constraint.f2624d;
                    layout8.f2683t = m19989y(typedArray, index, layout8.f2683t);
                    break;
                case 10:
                    Layout layout9 = constraint.f2624d;
                    layout9.f2682s = m19989y(typedArray, index, layout9.f2682s);
                    break;
                case 11:
                    Layout layout10 = constraint.f2624d;
                    layout10.f2640M = typedArray.getDimensionPixelSize(index, layout10.f2640M);
                    break;
                case 12:
                    Layout layout11 = constraint.f2624d;
                    layout11.f2641N = typedArray.getDimensionPixelSize(index, layout11.f2641N);
                    break;
                case 13:
                    Layout layout12 = constraint.f2624d;
                    layout12.f2637J = typedArray.getDimensionPixelSize(index, layout12.f2637J);
                    break;
                case 14:
                    Layout layout13 = constraint.f2624d;
                    layout13.f2639L = typedArray.getDimensionPixelSize(index, layout13.f2639L);
                    break;
                case 15:
                    Layout layout14 = constraint.f2624d;
                    layout14.f2642O = typedArray.getDimensionPixelSize(index, layout14.f2642O);
                    break;
                case 16:
                    Layout layout15 = constraint.f2624d;
                    layout15.f2638K = typedArray.getDimensionPixelSize(index, layout15.f2638K);
                    break;
                case 17:
                    Layout layout16 = constraint.f2624d;
                    layout16.f2662e = typedArray.getDimensionPixelOffset(index, layout16.f2662e);
                    break;
                case 18:
                    Layout layout17 = constraint.f2624d;
                    layout17.f2664f = typedArray.getDimensionPixelOffset(index, layout17.f2664f);
                    break;
                case 19:
                    Layout layout18 = constraint.f2624d;
                    layout18.f2666g = typedArray.getFloat(index, layout18.f2666g);
                    break;
                case 20:
                    Layout layout19 = constraint.f2624d;
                    layout19.f2684u = typedArray.getFloat(index, layout19.f2684u);
                    break;
                case 21:
                    Layout layout20 = constraint.f2624d;
                    layout20.f2660d = typedArray.getLayoutDimension(index, layout20.f2660d);
                    break;
                case 22:
                    PropertySet propertySet = constraint.f2622b;
                    propertySet.f2699b = typedArray.getInt(index, propertySet.f2699b);
                    PropertySet propertySet2 = constraint.f2622b;
                    propertySet2.f2699b = f2616d[propertySet2.f2699b];
                    break;
                case 23:
                    Layout layout21 = constraint.f2624d;
                    layout21.f2658c = typedArray.getLayoutDimension(index, layout21.f2658c);
                    break;
                case 24:
                    Layout layout22 = constraint.f2624d;
                    layout22.f2631D = typedArray.getDimensionPixelSize(index, layout22.f2631D);
                    break;
                case 25:
                    Layout layout23 = constraint.f2624d;
                    layout23.f2668h = m19989y(typedArray, index, layout23.f2668h);
                    break;
                case 26:
                    Layout layout24 = constraint.f2624d;
                    layout24.f2670i = m19989y(typedArray, index, layout24.f2670i);
                    break;
                case 27:
                    Layout layout25 = constraint.f2624d;
                    layout25.f2630C = typedArray.getInt(index, layout25.f2630C);
                    break;
                case 28:
                    Layout layout26 = constraint.f2624d;
                    layout26.f2632E = typedArray.getDimensionPixelSize(index, layout26.f2632E);
                    break;
                case 29:
                    Layout layout27 = constraint.f2624d;
                    layout27.f2672j = m19989y(typedArray, index, layout27.f2672j);
                    break;
                case 30:
                    Layout layout28 = constraint.f2624d;
                    layout28.f2674k = m19989y(typedArray, index, layout28.f2674k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        Layout layout29 = constraint.f2624d;
                        layout29.f2636I = typedArray.getDimensionPixelSize(index, layout29.f2636I);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    Layout layout30 = constraint.f2624d;
                    layout30.f2680q = m19989y(typedArray, index, layout30.f2680q);
                    break;
                case 33:
                    Layout layout31 = constraint.f2624d;
                    layout31.f2681r = m19989y(typedArray, index, layout31.f2681r);
                    break;
                case 34:
                    Layout layout32 = constraint.f2624d;
                    layout32.f2633F = typedArray.getDimensionPixelSize(index, layout32.f2633F);
                    break;
                case 35:
                    Layout layout33 = constraint.f2624d;
                    layout33.f2676m = m19989y(typedArray, index, layout33.f2676m);
                    break;
                case 36:
                    Layout layout34 = constraint.f2624d;
                    layout34.f2675l = m19989y(typedArray, index, layout34.f2675l);
                    break;
                case 37:
                    Layout layout35 = constraint.f2624d;
                    layout35.f2685v = typedArray.getFloat(index, layout35.f2685v);
                    break;
                case 38:
                    constraint.f2621a = typedArray.getResourceId(index, constraint.f2621a);
                    break;
                case 39:
                    Layout layout36 = constraint.f2624d;
                    layout36.f2644Q = typedArray.getFloat(index, layout36.f2644Q);
                    break;
                case 40:
                    Layout layout37 = constraint.f2624d;
                    layout37.f2643P = typedArray.getFloat(index, layout37.f2643P);
                    break;
                case 41:
                    Layout layout38 = constraint.f2624d;
                    layout38.f2645R = typedArray.getInt(index, layout38.f2645R);
                    break;
                case 42:
                    Layout layout39 = constraint.f2624d;
                    layout39.f2646S = typedArray.getInt(index, layout39.f2646S);
                    break;
                case 43:
                    PropertySet propertySet3 = constraint.f2622b;
                    propertySet3.f2701d = typedArray.getFloat(index, propertySet3.f2701d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        Transform transform = constraint.f2625e;
                        transform.f2715l = true;
                        transform.f2716m = typedArray.getDimension(index, transform.f2716m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    Transform transform2 = constraint.f2625e;
                    transform2.f2706c = typedArray.getFloat(index, transform2.f2706c);
                    break;
                case 46:
                    Transform transform3 = constraint.f2625e;
                    transform3.f2707d = typedArray.getFloat(index, transform3.f2707d);
                    break;
                case 47:
                    Transform transform4 = constraint.f2625e;
                    transform4.f2708e = typedArray.getFloat(index, transform4.f2708e);
                    break;
                case 48:
                    Transform transform5 = constraint.f2625e;
                    transform5.f2709f = typedArray.getFloat(index, transform5.f2709f);
                    break;
                case 49:
                    Transform transform6 = constraint.f2625e;
                    transform6.f2710g = typedArray.getDimension(index, transform6.f2710g);
                    break;
                case 50:
                    Transform transform7 = constraint.f2625e;
                    transform7.f2711h = typedArray.getDimension(index, transform7.f2711h);
                    break;
                case 51:
                    Transform transform8 = constraint.f2625e;
                    transform8.f2712i = typedArray.getDimension(index, transform8.f2712i);
                    break;
                case 52:
                    Transform transform9 = constraint.f2625e;
                    transform9.f2713j = typedArray.getDimension(index, transform9.f2713j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        Transform transform10 = constraint.f2625e;
                        transform10.f2714k = typedArray.getDimension(index, transform10.f2714k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    Layout layout40 = constraint.f2624d;
                    layout40.f2647T = typedArray.getInt(index, layout40.f2647T);
                    break;
                case 55:
                    Layout layout41 = constraint.f2624d;
                    layout41.f2648U = typedArray.getInt(index, layout41.f2648U);
                    break;
                case 56:
                    Layout layout42 = constraint.f2624d;
                    layout42.f2649V = typedArray.getDimensionPixelSize(index, layout42.f2649V);
                    break;
                case 57:
                    Layout layout43 = constraint.f2624d;
                    layout43.f2650W = typedArray.getDimensionPixelSize(index, layout43.f2650W);
                    break;
                case 58:
                    Layout layout44 = constraint.f2624d;
                    layout44.f2651X = typedArray.getDimensionPixelSize(index, layout44.f2651X);
                    break;
                case 59:
                    Layout layout45 = constraint.f2624d;
                    layout45.f2652Y = typedArray.getDimensionPixelSize(index, layout45.f2652Y);
                    break;
                case 60:
                    Transform transform11 = constraint.f2625e;
                    transform11.f2705b = typedArray.getFloat(index, transform11.f2705b);
                    break;
                case 61:
                    Layout layout46 = constraint.f2624d;
                    layout46.f2687x = m19989y(typedArray, index, layout46.f2687x);
                    break;
                case 62:
                    Layout layout47 = constraint.f2624d;
                    layout47.f2688y = typedArray.getDimensionPixelSize(index, layout47.f2688y);
                    break;
                case 63:
                    Layout layout48 = constraint.f2624d;
                    layout48.f2689z = typedArray.getFloat(index, layout48.f2689z);
                    break;
                case 64:
                    Motion motion = constraint.f2623c;
                    motion.f2692b = m19989y(typedArray, index, motion.f2692b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        constraint.f2623c.f2693c = typedArray.getString(index);
                        break;
                    } else {
                        constraint.f2623c.f2693c = Easing.f1628c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    constraint.f2623c.f2695e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    Motion motion2 = constraint.f2623c;
                    motion2.f2697g = typedArray.getFloat(index, motion2.f2697g);
                    break;
                case 68:
                    PropertySet propertySet4 = constraint.f2622b;
                    propertySet4.f2702e = typedArray.getFloat(index, propertySet4.f2702e);
                    break;
                case 69:
                    constraint.f2624d.f2653Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    constraint.f2624d.f2655a0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    Layout layout49 = constraint.f2624d;
                    layout49.f2657b0 = typedArray.getInt(index, layout49.f2657b0);
                    break;
                case 73:
                    Layout layout50 = constraint.f2624d;
                    layout50.f2659c0 = typedArray.getDimensionPixelSize(index, layout50.f2659c0);
                    break;
                case 74:
                    constraint.f2624d.f2665f0 = typedArray.getString(index);
                    break;
                case 75:
                    Layout layout51 = constraint.f2624d;
                    layout51.f2673j0 = typedArray.getBoolean(index, layout51.f2673j0);
                    break;
                case 76:
                    Motion motion3 = constraint.f2623c;
                    motion3.f2694d = typedArray.getInt(index, motion3.f2694d);
                    break;
                case 77:
                    constraint.f2624d.f2667g0 = typedArray.getString(index);
                    break;
                case 78:
                    PropertySet propertySet5 = constraint.f2622b;
                    propertySet5.f2700c = typedArray.getInt(index, propertySet5.f2700c);
                    break;
                case 79:
                    Motion motion4 = constraint.f2623c;
                    motion4.f2696f = typedArray.getFloat(index, motion4.f2696f);
                    break;
                case 80:
                    Layout layout52 = constraint.f2624d;
                    layout52.f2669h0 = typedArray.getBoolean(index, layout52.f2669h0);
                    break;
                case 81:
                    Layout layout53 = constraint.f2624d;
                    layout53.f2671i0 = typedArray.getBoolean(index, layout53.f2671i0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2617e.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f2617e.get(index));
                    break;
            }
        }
    }

    /* renamed from: A */
    public void m20018A(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (!this.f2619b || id != -1) {
                if (!this.f2620c.containsKey(Integer.valueOf(id))) {
                    this.f2620c.put(Integer.valueOf(id), new Constraint());
                }
                Constraint constraint = this.f2620c.get(Integer.valueOf(id));
                if (!constraint.f2624d.f2656b) {
                    constraint.m19982f(id, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraint.f2624d.f2663e0 = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraint.f2624d.f2673j0 = barrier.m20077v();
                            constraint.f2624d.f2657b0 = barrier.getType();
                            constraint.f2624d.f2659c0 = barrier.getMargin();
                        }
                    }
                    constraint.f2624d.f2656b = true;
                }
                PropertySet propertySet = constraint.f2622b;
                if (!propertySet.f2698a) {
                    propertySet.f2699b = childAt.getVisibility();
                    constraint.f2622b.f2701d = childAt.getAlpha();
                    constraint.f2622b.f2698a = true;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    Transform transform = constraint.f2625e;
                    if (!transform.f2704a) {
                        transform.f2704a = true;
                        transform.f2705b = childAt.getRotation();
                        constraint.f2625e.f2706c = childAt.getRotationX();
                        constraint.f2625e.f2707d = childAt.getRotationY();
                        constraint.f2625e.f2708e = childAt.getScaleX();
                        constraint.f2625e.f2709f = childAt.getScaleY();
                        float pivotX = childAt.getPivotX();
                        float pivotY = childAt.getPivotY();
                        if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                            Transform transform2 = constraint.f2625e;
                            transform2.f2710g = pivotX;
                            transform2.f2711h = pivotY;
                        }
                        constraint.f2625e.f2712i = childAt.getTranslationX();
                        constraint.f2625e.f2713j = childAt.getTranslationY();
                        if (Build.VERSION.SDK_INT >= 21) {
                            constraint.f2625e.f2714k = childAt.getTranslationZ();
                            Transform transform3 = constraint.f2625e;
                            if (transform3.f2715l) {
                                transform3.f2716m = childAt.getElevation();
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
    public void m20017B(ConstraintSet constraintSet) {
        for (Integer num : constraintSet.f2620c.keySet()) {
            int intValue = num.intValue();
            Constraint constraint = constraintSet.f2620c.get(num);
            if (!this.f2620c.containsKey(Integer.valueOf(intValue))) {
                this.f2620c.put(Integer.valueOf(intValue), new Constraint());
            }
            Constraint constraint2 = this.f2620c.get(Integer.valueOf(intValue));
            Layout layout = constraint2.f2624d;
            if (!layout.f2656b) {
                layout.m19979a(constraint.f2624d);
            }
            PropertySet propertySet = constraint2.f2622b;
            if (!propertySet.f2698a) {
                propertySet.m19975a(constraint.f2622b);
            }
            Transform transform = constraint2.f2625e;
            if (!transform.f2704a) {
                transform.m19973a(constraint.f2625e);
            }
            Motion motion = constraint2.f2623c;
            if (!motion.f2691a) {
                motion.m19977a(constraint.f2623c);
            }
            for (String str : constraint.f2626f.keySet()) {
                if (!constraint2.f2626f.containsKey(str)) {
                    constraint2.f2626f.put(str, constraint.f2626f.get(str));
                }
            }
        }
    }

    /* renamed from: C */
    public void m20016C(boolean z) {
        this.f2619b = z;
    }

    /* renamed from: D */
    public void m20015D(boolean z) {
    }

    /* renamed from: c */
    public void m20011c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f2620c.containsKey(Integer.valueOf(id))) {
                Log.v("ConstraintSet", "id unknown " + Debug.m20941c(childAt));
            } else if (this.f2619b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else if (this.f2620c.containsKey(Integer.valueOf(id))) {
                ConstraintAttribute.m20068h(childAt, this.f2620c.get(Integer.valueOf(id)).f2626f);
            }
        }
    }

    /* renamed from: d */
    public void m20010d(ConstraintLayout constraintLayout) {
        m20008f(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: e */
    public void m20009e(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f2620c.containsKey(Integer.valueOf(id))) {
            Constraint constraint = this.f2620c.get(Integer.valueOf(id));
            if (constraintWidget instanceof HelperWidget) {
                constraintHelper.mo20057n(constraint, (HelperWidget) constraintWidget, layoutParams, sparseArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m20008f(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f2620c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f2620c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + Debug.m20941c(childAt));
            } else if (this.f2619b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else if (id != -1) {
                if (this.f2620c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    Constraint constraint = this.f2620c.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        constraint.f2624d.f2661d0 = 1;
                    }
                    int i2 = constraint.f2624d.f2661d0;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(constraint.f2624d.f2657b0);
                        barrier.setMargin(constraint.f2624d.f2659c0);
                        barrier.setAllowsGoneWidget(constraint.f2624d.f2673j0);
                        Layout layout = constraint.f2624d;
                        int[] iArr = layout.f2663e0;
                        if (iArr != null) {
                            barrier.setReferencedIds(iArr);
                        } else {
                            String str = layout.f2665f0;
                            if (str != null) {
                                layout.f2663e0 = m20001m(barrier, str);
                                barrier.setReferencedIds(constraint.f2624d.f2663e0);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.m20030c();
                    constraint.m19984d(layoutParams);
                    if (z) {
                        ConstraintAttribute.m20068h(childAt, constraint.f2626f);
                    }
                    childAt.setLayoutParams(layoutParams);
                    PropertySet propertySet = constraint.f2622b;
                    if (propertySet.f2700c == 0) {
                        childAt.setVisibility(propertySet.f2699b);
                    }
                    if (Build.VERSION.SDK_INT >= 17) {
                        childAt.setAlpha(constraint.f2622b.f2701d);
                        childAt.setRotation(constraint.f2625e.f2705b);
                        childAt.setRotationX(constraint.f2625e.f2706c);
                        childAt.setRotationY(constraint.f2625e.f2707d);
                        childAt.setScaleX(constraint.f2625e.f2708e);
                        childAt.setScaleY(constraint.f2625e.f2709f);
                        if (!Float.isNaN(constraint.f2625e.f2710g)) {
                            childAt.setPivotX(constraint.f2625e.f2710g);
                        }
                        if (!Float.isNaN(constraint.f2625e.f2711h)) {
                            childAt.setPivotY(constraint.f2625e.f2711h);
                        }
                        childAt.setTranslationX(constraint.f2625e.f2712i);
                        childAt.setTranslationY(constraint.f2625e.f2713j);
                        if (Build.VERSION.SDK_INT >= 21) {
                            childAt.setTranslationZ(constraint.f2625e.f2714k);
                            Transform transform = constraint.f2625e;
                            if (transform.f2715l) {
                                childAt.setElevation(transform.f2716m);
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
            Constraint constraint2 = this.f2620c.get(num);
            int i3 = constraint2.f2624d.f2661d0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                Layout layout2 = constraint2.f2624d;
                int[] iArr2 = layout2.f2663e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = layout2.f2665f0;
                    if (str2 != null) {
                        layout2.f2663e0 = m20001m(barrier2, str2);
                        barrier2.setReferencedIds(constraint2.f2624d.f2663e0);
                    }
                }
                barrier2.setType(constraint2.f2624d.f2657b0);
                barrier2.setMargin(constraint2.f2624d.f2659c0);
                ConstraintLayout.LayoutParams d = constraintLayout.generateDefaultLayoutParams();
                barrier2.m20051u();
                constraint2.m19984d(d);
                constraintLayout.addView(barrier2, d);
            }
            if (constraint2.f2624d.f2654a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams d2 = constraintLayout.generateDefaultLayoutParams();
                constraint2.m19984d(d2);
                constraintLayout.addView(guideline, d2);
            }
        }
    }

    /* renamed from: g */
    public void m20007g(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f2620c.containsKey(Integer.valueOf(i))) {
            this.f2620c.get(Integer.valueOf(i)).m19984d(layoutParams);
        }
    }

    /* renamed from: h */
    public void m20006h(int i, int i2) {
        if (this.f2620c.containsKey(Integer.valueOf(i))) {
            Constraint constraint = this.f2620c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    Layout layout = constraint.f2624d;
                    layout.f2670i = -1;
                    layout.f2668h = -1;
                    layout.f2631D = -1;
                    layout.f2637J = -1;
                    return;
                case 2:
                    Layout layout2 = constraint.f2624d;
                    layout2.f2674k = -1;
                    layout2.f2672j = -1;
                    layout2.f2632E = -1;
                    layout2.f2639L = -1;
                    return;
                case 3:
                    Layout layout3 = constraint.f2624d;
                    layout3.f2676m = -1;
                    layout3.f2675l = -1;
                    layout3.f2633F = -1;
                    layout3.f2638K = -1;
                    return;
                case 4:
                    Layout layout4 = constraint.f2624d;
                    layout4.f2677n = -1;
                    layout4.f2678o = -1;
                    layout4.f2634G = -1;
                    layout4.f2640M = -1;
                    return;
                case 5:
                    constraint.f2624d.f2679p = -1;
                    return;
                case 6:
                    Layout layout5 = constraint.f2624d;
                    layout5.f2680q = -1;
                    layout5.f2681r = -1;
                    layout5.f2636I = -1;
                    layout5.f2642O = -1;
                    return;
                case 7:
                    Layout layout6 = constraint.f2624d;
                    layout6.f2682s = -1;
                    layout6.f2683t = -1;
                    layout6.f2635H = -1;
                    layout6.f2641N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: i */
    public void m20005i(Context context, int i) {
        m20004j((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: j */
    public void m20004j(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f2620c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (!this.f2619b || id != -1) {
                if (!this.f2620c.containsKey(Integer.valueOf(id))) {
                    this.f2620c.put(Integer.valueOf(id), new Constraint());
                }
                Constraint constraint = this.f2620c.get(Integer.valueOf(id));
                constraint.f2626f = ConstraintAttribute.m20074b(this.f2618a, childAt);
                constraint.m19982f(id, layoutParams);
                constraint.f2622b.f2699b = childAt.getVisibility();
                if (Build.VERSION.SDK_INT >= 17) {
                    constraint.f2622b.f2701d = childAt.getAlpha();
                    constraint.f2625e.f2705b = childAt.getRotation();
                    constraint.f2625e.f2706c = childAt.getRotationX();
                    constraint.f2625e.f2707d = childAt.getRotationY();
                    constraint.f2625e.f2708e = childAt.getScaleX();
                    constraint.f2625e.f2709f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                        Transform transform = constraint.f2625e;
                        transform.f2710g = pivotX;
                        transform.f2711h = pivotY;
                    }
                    constraint.f2625e.f2712i = childAt.getTranslationX();
                    constraint.f2625e.f2713j = childAt.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        constraint.f2625e.f2714k = childAt.getTranslationZ();
                        Transform transform2 = constraint.f2625e;
                        if (transform2.f2715l) {
                            transform2.f2716m = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraint.f2624d.f2673j0 = barrier.m20077v();
                    constraint.f2624d.f2663e0 = barrier.getReferencedIds();
                    constraint.f2624d.f2657b0 = barrier.getType();
                    constraint.f2624d.f2659c0 = barrier.getMargin();
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* renamed from: k */
    public void m20003k(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f2620c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (!this.f2619b || id != -1) {
                if (!this.f2620c.containsKey(Integer.valueOf(id))) {
                    this.f2620c.put(Integer.valueOf(id), new Constraint());
                }
                Constraint constraint = this.f2620c.get(Integer.valueOf(id));
                if (childAt instanceof ConstraintHelper) {
                    constraint.m19980h((ConstraintHelper) childAt, id, layoutParams);
                }
                constraint.m19981g(id, layoutParams);
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* renamed from: l */
    public void m20002l(int i, int i2, int i3, int i4) {
        if (!this.f2620c.containsKey(Integer.valueOf(i))) {
            this.f2620c.put(Integer.valueOf(i), new Constraint());
        }
        Constraint constraint = this.f2620c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    Layout layout = constraint.f2624d;
                    layout.f2668h = i3;
                    layout.f2670i = -1;
                    return;
                } else if (i4 == 2) {
                    Layout layout2 = constraint.f2624d;
                    layout2.f2670i = i3;
                    layout2.f2668h = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + m20014E(i4) + " undefined");
                }
            case 2:
                if (i4 == 1) {
                    Layout layout3 = constraint.f2624d;
                    layout3.f2672j = i3;
                    layout3.f2674k = -1;
                    return;
                } else if (i4 == 2) {
                    Layout layout4 = constraint.f2624d;
                    layout4.f2674k = i3;
                    layout4.f2672j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
                }
            case 3:
                if (i4 == 3) {
                    Layout layout5 = constraint.f2624d;
                    layout5.f2675l = i3;
                    layout5.f2676m = -1;
                    layout5.f2679p = -1;
                    return;
                } else if (i4 == 4) {
                    Layout layout6 = constraint.f2624d;
                    layout6.f2676m = i3;
                    layout6.f2675l = -1;
                    layout6.f2679p = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
                }
            case 4:
                if (i4 == 4) {
                    Layout layout7 = constraint.f2624d;
                    layout7.f2678o = i3;
                    layout7.f2677n = -1;
                    layout7.f2679p = -1;
                    return;
                } else if (i4 == 3) {
                    Layout layout8 = constraint.f2624d;
                    layout8.f2677n = i3;
                    layout8.f2678o = -1;
                    layout8.f2679p = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
                }
            case 5:
                if (i4 == 5) {
                    Layout layout9 = constraint.f2624d;
                    layout9.f2679p = i3;
                    layout9.f2678o = -1;
                    layout9.f2677n = -1;
                    layout9.f2675l = -1;
                    layout9.f2676m = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
            case 6:
                if (i4 == 6) {
                    Layout layout10 = constraint.f2624d;
                    layout10.f2681r = i3;
                    layout10.f2680q = -1;
                    return;
                } else if (i4 == 7) {
                    Layout layout11 = constraint.f2624d;
                    layout11.f2680q = i3;
                    layout11.f2681r = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
                }
            case 7:
                if (i4 == 7) {
                    Layout layout12 = constraint.f2624d;
                    layout12.f2683t = i3;
                    layout12.f2682s = -1;
                    return;
                } else if (i4 == 6) {
                    Layout layout13 = constraint.f2624d;
                    layout13.f2682s = i3;
                    layout13.f2683t = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m20014E(i4) + " undefined");
                }
            default:
                throw new IllegalArgumentException(m20014E(i2) + " to " + m20014E(i4) + " unknown");
        }
    }

    /* renamed from: p */
    public Constraint m19998p(int i) {
        if (this.f2620c.containsKey(Integer.valueOf(i))) {
            return this.f2620c.get(Integer.valueOf(i));
        }
        return null;
    }

    /* renamed from: q */
    public int m19997q(int i) {
        return m19999o(i).f2624d.f2660d;
    }

    /* renamed from: r */
    public int[] m19996r() {
        Integer[] numArr = (Integer[]) this.f2620c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: s */
    public Constraint m19995s(int i) {
        return m19999o(i);
    }

    /* renamed from: t */
    public int m19994t(int i) {
        return m19999o(i).f2622b.f2699b;
    }

    /* renamed from: u */
    public int m19993u(int i) {
        return m19999o(i).f2622b.f2700c;
    }

    /* renamed from: v */
    public int m19992v(int i) {
        return m19999o(i).f2624d.f2658c;
    }

    /* renamed from: w */
    public void m19991w(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    Constraint n = m20000n(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        n.f2624d.f2654a = true;
                    }
                    this.f2620c.put(Integer.valueOf(n.f2621a), n);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: x */
    public void m19990x(Context context, XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            Constraint constraint = null;
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
                                constraint = m20000n(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case 1:
                                constraint = m20000n(context, Xml.asAttributeSet(xmlPullParser));
                                constraint.f2624d.f2654a = true;
                                constraint.f2624d.f2656b = true;
                                break;
                            case 2:
                                constraint = m20000n(context, Xml.asAttributeSet(xmlPullParser));
                                constraint.f2624d.f2661d0 = 1;
                                break;
                            case 3:
                                if (constraint != null) {
                                    constraint.f2622b.m19974b(context, Xml.asAttributeSet(xmlPullParser));
                                    constraint = constraint;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 4:
                                if (constraint != null) {
                                    constraint.f2625e.m19972b(context, Xml.asAttributeSet(xmlPullParser));
                                    constraint = constraint;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 5:
                                if (constraint != null) {
                                    constraint.f2624d.m19978b(context, Xml.asAttributeSet(xmlPullParser));
                                    constraint = constraint;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 6:
                                if (constraint != null) {
                                    constraint.f2623c.m19976b(context, Xml.asAttributeSet(xmlPullParser));
                                    constraint = constraint;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 7:
                                if (constraint != null) {
                                    ConstraintAttribute.m20069g(context, xmlPullParser, constraint.f2626f);
                                    constraint = constraint;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            default:
                                constraint = constraint;
                                break;
                        }
                    } else if (eventType != 3) {
                        constraint = constraint;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if (!"ConstraintSet".equals(name2)) {
                            constraint = constraint;
                            if (name2.equalsIgnoreCase("Constraint")) {
                                this.f2620c.put(Integer.valueOf(constraint.f2621a), constraint);
                                constraint = null;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    xmlPullParser.getName();
                    constraint = constraint;
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
