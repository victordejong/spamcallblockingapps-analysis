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
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import androidx.constraintlayout.p026a.p027a.C0547h;
import androidx.constraintlayout.p026a.p027a.p028a.C0513b;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.Constraints;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: m */
    private AbstractC0686d f2930m;

    /* renamed from: O */
    SparseArray<View> f2909O = new SparseArray<>();

    /* renamed from: a */
    private ArrayList<ConstraintHelper> f2918a = new ArrayList<>(4);

    /* renamed from: P */
    public C0544f f2910P = new C0544f();

    /* renamed from: b */
    private int f2919b = 0;

    /* renamed from: c */
    private int f2920c = 0;

    /* renamed from: d */
    private int f2921d = Integer.MAX_VALUE;

    /* renamed from: e */
    private int f2922e = Integer.MAX_VALUE;

    /* renamed from: Q */
    protected boolean f2911Q = true;

    /* renamed from: f */
    private int f2923f = 257;

    /* renamed from: g */
    private C0680c f2924g = null;

    /* renamed from: R */
    protected C0677b f2912R = null;

    /* renamed from: h */
    private int f2925h = -1;

    /* renamed from: i */
    private HashMap<String, Integer> f2926i = new HashMap<>();

    /* renamed from: j */
    private int f2927j = -1;

    /* renamed from: k */
    private int f2928k = -1;

    /* renamed from: S */
    int f2913S = -1;

    /* renamed from: T */
    int f2914T = -1;

    /* renamed from: U */
    int f2915U = 0;

    /* renamed from: V */
    int f2916V = 0;

    /* renamed from: l */
    private SparseArray<C0541e> f2929l = new SparseArray<>();

    /* renamed from: W */
    C0673a f2917W = new C0673a(this);

    /* renamed from: n */
    private int f2931n = 0;

    /* renamed from: o */
    private int f2932o = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$1.class */
    static final /* synthetic */ class C06711 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2933a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[C0541e.EnumC0543a.values().length];
            f2933a = iArr;
            try {
                iArr[C0541e.EnumC0543a.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2933a[C0541e.EnumC0543a.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2933a[C0541e.EnumC0543a.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2933a[C0541e.EnumC0543a.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f2934A;

        /* renamed from: B */
        public String f2935B;

        /* renamed from: C */
        float f2936C;

        /* renamed from: D */
        int f2937D;

        /* renamed from: E */
        public float f2938E;

        /* renamed from: F */
        public float f2939F;

        /* renamed from: G */
        public int f2940G;

        /* renamed from: H */
        public int f2941H;

        /* renamed from: I */
        public int f2942I;

        /* renamed from: J */
        public int f2943J;

        /* renamed from: K */
        public int f2944K;

        /* renamed from: L */
        public int f2945L;

        /* renamed from: M */
        public int f2946M;

        /* renamed from: N */
        public int f2947N;

        /* renamed from: O */
        public float f2948O;

        /* renamed from: P */
        public float f2949P;

        /* renamed from: Q */
        public int f2950Q;

        /* renamed from: R */
        public int f2951R;

        /* renamed from: S */
        public int f2952S;

        /* renamed from: T */
        public boolean f2953T;

        /* renamed from: U */
        public boolean f2954U;

        /* renamed from: V */
        public String f2955V;

        /* renamed from: W */
        boolean f2956W;

        /* renamed from: X */
        boolean f2957X;

        /* renamed from: Y */
        boolean f2958Y;

        /* renamed from: Z */
        boolean f2959Z;

        /* renamed from: a */
        public int f2960a;

        /* renamed from: aa */
        boolean f2961aa;

        /* renamed from: ab */
        boolean f2962ab;

        /* renamed from: ac */
        boolean f2963ac;

        /* renamed from: ad */
        int f2964ad;

        /* renamed from: ae */
        int f2965ae;

        /* renamed from: af */
        int f2966af;

        /* renamed from: ag */
        int f2967ag;

        /* renamed from: ah */
        int f2968ah;

        /* renamed from: ai */
        int f2969ai;

        /* renamed from: aj */
        float f2970aj;

        /* renamed from: ak */
        int f2971ak;

        /* renamed from: al */
        int f2972al;

        /* renamed from: am */
        float f2973am;

        /* renamed from: an */
        public C0541e f2974an;

        /* renamed from: ao */
        public boolean f2975ao;

        /* renamed from: b */
        public int f2976b;

        /* renamed from: c */
        public float f2977c;

        /* renamed from: d */
        public int f2978d;

        /* renamed from: e */
        public int f2979e;

        /* renamed from: f */
        public int f2980f;

        /* renamed from: g */
        public int f2981g;

        /* renamed from: h */
        public int f2982h;

        /* renamed from: i */
        public int f2983i;

        /* renamed from: j */
        public int f2984j;

        /* renamed from: k */
        public int f2985k;

        /* renamed from: l */
        public int f2986l;

        /* renamed from: m */
        public int f2987m;

        /* renamed from: n */
        public int f2988n;

        /* renamed from: o */
        public float f2989o;

        /* renamed from: p */
        public int f2990p;

        /* renamed from: q */
        public int f2991q;

        /* renamed from: r */
        public int f2992r;

        /* renamed from: s */
        public int f2993s;

        /* renamed from: t */
        public int f2994t;

        /* renamed from: u */
        public int f2995u;

        /* renamed from: v */
        public int f2996v;

        /* renamed from: w */
        public int f2997w;

        /* renamed from: x */
        public int f2998x;

        /* renamed from: y */
        public int f2999y;

        /* renamed from: z */
        public float f3000z;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        public static final class C0672a {

            /* renamed from: a */
            public static final SparseIntArray f3001a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f3001a = sparseIntArray;
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(C0687e.C0689b.ConstraintLayout_Layout_layout_constraintTag, 51);
            }

            private C0672a() {
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2960a = -1;
            this.f2976b = -1;
            this.f2977c = -1.0f;
            this.f2978d = -1;
            this.f2979e = -1;
            this.f2980f = -1;
            this.f2981g = -1;
            this.f2982h = -1;
            this.f2983i = -1;
            this.f2984j = -1;
            this.f2985k = -1;
            this.f2986l = -1;
            this.f2987m = -1;
            this.f2988n = 0;
            this.f2989o = BitmapDescriptorFactory.HUE_RED;
            this.f2990p = -1;
            this.f2991q = -1;
            this.f2992r = -1;
            this.f2993s = -1;
            this.f2994t = -1;
            this.f2995u = -1;
            this.f2996v = -1;
            this.f2997w = -1;
            this.f2998x = -1;
            this.f2999y = -1;
            this.f3000z = 0.5f;
            this.f2934A = 0.5f;
            this.f2935B = null;
            this.f2936C = BitmapDescriptorFactory.HUE_RED;
            this.f2937D = 1;
            this.f2938E = -1.0f;
            this.f2939F = -1.0f;
            this.f2940G = 0;
            this.f2941H = 0;
            this.f2942I = 0;
            this.f2943J = 0;
            this.f2944K = 0;
            this.f2945L = 0;
            this.f2946M = 0;
            this.f2947N = 0;
            this.f2948O = 1.0f;
            this.f2949P = 1.0f;
            this.f2950Q = -1;
            this.f2951R = -1;
            this.f2952S = -1;
            this.f2953T = false;
            this.f2954U = false;
            this.f2955V = null;
            this.f2956W = true;
            this.f2957X = true;
            this.f2958Y = false;
            this.f2959Z = false;
            this.f2961aa = false;
            this.f2962ab = false;
            this.f2963ac = false;
            this.f2964ad = -1;
            this.f2965ae = -1;
            this.f2966af = -1;
            this.f2967ag = -1;
            this.f2968ah = -1;
            this.f2969ai = -1;
            this.f2970aj = 0.5f;
            this.f2974an = new C0541e();
            this.f2975ao = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f2960a = -1;
            this.f2976b = -1;
            this.f2977c = -1.0f;
            this.f2978d = -1;
            this.f2979e = -1;
            this.f2980f = -1;
            this.f2981g = -1;
            this.f2982h = -1;
            this.f2983i = -1;
            this.f2984j = -1;
            this.f2985k = -1;
            this.f2986l = -1;
            this.f2987m = -1;
            this.f2988n = 0;
            this.f2989o = BitmapDescriptorFactory.HUE_RED;
            this.f2990p = -1;
            this.f2991q = -1;
            this.f2992r = -1;
            this.f2993s = -1;
            this.f2994t = -1;
            this.f2995u = -1;
            this.f2996v = -1;
            this.f2997w = -1;
            this.f2998x = -1;
            this.f2999y = -1;
            this.f3000z = 0.5f;
            this.f2934A = 0.5f;
            this.f2935B = null;
            this.f2936C = BitmapDescriptorFactory.HUE_RED;
            this.f2937D = 1;
            this.f2938E = -1.0f;
            this.f2939F = -1.0f;
            this.f2940G = 0;
            this.f2941H = 0;
            this.f2942I = 0;
            this.f2943J = 0;
            this.f2944K = 0;
            this.f2945L = 0;
            this.f2946M = 0;
            this.f2947N = 0;
            this.f2948O = 1.0f;
            this.f2949P = 1.0f;
            this.f2950Q = -1;
            this.f2951R = -1;
            this.f2952S = -1;
            this.f2953T = false;
            this.f2954U = false;
            this.f2955V = null;
            this.f2956W = true;
            this.f2957X = true;
            this.f2958Y = false;
            this.f2959Z = false;
            this.f2961aa = false;
            this.f2962ab = false;
            this.f2963ac = false;
            this.f2964ad = -1;
            this.f2965ae = -1;
            this.f2966af = -1;
            this.f2967ag = -1;
            this.f2968ah = -1;
            this.f2969ai = -1;
            this.f2970aj = 0.5f;
            this.f2974an = new C0541e();
            this.f2975ao = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0672a.f3001a.get(index);
                switch (i3) {
                    case 1:
                        this.f2952S = obtainStyledAttributes.getInt(index, this.f2952S);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f2987m);
                        this.f2987m = resourceId;
                        if (resourceId == -1) {
                            this.f2987m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f2988n = obtainStyledAttributes.getDimensionPixelSize(index, this.f2988n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f2989o) % 360.0f;
                        this.f2989o = f;
                        if (f < BitmapDescriptorFactory.HUE_RED) {
                            this.f2989o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f2960a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2960a);
                        break;
                    case 6:
                        this.f2976b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2976b);
                        break;
                    case 7:
                        this.f2977c = obtainStyledAttributes.getFloat(index, this.f2977c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f2978d);
                        this.f2978d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f2978d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f2979e);
                        this.f2979e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f2979e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f2980f);
                        this.f2980f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f2980f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f2981g);
                        this.f2981g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f2981g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f2982h);
                        this.f2982h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f2982h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f2983i);
                        this.f2983i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f2983i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f2984j);
                        this.f2984j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f2984j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f2985k);
                        this.f2985k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f2985k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f2986l);
                        this.f2986l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f2986l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f2990p);
                        this.f2990p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f2990p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f2991q);
                        this.f2991q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f2991q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f2992r);
                        this.f2992r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f2992r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f2993s);
                        this.f2993s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f2993s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f2994t = obtainStyledAttributes.getDimensionPixelSize(index, this.f2994t);
                        break;
                    case 22:
                        this.f2995u = obtainStyledAttributes.getDimensionPixelSize(index, this.f2995u);
                        break;
                    case 23:
                        this.f2996v = obtainStyledAttributes.getDimensionPixelSize(index, this.f2996v);
                        break;
                    case 24:
                        this.f2997w = obtainStyledAttributes.getDimensionPixelSize(index, this.f2997w);
                        break;
                    case 25:
                        this.f2998x = obtainStyledAttributes.getDimensionPixelSize(index, this.f2998x);
                        break;
                    case 26:
                        this.f2999y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2999y);
                        break;
                    case 27:
                        this.f2953T = obtainStyledAttributes.getBoolean(index, this.f2953T);
                        break;
                    case 28:
                        this.f2954U = obtainStyledAttributes.getBoolean(index, this.f2954U);
                        break;
                    case 29:
                        this.f3000z = obtainStyledAttributes.getFloat(index, this.f3000z);
                        break;
                    case 30:
                        this.f2934A = obtainStyledAttributes.getFloat(index, this.f2934A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f2942I = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f2943J = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.f2944K = obtainStyledAttributes.getDimensionPixelSize(index, this.f2944K);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f2944K) == -2) {
                                this.f2944K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f2946M = obtainStyledAttributes.getDimensionPixelSize(index, this.f2946M);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f2946M) == -2) {
                                this.f2946M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f2948O = Math.max((float) BitmapDescriptorFactory.HUE_RED, obtainStyledAttributes.getFloat(index, this.f2948O));
                        this.f2942I = 2;
                        break;
                    case 36:
                        try {
                            this.f2945L = obtainStyledAttributes.getDimensionPixelSize(index, this.f2945L);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f2945L) == -2) {
                                this.f2945L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f2947N = obtainStyledAttributes.getDimensionPixelSize(index, this.f2947N);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f2947N) == -2) {
                                this.f2947N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f2949P = Math.max((float) BitmapDescriptorFactory.HUE_RED, obtainStyledAttributes.getFloat(index, this.f2949P));
                        this.f2943J = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f2935B = string;
                                this.f2936C = Float.NaN;
                                this.f2937D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f2935B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f2935B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f2937D = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f2937D = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f2935B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f2935B.substring(i);
                                        if (substring2.length() > 0) {
                                            this.f2936C = Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f2935B.substring(i, indexOf2);
                                        String substring4 = this.f2935B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > BitmapDescriptorFactory.HUE_RED && parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                                                    if (this.f2937D == 1) {
                                                        this.f2936C = Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        this.f2936C = Math.abs(parseFloat / parseFloat2);
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
                                this.f2938E = obtainStyledAttributes.getFloat(index, this.f2938E);
                                continue;
                            case 46:
                                this.f2939F = obtainStyledAttributes.getFloat(index, this.f2939F);
                                continue;
                            case 47:
                                this.f2940G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f2941H = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f2950Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2950Q);
                                continue;
                            case 50:
                                this.f2951R = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2951R);
                                continue;
                            case 51:
                                this.f2955V = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m44735a();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2960a = -1;
            this.f2976b = -1;
            this.f2977c = -1.0f;
            this.f2978d = -1;
            this.f2979e = -1;
            this.f2980f = -1;
            this.f2981g = -1;
            this.f2982h = -1;
            this.f2983i = -1;
            this.f2984j = -1;
            this.f2985k = -1;
            this.f2986l = -1;
            this.f2987m = -1;
            this.f2988n = 0;
            this.f2989o = BitmapDescriptorFactory.HUE_RED;
            this.f2990p = -1;
            this.f2991q = -1;
            this.f2992r = -1;
            this.f2993s = -1;
            this.f2994t = -1;
            this.f2995u = -1;
            this.f2996v = -1;
            this.f2997w = -1;
            this.f2998x = -1;
            this.f2999y = -1;
            this.f3000z = 0.5f;
            this.f2934A = 0.5f;
            this.f2935B = null;
            this.f2936C = BitmapDescriptorFactory.HUE_RED;
            this.f2937D = 1;
            this.f2938E = -1.0f;
            this.f2939F = -1.0f;
            this.f2940G = 0;
            this.f2941H = 0;
            this.f2942I = 0;
            this.f2943J = 0;
            this.f2944K = 0;
            this.f2945L = 0;
            this.f2946M = 0;
            this.f2947N = 0;
            this.f2948O = 1.0f;
            this.f2949P = 1.0f;
            this.f2950Q = -1;
            this.f2951R = -1;
            this.f2952S = -1;
            this.f2953T = false;
            this.f2954U = false;
            this.f2955V = null;
            this.f2956W = true;
            this.f2957X = true;
            this.f2958Y = false;
            this.f2959Z = false;
            this.f2961aa = false;
            this.f2962ab = false;
            this.f2963ac = false;
            this.f2964ad = -1;
            this.f2965ae = -1;
            this.f2966af = -1;
            this.f2967ag = -1;
            this.f2968ah = -1;
            this.f2969ai = -1;
            this.f2970aj = 0.5f;
            this.f2974an = new C0541e();
            this.f2975ao = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f2960a = -1;
            this.f2976b = -1;
            this.f2977c = -1.0f;
            this.f2978d = -1;
            this.f2979e = -1;
            this.f2980f = -1;
            this.f2981g = -1;
            this.f2982h = -1;
            this.f2983i = -1;
            this.f2984j = -1;
            this.f2985k = -1;
            this.f2986l = -1;
            this.f2987m = -1;
            this.f2988n = 0;
            this.f2989o = BitmapDescriptorFactory.HUE_RED;
            this.f2990p = -1;
            this.f2991q = -1;
            this.f2992r = -1;
            this.f2993s = -1;
            this.f2994t = -1;
            this.f2995u = -1;
            this.f2996v = -1;
            this.f2997w = -1;
            this.f2998x = -1;
            this.f2999y = -1;
            this.f3000z = 0.5f;
            this.f2934A = 0.5f;
            this.f2935B = null;
            this.f2936C = BitmapDescriptorFactory.HUE_RED;
            this.f2937D = 1;
            this.f2938E = -1.0f;
            this.f2939F = -1.0f;
            this.f2940G = 0;
            this.f2941H = 0;
            this.f2942I = 0;
            this.f2943J = 0;
            this.f2944K = 0;
            this.f2945L = 0;
            this.f2946M = 0;
            this.f2947N = 0;
            this.f2948O = 1.0f;
            this.f2949P = 1.0f;
            this.f2950Q = -1;
            this.f2951R = -1;
            this.f2952S = -1;
            this.f2953T = false;
            this.f2954U = false;
            this.f2955V = null;
            this.f2956W = true;
            this.f2957X = true;
            this.f2958Y = false;
            this.f2959Z = false;
            this.f2961aa = false;
            this.f2962ab = false;
            this.f2963ac = false;
            this.f2964ad = -1;
            this.f2965ae = -1;
            this.f2966af = -1;
            this.f2967ag = -1;
            this.f2968ah = -1;
            this.f2969ai = -1;
            this.f2970aj = 0.5f;
            this.f2974an = new C0541e();
            this.f2975ao = false;
            this.f2960a = layoutParams.f2960a;
            this.f2976b = layoutParams.f2976b;
            this.f2977c = layoutParams.f2977c;
            this.f2978d = layoutParams.f2978d;
            this.f2979e = layoutParams.f2979e;
            this.f2980f = layoutParams.f2980f;
            this.f2981g = layoutParams.f2981g;
            this.f2982h = layoutParams.f2982h;
            this.f2983i = layoutParams.f2983i;
            this.f2984j = layoutParams.f2984j;
            this.f2985k = layoutParams.f2985k;
            this.f2986l = layoutParams.f2986l;
            this.f2987m = layoutParams.f2987m;
            this.f2988n = layoutParams.f2988n;
            this.f2989o = layoutParams.f2989o;
            this.f2990p = layoutParams.f2990p;
            this.f2991q = layoutParams.f2991q;
            this.f2992r = layoutParams.f2992r;
            this.f2993s = layoutParams.f2993s;
            this.f2994t = layoutParams.f2994t;
            this.f2995u = layoutParams.f2995u;
            this.f2996v = layoutParams.f2996v;
            this.f2997w = layoutParams.f2997w;
            this.f2998x = layoutParams.f2998x;
            this.f2999y = layoutParams.f2999y;
            this.f3000z = layoutParams.f3000z;
            this.f2934A = layoutParams.f2934A;
            this.f2935B = layoutParams.f2935B;
            this.f2936C = layoutParams.f2936C;
            this.f2937D = layoutParams.f2937D;
            this.f2938E = layoutParams.f2938E;
            this.f2939F = layoutParams.f2939F;
            this.f2940G = layoutParams.f2940G;
            this.f2941H = layoutParams.f2941H;
            this.f2953T = layoutParams.f2953T;
            this.f2954U = layoutParams.f2954U;
            this.f2942I = layoutParams.f2942I;
            this.f2943J = layoutParams.f2943J;
            this.f2944K = layoutParams.f2944K;
            this.f2946M = layoutParams.f2946M;
            this.f2945L = layoutParams.f2945L;
            this.f2947N = layoutParams.f2947N;
            this.f2948O = layoutParams.f2948O;
            this.f2949P = layoutParams.f2949P;
            this.f2950Q = layoutParams.f2950Q;
            this.f2951R = layoutParams.f2951R;
            this.f2952S = layoutParams.f2952S;
            this.f2956W = layoutParams.f2956W;
            this.f2957X = layoutParams.f2957X;
            this.f2958Y = layoutParams.f2958Y;
            this.f2959Z = layoutParams.f2959Z;
            this.f2964ad = layoutParams.f2964ad;
            this.f2965ae = layoutParams.f2965ae;
            this.f2966af = layoutParams.f2966af;
            this.f2967ag = layoutParams.f2967ag;
            this.f2968ah = layoutParams.f2968ah;
            this.f2969ai = layoutParams.f2969ai;
            this.f2970aj = layoutParams.f2970aj;
            this.f2955V = layoutParams.f2955V;
            this.f2974an = layoutParams.f2974an;
        }

        /* renamed from: a */
        public final void m44735a() {
            this.f2959Z = false;
            this.f2956W = true;
            this.f2957X = true;
            if (this.width == -2 && this.f2953T) {
                this.f2956W = false;
                if (this.f2942I == 0) {
                    this.f2942I = 1;
                }
            }
            if (this.height == -2 && this.f2954U) {
                this.f2957X = false;
                if (this.f2943J == 0) {
                    this.f2943J = 1;
                }
            }
            if (this.width == 0 || this.width == -1) {
                this.f2956W = false;
                if (this.width == 0 && this.f2942I == 1) {
                    this.width = -2;
                    this.f2953T = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.f2957X = false;
                if (this.height == 0 && this.f2943J == 1) {
                    this.height = -2;
                    this.f2954U = true;
                }
            }
            if (this.f2977c == -1.0f && this.f2960a == -1 && this.f2976b == -1) {
                return;
            }
            this.f2959Z = true;
            this.f2956W = true;
            this.f2957X = true;
            if (!(this.f2974an instanceof C0547h)) {
                this.f2974an = new C0547h();
            }
            ((C0547h) this.f2974an).m45185o(this.f2952S);
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

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    public final class C0673a implements C0513b.AbstractC0515b {

        /* renamed from: a */
        ConstraintLayout f3002a;

        /* renamed from: b */
        int f3003b;

        /* renamed from: c */
        int f3004c;

        /* renamed from: d */
        int f3005d;

        /* renamed from: e */
        int f3006e;

        /* renamed from: f */
        int f3007f;

        /* renamed from: g */
        int f3008g;

        public C0673a(ConstraintLayout constraintLayout) {
            ConstraintLayout.this = r4;
            this.f3002a = constraintLayout;
        }

        /* renamed from: a */
        private static boolean m44733a(int i, int i2, int i3) {
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

        @Override // androidx.constraintlayout.p026a.p027a.p028a.C0513b.AbstractC0515b
        /* renamed from: a */
        public final void mo44734a() {
            int childCount = this.f3002a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f3002a.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt;
                    if (placeholder.f3025b != null) {
                        LayoutParams layoutParams = (LayoutParams) placeholder.getLayoutParams();
                        LayoutParams layoutParams2 = (LayoutParams) placeholder.f3025b.getLayoutParams();
                        layoutParams2.f2974an.f2091ak = 0;
                        if (layoutParams.f2974an.f2059R[0] != C0541e.EnumC0543a.FIXED) {
                            layoutParams.f2974an.m45271g(layoutParams2.f2974an.m45257o());
                        }
                        if (layoutParams.f2974an.f2059R[1] != C0541e.EnumC0543a.FIXED) {
                            layoutParams.f2974an.m45269h(layoutParams2.f2974an.m45255p());
                        }
                        layoutParams2.f2974an.f2091ak = 8;
                    }
                }
            }
            int size = this.f3002a.f2918a.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f3002a.f2918a.get(i2);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00b9, code lost:
            if (r7.f1939m == androidx.constraintlayout.p026a.p027a.p028a.C0513b.C0514a.f1929c) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01d6, code lost:
            if (r7.f1939m == androidx.constraintlayout.p026a.p027a.p028a.C0513b.C0514a.f1929c) goto L79;
         */
        @Override // androidx.constraintlayout.p026a.p027a.p028a.C0513b.AbstractC0515b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo44732a(androidx.constraintlayout.p026a.p027a.C0541e r6, androidx.constraintlayout.p026a.p027a.p028a.C0513b.C0514a r7) {
            /*
                Method dump skipped, instructions count: 1532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0673a.mo44732a(androidx.constraintlayout.a.a.e, androidx.constraintlayout.a.a.a.b$a):void");
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        m44745a(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m44745a(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m44745a(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m44745a(attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m44745a(AttributeSet attributeSet, int i, int i2) {
        this.f2910P.f2090aj = this;
        this.f2910P.m45243a(this.f2917W);
        this.f2909O.put(getId(), this);
        this.f2924g = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_android_minWidth) {
                    this.f2919b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2919b);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_minHeight) {
                    this.f2920c = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2920c);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_maxWidth) {
                    this.f2921d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2921d);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_maxHeight) {
                    this.f2922e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2922e);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f2923f = obtainStyledAttributes.getInt(index, this.f2923f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            mo44736c(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f2912R = null;
                        }
                    }
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0680c c0680c = new C0680c();
                        this.f2924g = c0680c;
                        c0680c.m44695b(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f2924g = null;
                    }
                    this.f2925h = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2910P.m45225o(this.f2923f);
    }

    /* renamed from: a */
    private boolean m44747a() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            } else if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            boolean isInEditMode = isInEditMode();
            int childCount2 = getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                C0541e m44744a = m44744a(getChildAt(i2));
                if (m44744a != null) {
                    m44744a.mo45162k();
                }
            }
            if (isInEditMode) {
                for (int i3 = 0; i3 < childCount2; i3++) {
                    View childAt = getChildAt(i3);
                    try {
                        String resourceName = getResources().getResourceName(childAt.getId());
                        setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                        int indexOf = resourceName.indexOf(47);
                        String str = resourceName;
                        if (indexOf != -1) {
                            str = resourceName.substring(indexOf + 1);
                        }
                        getTargetWidget(childAt.getId()).f2092al = str;
                    } catch (Resources.NotFoundException e) {
                    }
                }
            }
            if (this.f2925h != -1) {
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = getChildAt(i4);
                    if (childAt2.getId() == this.f2925h && (childAt2 instanceof Constraints)) {
                        Constraints constraints = (Constraints) childAt2;
                        if (constraints.f3010a == null) {
                            constraints.f3010a = new C0680c();
                        }
                        C0680c c0680c = constraints.f3010a;
                        int childCount3 = constraints.getChildCount();
                        c0680c.f3058c.clear();
                        for (int i5 = 0; i5 < childCount3; i5++) {
                            View childAt3 = constraints.getChildAt(i5);
                            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt3.getLayoutParams();
                            int id = childAt3.getId();
                            if (c0680c.f3057b && id == -1) {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                            if (!c0680c.f3058c.containsKey(Integer.valueOf(id))) {
                                c0680c.f3058c.put(Integer.valueOf(id), new C0680c.C0681a());
                            }
                            C0680c.C0681a c0681a = c0680c.f3058c.get(Integer.valueOf(id));
                            if (childAt3 instanceof ConstraintHelper) {
                                ConstraintHelper constraintHelper = (ConstraintHelper) childAt3;
                                c0681a.m44685a(id, layoutParams);
                                if (constraintHelper instanceof Barrier) {
                                    c0681a.f3063d.f3097ad = 1;
                                    Barrier barrier = (Barrier) constraintHelper;
                                    c0681a.f3063d.f3095ab = barrier.f2897a;
                                    c0681a.f3063d.f3098ae = barrier.m44756b();
                                    c0681a.f3063d.f3096ac = barrier.f2898b.f1922c;
                                }
                            }
                            c0681a.m44685a(id, layoutParams);
                        }
                        this.f2924g = constraints.f3010a;
                    }
                }
            }
            C0680c c0680c2 = this.f2924g;
            if (c0680c2 != null) {
                c0680c2.m44689d(this);
            }
            this.f2910P.f2231be.clear();
            int size = this.f2918a.size();
            if (size > 0) {
                for (int i6 = 0; i6 < size; i6++) {
                    this.f2918a.get(i6).m44755b(this);
                }
            }
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt4 = getChildAt(i7);
                if (childAt4 instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt4;
                    if (placeholder.f3024a == -1 && !placeholder.isInEditMode()) {
                        placeholder.setVisibility(placeholder.f3026c);
                    }
                    placeholder.f3025b = findViewById(placeholder.f3024a);
                    if (placeholder.f3025b != null) {
                        ((LayoutParams) placeholder.f3025b.getLayoutParams()).f2962ab = true;
                        placeholder.f3025b.setVisibility(0);
                        placeholder.setVisibility(0);
                    }
                }
            }
            this.f2929l.clear();
            this.f2929l.put(0, this.f2910P);
            this.f2929l.put(getId(), this.f2910P);
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt5 = getChildAt(i8);
                this.f2929l.put(childAt5.getId(), m44744a(childAt5));
            }
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt6 = getChildAt(i9);
                C0541e m44744a2 = m44744a(childAt6);
                if (m44744a2 != null) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt6.getLayoutParams();
                    this.f2910P.m45165a(m44744a2);
                    m44740a(isInEditMode, childAt6, m44744a2, layoutParams2, this.f2929l);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m44739b() {
        this.f2911Q = true;
        this.f2927j = -1;
        this.f2928k = -1;
        this.f2913S = -1;
        this.f2914T = -1;
        this.f2915U = 0;
        this.f2916V = 0;
    }

    /* renamed from: c */
    public static LayoutParams m44737c() {
        return new LayoutParams(-2, -2);
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

    private final C0541e getTargetWidget(int i) {
        if (i == 0) {
            return this.f2910P;
        }
        View view = this.f2909O.get(i);
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
            return this.f2910P;
        }
        if (view2 != null) {
            return ((LayoutParams) view2.getLayoutParams()).f2974an;
        }
        return null;
    }

    /* renamed from: a */
    public final C0541e m44744a(View view) {
        if (view == this) {
            return this.f2910P;
        }
        if (view != null) {
            return ((LayoutParams) view.getLayoutParams()).f2974an;
        }
        return null;
    }

    /* renamed from: a */
    public final Object m44741a(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            HashMap<String, Integer> hashMap = this.f2926i;
            if (hashMap != null && hashMap.containsKey(str)) {
                return this.f2926i.get(str);
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public final void m44746a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        int i5 = this.f2917W.f3006e;
        int i6 = i3 + this.f2917W.f3005d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.f2927j = i6;
            this.f2928k = i7;
            return;
        }
        int resolveSizeAndState = resolveSizeAndState(i6, i, 0);
        int resolveSizeAndState2 = resolveSizeAndState(i7, i2, 0);
        int min = Math.min(this.f2921d, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f2922e, resolveSizeAndState2 & 16777215);
        int i8 = min;
        if (z) {
            i8 = min | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        int i9 = min2;
        if (z2) {
            i9 = min2 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(i8, i9);
        this.f2927j = i8;
        this.f2928k = i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00a1, code lost:
        if (isRtl() != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m44743a(androidx.constraintlayout.p026a.p027a.C0544f r10, int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m44743a(androidx.constraintlayout.a.a.f, int, int, int):void");
    }

    /* renamed from: a */
    public final void m44740a(boolean z, View view, C0541e c0541e, LayoutParams layoutParams, SparseArray<C0541e> sparseArray) {
        C0541e c0541e2;
        C0541e c0541e3;
        C0541e c0541e4;
        C0541e c0541e5;
        layoutParams.m44735a();
        layoutParams.f2975ao = false;
        c0541e.f2091ak = view.getVisibility();
        if (layoutParams.f2962ab) {
            c0541e.f2045D = true;
            c0541e.f2091ak = 8;
        }
        c0541e.f2090aj = view;
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).mo44762a(c0541e, this.f2910P.f2163d);
        }
        if (layoutParams.f2959Z) {
            C0547h c0547h = (C0547h) c0541e;
            int i = layoutParams.f2971ak;
            int i2 = layoutParams.f2972al;
            float f = layoutParams.f2973am;
            if (Build.VERSION.SDK_INT < 17) {
                i = layoutParams.f2960a;
                i2 = layoutParams.f2976b;
                f = layoutParams.f2977c;
            }
            if (f != -1.0f) {
                c0547h.m45194a(f);
                return;
            } else if (i != -1) {
                c0547h.m45184p(i);
                return;
            } else if (i2 == -1) {
                return;
            } else {
                c0547h.m45183q(i2);
                return;
            }
        }
        int i3 = layoutParams.f2964ad;
        int i4 = layoutParams.f2965ae;
        int i5 = layoutParams.f2966af;
        int i6 = layoutParams.f2967ag;
        int i7 = layoutParams.f2968ah;
        int i8 = layoutParams.f2969ai;
        float f2 = layoutParams.f2970aj;
        if (Build.VERSION.SDK_INT < 17) {
            int i9 = layoutParams.f2978d;
            int i10 = layoutParams.f2979e;
            int i11 = layoutParams.f2980f;
            int i12 = layoutParams.f2981g;
            int i13 = layoutParams.f2994t;
            i8 = layoutParams.f2996v;
            f2 = layoutParams.f3000z;
            int i14 = i9;
            int i15 = i10;
            if (i9 == -1) {
                i14 = i9;
                i15 = i10;
                if (i10 == -1) {
                    if (layoutParams.f2991q != -1) {
                        i14 = layoutParams.f2991q;
                        i15 = i10;
                    } else {
                        i14 = i9;
                        i15 = i10;
                        if (layoutParams.f2990p != -1) {
                            i15 = layoutParams.f2990p;
                            i14 = i9;
                        }
                    }
                }
            }
            i5 = i11;
            int i16 = i12;
            if (i11 == -1) {
                i5 = i11;
                i16 = i12;
                if (i12 == -1) {
                    if (layoutParams.f2992r != -1) {
                        i5 = layoutParams.f2992r;
                        i16 = i12;
                    } else {
                        i5 = i11;
                        i16 = i12;
                        if (layoutParams.f2993s != -1) {
                            i16 = layoutParams.f2993s;
                            i5 = i11;
                        }
                    }
                }
            }
            int i17 = i15;
            i3 = i14;
            i4 = i17;
            i6 = i16;
            i7 = i13;
        }
        if (layoutParams.f2987m != -1) {
            C0541e c0541e6 = sparseArray.get(layoutParams.f2987m);
            if (c0541e6 != null) {
                c0541e.m45290a(c0541e6, layoutParams.f2989o, layoutParams.f2988n);
            }
        } else {
            if (i3 != -1) {
                C0541e c0541e7 = sparseArray.get(i3);
                if (c0541e7 != null) {
                    c0541e.m45292a(C0538d.EnumC0540a.LEFT, c0541e7, C0538d.EnumC0540a.LEFT, layoutParams.leftMargin, i7);
                }
            } else if (i4 != -1 && (c0541e5 = sparseArray.get(i4)) != null) {
                c0541e.m45292a(C0538d.EnumC0540a.LEFT, c0541e5, C0538d.EnumC0540a.RIGHT, layoutParams.leftMargin, i7);
            }
            if (i5 != -1) {
                C0541e c0541e8 = sparseArray.get(i5);
                if (c0541e8 != null) {
                    c0541e.m45292a(C0538d.EnumC0540a.RIGHT, c0541e8, C0538d.EnumC0540a.LEFT, layoutParams.rightMargin, i8);
                }
            } else if (i6 != -1 && (c0541e4 = sparseArray.get(i6)) != null) {
                c0541e.m45292a(C0538d.EnumC0540a.RIGHT, c0541e4, C0538d.EnumC0540a.RIGHT, layoutParams.rightMargin, i8);
            }
            if (layoutParams.f2982h != -1) {
                C0541e c0541e9 = sparseArray.get(layoutParams.f2982h);
                if (c0541e9 != null) {
                    c0541e.m45292a(C0538d.EnumC0540a.TOP, c0541e9, C0538d.EnumC0540a.TOP, layoutParams.topMargin, layoutParams.f2995u);
                }
            } else if (layoutParams.f2983i != -1 && (c0541e3 = sparseArray.get(layoutParams.f2983i)) != null) {
                c0541e.m45292a(C0538d.EnumC0540a.TOP, c0541e3, C0538d.EnumC0540a.BOTTOM, layoutParams.topMargin, layoutParams.f2995u);
            }
            if (layoutParams.f2984j != -1) {
                C0541e c0541e10 = sparseArray.get(layoutParams.f2984j);
                if (c0541e10 != null) {
                    c0541e.m45292a(C0538d.EnumC0540a.BOTTOM, c0541e10, C0538d.EnumC0540a.TOP, layoutParams.bottomMargin, layoutParams.f2997w);
                }
            } else if (layoutParams.f2985k != -1 && (c0541e2 = sparseArray.get(layoutParams.f2985k)) != null) {
                c0541e.m45292a(C0538d.EnumC0540a.BOTTOM, c0541e2, C0538d.EnumC0540a.BOTTOM, layoutParams.bottomMargin, layoutParams.f2997w);
            }
            if (layoutParams.f2986l != -1) {
                View view2 = this.f2909O.get(layoutParams.f2986l);
                C0541e c0541e11 = sparseArray.get(layoutParams.f2986l);
                if (c0541e11 != null && view2 != null && (view2.getLayoutParams() instanceof LayoutParams)) {
                    LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                    layoutParams.f2958Y = true;
                    layoutParams2.f2958Y = true;
                    c0541e.mo45193a(C0538d.EnumC0540a.BASELINE).m45306a(c0541e11.mo45193a(C0538d.EnumC0540a.BASELINE), 0, -1, true);
                    c0541e.f2044C = true;
                    layoutParams2.f2974an.f2044C = true;
                    c0541e.mo45193a(C0538d.EnumC0540a.TOP).m45300f();
                    c0541e.mo45193a(C0538d.EnumC0540a.BOTTOM).m45300f();
                }
            }
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                c0541e.f2088ah = f2;
            }
            if (layoutParams.f2934A >= BitmapDescriptorFactory.HUE_RED) {
                c0541e.f2089ai = layoutParams.f2934A;
            }
        }
        if (z && (layoutParams.f2950Q != -1 || layoutParams.f2951R != -1)) {
            c0541e.m45277d(layoutParams.f2950Q, layoutParams.f2951R);
        }
        if (layoutParams.f2956W) {
            c0541e.f2059R[0] = C0541e.EnumC0543a.FIXED;
            c0541e.m45271g(layoutParams.width);
            if (layoutParams.width == -2) {
                c0541e.f2059R[0] = C0541e.EnumC0543a.WRAP_CONTENT;
            }
        } else if (layoutParams.width == -1) {
            if (layoutParams.f2953T) {
                c0541e.f2059R[0] = C0541e.EnumC0543a.MATCH_CONSTRAINT;
            } else {
                c0541e.f2059R[0] = C0541e.EnumC0543a.MATCH_PARENT;
            }
            c0541e.mo45193a(C0538d.EnumC0540a.LEFT).f2037g = layoutParams.leftMargin;
            c0541e.mo45193a(C0538d.EnumC0540a.RIGHT).f2037g = layoutParams.rightMargin;
        } else {
            c0541e.f2059R[0] = C0541e.EnumC0543a.MATCH_CONSTRAINT;
            c0541e.m45271g(0);
        }
        if (layoutParams.f2957X) {
            c0541e.f2059R[1] = C0541e.EnumC0543a.FIXED;
            c0541e.m45269h(layoutParams.height);
            if (layoutParams.height == -2) {
                c0541e.f2059R[1] = C0541e.EnumC0543a.WRAP_CONTENT;
            }
        } else if (layoutParams.height == -1) {
            if (layoutParams.f2954U) {
                c0541e.f2059R[1] = C0541e.EnumC0543a.MATCH_CONSTRAINT;
            } else {
                c0541e.f2059R[1] = C0541e.EnumC0543a.MATCH_PARENT;
            }
            c0541e.mo45193a(C0538d.EnumC0540a.TOP).f2037g = layoutParams.topMargin;
            c0541e.mo45193a(C0538d.EnumC0540a.BOTTOM).f2037g = layoutParams.bottomMargin;
        } else {
            c0541e.f2059R[1] = C0541e.EnumC0543a.MATCH_CONSTRAINT;
            c0541e.m45269h(0);
        }
        c0541e.m45286a(layoutParams.f2935B);
        c0541e.f2070aB[0] = layoutParams.f2938E;
        c0541e.f2070aB[1] = layoutParams.f2939F;
        c0541e.f2104ax = layoutParams.f2940G;
        c0541e.f2105ay = layoutParams.f2941H;
        c0541e.m45295a(layoutParams.f2942I, layoutParams.f2944K, layoutParams.f2946M, layoutParams.f2948O);
        c0541e.m45282b(layoutParams.f2943J, layoutParams.f2945L, layoutParams.f2947N, layoutParams.f2949P);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    /* renamed from: c */
    protected void mo44736c(int i) {
        this.f2912R = new C0677b(getContext(), this, i);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f2918a;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f2918a.get(i).mo44760a(this);
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

    @Override // android.view.View
    public void forceLayout() {
        m44739b();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m44737c();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getOptimizationLevel() {
        return this.f2910P.f2151aX;
    }

    public View getViewById(int i) {
        return this.f2909O.get(i);
    }

    public boolean isRtl() {
        if (Build.VERSION.SDK_INT >= 17) {
            return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            C0541e c0541e = layoutParams.f2974an;
            if ((childAt.getVisibility() != 8 || layoutParams.f2959Z || layoutParams.f2961aa || layoutParams.f2963ac || isInEditMode) && !layoutParams.f2962ab) {
                int m45261m = c0541e.m45261m();
                int m45259n = c0541e.m45259n();
                int m45257o = c0541e.m45257o() + m45261m;
                int m45255p = c0541e.m45255p() + m45259n;
                childAt.layout(m45261m, m45259n, m45257o, m45255p);
                if ((childAt instanceof Placeholder) && (view = ((Placeholder) childAt).f3025b) != null) {
                    view.setVisibility(0);
                    view.layout(m45261m, m45259n, m45257o, m45255p);
                }
            }
        }
        int size = this.f2918a.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f2918a.get(i6).mo44731a();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.f2911Q) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.f2911Q = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.f2911Q) {
            int i4 = this.f2931n;
            if (i4 == i && this.f2932o == i2) {
                m44746a(i, i2, this.f2910P.m45257o(), this.f2910P.m45255p(), this.f2910P.f2153aZ, this.f2910P.f2155ba);
                return;
            } else if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f2932o) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f2910P.m45255p()) {
                this.f2931n = i;
                this.f2932o = i2;
                m44746a(i, i2, this.f2910P.m45257o(), this.f2910P.m45255p(), this.f2910P.f2153aZ, this.f2910P.f2155ba);
                return;
            }
        }
        this.f2931n = i;
        this.f2932o = i2;
        this.f2910P.f2163d = isRtl();
        if (this.f2911Q) {
            this.f2911Q = false;
            if (m44747a()) {
                this.f2910P.m45227e();
            }
        }
        m44743a(this.f2910P, this.f2923f, i, i2);
        m44746a(i, i2, this.f2910P.m45257o(), this.f2910P.m45255p(), this.f2910P.f2153aZ, this.f2910P.f2155ba);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        C0541e m44744a = m44744a(view);
        if ((view instanceof Guideline) && !(m44744a instanceof C0547h)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f2974an = new C0547h();
            layoutParams.f2959Z = true;
            ((C0547h) layoutParams.f2974an).m45185o(layoutParams.f2952S);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m44753c();
            ((LayoutParams) view.getLayoutParams()).f2961aa = true;
            if (!this.f2918a.contains(constraintHelper)) {
                this.f2918a.add(constraintHelper);
            }
        }
        this.f2909O.put(view.getId(), view);
        this.f2911Q = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f2909O.remove(view.getId());
        this.f2910P.m45163b(m44744a(view));
        this.f2918a.remove(view);
        this.f2911Q = true;
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
        m44739b();
        super.requestLayout();
    }

    public void setConstraintSet(C0680c c0680c) {
        this.f2924g = c0680c;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f2926i == null) {
            this.f2926i = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f2926i.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f2909O.remove(getId());
        super.setId(i);
        this.f2909O.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f2922e) {
            return;
        }
        this.f2922e = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f2921d) {
            return;
        }
        this.f2921d = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f2920c) {
            return;
        }
        this.f2920c = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f2919b) {
            return;
        }
        this.f2919b = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0686d abstractC0686d) {
        this.f2930m = abstractC0686d;
        C0677b c0677b = this.f2912R;
        if (c0677b != null) {
            c0677b.f3040d = abstractC0686d;
        }
    }

    public void setOptimizationLevel(int i) {
        this.f2923f = i;
        this.f2910P.m45225o(i);
    }

    public void setState(int i, int i2, int i3) {
        C0677b c0677b = this.f2912R;
        if (c0677b != null) {
            c0677b.m44718a(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
