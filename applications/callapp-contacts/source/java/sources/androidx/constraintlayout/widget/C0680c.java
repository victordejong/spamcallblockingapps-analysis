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
import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.motion.widget.C0591a;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c.class */
public final class C0680c {

    /* renamed from: e */
    private static final int[] f3054e = {0, 4, 8};

    /* renamed from: f */
    private static SparseIntArray f3055f;

    /* renamed from: a */
    public boolean f3056a;

    /* renamed from: d */
    private HashMap<String, C0674a> f3059d = new HashMap<>();

    /* renamed from: b */
    public boolean f3057b = true;

    /* renamed from: c */
    public HashMap<Integer, C0681a> f3058c = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$a.class */
    public static final class C0681a {

        /* renamed from: a */
        int f3060a;

        /* renamed from: b */
        public final C0684d f3061b = new C0684d();

        /* renamed from: c */
        public final C0683c f3062c = new C0683c();

        /* renamed from: d */
        public final C0682b f3063d = new C0682b();

        /* renamed from: e */
        public final C0685e f3064e = new C0685e();

        /* renamed from: f */
        public HashMap<String, C0674a> f3065f = new HashMap<>();

        /* renamed from: a */
        public final void m44686a(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f3060a = i;
            this.f3063d.f3110h = layoutParams.f2978d;
            this.f3063d.f3111i = layoutParams.f2979e;
            this.f3063d.f3112j = layoutParams.f2980f;
            this.f3063d.f3113k = layoutParams.f2981g;
            this.f3063d.f3114l = layoutParams.f2982h;
            this.f3063d.f3115m = layoutParams.f2983i;
            this.f3063d.f3116n = layoutParams.f2984j;
            this.f3063d.f3117o = layoutParams.f2985k;
            this.f3063d.f3118p = layoutParams.f2986l;
            this.f3063d.f3119q = layoutParams.f2990p;
            this.f3063d.f3120r = layoutParams.f2991q;
            this.f3063d.f3121s = layoutParams.f2992r;
            this.f3063d.f3122t = layoutParams.f2993s;
            this.f3063d.f3123u = layoutParams.f3000z;
            this.f3063d.f3124v = layoutParams.f2934A;
            this.f3063d.f3125w = layoutParams.f2935B;
            this.f3063d.f3126x = layoutParams.f2987m;
            this.f3063d.f3127y = layoutParams.f2988n;
            this.f3063d.f3128z = layoutParams.f2989o;
            this.f3063d.f3067A = layoutParams.f2950Q;
            this.f3063d.f3068B = layoutParams.f2951R;
            this.f3063d.f3069C = layoutParams.f2952S;
            this.f3063d.f3109g = layoutParams.f2977c;
            this.f3063d.f3107e = layoutParams.f2960a;
            this.f3063d.f3108f = layoutParams.f2976b;
            this.f3063d.f3105c = layoutParams.width;
            this.f3063d.f3106d = layoutParams.height;
            this.f3063d.f3070D = layoutParams.leftMargin;
            this.f3063d.f3071E = layoutParams.rightMargin;
            this.f3063d.f3072F = layoutParams.topMargin;
            this.f3063d.f3073G = layoutParams.bottomMargin;
            this.f3063d.f3082P = layoutParams.f2939F;
            this.f3063d.f3083Q = layoutParams.f2938E;
            this.f3063d.f3085S = layoutParams.f2941H;
            this.f3063d.f3084R = layoutParams.f2940G;
            this.f3063d.f3101ah = layoutParams.f2953T;
            this.f3063d.f3102ai = layoutParams.f2954U;
            this.f3063d.f3086T = layoutParams.f2942I;
            this.f3063d.f3087U = layoutParams.f2943J;
            this.f3063d.f3088V = layoutParams.f2946M;
            this.f3063d.f3089W = layoutParams.f2947N;
            this.f3063d.f3090X = layoutParams.f2944K;
            this.f3063d.f3091Y = layoutParams.f2945L;
            this.f3063d.f3092Z = layoutParams.f2948O;
            this.f3063d.f3094aa = layoutParams.f2949P;
            this.f3063d.f3100ag = layoutParams.f2955V;
            this.f3063d.f3077K = layoutParams.f2995u;
            this.f3063d.f3079M = layoutParams.f2997w;
            this.f3063d.f3076J = layoutParams.f2994t;
            this.f3063d.f3078L = layoutParams.f2996v;
            this.f3063d.f3081O = layoutParams.f2998x;
            this.f3063d.f3080N = layoutParams.f2999y;
            if (Build.VERSION.SDK_INT >= 17) {
                this.f3063d.f3074H = layoutParams.getMarginEnd();
                this.f3063d.f3075I = layoutParams.getMarginStart();
            }
        }

        /* renamed from: a */
        public final void m44685a(int i, Constraints.LayoutParams layoutParams) {
            m44686a(i, (ConstraintLayout.LayoutParams) layoutParams);
            this.f3061b.f3140d = layoutParams.f3013ap;
            this.f3064e.f3144b = layoutParams.f3016as;
            this.f3064e.f3145c = layoutParams.f3017at;
            this.f3064e.f3146d = layoutParams.f3018au;
            this.f3064e.f3147e = layoutParams.f3019av;
            this.f3064e.f3148f = layoutParams.f3020aw;
            this.f3064e.f3149g = layoutParams.f3021ax;
            this.f3064e.f3150h = layoutParams.f3022ay;
            this.f3064e.f3151i = layoutParams.f3023az;
            this.f3064e.f3152j = layoutParams.f3011aA;
            this.f3064e.f3153k = layoutParams.f3012aB;
            this.f3064e.f3155m = layoutParams.f3015ar;
            this.f3064e.f3154l = layoutParams.f3014aq;
        }

        /* renamed from: a */
        public final void m44684a(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.f2978d = this.f3063d.f3110h;
            layoutParams.f2979e = this.f3063d.f3111i;
            layoutParams.f2980f = this.f3063d.f3112j;
            layoutParams.f2981g = this.f3063d.f3113k;
            layoutParams.f2982h = this.f3063d.f3114l;
            layoutParams.f2983i = this.f3063d.f3115m;
            layoutParams.f2984j = this.f3063d.f3116n;
            layoutParams.f2985k = this.f3063d.f3117o;
            layoutParams.f2986l = this.f3063d.f3118p;
            layoutParams.f2990p = this.f3063d.f3119q;
            layoutParams.f2991q = this.f3063d.f3120r;
            layoutParams.f2992r = this.f3063d.f3121s;
            layoutParams.f2993s = this.f3063d.f3122t;
            layoutParams.leftMargin = this.f3063d.f3070D;
            layoutParams.rightMargin = this.f3063d.f3071E;
            layoutParams.topMargin = this.f3063d.f3072F;
            layoutParams.bottomMargin = this.f3063d.f3073G;
            layoutParams.f2998x = this.f3063d.f3081O;
            layoutParams.f2999y = this.f3063d.f3080N;
            layoutParams.f2995u = this.f3063d.f3077K;
            layoutParams.f2997w = this.f3063d.f3079M;
            layoutParams.f3000z = this.f3063d.f3123u;
            layoutParams.f2934A = this.f3063d.f3124v;
            layoutParams.f2987m = this.f3063d.f3126x;
            layoutParams.f2988n = this.f3063d.f3127y;
            layoutParams.f2989o = this.f3063d.f3128z;
            layoutParams.f2935B = this.f3063d.f3125w;
            layoutParams.f2950Q = this.f3063d.f3067A;
            layoutParams.f2951R = this.f3063d.f3068B;
            layoutParams.f2939F = this.f3063d.f3082P;
            layoutParams.f2938E = this.f3063d.f3083Q;
            layoutParams.f2941H = this.f3063d.f3085S;
            layoutParams.f2940G = this.f3063d.f3084R;
            layoutParams.f2953T = this.f3063d.f3101ah;
            layoutParams.f2954U = this.f3063d.f3102ai;
            layoutParams.f2942I = this.f3063d.f3086T;
            layoutParams.f2943J = this.f3063d.f3087U;
            layoutParams.f2946M = this.f3063d.f3088V;
            layoutParams.f2947N = this.f3063d.f3089W;
            layoutParams.f2944K = this.f3063d.f3090X;
            layoutParams.f2945L = this.f3063d.f3091Y;
            layoutParams.f2948O = this.f3063d.f3092Z;
            layoutParams.f2949P = this.f3063d.f3094aa;
            layoutParams.f2952S = this.f3063d.f3069C;
            layoutParams.f2977c = this.f3063d.f3109g;
            layoutParams.f2960a = this.f3063d.f3107e;
            layoutParams.f2976b = this.f3063d.f3108f;
            layoutParams.width = this.f3063d.f3105c;
            layoutParams.height = this.f3063d.f3106d;
            if (this.f3063d.f3100ag != null) {
                layoutParams.f2955V = this.f3063d.f3100ag;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f3063d.f3075I);
                layoutParams.setMarginEnd(this.f3063d.f3074H);
            }
            layoutParams.m44735a();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            C0681a c0681a = new C0681a();
            c0681a.f3063d.m44682a(this.f3063d);
            c0681a.f3062c.m44680a(this.f3062c);
            c0681a.f3061b.m44678a(this.f3061b);
            c0681a.f3064e.m44676a(this.f3064e);
            c0681a.f3060a = this.f3060a;
            return c0681a;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$b.class */
    public static final class C0682b {

