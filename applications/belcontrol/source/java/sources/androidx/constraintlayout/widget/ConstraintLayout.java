package androidx.constraintlayout.widget;

import android.annotation.TargetApi;
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
import com.google.android.exoplayer2.C0515C;
import java.util.ArrayList;
import java.util.HashMap;
import z5;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean MEASURE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.0.4";
    private AbstractC0231b7 mConstraintsChangedListener;
    private p5 mMetrics;
    public SparseArray<View> mChildrenByIds = new SparseArray<>();
    private ArrayList<ConstraintHelper> mConstraintHelpers = new ArrayList<>(4);
    public a6 mLayoutWidget = new a6();
    private int mMinWidth = 0;
    private int mMinHeight = 0;
    private int mMaxWidth = Integer.MAX_VALUE;
    private int mMaxHeight = Integer.MAX_VALUE;
    public boolean mDirtyHierarchy = true;
    private int mOptimizationLevel = 257;
    private C0012a7 mConstraintSet = null;
    public z6 mConstraintLayoutSpec = null;
    private int mConstraintSetId = -1;
    private HashMap<String, Integer> mDesignIds = new HashMap<>();
    private int mLastMeasureWidth = -1;
    private int mLastMeasureHeight = -1;
    public int mLastMeasureWidthSize = -1;
    public int mLastMeasureHeightSize = -1;
    public int mLastMeasureWidthMode = 0;
    public int mLastMeasureHeightMode = 0;
    private SparseArray<z5> mTempMapIdToWidget = new SparseArray<>();
    public b mMeasurer = new b(this, this);
    private int mOnMeasureWidthMeasureSpec = 0;
    private int mOnMeasureHeightMeasureSpec = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f690A;

        /* renamed from: B */
        public String f691B;

        /* renamed from: C */
        public int f692C;

        /* renamed from: D */
        public float f693D;

        /* renamed from: E */
        public float f694E;

        /* renamed from: F */
        public int f695F;

        /* renamed from: G */
        public int f696G;

        /* renamed from: H */
        public int f697H;

        /* renamed from: I */
        public int f698I;

        /* renamed from: J */
        public int f699J;

        /* renamed from: K */
        public int f700K;

        /* renamed from: L */
        public int f701L;

        /* renamed from: M */
        public int f702M;

        /* renamed from: N */
        public float f703N;

        /* renamed from: O */
        public float f704O;

        /* renamed from: P */
        public int f705P;

        /* renamed from: Q */
        public int f706Q;

        /* renamed from: R */
        public int f707R;

        /* renamed from: S */
        public boolean f708S;

        /* renamed from: T */
        public boolean f709T;

        /* renamed from: U */
        public String f710U;

        /* renamed from: V */
        public boolean f711V;

        /* renamed from: W */
        public boolean f712W;

        /* renamed from: X */
        public boolean f713X;

        /* renamed from: Y */
        public boolean f714Y;

        /* renamed from: Z */
        public boolean f715Z;

        /* renamed from: a */
        public int f716a;

        /* renamed from: a0 */
        public boolean f717a0;

        /* renamed from: b */
        public int f718b;

        /* renamed from: b0 */
        public boolean f719b0;

        /* renamed from: c */
        public float f720c;

        /* renamed from: c0 */
        public int f721c0;

        /* renamed from: d */
        public int f722d;

        /* renamed from: d0 */
        public int f723d0;

        /* renamed from: e */
        public int f724e;

        /* renamed from: e0 */
        public int f725e0;

        /* renamed from: f */
        public int f726f;

        /* renamed from: f0 */
        public int f727f0;

        /* renamed from: g */
        public int f728g;

        /* renamed from: g0 */
        public int f729g0;

        /* renamed from: h */
        public int f730h;

        /* renamed from: h0 */
        public int f731h0;

        /* renamed from: i */
        public int f732i;

        /* renamed from: i0 */
        public float f733i0;

        /* renamed from: j */
        public int f734j;

        /* renamed from: j0 */
        public int f735j0;

        /* renamed from: k */
        public int f736k;

        /* renamed from: k0 */
        public int f737k0;

        /* renamed from: l */
        public int f738l;

        /* renamed from: l0 */
        public float f739l0;

        /* renamed from: m */
        public int f740m;

        /* renamed from: m0 */
        public z5 f741m0;

        /* renamed from: n */
        public int f742n;

        /* renamed from: n0 */
        public boolean f743n0;

        /* renamed from: o */
        public float f744o;

        /* renamed from: p */
        public int f745p;

        /* renamed from: q */
        public int f746q;

        /* renamed from: r */
        public int f747r;

        /* renamed from: s */
        public int f748s;

        /* renamed from: t */
        public int f749t;

        /* renamed from: u */
        public int f750u;

        /* renamed from: v */
        public int f751v;

        /* renamed from: w */
        public int f752w;

        /* renamed from: x */
        public int f753x;

        /* renamed from: y */
        public int f754y;

        /* renamed from: z */
        public float f755z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        public static class C0095a {

            /* renamed from: a */
            public static final SparseIntArray f756a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f756a = sparseIntArray;
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C1278d7.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f756a.append(C1278d7.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f716a = -1;
            this.f718b = -1;
            this.f720c = -1.0f;
            this.f722d = -1;
            this.f724e = -1;
            this.f726f = -1;
            this.f728g = -1;
            this.f730h = -1;
            this.f732i = -1;
            this.f734j = -1;
            this.f736k = -1;
            this.f738l = -1;
            this.f740m = -1;
            this.f742n = 0;
            this.f744o = 0.0f;
            this.f745p = -1;
            this.f746q = -1;
            this.f747r = -1;
            this.f748s = -1;
            this.f749t = -1;
            this.f750u = -1;
            this.f751v = -1;
            this.f752w = -1;
            this.f753x = -1;
            this.f754y = -1;
            this.f755z = 0.5f;
            this.f690A = 0.5f;
            this.f691B = null;
            this.f692C = 1;
            this.f693D = -1.0f;
            this.f694E = -1.0f;
            this.f695F = 0;
            this.f696G = 0;
            this.f697H = 0;
            this.f698I = 0;
            this.f699J = 0;
            this.f700K = 0;
            this.f701L = 0;
            this.f702M = 0;
            this.f703N = 1.0f;
            this.f704O = 1.0f;
            this.f705P = -1;
            this.f706Q = -1;
            this.f707R = -1;
            this.f708S = false;
            this.f709T = false;
            this.f710U = null;
            this.f711V = true;
            this.f712W = true;
            this.f713X = false;
            this.f714Y = false;
            this.f715Z = false;
            this.f717a0 = false;
            this.f719b0 = false;
            this.f721c0 = -1;
            this.f723d0 = -1;
            this.f725e0 = -1;
            this.f727f0 = -1;
            this.f729g0 = -1;
            this.f731h0 = -1;
            this.f733i0 = 0.5f;
            this.f741m0 = new z5();
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            String str;
            int i;
            this.f716a = -1;
            this.f718b = -1;
            this.f720c = -1.0f;
            this.f722d = -1;
            this.f724e = -1;
            this.f726f = -1;
            this.f728g = -1;
            this.f730h = -1;
            this.f732i = -1;
            this.f734j = -1;
            this.f736k = -1;
            this.f738l = -1;
            this.f740m = -1;
            this.f742n = 0;
            this.f744o = 0.0f;
            this.f745p = -1;
            this.f746q = -1;
            this.f747r = -1;
            this.f748s = -1;
            this.f749t = -1;
            this.f750u = -1;
            this.f751v = -1;
            this.f752w = -1;
            this.f753x = -1;
            this.f754y = -1;
            this.f755z = 0.5f;
            this.f690A = 0.5f;
            this.f691B = null;
            this.f692C = 1;
            this.f693D = -1.0f;
            this.f694E = -1.0f;
            this.f695F = 0;
            this.f696G = 0;
            this.f697H = 0;
            this.f698I = 0;
            this.f699J = 0;
            this.f700K = 0;
            this.f701L = 0;
            this.f702M = 0;
            this.f703N = 1.0f;
            this.f704O = 1.0f;
            this.f705P = -1;
            this.f706Q = -1;
            this.f707R = -1;
            this.f708S = false;
            this.f709T = false;
            this.f710U = null;
            this.f711V = true;
            this.f712W = true;
            this.f713X = false;
            this.f714Y = false;
            this.f715Z = false;
            this.f717a0 = false;
            this.f719b0 = false;
            this.f721c0 = -1;
            this.f723d0 = -1;
            this.f725e0 = -1;
            this.f727f0 = -1;
            this.f729g0 = -1;
            this.f731h0 = -1;
            this.f733i0 = 0.5f;
            this.f741m0 = new z5();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0095a.f756a.get(index);
                switch (i3) {
                    case 1:
                        this.f707R = obtainStyledAttributes.getInt(index, this.f707R);
                        continue;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f740m);
                        this.f740m = resourceId;
                        if (resourceId == -1) {
                            this.f740m = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 3:
                        this.f742n = obtainStyledAttributes.getDimensionPixelSize(index, this.f742n);
                        continue;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f744o) % 360.0f;
                        this.f744o = f;
                        if (f < 0.0f) {
                            this.f744o = (360.0f - f) % 360.0f;
                        } else {
                            continue;
                        }
                    case 5:
                        this.f716a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f716a);
                        continue;
                    case 6:
                        this.f718b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f718b);
                        continue;
                    case 7:
                        this.f720c = obtainStyledAttributes.getFloat(index, this.f720c);
                        continue;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f722d);
                        this.f722d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f722d = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f724e);
                        this.f724e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f724e = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f726f);
                        this.f726f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f726f = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f728g);
                        this.f728g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f728g = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f730h);
                        this.f730h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f730h = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f732i);
                        this.f732i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f732i = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f734j);
                        this.f734j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f734j = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f736k);
                        this.f736k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f736k = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f738l);
                        this.f738l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f738l = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f745p);
                        this.f745p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f745p = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f746q);
                        this.f746q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f746q = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f747r);
                        this.f747r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f747r = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f748s);
                        this.f748s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f748s = obtainStyledAttributes.getInt(index, -1);
                        } else {
                            continue;
                        }
                    case 21:
                        this.f749t = obtainStyledAttributes.getDimensionPixelSize(index, this.f749t);
                        continue;
                    case 22:
                        this.f750u = obtainStyledAttributes.getDimensionPixelSize(index, this.f750u);
                        continue;
                    case 23:
                        this.f751v = obtainStyledAttributes.getDimensionPixelSize(index, this.f751v);
                        continue;
                    case 24:
                        this.f752w = obtainStyledAttributes.getDimensionPixelSize(index, this.f752w);
                        continue;
                    case 25:
                        this.f753x = obtainStyledAttributes.getDimensionPixelSize(index, this.f753x);
                        continue;
                    case 26:
                        this.f754y = obtainStyledAttributes.getDimensionPixelSize(index, this.f754y);
                        continue;
                    case 27:
                        this.f708S = obtainStyledAttributes.getBoolean(index, this.f708S);
                        continue;
                    case 28:
                        this.f709T = obtainStyledAttributes.getBoolean(index, this.f709T);
                        continue;
                    case 29:
                        this.f755z = obtainStyledAttributes.getFloat(index, this.f755z);
                        continue;
                    case 30:
                        this.f690A = obtainStyledAttributes.getFloat(index, this.f690A);
                        continue;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f697H = i4;
                        if (i4 == 1) {
                            str = "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.";
                            break;
                        } else {
                            continue;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f698I = i5;
                        if (i5 == 1) {
                            str = "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.";
                            break;
                        } else {
                            continue;
                        }
                    case 33:
                        try {
                            this.f699J = obtainStyledAttributes.getDimensionPixelSize(index, this.f699J);
                            continue;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f699J) == -2) {
                                this.f699J = -2;
                            }
                        }
                    case 34:
                        try {
                            this.f701L = obtainStyledAttributes.getDimensionPixelSize(index, this.f701L);
                            continue;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f701L) == -2) {
                                this.f701L = -2;
                            }
                        }
                    case 35:
                        this.f703N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f703N));
                        this.f697H = 2;
                        continue;
                    case 36:
                        try {
                            this.f700K = obtainStyledAttributes.getDimensionPixelSize(index, this.f700K);
                            continue;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f700K) == -2) {
                                this.f700K = -2;
                            }
                        }
                    case 37:
                        try {
                            this.f702M = obtainStyledAttributes.getDimensionPixelSize(index, this.f702M);
                            continue;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f702M) == -2) {
                                this.f702M = -2;
                            }
                        }
                    case 38:
                        this.f704O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f704O));
                        this.f698I = 2;
                        continue;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f691B = string;
                                this.f692C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f691B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f691B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f692C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f692C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f691B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f691B.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f691B.substring(i, indexOf2);
                                        String substring4 = this.f691B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f692C == 1) {
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
                                this.f693D = obtainStyledAttributes.getFloat(index, this.f693D);
                                continue;
                            case 46:
                                this.f694E = obtainStyledAttributes.getFloat(index, this.f694E);
                                continue;
                            case 47:
                                this.f695F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f696G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f705P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f705P);
                                continue;
                            case 50:
                                this.f706Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f706Q);
                                continue;
                            case 51:
                                this.f710U = obtainStyledAttributes.getString(index);
                                continue;
                                continue;
                        }
                        break;
                }
                Log.e(ConstraintLayout.TAG, str);
            }
            obtainStyledAttributes.recycle();
            m6843c();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f716a = -1;
            this.f718b = -1;
            this.f720c = -1.0f;
            this.f722d = -1;
            this.f724e = -1;
            this.f726f = -1;
            this.f728g = -1;
            this.f730h = -1;
            this.f732i = -1;
            this.f734j = -1;
            this.f736k = -1;
            this.f738l = -1;
            this.f740m = -1;
            this.f742n = 0;
            this.f744o = 0.0f;
            this.f745p = -1;
            this.f746q = -1;
            this.f747r = -1;
            this.f748s = -1;
            this.f749t = -1;
            this.f750u = -1;
            this.f751v = -1;
            this.f752w = -1;
            this.f753x = -1;
            this.f754y = -1;
            this.f755z = 0.5f;
            this.f690A = 0.5f;
            this.f691B = null;
            this.f692C = 1;
            this.f693D = -1.0f;
            this.f694E = -1.0f;
            this.f695F = 0;
            this.f696G = 0;
            this.f697H = 0;
            this.f698I = 0;
            this.f699J = 0;
            this.f700K = 0;
            this.f701L = 0;
            this.f702M = 0;
            this.f703N = 1.0f;
            this.f704O = 1.0f;
            this.f705P = -1;
            this.f706Q = -1;
            this.f707R = -1;
            this.f708S = false;
            this.f709T = false;
            this.f710U = null;
            this.f711V = true;
            this.f712W = true;
            this.f713X = false;
            this.f714Y = false;
            this.f715Z = false;
            this.f717a0 = false;
            this.f719b0 = false;
            this.f721c0 = -1;
            this.f723d0 = -1;
            this.f725e0 = -1;
            this.f727f0 = -1;
            this.f729g0 = -1;
            this.f731h0 = -1;
            this.f733i0 = 0.5f;
            this.f741m0 = new z5();
        }

        /* renamed from: a */
        public String m6845a() {
            return this.f710U;
        }

        /* renamed from: b */
        public z5 m6844b() {
            return this.f741m0;
        }

        /* renamed from: c */
        public void m6843c() {
            this.f714Y = false;
            this.f711V = true;
            this.f712W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f708S) {
                this.f711V = false;
                if (this.f697H == 0) {
                    this.f697H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f709T) {
                this.f712W = false;
                if (this.f698I == 0) {
                    this.f698I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f711V = false;
                if (i == 0 && this.f697H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f708S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f712W = false;
                if (i2 == 0 && this.f698I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f709T = true;
                }
            }
            if (this.f720c == -1.0f && this.f716a == -1 && this.f718b == -1) {
                return;
            }
            this.f714Y = true;
            this.f711V = true;
            this.f712W = true;
            if (!(this.f741m0 instanceof c6)) {
                this.f741m0 = new c6();
            }
            this.f741m0.n1(this.f707R);
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
    public static /* synthetic */ class C0096a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f757a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[z5.b.values().length];
            f757a = iArr;
            try {
                iArr[z5.b.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f757a[z5.b.b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f757a[z5.b.d.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f757a[z5.b.c.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        init(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i, 0);
    }

    @TargetApi(21)
    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet, i, i2);
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

    private final z5 getTargetWidget(int i) {
        if (i == 0) {
            return this.mLayoutWidget;
        }
        View view = this.mChildrenByIds.get(i);
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
            return this.mLayoutWidget;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).f741m0;
    }

    private void init(AttributeSet attributeSet, int i, int i2) {
        this.mLayoutWidget.p0(this);
        this.mLayoutWidget.J1(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1278d7.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C1278d7.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == C1278d7.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == C1278d7.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == C1278d7.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == C1278d7.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == C1278d7.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == C1278d7.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0012a7 c0012a7 = new C0012a7();
                        this.mConstraintSet = c0012a7;
                        c0012a7.m7352y(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.K1(this.mOptimizationLevel);
    }

    private void markHierarchyDirty() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    private void setChildrenConstraints() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            z5 viewWidget = getViewWidget(getChildAt(i));
            if (viewWidget != null) {
                viewWidget.k0();
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
                    getTargetWidget(childAt.getId()).q0(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        C0012a7 c0012a7 = this.mConstraintSet;
        if (c0012a7 != null) {
            c0012a7.m7371f(this, true);
        }
        this.mLayoutWidget.h1();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.mConstraintHelpers.get(i4).m6847u(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).m6837c(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            z5 viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                this.mLayoutWidget.a(viewWidget2);
                applyConstraintsFromLayoutParams(isInEditMode, childAt5, viewWidget2, layoutParams, this.mTempMapIdToWidget);
            }
        }
    }

    private boolean updateHierarchy() {
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
            setChildrenConstraints();
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

    /* JADX WARN: Removed duplicated region for block: B:104:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0384  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyConstraintsFromLayoutParams(boolean r8, android.view.View r9, z5 r10, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r11, android.util.SparseArray<z5> r12) {
        /*
            Method dump skipped, instructions count: 1436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.applyConstraintsFromLayoutParams(boolean, android.view.View, z5, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.mConstraintHelpers.get(i).m6849s(this);
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

    public void fillMetrics(p5 p5Var) {
        this.mLayoutWidget.v1(p5Var);
    }

    @Override // android.view.View
    public void forceLayout() {
        markHierarchyDirty();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public Object getDesignInformation(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.mDesignIds;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.mDesignIds.get(str);
        }
        return null;
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.x1();
    }

    public View getViewById(int i) {
        return this.mChildrenByIds.get(i);
    }

    public final z5 getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).f741m0;
    }

    public boolean isRtl() {
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

    public void loadLayoutDescription(int i) {
        if (i != 0) {
            try {
                this.mConstraintLayoutSpec = new z6(getContext(), this, i);
                return;
            } catch (Resources.NotFoundException e) {
            }
        }
        this.mConstraintLayoutSpec = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z5 z5Var = layoutParams.f741m0;
            if ((childAt.getVisibility() != 8 || layoutParams.f714Y || layoutParams.f715Z || layoutParams.f719b0 || isInEditMode) && !layoutParams.f717a0) {
                int V = z5Var.V();
                int W = z5Var.W();
                int U = z5Var.U() + V;
                int y = z5Var.y() + W;
                childAt.layout(V, W, U, y);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(V, W, U, y);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.mConstraintHelpers.get(i6).m6851q(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.mDirtyHierarchy) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.mDirtyHierarchy) {
            int i4 = this.mOnMeasureWidthMeasureSpec;
            if (i4 != i || this.mOnMeasureHeightMeasureSpec != i2) {
                if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.mOnMeasureHeightMeasureSpec) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.mLayoutWidget.y()) {
                    this.mOnMeasureWidthMeasureSpec = i;
                    this.mOnMeasureHeightMeasureSpec = i2;
                }
            }
            resolveMeasuredDimension(i, i2, this.mLayoutWidget.U(), this.mLayoutWidget.y(), this.mLayoutWidget.E1(), this.mLayoutWidget.C1());
        }
        this.mOnMeasureWidthMeasureSpec = i;
        this.mOnMeasureHeightMeasureSpec = i2;
        this.mLayoutWidget.L1(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (updateHierarchy()) {
                this.mLayoutWidget.N1();
            }
        }
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i, i2);
        resolveMeasuredDimension(i, i2, this.mLayoutWidget.U(), this.mLayoutWidget.y(), this.mLayoutWidget.E1(), this.mLayoutWidget.C1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        z5 viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof c6)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            c6 c6Var = new c6();
            layoutParams.f741m0 = c6Var;
            layoutParams.f714Y = true;
            c6Var.n1(layoutParams.f707R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m6846v();
            ((LayoutParams) view.getLayoutParams()).f715Z = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.g1(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    public void parseLayoutDescription(int i) {
        this.mConstraintLayoutSpec = new z6(getContext(), this, i);
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
        markHierarchyDirty();
        super.requestLayout();
    }

    public void resolveMeasuredDimension(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        b bVar = this.mMeasurer;
        int i5 = bVar.e;
        int i6 = i3 + bVar.d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.mLastMeasureWidth = i6;
            this.mLastMeasureHeight = i7;
            return;
        }
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0);
        int min = Math.min(this.mMaxWidth, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.mMaxHeight, resolveSizeAndState2 & 16777215);
        int i8 = min;
        if (z) {
            i8 = min | C0515C.DEFAULT_MUXED_BUFFER_SIZE;
        }
        int i9 = min2;
        if (z2) {
            i9 = min2 | C0515C.DEFAULT_MUXED_BUFFER_SIZE;
        }
        setMeasuredDimension(i8, i9);
        this.mLastMeasureWidth = i8;
        this.mLastMeasureHeight = i9;
    }

    public void resolveSystem(a6 a6Var, int i, int i2, int i3) {
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i5 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.c(i2, i3, max, max2, paddingWidth, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            i4 = Math.max(0, getPaddingStart());
            int max3 = Math.max(0, getPaddingEnd());
            if (i4 <= 0 && max3 <= 0) {
                i4 = Math.max(0, getPaddingLeft());
            } else if (isRtl()) {
                i4 = max3;
            }
        } else {
            i4 = Math.max(0, getPaddingLeft());
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        setSelfDimensionBehaviour(a6Var, mode, i6, mode2, i7);
        a6Var.F1(i, mode, i6, mode2, i7, this.mLastMeasureWidth, this.mLastMeasureHeight, i4, max);
    }

    public void setConstraintSet(C0012a7 c0012a7) {
        this.mConstraintSet = c0012a7;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.mDesignIds == null) {
            this.mDesignIds = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.mDesignIds.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    @Override // android.view.View
    public void setId(int i) {
        this.mChildrenByIds.remove(getId());
        super.setId(i);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0231b7 abstractC0231b7) {
        z6 z6Var = this.mConstraintLayoutSpec;
        if (z6Var != null) {
            z6Var.c(abstractC0231b7);
        }
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
        this.mLayoutWidget.K1(i);
    }

    public void setSelfDimensionBehaviour(a6 a6Var, int i, int i2, int i3, int i4) {
        z5.b bVar;
        b bVar2 = this.mMeasurer;
        int i5 = bVar2.e;
        int i6 = bVar2.d;
        z5.b bVar3 = z5.b.a;
        int childCount = getChildCount();
        if (i != Integer.MIN_VALUE) {
            if (i == 0) {
                z5.b bVar4 = z5.b.b;
                bVar = bVar4;
                if (childCount == 0) {
                    bVar = bVar4;
                    i2 = Math.max(0, this.mMinWidth);
                }
            } else if (i != 1073741824) {
                bVar = bVar3;
            } else {
                i2 = Math.min(this.mMaxWidth - i6, i2);
                bVar = bVar3;
            }
            i2 = 0;
        } else {
            z5.b bVar5 = z5.b.b;
            bVar = bVar5;
            if (childCount == 0) {
                bVar = bVar5;
                i2 = Math.max(0, this.mMinWidth);
            }
        }
        if (i3 != Integer.MIN_VALUE) {
            if (i3 == 0) {
                z5.b bVar6 = z5.b.b;
                bVar3 = bVar6;
                if (childCount == 0) {
                    bVar3 = bVar6;
                    i4 = Math.max(0, this.mMinHeight);
                }
            } else if (i3 == 1073741824) {
                i4 = Math.min(this.mMaxHeight - i5, i4);
            }
            i4 = 0;
        } else {
            z5.b bVar7 = z5.b.b;
            bVar3 = bVar7;
            if (childCount == 0) {
                bVar3 = bVar7;
                i4 = Math.max(0, this.mMinHeight);
            }
        }
        if (i2 != a6Var.U() || i4 != a6Var.y()) {
            a6Var.B1();
        }
        a6Var.Z0(0);
        a6Var.a1(0);
        a6Var.L0(this.mMaxWidth - i6);
        a6Var.K0(this.mMaxHeight - i5);
        a6Var.O0(0);
        a6Var.N0(0);
        a6Var.D0(bVar);
        a6Var.Y0(i2);
        a6Var.U0(bVar3);
        a6Var.z0(i4);
        a6Var.O0(this.mMinWidth - i6);
        a6Var.N0(this.mMinHeight - i5);
    }

    public void setState(int i, int i2, int i3) {
        z6 z6Var = this.mConstraintLayoutSpec;
        if (z6Var != null) {
            z6Var.d(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
