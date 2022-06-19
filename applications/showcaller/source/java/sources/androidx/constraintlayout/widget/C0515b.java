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
import androidx.constraintlayout.motion.widget.C0378a;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p037f.p038a.p039a.C1508c;
/* renamed from: androidx.constraintlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public class C0515b {

    /* renamed from: a */
    private static final int[] f2615a = {0, 4, 8};

    /* renamed from: b */
    private static SparseIntArray f2616b;

    /* renamed from: c */
    private boolean f2617c;

    /* renamed from: d */
    private HashMap<String, ConstraintAttribute> f2618d = new HashMap<>();

    /* renamed from: e */
    private boolean f2619e = true;

    /* renamed from: f */
    private HashMap<Integer, C0516a> f2620f = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a.class */
    public static class C0516a {

        /* renamed from: a */
        int f2621a;

        /* renamed from: b */
        public final C0519d f2622b = new C0519d();

        /* renamed from: c */
        public final C0518c f2623c = new C0518c();

        /* renamed from: d */
        public final C0517b f2624d = new C0517b();

        /* renamed from: e */
        public final C0520e f2625e = new C0520e();

        /* renamed from: f */
        public HashMap<String, ConstraintAttribute> f2626f = new HashMap<>();

        /* renamed from: f */
        public void m33616f(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f2621a = i;
            C0517b c0517b = this.f2624d;
            c0517b.f2669i = layoutParams.f2534d;
            c0517b.f2671j = layoutParams.f2536e;
            c0517b.f2673k = layoutParams.f2538f;
            c0517b.f2675l = layoutParams.f2540g;
            c0517b.f2676m = layoutParams.f2542h;
            c0517b.f2677n = layoutParams.f2544i;
            c0517b.f2678o = layoutParams.f2546j;
            c0517b.f2679p = layoutParams.f2548k;
            c0517b.f2680q = layoutParams.f2550l;
            c0517b.f2681r = layoutParams.f2558p;
            c0517b.f2682s = layoutParams.f2559q;
            c0517b.f2683t = layoutParams.f2560r;
            c0517b.f2684u = layoutParams.f2561s;
            c0517b.f2685v = layoutParams.f2568z;
            c0517b.f2686w = layoutParams.f2502A;
            c0517b.f2687x = layoutParams.f2503B;
            c0517b.f2688y = layoutParams.f2552m;
            c0517b.f2689z = layoutParams.f2554n;
            c0517b.f2628A = layoutParams.f2556o;
            c0517b.f2629B = layoutParams.f2518Q;
            c0517b.f2630C = layoutParams.f2519R;
            c0517b.f2631D = layoutParams.f2520S;
            c0517b.f2667h = layoutParams.f2532c;
            c0517b.f2663f = layoutParams.f2528a;
            c0517b.f2665g = layoutParams.f2530b;
            C0517b c0517b2 = this.f2624d;
            c0517b2.f2659d = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            c0517b2.f2661e = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            c0517b2.f2632E = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            c0517b2.f2633F = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            c0517b2.f2634G = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            c0517b2.f2635H = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            c0517b2.f2644Q = layoutParams.f2507F;
            c0517b2.f2645R = layoutParams.f2506E;
            c0517b2.f2647T = layoutParams.f2509H;
            c0517b2.f2646S = layoutParams.f2508G;
            c0517b2.f2670i0 = layoutParams.f2521T;
            c0517b2.f2672j0 = layoutParams.f2522U;
            c0517b2.f2648U = layoutParams.f2510I;
            c0517b2.f2649V = layoutParams.f2511J;
            c0517b2.f2650W = layoutParams.f2514M;
            c0517b2.f2651X = layoutParams.f2515N;
            c0517b2.f2652Y = layoutParams.f2512K;
            c0517b2.f2653Z = layoutParams.f2513L;
            c0517b2.f2654a0 = layoutParams.f2516O;
            c0517b2.f2656b0 = layoutParams.f2517P;
            c0517b2.f2668h0 = layoutParams.f2523V;
            c0517b2.f2639L = layoutParams.f2563u;
            c0517b2.f2641N = layoutParams.f2565w;
            c0517b2.f2638K = layoutParams.f2562t;
            c0517b2.f2640M = layoutParams.f2564v;
            C0517b c0517b3 = this.f2624d;
            c0517b3.f2643P = layoutParams.f2566x;
            c0517b3.f2642O = layoutParams.f2567y;
            if (Build.VERSION.SDK_INT >= 17) {
                c0517b3.f2636I = layoutParams.getMarginEnd();
                this.f2624d.f2637J = layoutParams.getMarginStart();
            }
        }

        /* renamed from: g */
        public void m33615g(int i, Constraints.LayoutParams layoutParams) {
            m33616f(i, layoutParams);
            this.f2622b.f2701d = layoutParams.f2582p0;
            C0520e c0520e = this.f2625e;
            c0520e.f2705c = layoutParams.f2585s0;
            c0520e.f2706d = layoutParams.f2586t0;
            c0520e.f2707e = layoutParams.f2587u0;
            c0520e.f2708f = layoutParams.f2588v0;
            c0520e.f2709g = layoutParams.f2589w0;
            c0520e.f2710h = layoutParams.f2590x0;
            c0520e.f2711i = layoutParams.f2591y0;
            c0520e.f2712j = layoutParams.f2592z0;
            c0520e.f2713k = layoutParams.f2580A0;
            c0520e.f2714l = layoutParams.f2581B0;
            c0520e.f2716n = layoutParams.f2584r0;
            c0520e.f2715m = layoutParams.f2583q0;
        }

        /* renamed from: h */
        public void m33614h(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m33615g(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                C0517b c0517b = this.f2624d;
                c0517b.f2662e0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                c0517b.f2658c0 = barrier.getType();
                this.f2624d.f2664f0 = barrier.getReferencedIds();
                this.f2624d.f2660d0 = barrier.getMargin();
            }
        }

        /* renamed from: d */
        public void m33618d(ConstraintLayout.LayoutParams layoutParams) {
            C0517b c0517b = this.f2624d;
            layoutParams.f2534d = c0517b.f2669i;
            layoutParams.f2536e = c0517b.f2671j;
            layoutParams.f2538f = c0517b.f2673k;
            layoutParams.f2540g = c0517b.f2675l;
            layoutParams.f2542h = c0517b.f2676m;
            layoutParams.f2544i = c0517b.f2677n;
            layoutParams.f2546j = c0517b.f2678o;
            layoutParams.f2548k = c0517b.f2679p;
            layoutParams.f2550l = c0517b.f2680q;
            layoutParams.f2558p = c0517b.f2681r;
            layoutParams.f2559q = c0517b.f2682s;
            layoutParams.f2560r = c0517b.f2683t;
            layoutParams.f2561s = c0517b.f2684u;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = c0517b.f2632E;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = c0517b.f2633F;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = c0517b.f2634G;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = c0517b.f2635H;
            layoutParams.f2566x = c0517b.f2643P;
            layoutParams.f2567y = c0517b.f2642O;
            layoutParams.f2563u = c0517b.f2639L;
            layoutParams.f2565w = c0517b.f2641N;
            layoutParams.f2568z = c0517b.f2685v;
            layoutParams.f2502A = c0517b.f2686w;
            layoutParams.f2552m = c0517b.f2688y;
            layoutParams.f2554n = c0517b.f2689z;
            C0517b c0517b2 = this.f2624d;
            layoutParams.f2556o = c0517b2.f2628A;
            layoutParams.f2503B = c0517b2.f2687x;
            layoutParams.f2518Q = c0517b2.f2629B;
            layoutParams.f2519R = c0517b2.f2630C;
            layoutParams.f2507F = c0517b2.f2644Q;
            layoutParams.f2506E = c0517b2.f2645R;
            layoutParams.f2509H = c0517b2.f2647T;
            layoutParams.f2508G = c0517b2.f2646S;
            layoutParams.f2521T = c0517b2.f2670i0;
            layoutParams.f2522U = c0517b2.f2672j0;
            layoutParams.f2510I = c0517b2.f2648U;
            layoutParams.f2511J = c0517b2.f2649V;
            layoutParams.f2514M = c0517b2.f2650W;
            layoutParams.f2515N = c0517b2.f2651X;
            layoutParams.f2512K = c0517b2.f2652Y;
            layoutParams.f2513L = c0517b2.f2653Z;
            layoutParams.f2516O = c0517b2.f2654a0;
            layoutParams.f2517P = c0517b2.f2656b0;
            layoutParams.f2520S = c0517b2.f2631D;
            layoutParams.f2532c = c0517b2.f2667h;
            layoutParams.f2528a = c0517b2.f2663f;
            layoutParams.f2530b = c0517b2.f2665g;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = c0517b2.f2659d;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = c0517b2.f2661e;
            String str = c0517b2.f2668h0;
            if (str != null) {
                layoutParams.f2523V = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f2624d.f2637J);
                layoutParams.setMarginEnd(this.f2624d.f2636I);
            }
            layoutParams.m33672c();
        }

        /* renamed from: e */
        public C0516a clone() {
            C0516a c0516a = new C0516a();
            c0516a.f2624d.m33613a(this.f2624d);
            c0516a.f2623c.m33611a(this.f2623c);
            c0516a.f2622b.m33609a(this.f2622b);
            c0516a.f2625e.m33607a(this.f2625e);
            c0516a.f2621a = this.f2621a;
            return c0516a;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$b.class */
    public static class C0517b {

        /* renamed from: a */
        private static SparseIntArray f2627a;

        /* renamed from: d */
        public int f2659d;

        /* renamed from: e */
        public int f2661e;

        /* renamed from: f0 */
        public int[] f2664f0;

        /* renamed from: g0 */
        public String f2666g0;

        /* renamed from: h0 */
        public String f2668h0;

        /* renamed from: b */
        public boolean f2655b = false;

        /* renamed from: c */
        public boolean f2657c = false;

        /* renamed from: f */
        public int f2663f = -1;

        /* renamed from: g */
        public int f2665g = -1;

        /* renamed from: h */
        public float f2667h = -1.0f;

        /* renamed from: i */
        public int f2669i = -1;

        /* renamed from: j */
        public int f2671j = -1;

        /* renamed from: k */
        public int f2673k = -1;

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
        public int f2684u = -1;

        /* renamed from: v */
        public float f2685v = 0.5f;

        /* renamed from: w */
        public float f2686w = 0.5f;

        /* renamed from: x */
        public String f2687x = null;

        /* renamed from: y */
        public int f2688y = -1;

        /* renamed from: z */
        public int f2689z = 0;

        /* renamed from: A */
        public float f2628A = 0.0f;

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
        public int f2643P = -1;

        /* renamed from: Q */
        public float f2644Q = -1.0f;

        /* renamed from: R */
        public float f2645R = -1.0f;

        /* renamed from: S */
        public int f2646S = 0;

        /* renamed from: T */
        public int f2647T = 0;

        /* renamed from: U */
        public int f2648U = 0;

        /* renamed from: V */
        public int f2649V = 0;

        /* renamed from: W */
        public int f2650W = -1;

        /* renamed from: X */
        public int f2651X = -1;

        /* renamed from: Y */
        public int f2652Y = -1;

        /* renamed from: Z */
        public int f2653Z = -1;

        /* renamed from: a0 */
        public float f2654a0 = 1.0f;

        /* renamed from: b0 */
        public float f2656b0 = 1.0f;

        /* renamed from: c0 */
        public int f2658c0 = -1;

        /* renamed from: d0 */
        public int f2660d0 = 0;

        /* renamed from: e0 */
        public int f2662e0 = -1;

        /* renamed from: i0 */
        public boolean f2670i0 = false;

        /* renamed from: j0 */
        public boolean f2672j0 = false;

        /* renamed from: k0 */
        public boolean f2674k0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2627a = sparseIntArray;
            sparseIntArray.append(C0523e.Layout_layout_constraintLeft_toLeftOf, 24);
            f2627a.append(C0523e.Layout_layout_constraintLeft_toRightOf, 25);
            f2627a.append(C0523e.Layout_layout_constraintRight_toLeftOf, 28);
            f2627a.append(C0523e.Layout_layout_constraintRight_toRightOf, 29);
            f2627a.append(C0523e.Layout_layout_constraintTop_toTopOf, 35);
            f2627a.append(C0523e.Layout_layout_constraintTop_toBottomOf, 34);
            f2627a.append(C0523e.Layout_layout_constraintBottom_toTopOf, 4);
            f2627a.append(C0523e.Layout_layout_constraintBottom_toBottomOf, 3);
            f2627a.append(C0523e.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f2627a.append(C0523e.Layout_layout_editor_absoluteX, 6);
            f2627a.append(C0523e.Layout_layout_editor_absoluteY, 7);
            f2627a.append(C0523e.Layout_layout_constraintGuide_begin, 17);
            f2627a.append(C0523e.Layout_layout_constraintGuide_end, 18);
            f2627a.append(C0523e.Layout_layout_constraintGuide_percent, 19);
            f2627a.append(C0523e.Layout_android_orientation, 26);
            f2627a.append(C0523e.Layout_layout_constraintStart_toEndOf, 31);
            f2627a.append(C0523e.Layout_layout_constraintStart_toStartOf, 32);
            f2627a.append(C0523e.Layout_layout_constraintEnd_toStartOf, 10);
            f2627a.append(C0523e.Layout_layout_constraintEnd_toEndOf, 9);
            f2627a.append(C0523e.Layout_layout_goneMarginLeft, 13);
            f2627a.append(C0523e.Layout_layout_goneMarginTop, 16);
            f2627a.append(C0523e.Layout_layout_goneMarginRight, 14);
            f2627a.append(C0523e.Layout_layout_goneMarginBottom, 11);
            f2627a.append(C0523e.Layout_layout_goneMarginStart, 15);
            f2627a.append(C0523e.Layout_layout_goneMarginEnd, 12);
            f2627a.append(C0523e.Layout_layout_constraintVertical_weight, 38);
            f2627a.append(C0523e.Layout_layout_constraintHorizontal_weight, 37);
            f2627a.append(C0523e.Layout_layout_constraintHorizontal_chainStyle, 39);
            f2627a.append(C0523e.Layout_layout_constraintVertical_chainStyle, 40);
            f2627a.append(C0523e.Layout_layout_constraintHorizontal_bias, 20);
            f2627a.append(C0523e.Layout_layout_constraintVertical_bias, 36);
            f2627a.append(C0523e.Layout_layout_constraintDimensionRatio, 5);
            f2627a.append(C0523e.Layout_layout_constraintLeft_creator, 76);
            f2627a.append(C0523e.Layout_layout_constraintTop_creator, 76);
            f2627a.append(C0523e.Layout_layout_constraintRight_creator, 76);
            f2627a.append(C0523e.Layout_layout_constraintBottom_creator, 76);
            f2627a.append(C0523e.Layout_layout_constraintBaseline_creator, 76);
            f2627a.append(C0523e.Layout_android_layout_marginLeft, 23);
            f2627a.append(C0523e.Layout_android_layout_marginRight, 27);
            f2627a.append(C0523e.Layout_android_layout_marginStart, 30);
            f2627a.append(C0523e.Layout_android_layout_marginEnd, 8);
            f2627a.append(C0523e.Layout_android_layout_marginTop, 33);
            f2627a.append(C0523e.Layout_android_layout_marginBottom, 2);
            f2627a.append(C0523e.Layout_android_layout_width, 22);
            f2627a.append(C0523e.Layout_android_layout_height, 21);
            f2627a.append(C0523e.Layout_layout_constraintCircle, 61);
            f2627a.append(C0523e.Layout_layout_constraintCircleRadius, 62);
            f2627a.append(C0523e.Layout_layout_constraintCircleAngle, 63);
            f2627a.append(C0523e.Layout_layout_constraintWidth_percent, 69);
            f2627a.append(C0523e.Layout_layout_constraintHeight_percent, 70);
            f2627a.append(C0523e.Layout_chainUseRtl, 71);
            f2627a.append(C0523e.Layout_barrierDirection, 72);
            f2627a.append(C0523e.Layout_barrierMargin, 73);
            f2627a.append(C0523e.Layout_constraint_referenced_ids, 74);
            f2627a.append(C0523e.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m33613a(C0517b c0517b) {
            this.f2655b = c0517b.f2655b;
            this.f2659d = c0517b.f2659d;
            this.f2657c = c0517b.f2657c;
            this.f2661e = c0517b.f2661e;
            this.f2663f = c0517b.f2663f;
            this.f2665g = c0517b.f2665g;
            this.f2667h = c0517b.f2667h;
            this.f2669i = c0517b.f2669i;
            this.f2671j = c0517b.f2671j;
            this.f2673k = c0517b.f2673k;
            this.f2675l = c0517b.f2675l;
            this.f2676m = c0517b.f2676m;
            this.f2677n = c0517b.f2677n;
            this.f2678o = c0517b.f2678o;
            this.f2679p = c0517b.f2679p;
            this.f2680q = c0517b.f2680q;
            this.f2681r = c0517b.f2681r;
            this.f2682s = c0517b.f2682s;
            this.f2683t = c0517b.f2683t;
            this.f2684u = c0517b.f2684u;
            this.f2685v = c0517b.f2685v;
            this.f2686w = c0517b.f2686w;
            this.f2687x = c0517b.f2687x;
            this.f2688y = c0517b.f2688y;
            this.f2689z = c0517b.f2689z;
            this.f2628A = c0517b.f2628A;
            this.f2629B = c0517b.f2629B;
            this.f2630C = c0517b.f2630C;
            this.f2631D = c0517b.f2631D;
            this.f2632E = c0517b.f2632E;
            this.f2633F = c0517b.f2633F;
            this.f2634G = c0517b.f2634G;
            this.f2635H = c0517b.f2635H;
            this.f2636I = c0517b.f2636I;
            this.f2637J = c0517b.f2637J;
            this.f2638K = c0517b.f2638K;
            this.f2639L = c0517b.f2639L;
            this.f2640M = c0517b.f2640M;
            this.f2641N = c0517b.f2641N;
            this.f2642O = c0517b.f2642O;
            this.f2643P = c0517b.f2643P;
            this.f2644Q = c0517b.f2644Q;
            this.f2645R = c0517b.f2645R;
            this.f2646S = c0517b.f2646S;
            this.f2647T = c0517b.f2647T;
            this.f2648U = c0517b.f2648U;
            this.f2649V = c0517b.f2649V;
            this.f2650W = c0517b.f2650W;
            this.f2651X = c0517b.f2651X;
            this.f2652Y = c0517b.f2652Y;
            this.f2653Z = c0517b.f2653Z;
            this.f2654a0 = c0517b.f2654a0;
            this.f2656b0 = c0517b.f2656b0;
            this.f2658c0 = c0517b.f2658c0;
            this.f2660d0 = c0517b.f2660d0;
            this.f2662e0 = c0517b.f2662e0;
            this.f2668h0 = c0517b.f2668h0;
            int[] iArr = c0517b.f2664f0;
            if (iArr != null) {
                this.f2664f0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f2664f0 = null;
            }
            this.f2666g0 = c0517b.f2666g0;
            this.f2670i0 = c0517b.f2670i0;
            this.f2672j0 = c0517b.f2672j0;
            this.f2674k0 = c0517b.f2674k0;
        }

        /* renamed from: b */
        void m33612b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.Layout);
            this.f2657c = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f2627a.get(index);
                if (i2 == 80) {
                    this.f2670i0 = obtainStyledAttributes.getBoolean(index, this.f2670i0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f2680q = C0515b.m33623y(obtainStyledAttributes, index, this.f2680q);
                            continue;
                        case 2:
                            this.f2635H = obtainStyledAttributes.getDimensionPixelSize(index, this.f2635H);
                            continue;
                        case 3:
                            this.f2679p = C0515b.m33623y(obtainStyledAttributes, index, this.f2679p);
                            continue;
                        case 4:
                            this.f2678o = C0515b.m33623y(obtainStyledAttributes, index, this.f2678o);
                            continue;
                        case 5:
                            this.f2687x = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f2629B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2629B);
                            continue;
                        case 7:
                            this.f2630C = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2630C);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f2636I = obtainStyledAttributes.getDimensionPixelSize(index, this.f2636I);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f2684u = C0515b.m33623y(obtainStyledAttributes, index, this.f2684u);
                            continue;
                        case 10:
                            this.f2683t = C0515b.m33623y(obtainStyledAttributes, index, this.f2683t);
                            continue;
                        case 11:
                            this.f2641N = obtainStyledAttributes.getDimensionPixelSize(index, this.f2641N);
                            continue;
                        case 12:
                            this.f2642O = obtainStyledAttributes.getDimensionPixelSize(index, this.f2642O);
                            continue;
                        case 13:
                            this.f2638K = obtainStyledAttributes.getDimensionPixelSize(index, this.f2638K);
                            continue;
                        case 14:
                            this.f2640M = obtainStyledAttributes.getDimensionPixelSize(index, this.f2640M);
                            continue;
                        case 15:
                            this.f2643P = obtainStyledAttributes.getDimensionPixelSize(index, this.f2643P);
                            continue;
                        case 16:
                            this.f2639L = obtainStyledAttributes.getDimensionPixelSize(index, this.f2639L);
                            continue;
                        case 17:
                            this.f2663f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2663f);
                            continue;
                        case 18:
                            this.f2665g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2665g);
                            continue;
                        case 19:
                            this.f2667h = obtainStyledAttributes.getFloat(index, this.f2667h);
                            continue;
                        case 20:
                            this.f2685v = obtainStyledAttributes.getFloat(index, this.f2685v);
                            continue;
                        case 21:
                            this.f2661e = obtainStyledAttributes.getLayoutDimension(index, this.f2661e);
                            continue;
                        case 22:
                            this.f2659d = obtainStyledAttributes.getLayoutDimension(index, this.f2659d);
                            continue;
                        case 23:
                            this.f2632E = obtainStyledAttributes.getDimensionPixelSize(index, this.f2632E);
                            continue;
                        case 24:
                            this.f2669i = C0515b.m33623y(obtainStyledAttributes, index, this.f2669i);
                            continue;
                        case 25:
                            this.f2671j = C0515b.m33623y(obtainStyledAttributes, index, this.f2671j);
                            continue;
                        case 26:
                            this.f2631D = obtainStyledAttributes.getInt(index, this.f2631D);
                            continue;
                        case 27:
                            this.f2633F = obtainStyledAttributes.getDimensionPixelSize(index, this.f2633F);
                            continue;
                        case 28:
                            this.f2673k = C0515b.m33623y(obtainStyledAttributes, index, this.f2673k);
                            continue;
                        case 29:
                            this.f2675l = C0515b.m33623y(obtainStyledAttributes, index, this.f2675l);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f2637J = obtainStyledAttributes.getDimensionPixelSize(index, this.f2637J);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f2681r = C0515b.m33623y(obtainStyledAttributes, index, this.f2681r);
                            continue;
                        case 32:
                            this.f2682s = C0515b.m33623y(obtainStyledAttributes, index, this.f2682s);
                            continue;
                        case 33:
                            this.f2634G = obtainStyledAttributes.getDimensionPixelSize(index, this.f2634G);
                            continue;
                        case 34:
                            this.f2677n = C0515b.m33623y(obtainStyledAttributes, index, this.f2677n);
                            continue;
                        case 35:
                            this.f2676m = C0515b.m33623y(obtainStyledAttributes, index, this.f2676m);
                            continue;
                        case 36:
                            this.f2686w = obtainStyledAttributes.getFloat(index, this.f2686w);
                            continue;
                        case 37:
                            this.f2645R = obtainStyledAttributes.getFloat(index, this.f2645R);
                            continue;
                        case 38:
                            this.f2644Q = obtainStyledAttributes.getFloat(index, this.f2644Q);
                            continue;
                        case 39:
                            this.f2646S = obtainStyledAttributes.getInt(index, this.f2646S);
                            continue;
                        case 40:
                            this.f2647T = obtainStyledAttributes.getInt(index, this.f2647T);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f2648U = obtainStyledAttributes.getInt(index, this.f2648U);
                                    continue;
                                case 55:
                                    this.f2649V = obtainStyledAttributes.getInt(index, this.f2649V);
                                    continue;
                                case 56:
                                    this.f2650W = obtainStyledAttributes.getDimensionPixelSize(index, this.f2650W);
                                    continue;
                                case 57:
                                    this.f2651X = obtainStyledAttributes.getDimensionPixelSize(index, this.f2651X);
                                    continue;
                                case 58:
                                    this.f2652Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2652Y);
                                    continue;
                                case 59:
                                    this.f2653Z = obtainStyledAttributes.getDimensionPixelSize(index, this.f2653Z);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f2688y = C0515b.m33623y(obtainStyledAttributes, index, this.f2688y);
                                            continue;
                                        case 62:
                                            this.f2689z = obtainStyledAttributes.getDimensionPixelSize(index, this.f2689z);
                                            continue;
                                        case 63:
                                            this.f2628A = obtainStyledAttributes.getFloat(index, this.f2628A);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f2654a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.f2656b0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    continue;
                                                case 72:
                                                    this.f2658c0 = obtainStyledAttributes.getInt(index, this.f2658c0);
                                                    continue;
                                                case 73:
                                                    this.f2660d0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f2660d0);
                                                    continue;
                                                case 74:
                                                    this.f2666g0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.f2674k0 = obtainStyledAttributes.getBoolean(index, this.f2674k0);
                                                    continue;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2627a.get(index));
                                                    continue;
                                                case 77:
                                                    this.f2668h0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f2627a.get(index));
                                                    continue;
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f2672j0 = obtainStyledAttributes.getBoolean(index, this.f2672j0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$c.class */
    public static class C0518c {

        /* renamed from: a */
        private static SparseIntArray f2690a;

        /* renamed from: b */
        public boolean f2691b = false;

        /* renamed from: c */
        public int f2692c = -1;

        /* renamed from: d */
        public String f2693d = null;

        /* renamed from: e */
        public int f2694e = -1;

        /* renamed from: f */
        public int f2695f = 0;

        /* renamed from: g */
        public float f2696g = Float.NaN;

        /* renamed from: h */
        public float f2697h = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2690a = sparseIntArray;
            sparseIntArray.append(C0523e.Motion_motionPathRotate, 1);
            f2690a.append(C0523e.Motion_pathMotionArc, 2);
            f2690a.append(C0523e.Motion_transitionEasing, 3);
            f2690a.append(C0523e.Motion_drawPath, 4);
            f2690a.append(C0523e.Motion_animate_relativeTo, 5);
            f2690a.append(C0523e.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        public void m33611a(C0518c c0518c) {
            this.f2691b = c0518c.f2691b;
            this.f2692c = c0518c.f2692c;
            this.f2693d = c0518c.f2693d;
            this.f2694e = c0518c.f2694e;
            this.f2695f = c0518c.f2695f;
            this.f2697h = c0518c.f2697h;
            this.f2696g = c0518c.f2696g;
        }

        /* renamed from: b */
        void m33610b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.Motion);
            this.f2691b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f2690a.get(index)) {
                    case 1:
                        this.f2697h = obtainStyledAttributes.getFloat(index, this.f2697h);
                        break;
                    case 2:
                        this.f2694e = obtainStyledAttributes.getInt(index, this.f2694e);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f2693d = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f2693d = C1508c.f6009b[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f2695f = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f2692c = C0515b.m33623y(obtainStyledAttributes, index, this.f2692c);
                        break;
                    case 6:
                        this.f2696g = obtainStyledAttributes.getFloat(index, this.f2696g);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$d.class */
    public static class C0519d {

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
        public void m33609a(C0519d c0519d) {
            this.f2698a = c0519d.f2698a;
            this.f2699b = c0519d.f2699b;
            this.f2701d = c0519d.f2701d;
            this.f2702e = c0519d.f2702e;
            this.f2700c = c0519d.f2700c;
        }

        /* renamed from: b */
        void m33608b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.PropertySet);
            this.f2698a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.PropertySet_android_alpha) {
                    this.f2701d = obtainStyledAttributes.getFloat(index, this.f2701d);
                } else if (index == C0523e.PropertySet_android_visibility) {
                    this.f2699b = obtainStyledAttributes.getInt(index, this.f2699b);
                    this.f2699b = C0515b.f2615a[this.f2699b];
                } else if (index == C0523e.PropertySet_visibilityMode) {
                    this.f2700c = obtainStyledAttributes.getInt(index, this.f2700c);
                } else if (index == C0523e.PropertySet_motionProgress) {
                    this.f2702e = obtainStyledAttributes.getFloat(index, this.f2702e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$e.class */
    public static class C0520e {

        /* renamed from: a */
        private static SparseIntArray f2703a;

        /* renamed from: b */
        public boolean f2704b = false;

        /* renamed from: c */
        public float f2705c = 0.0f;

        /* renamed from: d */
        public float f2706d = 0.0f;

        /* renamed from: e */
        public float f2707e = 0.0f;

        /* renamed from: f */
        public float f2708f = 1.0f;

        /* renamed from: g */
        public float f2709g = 1.0f;

        /* renamed from: h */
        public float f2710h = Float.NaN;

        /* renamed from: i */
        public float f2711i = Float.NaN;

        /* renamed from: j */
        public float f2712j = 0.0f;

        /* renamed from: k */
        public float f2713k = 0.0f;

        /* renamed from: l */
        public float f2714l = 0.0f;

        /* renamed from: m */
        public boolean f2715m = false;

        /* renamed from: n */
        public float f2716n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f2703a = sparseIntArray;
            sparseIntArray.append(C0523e.Transform_android_rotation, 1);
            f2703a.append(C0523e.Transform_android_rotationX, 2);
            f2703a.append(C0523e.Transform_android_rotationY, 3);
            f2703a.append(C0523e.Transform_android_scaleX, 4);
            f2703a.append(C0523e.Transform_android_scaleY, 5);
            f2703a.append(C0523e.Transform_android_transformPivotX, 6);
            f2703a.append(C0523e.Transform_android_transformPivotY, 7);
            f2703a.append(C0523e.Transform_android_translationX, 8);
            f2703a.append(C0523e.Transform_android_translationY, 9);
            f2703a.append(C0523e.Transform_android_translationZ, 10);
            f2703a.append(C0523e.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        public void m33607a(C0520e c0520e) {
            this.f2704b = c0520e.f2704b;
            this.f2705c = c0520e.f2705c;
            this.f2706d = c0520e.f2706d;
            this.f2707e = c0520e.f2707e;
            this.f2708f = c0520e.f2708f;
            this.f2709g = c0520e.f2709g;
            this.f2710h = c0520e.f2710h;
            this.f2711i = c0520e.f2711i;
            this.f2712j = c0520e.f2712j;
            this.f2713k = c0520e.f2713k;
            this.f2714l = c0520e.f2714l;
            this.f2715m = c0520e.f2715m;
            this.f2716n = c0520e.f2716n;
        }

        /* renamed from: b */
        void m33606b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.Transform);
            this.f2704b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f2703a.get(index)) {
                    case 1:
                        this.f2705c = obtainStyledAttributes.getFloat(index, this.f2705c);
                        break;
                    case 2:
                        this.f2706d = obtainStyledAttributes.getFloat(index, this.f2706d);
                        break;
                    case 3:
                        this.f2707e = obtainStyledAttributes.getFloat(index, this.f2707e);
                        break;
                    case 4:
                        this.f2708f = obtainStyledAttributes.getFloat(index, this.f2708f);
                        break;
                    case 5:
                        this.f2709g = obtainStyledAttributes.getFloat(index, this.f2709g);
                        break;
                    case 6:
                        this.f2710h = obtainStyledAttributes.getDimension(index, this.f2710h);
                        break;
                    case 7:
                        this.f2711i = obtainStyledAttributes.getDimension(index, this.f2711i);
                        break;
                    case 8:
                        this.f2712j = obtainStyledAttributes.getDimension(index, this.f2712j);
                        break;
                    case 9:
                        this.f2713k = obtainStyledAttributes.getDimension(index, this.f2713k);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f2714l = obtainStyledAttributes.getDimension(index, this.f2714l);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f2715m = true;
                            this.f2716n = obtainStyledAttributes.getDimension(index, this.f2716n);
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
        f2616b = sparseIntArray;
        sparseIntArray.append(C0523e.Constraint_layout_constraintLeft_toLeftOf, 25);
        f2616b.append(C0523e.Constraint_layout_constraintLeft_toRightOf, 26);
        f2616b.append(C0523e.Constraint_layout_constraintRight_toLeftOf, 29);
        f2616b.append(C0523e.Constraint_layout_constraintRight_toRightOf, 30);
        f2616b.append(C0523e.Constraint_layout_constraintTop_toTopOf, 36);
        f2616b.append(C0523e.Constraint_layout_constraintTop_toBottomOf, 35);
        f2616b.append(C0523e.Constraint_layout_constraintBottom_toTopOf, 4);
        f2616b.append(C0523e.Constraint_layout_constraintBottom_toBottomOf, 3);
        f2616b.append(C0523e.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f2616b.append(C0523e.Constraint_layout_editor_absoluteX, 6);
        f2616b.append(C0523e.Constraint_layout_editor_absoluteY, 7);
        f2616b.append(C0523e.Constraint_layout_constraintGuide_begin, 17);
        f2616b.append(C0523e.Constraint_layout_constraintGuide_end, 18);
        f2616b.append(C0523e.Constraint_layout_constraintGuide_percent, 19);
        f2616b.append(C0523e.Constraint_android_orientation, 27);
        f2616b.append(C0523e.Constraint_layout_constraintStart_toEndOf, 32);
        f2616b.append(C0523e.Constraint_layout_constraintStart_toStartOf, 33);
        f2616b.append(C0523e.Constraint_layout_constraintEnd_toStartOf, 10);
        f2616b.append(C0523e.Constraint_layout_constraintEnd_toEndOf, 9);
        f2616b.append(C0523e.Constraint_layout_goneMarginLeft, 13);
        f2616b.append(C0523e.Constraint_layout_goneMarginTop, 16);
        f2616b.append(C0523e.Constraint_layout_goneMarginRight, 14);
        f2616b.append(C0523e.Constraint_layout_goneMarginBottom, 11);
        f2616b.append(C0523e.Constraint_layout_goneMarginStart, 15);
        f2616b.append(C0523e.Constraint_layout_goneMarginEnd, 12);
        f2616b.append(C0523e.Constraint_layout_constraintVertical_weight, 40);
        f2616b.append(C0523e.Constraint_layout_constraintHorizontal_weight, 39);
        f2616b.append(C0523e.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f2616b.append(C0523e.Constraint_layout_constraintVertical_chainStyle, 42);
        f2616b.append(C0523e.Constraint_layout_constraintHorizontal_bias, 20);
        f2616b.append(C0523e.Constraint_layout_constraintVertical_bias, 37);
        f2616b.append(C0523e.Constraint_layout_constraintDimensionRatio, 5);
        f2616b.append(C0523e.Constraint_layout_constraintLeft_creator, 82);
        f2616b.append(C0523e.Constraint_layout_constraintTop_creator, 82);
        f2616b.append(C0523e.Constraint_layout_constraintRight_creator, 82);
        f2616b.append(C0523e.Constraint_layout_constraintBottom_creator, 82);
        f2616b.append(C0523e.Constraint_layout_constraintBaseline_creator, 82);
        f2616b.append(C0523e.Constraint_android_layout_marginLeft, 24);
        f2616b.append(C0523e.Constraint_android_layout_marginRight, 28);
        f2616b.append(C0523e.Constraint_android_layout_marginStart, 31);
        f2616b.append(C0523e.Constraint_android_layout_marginEnd, 8);
        f2616b.append(C0523e.Constraint_android_layout_marginTop, 34);
        f2616b.append(C0523e.Constraint_android_layout_marginBottom, 2);
        f2616b.append(C0523e.Constraint_android_layout_width, 23);
        f2616b.append(C0523e.Constraint_android_layout_height, 21);
        f2616b.append(C0523e.Constraint_android_visibility, 22);
        f2616b.append(C0523e.Constraint_android_alpha, 43);
        f2616b.append(C0523e.Constraint_android_elevation, 44);
        f2616b.append(C0523e.Constraint_android_rotationX, 45);
        f2616b.append(C0523e.Constraint_android_rotationY, 46);
        f2616b.append(C0523e.Constraint_android_rotation, 60);
        f2616b.append(C0523e.Constraint_android_scaleX, 47);
        f2616b.append(C0523e.Constraint_android_scaleY, 48);
        f2616b.append(C0523e.Constraint_android_transformPivotX, 49);
        f2616b.append(C0523e.Constraint_android_transformPivotY, 50);
        f2616b.append(C0523e.Constraint_android_translationX, 51);
        f2616b.append(C0523e.Constraint_android_translationY, 52);
        f2616b.append(C0523e.Constraint_android_translationZ, 53);
        f2616b.append(C0523e.Constraint_layout_constraintWidth_default, 54);
        f2616b.append(C0523e.Constraint_layout_constraintHeight_default, 55);
        f2616b.append(C0523e.Constraint_layout_constraintWidth_max, 56);
        f2616b.append(C0523e.Constraint_layout_constraintHeight_max, 57);
        f2616b.append(C0523e.Constraint_layout_constraintWidth_min, 58);
        f2616b.append(C0523e.Constraint_layout_constraintHeight_min, 59);
        f2616b.append(C0523e.Constraint_layout_constraintCircle, 61);
        f2616b.append(C0523e.Constraint_layout_constraintCircleRadius, 62);
        f2616b.append(C0523e.Constraint_layout_constraintCircleAngle, 63);
        f2616b.append(C0523e.Constraint_animate_relativeTo, 64);
        f2616b.append(C0523e.Constraint_transitionEasing, 65);
        f2616b.append(C0523e.Constraint_drawPath, 66);
        f2616b.append(C0523e.Constraint_transitionPathRotate, 67);
        f2616b.append(C0523e.Constraint_motionStagger, 79);
        f2616b.append(C0523e.Constraint_android_id, 38);
        f2616b.append(C0523e.Constraint_motionProgress, 68);
        f2616b.append(C0523e.Constraint_layout_constraintWidth_percent, 69);
        f2616b.append(C0523e.Constraint_layout_constraintHeight_percent, 70);
        f2616b.append(C0523e.Constraint_chainUseRtl, 71);
        f2616b.append(C0523e.Constraint_barrierDirection, 72);
        f2616b.append(C0523e.Constraint_barrierMargin, 73);
        f2616b.append(C0523e.Constraint_constraint_referenced_ids, 74);
        f2616b.append(C0523e.Constraint_barrierAllowsGoneWidgets, 75);
        f2616b.append(C0523e.Constraint_pathMotionArc, 76);
        f2616b.append(C0523e.Constraint_layout_constraintTag, 77);
        f2616b.append(C0523e.Constraint_visibilityMode, 78);
        f2616b.append(C0523e.Constraint_layout_constrainedWidth, 80);
        f2616b.append(C0523e.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: m */
    private int[] m33635m(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0522d.class.getField(trim).getInt(null);
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
                        Object m33687g = ((ConstraintLayout) view.getParent()).m33687g(0, trim);
                        i5 = i4;
                        if (m33687g != null) {
                            i5 = i4;
                            if (m33687g instanceof Integer) {
                                i5 = ((Integer) m33687g).intValue();
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
    private C0516a m33634n(Context context, AttributeSet attributeSet) {
        C0516a c0516a = new C0516a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.Constraint);
        m33622z(context, c0516a, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return c0516a;
    }

    /* renamed from: o */
    private C0516a m33633o(int i) {
        if (!this.f2620f.containsKey(Integer.valueOf(i))) {
            this.f2620f.put(Integer.valueOf(i), new C0516a());
        }
        return this.f2620f.get(Integer.valueOf(i));
    }

    /* renamed from: y */
    public static int m33623y(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: z */
    private void m33622z(Context context, C0516a c0516a, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C0523e.Constraint_android_id && C0523e.Constraint_android_layout_marginStart != index && C0523e.Constraint_android_layout_marginEnd != index) {
                c0516a.f2623c.f2691b = true;
                c0516a.f2624d.f2657c = true;
                c0516a.f2622b.f2698a = true;
                c0516a.f2625e.f2704b = true;
            }
            switch (f2616b.get(index)) {
                case 1:
                    C0517b c0517b = c0516a.f2624d;
                    c0517b.f2680q = m33623y(typedArray, index, c0517b.f2680q);
                    break;
                case 2:
                    C0517b c0517b2 = c0516a.f2624d;
                    c0517b2.f2635H = typedArray.getDimensionPixelSize(index, c0517b2.f2635H);
                    break;
                case 3:
                    C0517b c0517b3 = c0516a.f2624d;
                    c0517b3.f2679p = m33623y(typedArray, index, c0517b3.f2679p);
                    break;
                case 4:
                    C0517b c0517b4 = c0516a.f2624d;
                    c0517b4.f2678o = m33623y(typedArray, index, c0517b4.f2678o);
                    break;
                case 5:
                    c0516a.f2624d.f2687x = typedArray.getString(index);
                    break;
                case 6:
                    C0517b c0517b5 = c0516a.f2624d;
                    c0517b5.f2629B = typedArray.getDimensionPixelOffset(index, c0517b5.f2629B);
                    break;
                case 7:
                    C0517b c0517b6 = c0516a.f2624d;
                    c0517b6.f2630C = typedArray.getDimensionPixelOffset(index, c0517b6.f2630C);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0517b c0517b7 = c0516a.f2624d;
                        c0517b7.f2636I = typedArray.getDimensionPixelSize(index, c0517b7.f2636I);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    C0517b c0517b8 = c0516a.f2624d;
                    c0517b8.f2684u = m33623y(typedArray, index, c0517b8.f2684u);
                    break;
                case 10:
                    C0517b c0517b9 = c0516a.f2624d;
                    c0517b9.f2683t = m33623y(typedArray, index, c0517b9.f2683t);
                    break;
                case 11:
                    C0517b c0517b10 = c0516a.f2624d;
                    c0517b10.f2641N = typedArray.getDimensionPixelSize(index, c0517b10.f2641N);
                    break;
                case 12:
                    C0517b c0517b11 = c0516a.f2624d;
                    c0517b11.f2642O = typedArray.getDimensionPixelSize(index, c0517b11.f2642O);
                    break;
                case 13:
                    C0517b c0517b12 = c0516a.f2624d;
                    c0517b12.f2638K = typedArray.getDimensionPixelSize(index, c0517b12.f2638K);
                    break;
                case 14:
                    C0517b c0517b13 = c0516a.f2624d;
                    c0517b13.f2640M = typedArray.getDimensionPixelSize(index, c0517b13.f2640M);
                    break;
                case 15:
                    C0517b c0517b14 = c0516a.f2624d;
                    c0517b14.f2643P = typedArray.getDimensionPixelSize(index, c0517b14.f2643P);
                    break;
                case 16:
                    C0517b c0517b15 = c0516a.f2624d;
                    c0517b15.f2639L = typedArray.getDimensionPixelSize(index, c0517b15.f2639L);
                    break;
                case 17:
                    C0517b c0517b16 = c0516a.f2624d;
                    c0517b16.f2663f = typedArray.getDimensionPixelOffset(index, c0517b16.f2663f);
                    break;
                case 18:
                    C0517b c0517b17 = c0516a.f2624d;
                    c0517b17.f2665g = typedArray.getDimensionPixelOffset(index, c0517b17.f2665g);
                    break;
                case 19:
                    C0517b c0517b18 = c0516a.f2624d;
                    c0517b18.f2667h = typedArray.getFloat(index, c0517b18.f2667h);
                    break;
                case 20:
                    C0517b c0517b19 = c0516a.f2624d;
                    c0517b19.f2685v = typedArray.getFloat(index, c0517b19.f2685v);
                    break;
                case 21:
                    C0517b c0517b20 = c0516a.f2624d;
                    c0517b20.f2661e = typedArray.getLayoutDimension(index, c0517b20.f2661e);
                    break;
                case 22:
                    C0519d c0519d = c0516a.f2622b;
                    c0519d.f2699b = typedArray.getInt(index, c0519d.f2699b);
                    C0519d c0519d2 = c0516a.f2622b;
                    c0519d2.f2699b = f2615a[c0519d2.f2699b];
                    break;
                case 23:
                    C0517b c0517b21 = c0516a.f2624d;
                    c0517b21.f2659d = typedArray.getLayoutDimension(index, c0517b21.f2659d);
                    break;
                case 24:
                    C0517b c0517b22 = c0516a.f2624d;
                    c0517b22.f2632E = typedArray.getDimensionPixelSize(index, c0517b22.f2632E);
                    break;
                case 25:
                    C0517b c0517b23 = c0516a.f2624d;
                    c0517b23.f2669i = m33623y(typedArray, index, c0517b23.f2669i);
                    break;
                case 26:
                    C0517b c0517b24 = c0516a.f2624d;
                    c0517b24.f2671j = m33623y(typedArray, index, c0517b24.f2671j);
                    break;
                case 27:
                    C0517b c0517b25 = c0516a.f2624d;
                    c0517b25.f2631D = typedArray.getInt(index, c0517b25.f2631D);
                    break;
                case 28:
                    C0517b c0517b26 = c0516a.f2624d;
                    c0517b26.f2633F = typedArray.getDimensionPixelSize(index, c0517b26.f2633F);
                    break;
                case 29:
                    C0517b c0517b27 = c0516a.f2624d;
                    c0517b27.f2673k = m33623y(typedArray, index, c0517b27.f2673k);
                    break;
                case 30:
                    C0517b c0517b28 = c0516a.f2624d;
                    c0517b28.f2675l = m33623y(typedArray, index, c0517b28.f2675l);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0517b c0517b29 = c0516a.f2624d;
                        c0517b29.f2637J = typedArray.getDimensionPixelSize(index, c0517b29.f2637J);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    C0517b c0517b30 = c0516a.f2624d;
                    c0517b30.f2681r = m33623y(typedArray, index, c0517b30.f2681r);
                    break;
                case 33:
                    C0517b c0517b31 = c0516a.f2624d;
                    c0517b31.f2682s = m33623y(typedArray, index, c0517b31.f2682s);
                    break;
                case 34:
                    C0517b c0517b32 = c0516a.f2624d;
                    c0517b32.f2634G = typedArray.getDimensionPixelSize(index, c0517b32.f2634G);
                    break;
                case 35:
                    C0517b c0517b33 = c0516a.f2624d;
                    c0517b33.f2677n = m33623y(typedArray, index, c0517b33.f2677n);
                    break;
                case 36:
                    C0517b c0517b34 = c0516a.f2624d;
                    c0517b34.f2676m = m33623y(typedArray, index, c0517b34.f2676m);
                    break;
                case 37:
                    C0517b c0517b35 = c0516a.f2624d;
                    c0517b35.f2686w = typedArray.getFloat(index, c0517b35.f2686w);
                    break;
                case 38:
                    c0516a.f2621a = typedArray.getResourceId(index, c0516a.f2621a);
                    break;
                case 39:
                    C0517b c0517b36 = c0516a.f2624d;
                    c0517b36.f2645R = typedArray.getFloat(index, c0517b36.f2645R);
                    break;
                case 40:
                    C0517b c0517b37 = c0516a.f2624d;
                    c0517b37.f2644Q = typedArray.getFloat(index, c0517b37.f2644Q);
                    break;
                case 41:
                    C0517b c0517b38 = c0516a.f2624d;
                    c0517b38.f2646S = typedArray.getInt(index, c0517b38.f2646S);
                    break;
                case 42:
                    C0517b c0517b39 = c0516a.f2624d;
                    c0517b39.f2647T = typedArray.getInt(index, c0517b39.f2647T);
                    break;
                case 43:
                    C0519d c0519d3 = c0516a.f2622b;
                    c0519d3.f2701d = typedArray.getFloat(index, c0519d3.f2701d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0520e c0520e = c0516a.f2625e;
                        c0520e.f2715m = true;
                        c0520e.f2716n = typedArray.getDimension(index, c0520e.f2716n);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    C0520e c0520e2 = c0516a.f2625e;
                    c0520e2.f2706d = typedArray.getFloat(index, c0520e2.f2706d);
                    break;
                case 46:
                    C0520e c0520e3 = c0516a.f2625e;
                    c0520e3.f2707e = typedArray.getFloat(index, c0520e3.f2707e);
                    break;
                case 47:
                    C0520e c0520e4 = c0516a.f2625e;
                    c0520e4.f2708f = typedArray.getFloat(index, c0520e4.f2708f);
                    break;
                case 48:
                    C0520e c0520e5 = c0516a.f2625e;
                    c0520e5.f2709g = typedArray.getFloat(index, c0520e5.f2709g);
                    break;
                case 49:
                    C0520e c0520e6 = c0516a.f2625e;
                    c0520e6.f2710h = typedArray.getDimension(index, c0520e6.f2710h);
                    break;
                case 50:
                    C0520e c0520e7 = c0516a.f2625e;
                    c0520e7.f2711i = typedArray.getDimension(index, c0520e7.f2711i);
                    break;
                case 51:
                    C0520e c0520e8 = c0516a.f2625e;
                    c0520e8.f2712j = typedArray.getDimension(index, c0520e8.f2712j);
                    break;
                case 52:
                    C0520e c0520e9 = c0516a.f2625e;
                    c0520e9.f2713k = typedArray.getDimension(index, c0520e9.f2713k);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0520e c0520e10 = c0516a.f2625e;
                        c0520e10.f2714l = typedArray.getDimension(index, c0520e10.f2714l);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    C0517b c0517b40 = c0516a.f2624d;
                    c0517b40.f2648U = typedArray.getInt(index, c0517b40.f2648U);
                    break;
                case 55:
                    C0517b c0517b41 = c0516a.f2624d;
                    c0517b41.f2649V = typedArray.getInt(index, c0517b41.f2649V);
                    break;
                case 56:
                    C0517b c0517b42 = c0516a.f2624d;
                    c0517b42.f2650W = typedArray.getDimensionPixelSize(index, c0517b42.f2650W);
                    break;
                case 57:
                    C0517b c0517b43 = c0516a.f2624d;
                    c0517b43.f2651X = typedArray.getDimensionPixelSize(index, c0517b43.f2651X);
                    break;
                case 58:
                    C0517b c0517b44 = c0516a.f2624d;
                    c0517b44.f2652Y = typedArray.getDimensionPixelSize(index, c0517b44.f2652Y);
                    break;
                case 59:
                    C0517b c0517b45 = c0516a.f2624d;
                    c0517b45.f2653Z = typedArray.getDimensionPixelSize(index, c0517b45.f2653Z);
                    break;
                case 60:
                    C0520e c0520e11 = c0516a.f2625e;
                    c0520e11.f2705c = typedArray.getFloat(index, c0520e11.f2705c);
                    break;
                case 61:
                    C0517b c0517b46 = c0516a.f2624d;
                    c0517b46.f2688y = m33623y(typedArray, index, c0517b46.f2688y);
                    break;
                case 62:
                    C0517b c0517b47 = c0516a.f2624d;
                    c0517b47.f2689z = typedArray.getDimensionPixelSize(index, c0517b47.f2689z);
                    break;
                case 63:
                    C0517b c0517b48 = c0516a.f2624d;
                    c0517b48.f2628A = typedArray.getFloat(index, c0517b48.f2628A);
                    break;
                case 64:
                    C0518c c0518c = c0516a.f2623c;
                    c0518c.f2692c = m33623y(typedArray, index, c0518c.f2692c);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0516a.f2623c.f2693d = typedArray.getString(index);
                        break;
                    } else {
                        c0516a.f2623c.f2693d = C1508c.f6009b[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c0516a.f2623c.f2695f = typedArray.getInt(index, 0);
                    break;
                case 67:
                    C0518c c0518c2 = c0516a.f2623c;
                    c0518c2.f2697h = typedArray.getFloat(index, c0518c2.f2697h);
                    break;
                case 68:
                    C0519d c0519d4 = c0516a.f2622b;
                    c0519d4.f2702e = typedArray.getFloat(index, c0519d4.f2702e);
                    break;
                case 69:
                    c0516a.f2624d.f2654a0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    c0516a.f2624d.f2656b0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    C0517b c0517b49 = c0516a.f2624d;
                    c0517b49.f2658c0 = typedArray.getInt(index, c0517b49.f2658c0);
                    break;
                case 73:
                    C0517b c0517b50 = c0516a.f2624d;
                    c0517b50.f2660d0 = typedArray.getDimensionPixelSize(index, c0517b50.f2660d0);
                    break;
                case 74:
                    c0516a.f2624d.f2666g0 = typedArray.getString(index);
                    break;
                case 75:
                    C0517b c0517b51 = c0516a.f2624d;
                    c0517b51.f2674k0 = typedArray.getBoolean(index, c0517b51.f2674k0);
                    break;
                case 76:
                    C0518c c0518c3 = c0516a.f2623c;
                    c0518c3.f2694e = typedArray.getInt(index, c0518c3.f2694e);
                    break;
                case 77:
                    c0516a.f2624d.f2668h0 = typedArray.getString(index);
                    break;
                case 78:
                    C0519d c0519d5 = c0516a.f2622b;
                    c0519d5.f2700c = typedArray.getInt(index, c0519d5.f2700c);
                    break;
                case 79:
                    C0518c c0518c4 = c0516a.f2623c;
                    c0518c4.f2696g = typedArray.getFloat(index, c0518c4.f2696g);
                    break;
                case 80:
                    C0517b c0517b52 = c0516a.f2624d;
                    c0517b52.f2670i0 = typedArray.getBoolean(index, c0517b52.f2670i0);
                    break;
                case 81:
                    C0517b c0517b53 = c0516a.f2624d;
                    c0517b53.f2672j0 = typedArray.getBoolean(index, c0517b53.f2672j0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2616b.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f2616b.get(index));
                    break;
            }
        }
    }

    /* renamed from: A */
    public void m33651A(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f2619e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f2620f.containsKey(Integer.valueOf(id))) {
                this.f2620f.put(Integer.valueOf(id), new C0516a());
            }
            C0516a c0516a = this.f2620f.get(Integer.valueOf(id));
            if (!c0516a.f2624d.f2657c) {
                c0516a.m33616f(id, layoutParams);
                if (childAt instanceof ConstraintHelper) {
                    c0516a.f2624d.f2664f0 = ((ConstraintHelper) childAt).getReferencedIds();
                    if (childAt instanceof Barrier) {
                        Barrier barrier = (Barrier) childAt;
                        c0516a.f2624d.f2674k0 = barrier.m33720w();
                        c0516a.f2624d.f2658c0 = barrier.getType();
                        c0516a.f2624d.f2660d0 = barrier.getMargin();
                    }
                }
                c0516a.f2624d.f2657c = true;
            }
            C0519d c0519d = c0516a.f2622b;
            if (!c0519d.f2698a) {
                c0519d.f2699b = childAt.getVisibility();
                c0516a.f2622b.f2701d = childAt.getAlpha();
                c0516a.f2622b.f2698a = true;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                C0520e c0520e = c0516a.f2625e;
                if (!c0520e.f2704b) {
                    c0520e.f2704b = true;
                    c0520e.f2705c = childAt.getRotation();
                    c0516a.f2625e.f2706d = childAt.getRotationX();
                    c0516a.f2625e.f2707e = childAt.getRotationY();
                    c0516a.f2625e.f2708f = childAt.getScaleX();
                    c0516a.f2625e.f2709g = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        C0520e c0520e2 = c0516a.f2625e;
                        c0520e2.f2710h = pivotX;
                        c0520e2.f2711i = pivotY;
                    }
                    c0516a.f2625e.f2712j = childAt.getTranslationX();
                    c0516a.f2625e.f2713k = childAt.getTranslationY();
                    if (i2 >= 21) {
                        c0516a.f2625e.f2714l = childAt.getTranslationZ();
                        C0520e c0520e3 = c0516a.f2625e;
                        if (c0520e3.f2715m) {
                            c0520e3.f2716n = childAt.getElevation();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: B */
    public void m33650B(C0515b c0515b) {
        for (Integer num : c0515b.f2620f.keySet()) {
            int intValue = num.intValue();
            C0516a c0516a = c0515b.f2620f.get(num);
            if (!this.f2620f.containsKey(Integer.valueOf(intValue))) {
                this.f2620f.put(Integer.valueOf(intValue), new C0516a());
            }
            C0516a c0516a2 = this.f2620f.get(Integer.valueOf(intValue));
            C0517b c0517b = c0516a2.f2624d;
            if (!c0517b.f2657c) {
                c0517b.m33613a(c0516a.f2624d);
            }
            C0519d c0519d = c0516a2.f2622b;
            if (!c0519d.f2698a) {
                c0519d.m33609a(c0516a.f2622b);
            }
            C0520e c0520e = c0516a2.f2625e;
            if (!c0520e.f2704b) {
                c0520e.m33607a(c0516a.f2625e);
            }
            C0518c c0518c = c0516a2.f2623c;
            if (!c0518c.f2691b) {
                c0518c.m33611a(c0516a.f2623c);
            }
            for (String str : c0516a.f2626f.keySet()) {
                if (!c0516a2.f2626f.containsKey(str)) {
                    c0516a2.f2626f.put(str, c0516a.f2626f.get(str));
                }
            }
        }
    }

    /* renamed from: C */
    public void m33649C(boolean z) {
        this.f2619e = z;
    }

    /* renamed from: D */
    public void m33648D(boolean z) {
        this.f2617c = z;
    }

    /* renamed from: c */
    public void m33645c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f2620f.containsKey(Integer.valueOf(id))) {
                Log.v("ConstraintSet", "id unknown " + C0378a.m34491c(childAt));
            } else if (this.f2619e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f2620f.containsKey(Integer.valueOf(id))) {
                    ConstraintAttribute.m33711h(childAt, this.f2620f.get(Integer.valueOf(id)).f2626f);
                }
            }
        }
    }

    /* renamed from: d */
    public void m33644d(ConstraintLayout constraintLayout) {
        m33642f(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: e */
    public void m33643e(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f2620f.containsKey(Integer.valueOf(id))) {
            C0516a c0516a = this.f2620f.get(Integer.valueOf(id));
            if (!(constraintWidget instanceof C0499h)) {
                return;
            }
            constraintHelper.mo33699o(c0516a, (C0499h) constraintWidget, layoutParams, sparseArray);
        }
    }

    /* renamed from: f */
    public void m33642f(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f2620f.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f2620f.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + C0378a.m34491c(childAt));
            } else if (this.f2619e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.f2620f.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        C0516a c0516a = this.f2620f.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            c0516a.f2624d.f2662e0 = 1;
                        }
                        int i2 = c0516a.f2624d.f2662e0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(c0516a.f2624d.f2658c0);
                            barrier.setMargin(c0516a.f2624d.f2660d0);
                            barrier.setAllowsGoneWidget(c0516a.f2624d.f2674k0);
                            C0517b c0517b = c0516a.f2624d;
                            int[] iArr = c0517b.f2664f0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = c0517b.f2666g0;
                                if (str != null) {
                                    c0517b.f2664f0 = m33635m(barrier, str);
                                    barrier.setReferencedIds(c0516a.f2624d.f2664f0);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.m33672c();
                        c0516a.m33618d(layoutParams);
                        if (z) {
                            ConstraintAttribute.m33711h(childAt, c0516a.f2626f);
                        }
                        childAt.setLayoutParams(layoutParams);
                        C0519d c0519d = c0516a.f2622b;
                        if (c0519d.f2700c == 0) {
                            childAt.setVisibility(c0519d.f2699b);
                        }
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 17) {
                            childAt.setAlpha(c0516a.f2622b.f2701d);
                            childAt.setRotation(c0516a.f2625e.f2705c);
                            childAt.setRotationX(c0516a.f2625e.f2706d);
                            childAt.setRotationY(c0516a.f2625e.f2707e);
                            childAt.setScaleX(c0516a.f2625e.f2708f);
                            childAt.setScaleY(c0516a.f2625e.f2709g);
                            if (!Float.isNaN(c0516a.f2625e.f2710h)) {
                                childAt.setPivotX(c0516a.f2625e.f2710h);
                            }
                            if (!Float.isNaN(c0516a.f2625e.f2711i)) {
                                childAt.setPivotY(c0516a.f2625e.f2711i);
                            }
                            childAt.setTranslationX(c0516a.f2625e.f2712j);
                            childAt.setTranslationY(c0516a.f2625e.f2713k);
                            if (i3 >= 21) {
                                childAt.setTranslationZ(c0516a.f2625e.f2714l);
                                C0520e c0520e = c0516a.f2625e;
                                if (c0520e.f2715m) {
                                    childAt.setElevation(c0520e.f2716n);
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
            C0516a c0516a2 = this.f2620f.get(num);
            int i4 = c0516a2.f2624d.f2662e0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C0517b c0517b2 = c0516a2.f2624d;
                int[] iArr2 = c0517b2.f2664f0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c0517b2.f2666g0;
                    if (str2 != null) {
                        c0517b2.f2664f0 = m33635m(barrier2, str2);
                        barrier2.setReferencedIds(c0516a2.f2624d.f2664f0);
                    }
                }
                barrier2.setType(c0516a2.f2624d.f2658c0);
                barrier2.setMargin(c0516a2.f2624d.f2660d0);
                ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m33693v();
                c0516a2.m33618d(generateDefaultLayoutParams);
                constraintLayout.addView(barrier2, generateDefaultLayoutParams);
            }
            if (c0516a2.f2624d.f2655b) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c0516a2.m33618d(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: g */
    public void m33641g(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f2620f.containsKey(Integer.valueOf(i))) {
            this.f2620f.get(Integer.valueOf(i)).m33618d(layoutParams);
        }
    }

    /* renamed from: h */
    public void m33640h(int i, int i2) {
        if (this.f2620f.containsKey(Integer.valueOf(i))) {
            C0516a c0516a = this.f2620f.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C0517b c0517b = c0516a.f2624d;
                    c0517b.f2671j = -1;
                    c0517b.f2669i = -1;
                    c0517b.f2632E = -1;
                    c0517b.f2638K = -1;
                    return;
                case 2:
                    C0517b c0517b2 = c0516a.f2624d;
                    c0517b2.f2675l = -1;
                    c0517b2.f2673k = -1;
                    c0517b2.f2633F = -1;
                    c0517b2.f2640M = -1;
                    return;
                case 3:
                    C0517b c0517b3 = c0516a.f2624d;
                    c0517b3.f2677n = -1;
                    c0517b3.f2676m = -1;
                    c0517b3.f2634G = -1;
                    c0517b3.f2639L = -1;
                    return;
                case 4:
                    C0517b c0517b4 = c0516a.f2624d;
                    c0517b4.f2678o = -1;
                    c0517b4.f2679p = -1;
                    c0517b4.f2635H = -1;
                    c0517b4.f2641N = -1;
                    return;
                case 5:
                    c0516a.f2624d.f2680q = -1;
                    return;
                case 6:
                    C0517b c0517b5 = c0516a.f2624d;
                    c0517b5.f2681r = -1;
                    c0517b5.f2682s = -1;
                    c0517b5.f2637J = -1;
                    c0517b5.f2643P = -1;
                    return;
                case 7:
                    C0517b c0517b6 = c0516a.f2624d;
                    c0517b6.f2683t = -1;
                    c0517b6.f2684u = -1;
                    c0517b6.f2636I = -1;
                    c0517b6.f2642O = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: i */
    public void m33639i(Context context, int i) {
        m33638j((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: j */
    public void m33638j(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f2620f.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f2619e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f2620f.containsKey(Integer.valueOf(id))) {
                this.f2620f.put(Integer.valueOf(id), new C0516a());
            }
            C0516a c0516a = this.f2620f.get(Integer.valueOf(id));
            c0516a.f2626f = ConstraintAttribute.m33717b(this.f2618d, childAt);
            c0516a.m33616f(id, layoutParams);
            c0516a.f2622b.f2699b = childAt.getVisibility();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                c0516a.f2622b.f2701d = childAt.getAlpha();
                c0516a.f2625e.f2705c = childAt.getRotation();
                c0516a.f2625e.f2706d = childAt.getRotationX();
                c0516a.f2625e.f2707e = childAt.getRotationY();
                c0516a.f2625e.f2708f = childAt.getScaleX();
                c0516a.f2625e.f2709g = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    C0520e c0520e = c0516a.f2625e;
                    c0520e.f2710h = pivotX;
                    c0520e.f2711i = pivotY;
                }
                c0516a.f2625e.f2712j = childAt.getTranslationX();
                c0516a.f2625e.f2713k = childAt.getTranslationY();
                if (i2 >= 21) {
                    c0516a.f2625e.f2714l = childAt.getTranslationZ();
                    C0520e c0520e2 = c0516a.f2625e;
                    if (c0520e2.f2715m) {
                        c0520e2.f2716n = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                c0516a.f2624d.f2674k0 = barrier.m33720w();
                c0516a.f2624d.f2664f0 = barrier.getReferencedIds();
                c0516a.f2624d.f2658c0 = barrier.getType();
                c0516a.f2624d.f2660d0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: k */
    public void m33637k(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f2620f.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f2619e && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f2620f.containsKey(Integer.valueOf(id))) {
                this.f2620f.put(Integer.valueOf(id), new C0516a());
            }
            C0516a c0516a = this.f2620f.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                c0516a.m33614h((ConstraintHelper) childAt, id, layoutParams);
            }
            c0516a.m33615g(id, layoutParams);
        }
    }

    /* renamed from: l */
    public void m33636l(int i, int i2, int i3, float f) {
        C0517b c0517b = m33633o(i).f2624d;
        c0517b.f2688y = i2;
        c0517b.f2689z = i3;
        c0517b.f2628A = f;
    }

    /* renamed from: p */
    public C0516a m33632p(int i) {
        if (this.f2620f.containsKey(Integer.valueOf(i))) {
            return this.f2620f.get(Integer.valueOf(i));
        }
        return null;
    }

    /* renamed from: q */
    public int m33631q(int i) {
        return m33633o(i).f2624d.f2661e;
    }

    /* renamed from: r */
    public int[] m33630r() {
        Integer[] numArr = (Integer[]) this.f2620f.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: s */
    public C0516a m33629s(int i) {
        return m33633o(i);
    }

    /* renamed from: t */
    public int m33628t(int i) {
        return m33633o(i).f2622b.f2699b;
    }

    /* renamed from: u */
    public int m33627u(int i) {
        return m33633o(i).f2622b.f2700c;
    }

    /* renamed from: v */
    public int m33626v(int i) {
        return m33633o(i).f2624d.f2659d;
    }

    /* renamed from: w */
    public void m33625w(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0516a m33634n = m33634n(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m33634n.f2624d.f2655b = true;
                    }
                    this.f2620f.put(Integer.valueOf(m33634n.f2621a), m33634n);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: x */
    public void m33624x(Context context, XmlPullParser xmlPullParser) {
        C0516a c0516a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C0516a c0516a2 = null;
            while (true) {
                C0516a c0516a3 = c0516a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0516a = c0516a3;
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
                            c0516a = m33634n(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c0516a = m33634n(context, Xml.asAttributeSet(xmlPullParser));
                            C0517b c0517b = c0516a.f2624d;
                            c0517b.f2655b = true;
                            c0517b.f2657c = true;
                            break;
                        case true:
                            c0516a = m33634n(context, Xml.asAttributeSet(xmlPullParser));
                            c0516a.f2624d.f2662e0 = 1;
                            break;
                        case true:
                            if (c0516a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0516a3.f2622b.m33608b(context, Xml.asAttributeSet(xmlPullParser));
                            c0516a = c0516a3;
                            break;
                        case true:
                            if (c0516a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0516a3.f2625e.m33606b(context, Xml.asAttributeSet(xmlPullParser));
                            c0516a = c0516a3;
                            break;
                        case true:
                            if (c0516a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0516a3.f2624d.m33612b(context, Xml.asAttributeSet(xmlPullParser));
                            c0516a = c0516a3;
                            break;
                        case true:
                            if (c0516a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0516a3.f2623c.m33610b(context, Xml.asAttributeSet(xmlPullParser));
                            c0516a = c0516a3;
                            break;
                        case true:
                            if (c0516a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            ConstraintAttribute.m33712g(context, xmlPullParser, c0516a3.f2626f);
                            c0516a = c0516a3;
                            break;
                        default:
                            c0516a = c0516a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c0516a = c0516a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c0516a = c0516a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f2620f.put(Integer.valueOf(c0516a3.f2621a), c0516a3);
                        c0516a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c0516a2 = c0516a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