        /* renamed from: ak */
        private static SparseIntArray f3066ak;

        /* renamed from: ae */
        public int[] f3098ae;

        /* renamed from: af */
        public String f3099af;

        /* renamed from: ag */
        public String f3100ag;

        /* renamed from: c */
        public int f3105c;

        /* renamed from: d */
        public int f3106d;

        /* renamed from: a */
        public boolean f3093a = false;

        /* renamed from: b */
        public boolean f3104b = false;

        /* renamed from: e */
        public int f3107e = -1;

        /* renamed from: f */
        public int f3108f = -1;

        /* renamed from: g */
        public float f3109g = -1.0f;

        /* renamed from: h */
        public int f3110h = -1;

        /* renamed from: i */
        public int f3111i = -1;

        /* renamed from: j */
        public int f3112j = -1;

        /* renamed from: k */
        public int f3113k = -1;

        /* renamed from: l */
        public int f3114l = -1;

        /* renamed from: m */
        public int f3115m = -1;

        /* renamed from: n */
        public int f3116n = -1;

        /* renamed from: o */
        public int f3117o = -1;

        /* renamed from: p */
        public int f3118p = -1;

        /* renamed from: q */
        public int f3119q = -1;

        /* renamed from: r */
        public int f3120r = -1;

        /* renamed from: s */
        public int f3121s = -1;

        /* renamed from: t */
        public int f3122t = -1;

        /* renamed from: u */
        public float f3123u = 0.5f;

        /* renamed from: v */
        public float f3124v = 0.5f;

        /* renamed from: w */
        public String f3125w = null;

        /* renamed from: x */
        public int f3126x = -1;

        /* renamed from: y */
        public int f3127y = 0;

        /* renamed from: z */
        public float f3128z = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: A */
        public int f3067A = -1;

        /* renamed from: B */
        public int f3068B = -1;

        /* renamed from: C */
        public int f3069C = -1;

        /* renamed from: D */
        public int f3070D = -1;

        /* renamed from: E */
        public int f3071E = -1;

        /* renamed from: F */
        public int f3072F = -1;

        /* renamed from: G */
        public int f3073G = -1;

        /* renamed from: H */
        public int f3074H = -1;

        /* renamed from: I */
        public int f3075I = -1;

        /* renamed from: J */
        public int f3076J = -1;

        /* renamed from: K */
        public int f3077K = -1;

        /* renamed from: L */
        public int f3078L = -1;

        /* renamed from: M */
        public int f3079M = -1;

        /* renamed from: N */
        public int f3080N = -1;

        /* renamed from: O */
        public int f3081O = -1;

        /* renamed from: P */
        public float f3082P = -1.0f;

        /* renamed from: Q */
        public float f3083Q = -1.0f;

        /* renamed from: R */
        public int f3084R = 0;

        /* renamed from: S */
        public int f3085S = 0;

        /* renamed from: T */
        public int f3086T = 0;

        /* renamed from: U */
        public int f3087U = 0;

        /* renamed from: V */
        public int f3088V = -1;

        /* renamed from: W */
        public int f3089W = -1;

        /* renamed from: X */
        public int f3090X = -1;

        /* renamed from: Y */
        public int f3091Y = -1;

        /* renamed from: Z */
        public float f3092Z = 1.0f;

        /* renamed from: aa */
        public float f3094aa = 1.0f;

        /* renamed from: ab */
        public int f3095ab = -1;

        /* renamed from: ac */
        public int f3096ac = 0;

        /* renamed from: ad */
        public int f3097ad = -1;

        /* renamed from: ah */
        public boolean f3101ah = false;

        /* renamed from: ai */
        public boolean f3102ai = false;

        /* renamed from: aj */
        public boolean f3103aj = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3066ak = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.Layout_layout_constraintLeft_toLeftOf, 24);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintLeft_toRightOf, 25);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintRight_toLeftOf, 28);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintRight_toRightOf, 29);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintTop_toTopOf, 35);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintTop_toBottomOf, 34);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintBottom_toTopOf, 4);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintBottom_toBottomOf, 3);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f3066ak.append(C0687e.C0689b.Layout_layout_editor_absoluteX, 6);
            f3066ak.append(C0687e.C0689b.Layout_layout_editor_absoluteY, 7);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintGuide_begin, 17);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintGuide_end, 18);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintGuide_percent, 19);
            f3066ak.append(C0687e.C0689b.Layout_android_orientation, 26);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintStart_toEndOf, 31);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintStart_toStartOf, 32);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintEnd_toStartOf, 10);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintEnd_toEndOf, 9);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginLeft, 13);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginTop, 16);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginRight, 14);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginBottom, 11);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginStart, 15);
            f3066ak.append(C0687e.C0689b.Layout_layout_goneMarginEnd, 12);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintVertical_weight, 38);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintHorizontal_weight, 37);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintHorizontal_chainStyle, 39);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintVertical_chainStyle, 40);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintHorizontal_bias, 20);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintVertical_bias, 36);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintDimensionRatio, 5);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintLeft_creator, 76);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintTop_creator, 76);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintRight_creator, 76);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintBottom_creator, 76);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintBaseline_creator, 76);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginLeft, 23);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginRight, 27);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginStart, 30);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginEnd, 8);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginTop, 33);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_marginBottom, 2);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_width, 22);
            f3066ak.append(C0687e.C0689b.Layout_android_layout_height, 21);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintCircle, 61);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintCircleRadius, 62);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintCircleAngle, 63);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintWidth_percent, 69);
            f3066ak.append(C0687e.C0689b.Layout_layout_constraintHeight_percent, 70);
            f3066ak.append(C0687e.C0689b.Layout_chainUseRtl, 71);
            f3066ak.append(C0687e.C0689b.Layout_barrierDirection, 72);
            f3066ak.append(C0687e.C0689b.Layout_barrierMargin, 73);
            f3066ak.append(C0687e.C0689b.Layout_constraint_referenced_ids, 74);
            f3066ak.append(C0687e.C0689b.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        final void m44683a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.Layout);
            this.f3104b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f3066ak.get(index);
                if (i2 == 80) {
                    this.f3101ah = obtainStyledAttributes.getBoolean(index, this.f3101ah);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f3118p = C0680c.m44694b(obtainStyledAttributes, index, this.f3118p);
                            continue;
                        case 2:
                            this.f3073G = obtainStyledAttributes.getDimensionPixelSize(index, this.f3073G);
                            continue;
                        case 3:
                            this.f3117o = C0680c.m44694b(obtainStyledAttributes, index, this.f3117o);
                            continue;
                        case 4:
                            this.f3116n = C0680c.m44694b(obtainStyledAttributes, index, this.f3116n);
                            continue;
                        case 5:
                            this.f3125w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f3067A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3067A);
                            continue;
                        case 7:
                            this.f3068B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3068B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f3074H = obtainStyledAttributes.getDimensionPixelSize(index, this.f3074H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f3122t = C0680c.m44694b(obtainStyledAttributes, index, this.f3122t);
                            continue;
                        case 10:
                            this.f3121s = C0680c.m44694b(obtainStyledAttributes, index, this.f3121s);
                            continue;
                        case 11:
                            this.f3079M = obtainStyledAttributes.getDimensionPixelSize(index, this.f3079M);
                            continue;
                        case 12:
                            this.f3080N = obtainStyledAttributes.getDimensionPixelSize(index, this.f3080N);
                            continue;
                        case 13:
                            this.f3076J = obtainStyledAttributes.getDimensionPixelSize(index, this.f3076J);
                            continue;
                        case 14:
                            this.f3078L = obtainStyledAttributes.getDimensionPixelSize(index, this.f3078L);
                            continue;
                        case 15:
                            this.f3081O = obtainStyledAttributes.getDimensionPixelSize(index, this.f3081O);
                            continue;
                        case 16:
                            this.f3077K = obtainStyledAttributes.getDimensionPixelSize(index, this.f3077K);
                            continue;
                        case 17:
                            this.f3107e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3107e);
                            continue;
                        case 18:
                            this.f3108f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f3108f);
                            continue;
                        case 19:
                            this.f3109g = obtainStyledAttributes.getFloat(index, this.f3109g);
                            continue;
                        case 20:
                            this.f3123u = obtainStyledAttributes.getFloat(index, this.f3123u);
                            continue;
                        case 21:
                            this.f3106d = obtainStyledAttributes.getLayoutDimension(index, this.f3106d);
                            continue;
                        case 22:
                            this.f3105c = obtainStyledAttributes.getLayoutDimension(index, this.f3105c);
                            continue;
                        case 23:
                            this.f3070D = obtainStyledAttributes.getDimensionPixelSize(index, this.f3070D);
                            continue;
                        case 24:
                            this.f3110h = C0680c.m44694b(obtainStyledAttributes, index, this.f3110h);
                            continue;
                        case 25:
                            this.f3111i = C0680c.m44694b(obtainStyledAttributes, index, this.f3111i);
                            continue;
                        case 26:
                            this.f3069C = obtainStyledAttributes.getInt(index, this.f3069C);
                            continue;
                        case 27:
                            this.f3071E = obtainStyledAttributes.getDimensionPixelSize(index, this.f3071E);
                            continue;
                        case 28:
                            this.f3112j = C0680c.m44694b(obtainStyledAttributes, index, this.f3112j);
                            continue;
                        case 29:
                            this.f3113k = C0680c.m44694b(obtainStyledAttributes, index, this.f3113k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f3075I = obtainStyledAttributes.getDimensionPixelSize(index, this.f3075I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f3119q = C0680c.m44694b(obtainStyledAttributes, index, this.f3119q);
                            continue;
                        case 32:
                            this.f3120r = C0680c.m44694b(obtainStyledAttributes, index, this.f3120r);
                            continue;
                        case 33:
                            this.f3072F = obtainStyledAttributes.getDimensionPixelSize(index, this.f3072F);
                            continue;
                        case 34:
                            this.f3115m = C0680c.m44694b(obtainStyledAttributes, index, this.f3115m);
                            continue;
                        case 35:
                            this.f3114l = C0680c.m44694b(obtainStyledAttributes, index, this.f3114l);
                            continue;
                        case 36:
                            this.f3124v = obtainStyledAttributes.getFloat(index, this.f3124v);
                            continue;
                        case 37:
                            this.f3083Q = obtainStyledAttributes.getFloat(index, this.f3083Q);
                            continue;
                        case 38:
                            this.f3082P = obtainStyledAttributes.getFloat(index, this.f3082P);
                            continue;
                        case 39:
                            this.f3084R = obtainStyledAttributes.getInt(index, this.f3084R);
                            continue;
                        case 40:
                            this.f3085S = obtainStyledAttributes.getInt(index, this.f3085S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f3086T = obtainStyledAttributes.getInt(index, this.f3086T);
                                    continue;
                                case 55:
                                    this.f3087U = obtainStyledAttributes.getInt(index, this.f3087U);
                                    continue;
                                case 56:
                                    this.f3088V = obtainStyledAttributes.getDimensionPixelSize(index, this.f3088V);
                                    continue;
                                case 57:
                                    this.f3089W = obtainStyledAttributes.getDimensionPixelSize(index, this.f3089W);
                                    continue;
                                case 58:
                                    this.f3090X = obtainStyledAttributes.getDimensionPixelSize(index, this.f3090X);
                                    continue;
                                case 59:
                                    this.f3091Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f3091Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f3126x = C0680c.m44694b(obtainStyledAttributes, index, this.f3126x);
                                            continue;
                                        case 62:
                                            this.f3127y = obtainStyledAttributes.getDimensionPixelSize(index, this.f3127y);
                                            continue;
                                        case 63:
                                            this.f3128z = obtainStyledAttributes.getFloat(index, this.f3128z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f3092Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.f3094aa = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    continue;
                                                case 72:
                                                    this.f3095ab = obtainStyledAttributes.getInt(index, this.f3095ab);
                                                    continue;
                                                case 73:
                                                    this.f3096ac = obtainStyledAttributes.getDimensionPixelSize(index, this.f3096ac);
                                                    continue;
                                                case 74:
                                                    this.f3099af = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.f3103aj = obtainStyledAttributes.getBoolean(index, this.f3103aj);
                                                    continue;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3066ak.get(index));
                                                    continue;
                                                case 77:
                                                    this.f3100ag = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f3066ak.get(index));
                                                    continue;
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f3102ai = obtainStyledAttributes.getBoolean(index, this.f3102ai);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final void m44682a(C0682b c0682b) {
            this.f3093a = c0682b.f3093a;
            this.f3105c = c0682b.f3105c;
            this.f3104b = c0682b.f3104b;
            this.f3106d = c0682b.f3106d;
            this.f3107e = c0682b.f3107e;
            this.f3108f = c0682b.f3108f;
            this.f3109g = c0682b.f3109g;
            this.f3110h = c0682b.f3110h;
            this.f3111i = c0682b.f3111i;
            this.f3112j = c0682b.f3112j;
            this.f3113k = c0682b.f3113k;
            this.f3114l = c0682b.f3114l;
            this.f3115m = c0682b.f3115m;
            this.f3116n = c0682b.f3116n;
            this.f3117o = c0682b.f3117o;
            this.f3118p = c0682b.f3118p;
            this.f3119q = c0682b.f3119q;
            this.f3120r = c0682b.f3120r;
            this.f3121s = c0682b.f3121s;
            this.f3122t = c0682b.f3122t;
            this.f3123u = c0682b.f3123u;
            this.f3124v = c0682b.f3124v;
            this.f3125w = c0682b.f3125w;
            this.f3126x = c0682b.f3126x;
            this.f3127y = c0682b.f3127y;
            this.f3128z = c0682b.f3128z;
            this.f3067A = c0682b.f3067A;
            this.f3068B = c0682b.f3068B;
            this.f3069C = c0682b.f3069C;
            this.f3070D = c0682b.f3070D;
            this.f3071E = c0682b.f3071E;
            this.f3072F = c0682b.f3072F;
            this.f3073G = c0682b.f3073G;
            this.f3074H = c0682b.f3074H;
            this.f3075I = c0682b.f3075I;
            this.f3076J = c0682b.f3076J;
            this.f3077K = c0682b.f3077K;
            this.f3078L = c0682b.f3078L;
            this.f3079M = c0682b.f3079M;
            this.f3080N = c0682b.f3080N;
            this.f3081O = c0682b.f3081O;
            this.f3082P = c0682b.f3082P;
            this.f3083Q = c0682b.f3083Q;
            this.f3084R = c0682b.f3084R;
            this.f3085S = c0682b.f3085S;
            this.f3086T = c0682b.f3086T;
            this.f3087U = c0682b.f3087U;
            this.f3088V = c0682b.f3088V;
            this.f3089W = c0682b.f3089W;
            this.f3090X = c0682b.f3090X;
            this.f3091Y = c0682b.f3091Y;
            this.f3092Z = c0682b.f3092Z;
            this.f3094aa = c0682b.f3094aa;
            this.f3095ab = c0682b.f3095ab;
            this.f3096ac = c0682b.f3096ac;
            this.f3097ad = c0682b.f3097ad;
            this.f3100ag = c0682b.f3100ag;
            int[] iArr = c0682b.f3098ae;
            if (iArr != null) {
                this.f3098ae = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f3098ae = null;
            }
            this.f3099af = c0682b.f3099af;
            this.f3101ah = c0682b.f3101ah;
            this.f3102ai = c0682b.f3102ai;
            this.f3103aj = c0682b.f3103aj;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$c.class */
    public static final class C0683c {

        /* renamed from: h */
        private static SparseIntArray f3129h;

        /* renamed from: a */
        public boolean f3130a = false;

        /* renamed from: b */
        public int f3131b = -1;

        /* renamed from: c */
        public String f3132c = null;

        /* renamed from: d */
        public int f3133d = -1;

        /* renamed from: e */
        public int f3134e = 0;

        /* renamed from: f */
        public float f3135f = Float.NaN;

        /* renamed from: g */
        public float f3136g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3129h = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.Motion_motionPathRotate, 1);
            f3129h.append(C0687e.C0689b.Motion_pathMotionArc, 2);
            f3129h.append(C0687e.C0689b.Motion_transitionEasing, 3);
            f3129h.append(C0687e.C0689b.Motion_drawPath, 4);
            f3129h.append(C0687e.C0689b.Motion_animate_relativeTo, 5);
            f3129h.append(C0687e.C0689b.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        final void m44681a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.Motion);
            this.f3130a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f3129h.get(index)) {
                    case 1:
                        this.f3136g = obtainStyledAttributes.getFloat(index, this.f3136g);
                        break;
                    case 2:
                        this.f3133d = obtainStyledAttributes.getInt(index, this.f3133d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f3132c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f3132c = C0574c.f2393c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f3134e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f3131b = C0680c.m44694b(obtainStyledAttributes, index, this.f3131b);
                        break;
                    case 6:
                        this.f3135f = obtainStyledAttributes.getFloat(index, this.f3135f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final void m44680a(C0683c c0683c) {
            this.f3130a = c0683c.f3130a;
            this.f3131b = c0683c.f3131b;
            this.f3132c = c0683c.f3132c;
            this.f3133d = c0683c.f3133d;
            this.f3134e = c0683c.f3134e;
            this.f3136g = c0683c.f3136g;
            this.f3135f = c0683c.f3135f;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$d.class */
    public static final class C0684d {

        /* renamed from: a */
        public boolean f3137a = false;

        /* renamed from: b */
        public int f3138b = 0;

        /* renamed from: c */
        public int f3139c = 0;

        /* renamed from: d */
        public float f3140d = 1.0f;

        /* renamed from: e */
        public float f3141e = Float.NaN;

        /* renamed from: a */
        final void m44679a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.PropertySet);
            this.f3137a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.PropertySet_android_alpha) {
                    this.f3140d = obtainStyledAttributes.getFloat(index, this.f3140d);
                } else if (index == C0687e.C0689b.PropertySet_android_visibility) {
                    this.f3138b = obtainStyledAttributes.getInt(index, this.f3138b);
                    this.f3138b = C0680c.f3054e[this.f3138b];
                } else if (index == C0687e.C0689b.PropertySet_visibilityMode) {
                    this.f3139c = obtainStyledAttributes.getInt(index, this.f3139c);
                } else if (index == C0687e.C0689b.PropertySet_motionProgress) {
                    this.f3141e = obtainStyledAttributes.getFloat(index, this.f3141e);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final void m44678a(C0684d c0684d) {
            this.f3137a = c0684d.f3137a;
            this.f3138b = c0684d.f3138b;
            this.f3140d = c0684d.f3140d;
            this.f3141e = c0684d.f3141e;
            this.f3139c = c0684d.f3139c;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$e.class */
    public static final class C0685e {

        /* renamed from: n */
        private static SparseIntArray f3142n;

        /* renamed from: a */
        public boolean f3143a = false;

        /* renamed from: b */
        public float f3144b = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: c */
        public float f3145c = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: d */
        public float f3146d = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: e */
        public float f3147e = 1.0f;

        /* renamed from: f */
        public float f3148f = 1.0f;

        /* renamed from: g */
        public float f3149g = Float.NaN;

        /* renamed from: h */
        public float f3150h = Float.NaN;

        /* renamed from: i */
        public float f3151i = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: j */
        public float f3152j = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: k */
        public float f3153k = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: l */
        public boolean f3154l = false;

        /* renamed from: m */
        public float f3155m = BitmapDescriptorFactory.HUE_RED;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3142n = sparseIntArray;
            sparseIntArray.append(C0687e.C0689b.Transform_android_rotation, 1);
            f3142n.append(C0687e.C0689b.Transform_android_rotationX, 2);
            f3142n.append(C0687e.C0689b.Transform_android_rotationY, 3);
            f3142n.append(C0687e.C0689b.Transform_android_scaleX, 4);
            f3142n.append(C0687e.C0689b.Transform_android_scaleY, 5);
            f3142n.append(C0687e.C0689b.Transform_android_transformPivotX, 6);
            f3142n.append(C0687e.C0689b.Transform_android_transformPivotY, 7);
            f3142n.append(C0687e.C0689b.Transform_android_translationX, 8);
            f3142n.append(C0687e.C0689b.Transform_android_translationY, 9);
            f3142n.append(C0687e.C0689b.Transform_android_translationZ, 10);
            f3142n.append(C0687e.C0689b.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        final void m44677a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.Transform);
            this.f3143a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f3142n.get(index)) {
                    case 1:
                        this.f3144b = obtainStyledAttributes.getFloat(index, this.f3144b);
                        break;
                    case 2:
                        this.f3145c = obtainStyledAttributes.getFloat(index, this.f3145c);
                        break;
                    case 3:
                        this.f3146d = obtainStyledAttributes.getFloat(index, this.f3146d);
                        break;
                    case 4:
                        this.f3147e = obtainStyledAttributes.getFloat(index, this.f3147e);
                        break;
                    case 5:
                        this.f3148f = obtainStyledAttributes.getFloat(index, this.f3148f);
                        break;
                    case 6:
                        this.f3149g = obtainStyledAttributes.getDimension(index, this.f3149g);
                        break;
                    case 7:
                        this.f3150h = obtainStyledAttributes.getDimension(index, this.f3150h);
                        break;
                    case 8:
                        this.f3151i = obtainStyledAttributes.getDimension(index, this.f3151i);
                        break;
                    case 9:
                        this.f3152j = obtainStyledAttributes.getDimension(index, this.f3152j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f3153k = obtainStyledAttributes.getDimension(index, this.f3153k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f3154l = true;
                            this.f3155m = obtainStyledAttributes.getDimension(index, this.f3155m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final void m44676a(C0685e c0685e) {
            this.f3143a = c0685e.f3143a;
            this.f3144b = c0685e.f3144b;
            this.f3145c = c0685e.f3145c;
            this.f3146d = c0685e.f3146d;
            this.f3147e = c0685e.f3147e;
            this.f3148f = c0685e.f3148f;
            this.f3149g = c0685e.f3149g;
            this.f3150h = c0685e.f3150h;
            this.f3151i = c0685e.f3151i;
            this.f3152j = c0685e.f3152j;
            this.f3153k = c0685e.f3153k;
            this.f3154l = c0685e.f3154l;
            this.f3155m = c0685e.f3155m;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f3055f = sparseIntArray;
        sparseIntArray.append(C0687e.C0689b.Constraint_layout_constraintLeft_toLeftOf, 25);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintLeft_toRightOf, 26);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintRight_toLeftOf, 29);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintRight_toRightOf, 30);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintTop_toTopOf, 36);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintTop_toBottomOf, 35);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintBottom_toTopOf, 4);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintBottom_toBottomOf, 3);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f3055f.append(C0687e.C0689b.Constraint_layout_editor_absoluteX, 6);
        f3055f.append(C0687e.C0689b.Constraint_layout_editor_absoluteY, 7);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintGuide_begin, 17);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintGuide_end, 18);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintGuide_percent, 19);
        f3055f.append(C0687e.C0689b.Constraint_android_orientation, 27);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintStart_toEndOf, 32);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintStart_toStartOf, 33);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintEnd_toStartOf, 10);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintEnd_toEndOf, 9);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginLeft, 13);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginTop, 16);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginRight, 14);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginBottom, 11);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginStart, 15);
        f3055f.append(C0687e.C0689b.Constraint_layout_goneMarginEnd, 12);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintVertical_weight, 40);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHorizontal_weight, 39);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintVertical_chainStyle, 42);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHorizontal_bias, 20);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintVertical_bias, 37);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintDimensionRatio, 5);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintLeft_creator, 82);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintTop_creator, 82);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintRight_creator, 82);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintBottom_creator, 82);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintBaseline_creator, 82);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginLeft, 24);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginRight, 28);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginStart, 31);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginEnd, 8);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginTop, 34);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_marginBottom, 2);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_width, 23);
        f3055f.append(C0687e.C0689b.Constraint_android_layout_height, 21);
        f3055f.append(C0687e.C0689b.Constraint_android_visibility, 22);
        f3055f.append(C0687e.C0689b.Constraint_android_alpha, 43);
        f3055f.append(C0687e.C0689b.Constraint_android_elevation, 44);
        f3055f.append(C0687e.C0689b.Constraint_android_rotationX, 45);
        f3055f.append(C0687e.C0689b.Constraint_android_rotationY, 46);
        f3055f.append(C0687e.C0689b.Constraint_android_rotation, 60);
        f3055f.append(C0687e.C0689b.Constraint_android_scaleX, 47);
        f3055f.append(C0687e.C0689b.Constraint_android_scaleY, 48);
        f3055f.append(C0687e.C0689b.Constraint_android_transformPivotX, 49);
        f3055f.append(C0687e.C0689b.Constraint_android_transformPivotY, 50);
        f3055f.append(C0687e.C0689b.Constraint_android_translationX, 51);
        f3055f.append(C0687e.C0689b.Constraint_android_translationY, 52);
        f3055f.append(C0687e.C0689b.Constraint_android_translationZ, 53);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintWidth_default, 54);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHeight_default, 55);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintWidth_max, 56);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHeight_max, 57);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintWidth_min, 58);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHeight_min, 59);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintCircle, 61);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintCircleRadius, 62);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintCircleAngle, 63);
        f3055f.append(C0687e.C0689b.Constraint_animate_relativeTo, 64);
        f3055f.append(C0687e.C0689b.Constraint_transitionEasing, 65);
        f3055f.append(C0687e.C0689b.Constraint_drawPath, 66);
        f3055f.append(C0687e.C0689b.Constraint_transitionPathRotate, 67);
        f3055f.append(C0687e.C0689b.Constraint_motionStagger, 79);
        f3055f.append(C0687e.C0689b.Constraint_android_id, 38);
        f3055f.append(C0687e.C0689b.Constraint_motionProgress, 68);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintWidth_percent, 69);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintHeight_percent, 70);
        f3055f.append(C0687e.C0689b.Constraint_chainUseRtl, 71);
        f3055f.append(C0687e.C0689b.Constraint_barrierDirection, 72);
        f3055f.append(C0687e.C0689b.Constraint_barrierMargin, 73);
        f3055f.append(C0687e.C0689b.Constraint_constraint_referenced_ids, 74);
        f3055f.append(C0687e.C0689b.Constraint_barrierAllowsGoneWidgets, 75);
        f3055f.append(C0687e.C0689b.Constraint_pathMotionArc, 76);
        f3055f.append(C0687e.C0689b.Constraint_layout_constraintTag, 77);
        f3055f.append(C0687e.C0689b.Constraint_visibilityMode, 78);
        f3055f.append(C0687e.C0689b.Constraint_layout_constrainedWidth, 80);
        f3055f.append(C0687e.C0689b.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: a */
    private static C0681a m44706a(Context context, AttributeSet attributeSet) {
        C0681a c0681a = new C0681a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0687e.C0689b.Constraint);
        m44700a(c0681a, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return c0681a;
    }

    /* renamed from: a */
    private static void m44700a(C0681a c0681a, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C0687e.C0689b.Constraint_android_id && C0687e.C0689b.Constraint_android_layout_marginStart != index && C0687e.C0689b.Constraint_android_layout_marginEnd != index) {
                c0681a.f3062c.f3130a = true;
                c0681a.f3063d.f3104b = true;
                c0681a.f3061b.f3137a = true;
                c0681a.f3064e.f3143a = true;
            }
            switch (f3055f.get(index)) {
                case 1:
                    c0681a.f3063d.f3118p = m44694b(typedArray, index, c0681a.f3063d.f3118p);
                    break;
                case 2:
                    c0681a.f3063d.f3073G = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3073G);
                    break;
                case 3:
                    c0681a.f3063d.f3117o = m44694b(typedArray, index, c0681a.f3063d.f3117o);
                    break;
                case 4:
                    c0681a.f3063d.f3116n = m44694b(typedArray, index, c0681a.f3063d.f3116n);
                    break;
                case 5:
                    c0681a.f3063d.f3125w = typedArray.getString(index);
                    break;
                case 6:
                    c0681a.f3063d.f3067A = typedArray.getDimensionPixelOffset(index, c0681a.f3063d.f3067A);
                    break;
                case 7:
                    c0681a.f3063d.f3068B = typedArray.getDimensionPixelOffset(index, c0681a.f3063d.f3068B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0681a.f3063d.f3074H = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3074H);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    c0681a.f3063d.f3122t = m44694b(typedArray, index, c0681a.f3063d.f3122t);
                    break;
                case 10:
                    c0681a.f3063d.f3121s = m44694b(typedArray, index, c0681a.f3063d.f3121s);
                    break;
                case 11:
                    c0681a.f3063d.f3079M = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3079M);
                    break;
                case 12:
                    c0681a.f3063d.f3080N = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3080N);
                    break;
                case 13:
                    c0681a.f3063d.f3076J = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3076J);
                    break;
                case 14:
                    c0681a.f3063d.f3078L = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3078L);
                    break;
                case 15:
                    c0681a.f3063d.f3081O = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3081O);
                    break;
                case 16:
                    c0681a.f3063d.f3077K = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3077K);
                    break;
                case 17:
                    c0681a.f3063d.f3107e = typedArray.getDimensionPixelOffset(index, c0681a.f3063d.f3107e);
                    break;
                case 18:
                    c0681a.f3063d.f3108f = typedArray.getDimensionPixelOffset(index, c0681a.f3063d.f3108f);
                    break;
                case 19:
                    c0681a.f3063d.f3109g = typedArray.getFloat(index, c0681a.f3063d.f3109g);
                    break;
                case 20:
                    c0681a.f3063d.f3123u = typedArray.getFloat(index, c0681a.f3063d.f3123u);
                    break;
                case 21:
                    c0681a.f3063d.f3106d = typedArray.getLayoutDimension(index, c0681a.f3063d.f3106d);
                    break;
                case 22:
                    c0681a.f3061b.f3138b = typedArray.getInt(index, c0681a.f3061b.f3138b);
                    c0681a.f3061b.f3138b = f3054e[c0681a.f3061b.f3138b];
                    break;
                case 23:
                    c0681a.f3063d.f3105c = typedArray.getLayoutDimension(index, c0681a.f3063d.f3105c);
                    break;
                case 24:
                    c0681a.f3063d.f3070D = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3070D);
                    break;
                case 25:
                    c0681a.f3063d.f3110h = m44694b(typedArray, index, c0681a.f3063d.f3110h);
                    break;
                case 26:
                    c0681a.f3063d.f3111i = m44694b(typedArray, index, c0681a.f3063d.f3111i);
                    break;
                case 27:
                    c0681a.f3063d.f3069C = typedArray.getInt(index, c0681a.f3063d.f3069C);
                    break;
                case 28:
                    c0681a.f3063d.f3071E = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3071E);
                    break;
                case 29:
                    c0681a.f3063d.f3112j = m44694b(typedArray, index, c0681a.f3063d.f3112j);
                    break;
                case 30:
                    c0681a.f3063d.f3113k = m44694b(typedArray, index, c0681a.f3063d.f3113k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        c0681a.f3063d.f3075I = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3075I);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    c0681a.f3063d.f3119q = m44694b(typedArray, index, c0681a.f3063d.f3119q);
                    break;
                case 33:
                    c0681a.f3063d.f3120r = m44694b(typedArray, index, c0681a.f3063d.f3120r);
                    break;
                case 34:
                    c0681a.f3063d.f3072F = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3072F);
                    break;
                case 35:
                    c0681a.f3063d.f3115m = m44694b(typedArray, index, c0681a.f3063d.f3115m);
                    break;
                case 36:
                    c0681a.f3063d.f3114l = m44694b(typedArray, index, c0681a.f3063d.f3114l);
                    break;
                case 37:
                    c0681a.f3063d.f3124v = typedArray.getFloat(index, c0681a.f3063d.f3124v);
                    break;
                case 38:
                    c0681a.f3060a = typedArray.getResourceId(index, c0681a.f3060a);
                    break;
                case 39:
                    c0681a.f3063d.f3083Q = typedArray.getFloat(index, c0681a.f3063d.f3083Q);
                    break;
                case 40:
                    c0681a.f3063d.f3082P = typedArray.getFloat(index, c0681a.f3063d.f3082P);
                    break;
                case 41:
                    c0681a.f3063d.f3084R = typedArray.getInt(index, c0681a.f3063d.f3084R);
                    break;
                case 42:
                    c0681a.f3063d.f3085S = typedArray.getInt(index, c0681a.f3063d.f3085S);
                    break;
                case 43:
                    c0681a.f3061b.f3140d = typedArray.getFloat(index, c0681a.f3061b.f3140d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0681a.f3064e.f3154l = true;
                        c0681a.f3064e.f3155m = typedArray.getDimension(index, c0681a.f3064e.f3155m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    c0681a.f3064e.f3145c = typedArray.getFloat(index, c0681a.f3064e.f3145c);
                    break;
                case 46:
                    c0681a.f3064e.f3146d = typedArray.getFloat(index, c0681a.f3064e.f3146d);
                    break;
                case 47:
                    c0681a.f3064e.f3147e = typedArray.getFloat(index, c0681a.f3064e.f3147e);
                    break;
                case 48:
                    c0681a.f3064e.f3148f = typedArray.getFloat(index, c0681a.f3064e.f3148f);
                    break;
                case 49:
                    c0681a.f3064e.f3149g = typedArray.getDimension(index, c0681a.f3064e.f3149g);
                    break;
                case 50:
                    c0681a.f3064e.f3150h = typedArray.getDimension(index, c0681a.f3064e.f3150h);
                    break;
                case 51:
                    c0681a.f3064e.f3151i = typedArray.getDimension(index, c0681a.f3064e.f3151i);
                    break;
                case 52:
                    c0681a.f3064e.f3152j = typedArray.getDimension(index, c0681a.f3064e.f3152j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c0681a.f3064e.f3153k = typedArray.getDimension(index, c0681a.f3064e.f3153k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    c0681a.f3063d.f3086T = typedArray.getInt(index, c0681a.f3063d.f3086T);
                    break;
                case 55:
                    c0681a.f3063d.f3087U = typedArray.getInt(index, c0681a.f3063d.f3087U);
                    break;
                case 56:
                    c0681a.f3063d.f3088V = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3088V);
                    break;
                case 57:
                    c0681a.f3063d.f3089W = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3089W);
                    break;
                case 58:
                    c0681a.f3063d.f3090X = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3090X);
                    break;
                case 59:
                    c0681a.f3063d.f3091Y = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3091Y);
                    break;
                case 60:
                    c0681a.f3064e.f3144b = typedArray.getFloat(index, c0681a.f3064e.f3144b);
                    break;
                case 61:
                    c0681a.f3063d.f3126x = m44694b(typedArray, index, c0681a.f3063d.f3126x);
                    break;
                case 62:
                    c0681a.f3063d.f3127y = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3127y);
                    break;
                case 63:
                    c0681a.f3063d.f3128z = typedArray.getFloat(index, c0681a.f3063d.f3128z);
                    break;
                case 64:
                    c0681a.f3062c.f3131b = m44694b(typedArray, index, c0681a.f3062c.f3131b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0681a.f3062c.f3132c = typedArray.getString(index);
                        break;
                    } else {
                        c0681a.f3062c.f3132c = C0574c.f2393c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c0681a.f3062c.f3134e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    c0681a.f3062c.f3136g = typedArray.getFloat(index, c0681a.f3062c.f3136g);
                    break;
                case 68:
                    c0681a.f3061b.f3141e = typedArray.getFloat(index, c0681a.f3061b.f3141e);
                    break;
                case 69:
                    c0681a.f3063d.f3092Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    c0681a.f3063d.f3094aa = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0681a.f3063d.f3095ab = typedArray.getInt(index, c0681a.f3063d.f3095ab);
                    break;
                case 73:
                    c0681a.f3063d.f3096ac = typedArray.getDimensionPixelSize(index, c0681a.f3063d.f3096ac);
                    break;
                case 74:
                    c0681a.f3063d.f3099af = typedArray.getString(index);
                    break;
                case 75:
                    c0681a.f3063d.f3103aj = typedArray.getBoolean(index, c0681a.f3063d.f3103aj);
                    break;
                case 76:
                    c0681a.f3062c.f3133d = typedArray.getInt(index, c0681a.f3062c.f3133d);
                    break;
                case 77:
                    c0681a.f3063d.f3100ag = typedArray.getString(index);
                    break;
                case 78:
                    c0681a.f3061b.f3139c = typedArray.getInt(index, c0681a.f3061b.f3139c);
                    break;
                case 79:
                    c0681a.f3062c.f3135f = typedArray.getFloat(index, c0681a.f3062c.f3135f);
                    break;
                case 80:
                    c0681a.f3063d.f3101ah = typedArray.getBoolean(index, c0681a.f3063d.f3101ah);
                    break;
                case 81:
                    c0681a.f3063d.f3102ai = typedArray.getBoolean(index, c0681a.f3063d.f3102ai);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3055f.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f3055f.get(index));
                    break;
            }
        }
    }

    /* renamed from: a */
    private static int[] m44703a(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0687e.C0688a.class.getField(trim).getInt(null);
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
                        Object m44741a = ((ConstraintLayout) view.getParent()).m44741a(trim);
                        i5 = i4;
                        if (m44741a != null) {
                            i5 = i4;
                            if (m44741a instanceof Integer) {
                                i5 = ((Integer) m44741a).intValue();
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

    /* renamed from: b */
    public static int m44694b(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: f */
    private static String m44687f(int i) {
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
                return EventConstants.START;
            case 7:
                return "end";
            default:
                return AdError.UNDEFINED_DOMAIN;
        }
    }

    /* renamed from: a */
    public final int m44713a(int i) {
        return m44688e(i).f3061b.f3139c;
    }

    /* renamed from: a */
    public final void m44712a(int i, int i2) {
        if (this.f3058c.containsKey(Integer.valueOf(i))) {
            C0681a c0681a = this.f3058c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    c0681a.f3063d.f3111i = -1;
                    c0681a.f3063d.f3110h = -1;
                    c0681a.f3063d.f3070D = -1;
                    c0681a.f3063d.f3076J = -1;
                    return;
                case 2:
                    c0681a.f3063d.f3113k = -1;
                    c0681a.f3063d.f3112j = -1;
                    c0681a.f3063d.f3071E = -1;
                    c0681a.f3063d.f3078L = -1;
                    return;
                case 3:
                    c0681a.f3063d.f3115m = -1;
                    c0681a.f3063d.f3114l = -1;
                    c0681a.f3063d.f3072F = -1;
                    c0681a.f3063d.f3077K = -1;
                    return;
                case 4:
                    c0681a.f3063d.f3116n = -1;
                    c0681a.f3063d.f3117o = -1;
                    c0681a.f3063d.f3073G = -1;
                    c0681a.f3063d.f3079M = -1;
                    return;
                case 5:
                    c0681a.f3063d.f3118p = -1;
                    return;
                case 6:
                    c0681a.f3063d.f3119q = -1;
                    c0681a.f3063d.f3120r = -1;
                    c0681a.f3063d.f3075I = -1;
                    c0681a.f3063d.f3081O = -1;
                    return;
                case 7:
                    c0681a.f3063d.f3121s = -1;
                    c0681a.f3063d.f3122t = -1;
                    c0681a.f3063d.f3074H = -1;
                    c0681a.f3063d.f3080N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: a */
    public final void m44711a(int i, int i2, int i3) {
        if (!this.f3058c.containsKey(Integer.valueOf(i))) {
            this.f3058c.put(Integer.valueOf(i), new C0681a());
        }
        C0681a c0681a = this.f3058c.get(Integer.valueOf(i));
        if (i3 == 3) {
            c0681a.f3063d.f3114l = i2;
            c0681a.f3063d.f3115m = -1;
            c0681a.f3063d.f3118p = -1;
        } else if (i3 == 4) {
            c0681a.f3063d.f3115m = i2;
            c0681a.f3063d.f3114l = -1;
            c0681a.f3063d.f3118p = -1;
        } else {
            throw new IllegalArgumentException("right to " + m44687f(i3) + " undefined");
        }
    }

    /* renamed from: a */
    public final void m44710a(int i, int i2, int i3, float f) {
        C0681a m44688e = m44688e(i);
        m44688e.f3063d.f3126x = i2;
        m44688e.f3063d.f3127y = i3;
        m44688e.f3063d.f3128z = f;
    }

    /* renamed from: a */
    public final void m44709a(int i, int i2, int i3, int i4, int i5) {
        if (!this.f3058c.containsKey(Integer.valueOf(i))) {
            this.f3058c.put(Integer.valueOf(i), new C0681a());
        }
        C0681a c0681a = this.f3058c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    c0681a.f3063d.f3110h = i3;
                    c0681a.f3063d.f3111i = -1;
                } else if (i4 != 2) {
                    throw new IllegalArgumentException("Left to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3111i = i3;
                    c0681a.f3063d.f3110h = -1;
                }
                c0681a.f3063d.f3070D = i5;
                return;
            case 2:
                if (i4 == 1) {
                    c0681a.f3063d.f3112j = i3;
                    c0681a.f3063d.f3113k = -1;
                } else if (i4 != 2) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3113k = i3;
                    c0681a.f3063d.f3112j = -1;
                }
                c0681a.f3063d.f3071E = i5;
                return;
            case 3:
                if (i4 == 3) {
                    c0681a.f3063d.f3114l = i3;
                    c0681a.f3063d.f3115m = -1;
                    c0681a.f3063d.f3118p = -1;
                } else if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3115m = i3;
                    c0681a.f3063d.f3114l = -1;
                    c0681a.f3063d.f3118p = -1;
                }
                c0681a.f3063d.f3072F = i5;
                return;
            case 4:
                if (i4 == 4) {
                    c0681a.f3063d.f3117o = i3;
                    c0681a.f3063d.f3116n = -1;
                    c0681a.f3063d.f3118p = -1;
                } else if (i4 != 3) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3116n = i3;
                    c0681a.f3063d.f3117o = -1;
                    c0681a.f3063d.f3118p = -1;
                }
                c0681a.f3063d.f3073G = i5;
                return;
            case 5:
                if (i4 != 5) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                }
                c0681a.f3063d.f3118p = i3;
                c0681a.f3063d.f3117o = -1;
                c0681a.f3063d.f3116n = -1;
                c0681a.f3063d.f3114l = -1;
                c0681a.f3063d.f3115m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    c0681a.f3063d.f3120r = i3;
                    c0681a.f3063d.f3119q = -1;
                } else if (i4 != 7) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3119q = i3;
                    c0681a.f3063d.f3120r = -1;
                }
                c0681a.f3063d.f3075I = i5;
                return;
            case 7:
                if (i4 == 7) {
                    c0681a.f3063d.f3122t = i3;
                    c0681a.f3063d.f3121s = -1;
                } else if (i4 != 6) {
                    throw new IllegalArgumentException("right to " + m44687f(i4) + " undefined");
                } else {
                    c0681a.f3063d.f3121s = i3;
                    c0681a.f3063d.f3122t = -1;
                }
                c0681a.f3063d.f3074H = i5;
                return;
            default:
                throw new IllegalArgumentException(m44687f(i2) + " to " + m44687f(i4) + " unknown");
        }
    }

    /* renamed from: a */
    public final void m44708a(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f3058c.containsKey(Integer.valueOf(i))) {
            this.f3058c.get(Integer.valueOf(i)).m44684a(layoutParams);
        }
    }

    /* renamed from: a */
    public final void m44707a(Context context, int i) {
        m44701a((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: a */
    public final void m44705a(Context context, XmlPullParser xmlPullParser) {
        C0681a c0681a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C0681a c0681a2 = null;
            while (true) {
                C0681a c0681a3 = c0681a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0681a = c0681a3;
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
                            c0681a = m44706a(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c0681a = m44706a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a.f3063d.f3093a = true;
                            c0681a.f3063d.f3104b = true;
                            break;
                        case true:
                            c0681a = m44706a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a.f3063d.f3097ad = 1;
                            break;
                        case true:
                            if (c0681a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0681a3.f3061b.m44679a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a = c0681a3;
                            break;
                        case true:
                            if (c0681a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0681a3.f3064e.m44677a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a = c0681a3;
                            break;
                        case true:
                            if (c0681a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0681a3.f3063d.m44683a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a = c0681a3;
                            break;
                        case true:
                            if (c0681a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0681a3.f3062c.m44681a(context, Xml.asAttributeSet(xmlPullParser));
                            c0681a = c0681a3;
                            break;
                        case true:
                            if (c0681a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            C0674a.m44725a(context, xmlPullParser, c0681a3.f3065f);
                            c0681a = c0681a3;
                            break;
                        default:
                            c0681a = c0681a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c0681a = c0681a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c0681a = c0681a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f3058c.put(Integer.valueOf(c0681a3.f3060a), c0681a3);
                        c0681a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c0681a2 = c0681a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m44702a(ConstraintHelper constraintHelper, C0541e c0541e, ConstraintLayout.LayoutParams layoutParams, SparseArray<C0541e> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f3058c.containsKey(Integer.valueOf(id))) {
            C0681a c0681a = this.f3058c.get(Integer.valueOf(id));
            if (!(c0541e instanceof C0550j)) {
                return;
            }
            constraintHelper.mo44758a(c0681a, (C0550j) c0541e, layoutParams, sparseArray);
        }
    }

    /* renamed from: a */
    public final void m44701a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f3058c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f3057b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f3058c.containsKey(Integer.valueOf(id))) {
                this.f3058c.put(Integer.valueOf(id), new C0681a());
            }
            C0681a c0681a = this.f3058c.get(Integer.valueOf(id));
            c0681a.f3065f = C0674a.m44721a(this.f3059d, childAt);
            c0681a.m44686a(id, layoutParams);
            c0681a.f3061b.f3138b = childAt.getVisibility();
            if (Build.VERSION.SDK_INT >= 17) {
                c0681a.f3061b.f3140d = childAt.getAlpha();
                c0681a.f3064e.f3144b = childAt.getRotation();
                c0681a.f3064e.f3145c = childAt.getRotationX();
                c0681a.f3064e.f3146d = childAt.getRotationY();
                c0681a.f3064e.f3147e = childAt.getScaleX();
                c0681a.f3064e.f3148f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    c0681a.f3064e.f3149g = pivotX;
                    c0681a.f3064e.f3150h = pivotY;
                }
                c0681a.f3064e.f3151i = childAt.getTranslationX();
                c0681a.f3064e.f3152j = childAt.getTranslationY();
                if (Build.VERSION.SDK_INT >= 21) {
                    c0681a.f3064e.f3153k = childAt.getTranslationZ();
                    if (c0681a.f3064e.f3154l) {
                        c0681a.f3064e.f3155m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                c0681a.f3063d.f3103aj = barrier.f2898b.f1921b;
                c0681a.f3063d.f3098ae = barrier.m44756b();
                c0681a.f3063d.f3095ab = barrier.f2897a;
                c0681a.f3063d.f3096ac = barrier.f2898b.f1922c;
            }
        }
    }

    /* renamed from: a */
    public final void m44699a(C0680c c0680c) {
        for (Integer num : c0680c.f3058c.keySet()) {
            int intValue = num.intValue();
            C0681a c0681a = c0680c.f3058c.get(num);
            if (!this.f3058c.containsKey(Integer.valueOf(intValue))) {
                this.f3058c.put(Integer.valueOf(intValue), new C0681a());
            }
            C0681a c0681a2 = this.f3058c.get(Integer.valueOf(intValue));
            if (!c0681a2.f3063d.f3104b) {
                c0681a2.f3063d.m44682a(c0681a.f3063d);
            }
            if (!c0681a2.f3061b.f3137a) {
                c0681a2.f3061b.m44678a(c0681a.f3061b);
            }
            if (!c0681a2.f3064e.f3143a) {
                c0681a2.f3064e.m44676a(c0681a.f3064e);
            }
            if (!c0681a2.f3062c.f3130a) {
                c0681a2.f3062c.m44680a(c0681a.f3062c);
            }
            for (String str : c0681a.f3065f.keySet()) {
                if (!c0681a2.f3065f.containsKey(str)) {
                    c0681a2.f3065f.put(str, c0681a.f3065f.get(str));
                }
            }
        }
    }

    /* renamed from: a */
    public final void m44698a(int[] iArr) {
        if (iArr.length >= 2) {
            m44688e(iArr[0]).f3063d.f3084R = 0;
            m44709a(iArr[0], 1, 0, 1, -1);
            for (int i = 1; i < iArr.length; i++) {
                int i2 = i - 1;
                m44709a(iArr[i], 1, iArr[i2], 2, -1);
                m44709a(iArr[i2], 2, iArr[i], 1, -1);
            }
            m44709a(iArr[iArr.length - 1], 2, 0, 2, -1);
            return;
        }
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
    }

    /* renamed from: a */
    public final int[] m44714a() {
        Integer[] numArr = (Integer[]) this.f3058c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: b */
    public final int m44696b(int i) {
        return m44688e(i).f3061b.f3138b;
    }

    /* renamed from: b */
    public final void m44695b(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0681a m44706a = m44706a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m44706a.f3063d.f3093a = true;
                    }
                    this.f3058c.put(Integer.valueOf(m44706a.f3060a), m44706a);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    public final void m44693b(ConstraintLayout constraintLayout) {
        m44689d(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: c */
    public final int m44692c(int i) {
        return m44688e(i).f3063d.f3106d;
    }

    /* renamed from: c */
    public final void m44691c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f3058c.containsKey(Integer.valueOf(id))) {
                new StringBuilder("id unknown ").append(C0591a.m44983a(childAt));
            } else if (this.f3057b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f3058c.containsKey(Integer.valueOf(id))) {
                    C0674a.m44724a(childAt, this.f3058c.get(Integer.valueOf(id)).f3065f);
                }
            }
        }
    }

    /* renamed from: d */
    public final int m44690d(int i) {
        return m44688e(i).f3063d.f3105c;
    }

    /* renamed from: d */
    public final void m44689d(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f3058c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f3058c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + C0591a.m44983a(childAt));
            } else if (this.f3057b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1 && this.f3058c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C0681a c0681a = this.f3058c.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        c0681a.f3063d.f3097ad = 1;
                    }
                    if (c0681a.f3063d.f3097ad != -1 && c0681a.f3063d.f3097ad == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(c0681a.f3063d.f3095ab);
                        barrier.setMargin(c0681a.f3063d.f3096ac);
                        barrier.setAllowsGoneWidget(c0681a.f3063d.f3103aj);
                        if (c0681a.f3063d.f3098ae != null) {
                            barrier.setReferencedIds(c0681a.f3063d.f3098ae);
                        } else if (c0681a.f3063d.f3099af != null) {
                            c0681a.f3063d.f3098ae = m44703a(barrier, c0681a.f3063d.f3099af);
                            barrier.setReferencedIds(c0681a.f3063d.f3098ae);
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.m44735a();
                    c0681a.m44684a(layoutParams);
                    C0674a.m44724a(childAt, c0681a.f3065f);
                    childAt.setLayoutParams(layoutParams);
                    if (c0681a.f3061b.f3139c == 0) {
                        childAt.setVisibility(c0681a.f3061b.f3138b);
                    }
                    if (Build.VERSION.SDK_INT >= 17) {
                        childAt.setAlpha(c0681a.f3061b.f3140d);
                        childAt.setRotation(c0681a.f3064e.f3144b);
                        childAt.setRotationX(c0681a.f3064e.f3145c);
                        childAt.setRotationY(c0681a.f3064e.f3146d);
                        childAt.setScaleX(c0681a.f3064e.f3147e);
                        childAt.setScaleY(c0681a.f3064e.f3148f);
                        if (!Float.isNaN(c0681a.f3064e.f3149g)) {
                            childAt.setPivotX(c0681a.f3064e.f3149g);
                        }
                        if (!Float.isNaN(c0681a.f3064e.f3150h)) {
                            childAt.setPivotY(c0681a.f3064e.f3150h);
                        }
                        childAt.setTranslationX(c0681a.f3064e.f3151i);
                        childAt.setTranslationY(c0681a.f3064e.f3152j);
                        if (Build.VERSION.SDK_INT >= 21) {
                            childAt.setTranslationZ(c0681a.f3064e.f3153k);
                            if (c0681a.f3064e.f3154l) {
                                childAt.setElevation(c0681a.f3064e.f3155m);
                            }
                        }
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            Integer num = (Integer) it2.next();
            C0681a c0681a2 = this.f3058c.get(num);
            if (c0681a2.f3063d.f3097ad != -1 && c0681a2.f3063d.f3097ad == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                if (c0681a2.f3063d.f3098ae != null) {
                    barrier2.setReferencedIds(c0681a2.f3063d.f3098ae);
                } else if (c0681a2.f3063d.f3099af != null) {
                    c0681a2.f3063d.f3098ae = m44703a(barrier2, c0681a2.f3063d.f3099af);
                    barrier2.setReferencedIds(c0681a2.f3063d.f3098ae);
                }
                barrier2.setType(c0681a2.f3063d.f3095ab);
                barrier2.setMargin(c0681a2.f3063d.f3096ac);
                ConstraintLayout.LayoutParams m44737c = ConstraintLayout.m44737c();
                barrier2.m44753c();
                c0681a2.m44684a(m44737c);
                constraintLayout.addView(barrier2, m44737c);
            }
            if (c0681a2.f3063d.f3093a) {
                Guideline guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams m44737c2 = ConstraintLayout.m44737c();
                c0681a2.m44684a(m44737c2);
                constraintLayout.addView(guideline, m44737c2);
            }
        }
    }

    /* renamed from: e */
    public final C0681a m44688e(int i) {
        if (!this.f3058c.containsKey(Integer.valueOf(i))) {
            this.f3058c.put(Integer.valueOf(i), new C0681a());
        }
        return this.f3058c.get(Integer.valueOf(i));
    }
}
