package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import n3.i.b.h.e;
import p1727n3.p1795i.p1799b.C26355d;
import p1727n3.p1795i.p1799b.p1800h.AbstractC26366h;
import p1727n3.p1795i.p1799b.p1800h.C26361c;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26365g;
import p1727n3.p1795i.p1799b.p1800h.C26369l;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26370b;
import p1727n3.p1795i.p1802c.AbstractC26385b;
import p1727n3.p1795i.p1802c.AbstractC26397f;
import p1727n3.p1795i.p1802c.C26386c;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1795i.p1802c.C26395e;
import p1727n3.p1795i.p1802c.C26398g;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: a */
    public SparseArray<View> f578a = new SparseArray<>();

    /* renamed from: b */
    public ArrayList<AbstractC26385b> f579b = new ArrayList<>(4);

    /* renamed from: c */
    public e f580c = new e();

    /* renamed from: d */
    public int f581d = 0;

    /* renamed from: e */
    public int f582e = 0;

    /* renamed from: f */
    public int f583f = Integer.MAX_VALUE;

    /* renamed from: g */
    public int f584g = Integer.MAX_VALUE;

    /* renamed from: h */
    public boolean f585h = true;

    /* renamed from: i */
    public int f586i = 257;

    /* renamed from: j */
    public C26389d f587j = null;

    /* renamed from: k */
    public C26386c f588k = null;

    /* renamed from: l */
    public int f589l = -1;

    /* renamed from: m */
    public HashMap<String, Integer> f590m = new HashMap<>();

    /* renamed from: n */
    public int f591n = -1;

    /* renamed from: o */
    public int f592o = -1;

    /* renamed from: p */
    public SparseArray<C26363d> f593p = new SparseArray<>();

    /* renamed from: q */
    public C0113b f594q = new C0113b(this);

    /* renamed from: r */
    public int f595r = 0;

    /* renamed from: s */
    public int f596s = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    public static class C0111a extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f597A;

        /* renamed from: B */
        public String f598B;

        /* renamed from: C */
        public int f599C;

        /* renamed from: D */
        public float f600D;

        /* renamed from: E */
        public float f601E;

        /* renamed from: F */
        public int f602F;

        /* renamed from: G */
        public int f603G;

        /* renamed from: H */
        public int f604H;

        /* renamed from: I */
        public int f605I;

        /* renamed from: J */
        public int f606J;

        /* renamed from: K */
        public int f607K;

        /* renamed from: L */
        public int f608L;

        /* renamed from: M */
        public int f609M;

        /* renamed from: N */
        public float f610N;

        /* renamed from: O */
        public float f611O;

        /* renamed from: P */
        public int f612P;

        /* renamed from: Q */
        public int f613Q;

        /* renamed from: R */
        public int f614R;

        /* renamed from: S */
        public boolean f615S;

        /* renamed from: T */
        public boolean f616T;

        /* renamed from: U */
        public String f617U;

        /* renamed from: V */
        public boolean f618V;

        /* renamed from: W */
        public boolean f619W;

        /* renamed from: X */
        public boolean f620X;

        /* renamed from: Y */
        public boolean f621Y;

        /* renamed from: Z */
        public boolean f622Z;

        /* renamed from: a */
        public int f623a;

        /* renamed from: a0 */
        public boolean f624a0;

        /* renamed from: b */
        public int f625b;

        /* renamed from: b0 */
        public int f626b0;

        /* renamed from: c */
        public float f627c;

        /* renamed from: c0 */
        public int f628c0;

        /* renamed from: d */
        public int f629d;

        /* renamed from: d0 */
        public int f630d0;

        /* renamed from: e */
        public int f631e;

        /* renamed from: e0 */
        public int f632e0;

        /* renamed from: f */
        public int f633f;

        /* renamed from: f0 */
        public int f634f0;

        /* renamed from: g */
        public int f635g;

        /* renamed from: g0 */
        public int f636g0;

        /* renamed from: h */
        public int f637h;

        /* renamed from: h0 */
        public float f638h0;

        /* renamed from: i */
        public int f639i;

        /* renamed from: i0 */
        public int f640i0;

        /* renamed from: j */
        public int f641j;

        /* renamed from: j0 */
        public int f642j0;

        /* renamed from: k */
        public int f643k;

        /* renamed from: k0 */
        public float f644k0;

        /* renamed from: l */
        public int f645l;

        /* renamed from: l0 */
        public C26363d f646l0;

        /* renamed from: m */
        public int f647m;

        /* renamed from: n */
        public int f648n;

        /* renamed from: o */
        public float f649o;

        /* renamed from: p */
        public int f650p;

        /* renamed from: q */
        public int f651q;

        /* renamed from: r */
        public int f652r;

        /* renamed from: s */
        public int f653s;

        /* renamed from: t */
        public int f654t;

        /* renamed from: u */
        public int f655u;

        /* renamed from: v */
        public int f656v;

        /* renamed from: w */
        public int f657w;

        /* renamed from: x */
        public int f658x;

        /* renamed from: y */
        public int f659y;

        /* renamed from: z */
        public float f660z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a$a.class */
        public static class C0112a {

            /* renamed from: a */
            public static final SparseIntArray f661a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f661a = sparseIntArray;
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                f661a.append(C0114R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
            }
        }

        public C0111a(int i, int i2) {
            super(i, i2);
            this.f623a = -1;
            this.f625b = -1;
            this.f627c = -1.0f;
            this.f629d = -1;
            this.f631e = -1;
            this.f633f = -1;
            this.f635g = -1;
            this.f637h = -1;
            this.f639i = -1;
            this.f641j = -1;
            this.f643k = -1;
            this.f645l = -1;
            this.f647m = -1;
            this.f648n = 0;
            this.f649o = 0.0f;
            this.f650p = -1;
            this.f651q = -1;
            this.f652r = -1;
            this.f653s = -1;
            this.f654t = -1;
            this.f655u = -1;
            this.f656v = -1;
            this.f657w = -1;
            this.f658x = -1;
            this.f659y = -1;
            this.f660z = 0.5f;
            this.f597A = 0.5f;
            this.f598B = null;
            this.f599C = 1;
            this.f600D = -1.0f;
            this.f601E = -1.0f;
            this.f602F = 0;
            this.f603G = 0;
            this.f604H = 0;
            this.f605I = 0;
            this.f606J = 0;
            this.f607K = 0;
            this.f608L = 0;
            this.f609M = 0;
            this.f610N = 1.0f;
            this.f611O = 1.0f;
            this.f612P = -1;
            this.f613Q = -1;
            this.f614R = -1;
            this.f615S = false;
            this.f616T = false;
            this.f617U = null;
            this.f618V = true;
            this.f619W = true;
            this.f620X = false;
            this.f621Y = false;
            this.f622Z = false;
            this.f624a0 = false;
            this.f626b0 = -1;
            this.f628c0 = -1;
            this.f630d0 = -1;
            this.f632e0 = -1;
            this.f634f0 = -1;
            this.f636g0 = -1;
            this.f638h0 = 0.5f;
            this.f646l0 = new C26363d();
        }

        public C0111a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f623a = -1;
            this.f625b = -1;
            this.f627c = -1.0f;
            this.f629d = -1;
            this.f631e = -1;
            this.f633f = -1;
            this.f635g = -1;
            this.f637h = -1;
            this.f639i = -1;
            this.f641j = -1;
            this.f643k = -1;
            this.f645l = -1;
            this.f647m = -1;
            this.f648n = 0;
            this.f649o = 0.0f;
            this.f650p = -1;
            this.f651q = -1;
            this.f652r = -1;
            this.f653s = -1;
            this.f654t = -1;
            this.f655u = -1;
            this.f656v = -1;
            this.f657w = -1;
            this.f658x = -1;
            this.f659y = -1;
            this.f660z = 0.5f;
            this.f597A = 0.5f;
            this.f598B = null;
            this.f599C = 1;
            this.f600D = -1.0f;
            this.f601E = -1.0f;
            this.f602F = 0;
            this.f603G = 0;
            this.f604H = 0;
            this.f605I = 0;
            this.f606J = 0;
            this.f607K = 0;
            this.f608L = 0;
            this.f609M = 0;
            this.f610N = 1.0f;
            this.f611O = 1.0f;
            this.f612P = -1;
            this.f613Q = -1;
            this.f614R = -1;
            this.f615S = false;
            this.f616T = false;
            this.f617U = null;
            this.f618V = true;
            this.f619W = true;
            this.f620X = false;
            this.f621Y = false;
            this.f622Z = false;
            this.f624a0 = false;
            this.f626b0 = -1;
            this.f628c0 = -1;
            this.f630d0 = -1;
            this.f632e0 = -1;
            this.f634f0 = -1;
            this.f636g0 = -1;
            this.f638h0 = 0.5f;
            this.f646l0 = new C26363d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0112a.f661a.get(index);
                switch (i3) {
                    case 1:
                        this.f614R = obtainStyledAttributes.getInt(index, this.f614R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f647m);
                        this.f647m = resourceId;
                        if (resourceId == -1) {
                            this.f647m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f648n = obtainStyledAttributes.getDimensionPixelSize(index, this.f648n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f649o) % 360.0f;
                        this.f649o = f;
                        if (f < 0.0f) {
                            this.f649o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f623a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f623a);
                        break;
                    case 6:
                        this.f625b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f625b);
                        break;
                    case 7:
                        this.f627c = obtainStyledAttributes.getFloat(index, this.f627c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f629d);
                        this.f629d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f629d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f631e);
                        this.f631e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f631e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f633f);
                        this.f633f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f633f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f635g);
                        this.f635g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f635g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f637h);
                        this.f637h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f637h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f639i);
                        this.f639i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f639i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f641j);
                        this.f641j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f641j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f643k);
                        this.f643k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f643k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f645l);
                        this.f645l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f645l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f650p);
                        this.f650p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f650p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f651q);
                        this.f651q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f651q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f652r);
                        this.f652r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f652r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f653s);
                        this.f653s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f653s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f654t = obtainStyledAttributes.getDimensionPixelSize(index, this.f654t);
                        break;
                    case 22:
                        this.f655u = obtainStyledAttributes.getDimensionPixelSize(index, this.f655u);
                        break;
                    case 23:
                        this.f656v = obtainStyledAttributes.getDimensionPixelSize(index, this.f656v);
                        break;
                    case 24:
                        this.f657w = obtainStyledAttributes.getDimensionPixelSize(index, this.f657w);
                        break;
                    case 25:
                        this.f658x = obtainStyledAttributes.getDimensionPixelSize(index, this.f658x);
                        break;
                    case 26:
                        this.f659y = obtainStyledAttributes.getDimensionPixelSize(index, this.f659y);
                        break;
                    case 27:
                        this.f615S = obtainStyledAttributes.getBoolean(index, this.f615S);
                        break;
                    case 28:
                        this.f616T = obtainStyledAttributes.getBoolean(index, this.f616T);
                        break;
                    case 29:
                        this.f660z = obtainStyledAttributes.getFloat(index, this.f660z);
                        break;
                    case 30:
                        this.f597A = obtainStyledAttributes.getFloat(index, this.f597A);
                        break;
                    case 31:
                        this.f604H = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.f605I = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.f606J = obtainStyledAttributes.getDimensionPixelSize(index, this.f606J);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f606J) == -2) {
                                this.f606J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f608L = obtainStyledAttributes.getDimensionPixelSize(index, this.f608L);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f608L) == -2) {
                                this.f608L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f610N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f610N));
                        this.f604H = 2;
                        break;
                    case 36:
                        try {
                            this.f607K = obtainStyledAttributes.getDimensionPixelSize(index, this.f607K);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f607K) == -2) {
                                this.f607K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f609M = obtainStyledAttributes.getDimensionPixelSize(index, this.f609M);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f609M) == -2) {
                                this.f609M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f611O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f611O));
                        this.f605I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f598B = string;
                                this.f599C = -1;
                                if (string == null) {
                                    break;
                                } else {
                                    int length = string.length();
                                    int indexOf = this.f598B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f598B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f599C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f599C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f598B.indexOf(58);
                                    if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                        String substring2 = this.f598B.substring(i, indexOf2);
                                        String substring3 = this.f598B.substring(indexOf2 + 1);
                                        if (substring2.length() > 0 && substring3.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring2);
                                                float parseFloat2 = Float.parseFloat(substring3);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f599C == 1) {
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
                                    } else {
                                        String substring4 = this.f598B.substring(i);
                                        if (substring4.length() <= 0) {
                                            break;
                                        } else {
                                            Float.parseFloat(substring4);
                                            continue;
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.f600D = obtainStyledAttributes.getFloat(index, this.f600D);
                                continue;
                            case 46:
                                this.f601E = obtainStyledAttributes.getFloat(index, this.f601E);
                                continue;
                            case 47:
                                this.f602F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f603G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f612P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f612P);
                                continue;
                            case 50:
                                this.f613Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f613Q);
                                continue;
                            case 51:
                                this.f617U = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m43025a();
        }

        public C0111a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f623a = -1;
            this.f625b = -1;
            this.f627c = -1.0f;
            this.f629d = -1;
            this.f631e = -1;
            this.f633f = -1;
            this.f635g = -1;
            this.f637h = -1;
            this.f639i = -1;
            this.f641j = -1;
            this.f643k = -1;
            this.f645l = -1;
            this.f647m = -1;
            this.f648n = 0;
            this.f649o = 0.0f;
            this.f650p = -1;
            this.f651q = -1;
            this.f652r = -1;
            this.f653s = -1;
            this.f654t = -1;
            this.f655u = -1;
            this.f656v = -1;
            this.f657w = -1;
            this.f658x = -1;
            this.f659y = -1;
            this.f660z = 0.5f;
            this.f597A = 0.5f;
            this.f598B = null;
            this.f599C = 1;
            this.f600D = -1.0f;
            this.f601E = -1.0f;
            this.f602F = 0;
            this.f603G = 0;
            this.f604H = 0;
            this.f605I = 0;
            this.f606J = 0;
            this.f607K = 0;
            this.f608L = 0;
            this.f609M = 0;
            this.f610N = 1.0f;
            this.f611O = 1.0f;
            this.f612P = -1;
            this.f613Q = -1;
            this.f614R = -1;
            this.f615S = false;
            this.f616T = false;
            this.f617U = null;
            this.f618V = true;
            this.f619W = true;
            this.f620X = false;
            this.f621Y = false;
            this.f622Z = false;
            this.f624a0 = false;
            this.f626b0 = -1;
            this.f628c0 = -1;
            this.f630d0 = -1;
            this.f632e0 = -1;
            this.f634f0 = -1;
            this.f636g0 = -1;
            this.f638h0 = 0.5f;
            this.f646l0 = new C26363d();
        }

        /* renamed from: a */
        public void m43025a() {
            this.f621Y = false;
            this.f618V = true;
            this.f619W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f615S) {
                this.f618V = false;
                if (this.f604H == 0) {
                    this.f604H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f616T) {
                this.f619W = false;
                if (this.f605I == 0) {
                    this.f605I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f618V = false;
                if (i == 0 && this.f604H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f615S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f619W = false;
                if (i2 == 0 && this.f605I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f616T = true;
                }
            }
            if (this.f627c == -1.0f && this.f623a == -1 && this.f625b == -1) {
                return;
            }
            this.f621Y = true;
            this.f618V = true;
            this.f619W = true;
            if (!(this.f646l0 instanceof C26365g)) {
                this.f646l0 = new C26365g();
            }
            ((C26365g) this.f646l0).m2048W(this.f614R);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 614
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0111a.resolveLayoutDirection(int):void");
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$b.class */
    public class C0113b implements C26370b.AbstractC26372b {

        /* renamed from: a */
        public ConstraintLayout f662a;

        /* renamed from: b */
        public int f663b;

        /* renamed from: c */
        public int f664c;

        /* renamed from: d */
        public int f665d;

        /* renamed from: e */
        public int f666e;

        /* renamed from: f */
        public int f667f;

        /* renamed from: g */
        public int f668g;

        public C0113b(ConstraintLayout constraintLayout) {
            ConstraintLayout.this = r4;
            this.f662a = constraintLayout;
        }

        /* renamed from: a */
        public final boolean m43024a(int i, int i2, int i3) {
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

        /* JADX WARN: Removed duplicated region for block: B:111:0x0292  */
        /* JADX WARN: Removed duplicated region for block: B:136:0x032e  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0353  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0359  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x0363  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x0369  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x03d6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:173:0x03d7  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0191  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m43023b(p1727n3.p1795i.p1799b.p1800h.C26363d r6, p1727n3.p1795i.p1799b.p1800h.p1801m.C26370b.C26371a r7) {
            /*
                Method dump skipped, instructions count: 1558
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0113b.m43023b(n3.i.b.h.d, n3.i.b.h.m.b$a):void");
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        m43033S0(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m43033S0(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m43033S0(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m43033S0(attributeSet, i, i2);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        if (max2 > 0) {
            max = max2;
        }
        return max;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:155:0x05fb -> B:156:0x05fe). Please submit an issue!!! */
    /* renamed from: N0 */
    public void m43038N0(boolean z, View view, C26363d c26363d, C0111a c0111a, SparseArray<C26363d> sparseArray) {
        int i;
        int i2;
        float f;
        int i3;
        C26363d c26363d2;
        C26363d c26363d3;
        C26363d c26363d4;
        C26363d c26363d5;
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_PARENT;
        C26363d.EnumC26364a enumC26364a2 = C26363d.EnumC26364a.WRAP_CONTENT;
        C26363d.EnumC26364a enumC26364a3 = C26363d.EnumC26364a.FIXED;
        C26363d.EnumC26364a enumC26364a4 = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        C26361c.EnumC26362a enumC26362a = C26361c.EnumC26362a.RIGHT;
        C26361c.EnumC26362a enumC26362a2 = C26361c.EnumC26362a.LEFT;
        C26361c.EnumC26362a enumC26362a3 = C26361c.EnumC26362a.BOTTOM;
        C26361c.EnumC26362a enumC26362a4 = C26361c.EnumC26362a.TOP;
        c0111a.m43025a();
        c26363d.f73712j0 = view.getVisibility();
        if (c0111a.f624a0) {
            c26363d.f73662B = true;
            c26363d.f73712j0 = 8;
        }
        c26363d.f73708h0 = view;
        if (view instanceof AbstractC26385b) {
            ((AbstractC26385b) view).mo1980o(c26363d, this.f580c.L0);
        }
        if (c0111a.f621Y) {
            C26365g c26365g = (C26365g) c26363d;
            int i4 = c0111a.f640i0;
            int i5 = c0111a.f642j0;
            float f2 = c0111a.f644k0;
            int i6 = (f2 > (-1.0f) ? 1 : (f2 == (-1.0f) ? 0 : -1));
            if (i6 != 0) {
                if (i6 <= 0) {
                    return;
                }
                c26365g.f73768H0 = f2;
                c26365g.f73769I0 = -1;
                c26365g.f73770J0 = -1;
                return;
            } else if (i4 != -1) {
                if (i4 <= -1) {
                    return;
                }
                c26365g.f73768H0 = -1.0f;
                c26365g.f73769I0 = i4;
                c26365g.f73770J0 = -1;
                return;
            } else if (i5 == -1 || i5 <= -1) {
                return;
            } else {
                c26365g.f73768H0 = -1.0f;
                c26365g.f73769I0 = -1;
                c26365g.f73770J0 = i5;
                return;
            }
        }
        int i7 = c0111a.f626b0;
        int i8 = c0111a.f628c0;
        int i9 = c0111a.f630d0;
        int i10 = c0111a.f632e0;
        int i11 = c0111a.f634f0;
        int i12 = c0111a.f636g0;
        float f3 = c0111a.f638h0;
        int i13 = c0111a.f647m;
        if (i13 != -1) {
            C26363d c26363d6 = sparseArray.get(i13);
            if (c26363d6 != null) {
                float f4 = c0111a.f649o;
                int i14 = c0111a.f648n;
                C26361c.EnumC26362a enumC26362a5 = C26361c.EnumC26362a.CENTER;
                c26363d.mo2045n(enumC26362a5).m2106b(c26363d6.mo2045n(enumC26362a5), i14, 0, true);
                c26363d.f73743z = f4;
            }
        } else {
            if (i7 != -1) {
                C26363d c26363d7 = sparseArray.get(i7);
                if (c26363d7 != null) {
                    c26363d.mo2045n(enumC26362a2).m2106b(c26363d7.mo2045n(enumC26362a2), ((ViewGroup.MarginLayoutParams) c0111a).leftMargin, i11, true);
                }
            } else if (i8 != -1 && (c26363d5 = sparseArray.get(i8)) != null) {
                c26363d.mo2045n(enumC26362a2).m2106b(c26363d5.mo2045n(enumC26362a), ((ViewGroup.MarginLayoutParams) c0111a).leftMargin, i11, true);
            }
            if (i9 != -1) {
                C26363d c26363d8 = sparseArray.get(i9);
                if (c26363d8 != null) {
                    c26363d.mo2045n(enumC26362a).m2106b(c26363d8.mo2045n(enumC26362a2), ((ViewGroup.MarginLayoutParams) c0111a).rightMargin, i12, true);
                }
            } else if (i10 != -1 && (c26363d4 = sparseArray.get(i10)) != null) {
                c26363d.mo2045n(enumC26362a).m2106b(c26363d4.mo2045n(enumC26362a), ((ViewGroup.MarginLayoutParams) c0111a).rightMargin, i12, true);
            }
            int i15 = c0111a.f637h;
            if (i15 != -1) {
                C26363d c26363d9 = sparseArray.get(i15);
                if (c26363d9 != null) {
                    c26363d.mo2045n(enumC26362a4).m2106b(c26363d9.mo2045n(enumC26362a4), ((ViewGroup.MarginLayoutParams) c0111a).topMargin, c0111a.f655u, true);
                }
            } else {
                int i16 = c0111a.f639i;
                if (i16 != -1 && (c26363d3 = sparseArray.get(i16)) != null) {
                    c26363d.mo2045n(enumC26362a4).m2106b(c26363d3.mo2045n(enumC26362a3), ((ViewGroup.MarginLayoutParams) c0111a).topMargin, c0111a.f655u, true);
                }
            }
            int i17 = c0111a.f641j;
            if (i17 != -1) {
                C26363d c26363d10 = sparseArray.get(i17);
                if (c26363d10 != null) {
                    c26363d.mo2045n(enumC26362a3).m2106b(c26363d10.mo2045n(enumC26362a4), ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin, c0111a.f657w, true);
                }
            } else {
                int i18 = c0111a.f643k;
                if (i18 != -1 && (c26363d2 = sparseArray.get(i18)) != null) {
                    c26363d.mo2045n(enumC26362a3).m2106b(c26363d2.mo2045n(enumC26362a3), ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin, c0111a.f657w, true);
                }
            }
            int i19 = c0111a.f645l;
            if (i19 != -1) {
                View view2 = this.f578a.get(i19);
                C26363d c26363d11 = sparseArray.get(c0111a.f645l);
                if (c26363d11 != null && view2 != null && (view2.getLayoutParams() instanceof C0111a)) {
                    C0111a c0111a2 = (C0111a) view2.getLayoutParams();
                    c0111a.f620X = true;
                    c0111a2.f620X = true;
                    C26361c.EnumC26362a enumC26362a6 = C26361c.EnumC26362a.BASELINE;
                    c26363d.mo2045n(enumC26362a6).m2106b(c26363d11.mo2045n(enumC26362a6), 0, -1, true);
                    c26363d.f73660A = true;
                    c0111a2.f646l0.f73660A = true;
                    c26363d.mo2045n(enumC26362a4).m2097k();
                    c26363d.mo2045n(enumC26362a3).m2097k();
                }
            }
            if (f3 >= 0.0f) {
                c26363d.f73704f0 = f3;
            }
            float f5 = c0111a.f597A;
            if (f5 >= 0.0f) {
                c26363d.f73706g0 = f5;
            }
        }
        if (z && ((i3 = c0111a.f612P) != -1 || c0111a.f613Q != -1)) {
            int i20 = c0111a.f613Q;
            c26363d.f73689W = i3;
            c26363d.f73690X = i20;
        }
        if (c0111a.f618V) {
            c26363d.f73683Q[0] = enumC26364a3;
            c26363d.m2079S(((ViewGroup.MarginLayoutParams) c0111a).width);
            if (((ViewGroup.MarginLayoutParams) c0111a).width == -2) {
                c26363d.f73683Q[0] = enumC26364a2;
            }
        } else if (((ViewGroup.MarginLayoutParams) c0111a).width == -1) {
            if (c0111a.f615S) {
                c26363d.f73683Q[0] = enumC26364a4;
            } else {
                c26363d.f73683Q[0] = enumC26364a;
            }
            c26363d.mo2045n(enumC26362a2).f73647g = ((ViewGroup.MarginLayoutParams) c0111a).leftMargin;
            c26363d.mo2045n(enumC26362a).f73647g = ((ViewGroup.MarginLayoutParams) c0111a).rightMargin;
        } else {
            c26363d.f73683Q[0] = enumC26364a4;
            c26363d.m2079S(0);
        }
        if (c0111a.f619W) {
            c26363d.f73683Q[1] = enumC26364a3;
            c26363d.m2084N(((ViewGroup.MarginLayoutParams) c0111a).height);
            if (((ViewGroup.MarginLayoutParams) c0111a).height == -2) {
                c26363d.f73683Q[1] = enumC26364a2;
            }
        } else if (((ViewGroup.MarginLayoutParams) c0111a).height == -1) {
            if (c0111a.f616T) {
                c26363d.f73683Q[1] = enumC26364a4;
            } else {
                c26363d.f73683Q[1] = enumC26364a;
            }
            c26363d.mo2045n(enumC26362a4).f73647g = ((ViewGroup.MarginLayoutParams) c0111a).topMargin;
            c26363d.mo2045n(enumC26362a3).f73647g = ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin;
        } else {
            c26363d.f73683Q[1] = enumC26364a4;
            c26363d.m2084N(0);
        }
        String str = c0111a.f598B;
        if (str == null || str.length() == 0) {
            c26363d.f73687U = 0.0f;
        } else {
            int length = str.length();
            int indexOf = str.indexOf(44);
            if (indexOf <= 0 || indexOf >= length - 1) {
                i2 = -1;
                i = 0;
            } else {
                String substring = str.substring(0, indexOf);
                i2 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                i = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 < 0 || indexOf2 >= length - 1) {
                String substring2 = str.substring(i);
                if (substring2.length() > 0) {
                    f = Float.parseFloat(substring2);
                }
                f = 0.0f;
            } else {
                String substring3 = str.substring(i, indexOf2);
                String substring4 = str.substring(indexOf2 + 1);
                if (substring3.length() > 0 && substring4.length() > 0) {
                    float parseFloat = Float.parseFloat(substring3);
                    float parseFloat2 = Float.parseFloat(substring4);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        f = i2 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                    }
                }
                f = 0.0f;
            }
            if (f > 0.0f) {
                c26363d.f73687U = f;
                c26363d.f73688V = i2;
            }
        }
        float f6 = c0111a.f600D;
        float[] fArr = c26363d.f73661A0;
        fArr[0] = f6;
        fArr[1] = c0111a.f601E;
        c26363d.f73738w0 = c0111a.f602F;
        c26363d.f73740x0 = c0111a.f603G;
        int i21 = c0111a.f604H;
        int i22 = c0111a.f606J;
        int i23 = c0111a.f608L;
        float f7 = c0111a.f610N;
        c26363d.f73715l = i21;
        c26363d.f73721o = i22;
        int i24 = i23;
        if (i23 == Integer.MAX_VALUE) {
            i24 = 0;
        }
        c26363d.f73723p = i24;
        c26363d.f73725q = f7;
        if (f7 > 0.0f && f7 < 1.0f && i21 == 0) {
            c26363d.f73715l = 2;
        }
        int i25 = c0111a.f605I;
        int i26 = c0111a.f607K;
        int i27 = c0111a.f609M;
        float f8 = c0111a.f611O;
        c26363d.f73717m = i25;
        c26363d.f73727r = i26;
        if (i27 == Integer.MAX_VALUE) {
            i27 = 0;
        }
        c26363d.f73729s = i27;
        c26363d.f73731t = f8;
        if (f8 <= 0.0f || f8 >= 1.0f || i25 != 0) {
            return;
        }
        c26363d.f73717m = 2;
    }

    /* renamed from: O0 */
    public C0111a generateDefaultLayoutParams() {
        return new C0111a(-2, -2);
    }

    /* renamed from: P0 */
    public Object m43036P0(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f590m;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.f590m.get(str);
        }
        return null;
    }

    /* renamed from: Q0 */
    public View m43035Q0(int i) {
        return this.f578a.get(i);
    }

    /* renamed from: R0 */
    public final C26363d m43034R0(View view) {
        if (view == this) {
            return this.f580c;
        }
        return view == null ? null : ((C0111a) view.getLayoutParams()).f646l0;
    }

    /* renamed from: S0 */
    public final void m43033S0(AttributeSet attributeSet, int i, int i2) {
        e eVar = this.f580c;
        eVar.f73708h0 = this;
        eVar.f0(this.f594q);
        this.f578a.put(getId(), this);
        this.f587j = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0114R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f581d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f581d);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f582e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f582e);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f583f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f583f);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f584g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f584g);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f586i = obtainStyledAttributes.getInt(index, this.f586i);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m43030V0(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f588k = null;
                        }
                    }
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C26389d c26389d = new C26389d();
                        this.f587j = c26389d;
                        c26389d.m1960k(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f587j = null;
                    }
                    this.f589l = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f580c.g0(this.f586i);
    }

    /* renamed from: T0 */
    public boolean m43032T0() {
        boolean z = false;
        if ((getContext().getApplicationInfo().flags & 4194304) != 0) {
            z = false;
            if (1 == getLayoutDirection()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: U0 */
    public void m43031U0(int i) {
        if (i == 0) {
            this.f588k = null;
            return;
        }
        try {
            this.f588k = new C26386c(getContext(), this, i);
        } catch (Resources.NotFoundException e) {
            this.f588k = null;
        }
    }

    /* renamed from: V0 */
    public void m43030V0(int i) {
        this.f588k = new C26386c(getContext(), this, i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
    }

    /* renamed from: b1 */
    public void m43029b1(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C0113b c0113b = this.f594q;
        int i5 = c0113b.f666e;
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i3 + c0113b.f665d, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i4 + i5, i2, 0);
        int min = Math.min(this.f583f, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f584g, resolveSizeAndState2 & 16777215);
        int i6 = min;
        if (z) {
            i6 = min | 16777216;
        }
        int i7 = min2;
        if (z2) {
            i7 = min2 | 16777216;
        }
        setMeasuredDimension(i6, i7);
        this.f591n = i6;
        this.f592o = i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x0a09, code lost:
        if (r0 == r0) goto L287;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x08a0  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x08be  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x08d0  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0a27  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0ac5  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0ad8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0a32 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0347  */
    /* renamed from: c1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m43028c1(n3.i.b.h.e r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 3591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m43028c1(n3.i.b.h.e, int, int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0111a;
    }

    /* renamed from: d1 */
    public void m43027d1(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f590m == null) {
            this.f590m = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf(StringConstant.SLASH);
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f590m.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<AbstractC26385b> arrayList = this.f579b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f579b.get(i).m1977r();
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

    /* renamed from: e1 */
    public void m43026e1(int i, int i2, int i3) {
        C26386c c26386c = this.f588k;
        if (c26386c != null) {
            c26386c.m1973b(i, i2, i3);
        }
    }

    @Override // android.view.View
    public void forceLayout() {
        this.f585h = true;
        this.f591n = -1;
        this.f592o = -1;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0111a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0111a(layoutParams);
    }

    public int getMaxHeight() {
        return this.f584g;
    }

    public int getMaxWidth() {
        return this.f583f;
    }

    public int getMinHeight() {
        return this.f582e;
    }

    public int getMinWidth() {
        return this.f581d;
    }

    public int getOptimizationLevel() {
        return this.f580c.T0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C0111a c0111a = (C0111a) childAt.getLayoutParams();
            C26363d c26363d = c0111a.f646l0;
            if ((childAt.getVisibility() != 8 || c0111a.f621Y || c0111a.f622Z || isInEditMode) && !c0111a.f624a0) {
                int m2061x = c26363d.m2061x();
                int m2060y = c26363d.m2060y();
                int m2062w = c26363d.m2062w() + m2061x;
                int m2068q = c26363d.m2068q() + m2060y;
                childAt.layout(m2061x, m2060y, m2062w, m2068q);
                if ((childAt instanceof C26398g) && (content = ((C26398g) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(m2061x, m2060y, m2062w, m2068q);
                }
            }
        }
        int size = this.f579b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f579b.get(i6).mo1979p(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        e eVar;
        if (!this.f585h) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.f585h = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.f585h) {
            int i4 = this.f595r;
            if (i4 == i && this.f596s == i2) {
                int m2062w = this.f580c.m2062w();
                int m2068q = this.f580c.m2068q();
                e eVar2 = this.f580c;
                m43029b1(i, i2, m2062w, m2068q, eVar2.U0, eVar2.V0);
                return;
            } else if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f596s) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f580c.m2068q()) {
                this.f595r = i;
                this.f596s = i2;
                int m2062w2 = this.f580c.m2062w();
                int m2068q2 = this.f580c.m2068q();
                e eVar3 = this.f580c;
                m43029b1(i, i2, m2062w2, m2068q2, eVar3.U0, eVar3.V0);
                return;
            }
        }
        this.f595r = i;
        this.f596s = i2;
        this.f580c.L0 = m43032T0();
        if (this.f585h) {
            this.f585h = false;
            int childCount2 = getChildCount();
            int i5 = 0;
            while (true) {
                if (i5 >= childCount2) {
                    z = false;
                    break;
                } else if (getChildAt(i5).isLayoutRequested()) {
                    z = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (z) {
                boolean isInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i6 = 0; i6 < childCount3; i6++) {
                    C26363d m43034R0 = m43034R0(getChildAt(i6));
                    if (m43034R0 != null) {
                        m43034R0.mo2037G();
                    }
                }
                if (isInEditMode) {
                    for (int i7 = 0; i7 < childCount3; i7++) {
                        View childAt = getChildAt(i7);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            m43027d1(0, resourceName, Integer.valueOf(childAt.getId()));
                            int indexOf = resourceName.indexOf(47);
                            String str = resourceName;
                            if (indexOf != -1) {
                                str = resourceName.substring(indexOf + 1);
                            }
                            int id = childAt.getId();
                            if (id == 0) {
                                eVar = this.f580c;
                            } else {
                                View view = this.f578a.get(id);
                                View view2 = view;
                                if (view == null) {
                                    View findViewById = findViewById(id);
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
                                eVar = view2 == this ? this.f580c : view2 == null ? null : ((C0111a) view2.getLayoutParams()).f646l0;
                            }
                            eVar.f73714k0 = str;
                        } catch (Resources.NotFoundException e) {
                        }
                    }
                }
                if (this.f589l != -1) {
                    for (int i8 = 0; i8 < childCount3; i8++) {
                        View childAt2 = getChildAt(i8);
                        if (childAt2.getId() == this.f589l && (childAt2 instanceof C26395e)) {
                            this.f587j = ((C26395e) childAt2).getConstraintSet();
                        }
                    }
                }
                C26389d c26389d = this.f587j;
                if (c26389d != null) {
                    c26389d.m1968c(this, true);
                }
                this.f580c.f73777H0.clear();
                int size = this.f579b.size();
                if (size > 0) {
                    for (int i9 = 0; i9 < size; i9++) {
                        AbstractC26385b abstractC26385b = this.f579b.get(i9);
                        if (abstractC26385b.isInEditMode()) {
                            abstractC26385b.setIds(abstractC26385b.f73864e);
                        }
                        AbstractC26366h abstractC26366h = abstractC26385b.f73863d;
                        if (abstractC26366h != null) {
                            abstractC26366h.mo2042b();
                            for (int i10 = 0; i10 < abstractC26385b.f73861b; i10++) {
                                int i11 = abstractC26385b.f73860a[i10];
                                View m43035Q0 = m43035Q0(i11);
                                View view3 = m43035Q0;
                                if (m43035Q0 == null) {
                                    String str2 = abstractC26385b.f73867h.get(Integer.valueOf(i11));
                                    int m1984j = abstractC26385b.m1984j(this, str2);
                                    view3 = m43035Q0;
                                    if (m1984j != 0) {
                                        abstractC26385b.f73860a[i10] = m1984j;
                                        abstractC26385b.f73867h.put(Integer.valueOf(m1984j), str2);
                                        view3 = m43035Q0(m1984j);
                                    }
                                }
                                if (view3 != null) {
                                    abstractC26385b.f73863d.mo2043a(m43034R0(view3));
                                }
                            }
                            abstractC26385b.f73863d.mo2041c(this.f580c);
                        }
                    }
                }
                for (int i12 = 0; i12 < childCount3; i12++) {
                    View childAt3 = getChildAt(i12);
                    if (childAt3 instanceof C26398g) {
                        C26398g c26398g = (C26398g) childAt3;
                        if (c26398g.f73998a == -1 && !c26398g.isInEditMode()) {
                            c26398g.setVisibility(c26398g.f74000c);
                        }
                        View findViewById2 = findViewById(c26398g.f73998a);
                        c26398g.f73999b = findViewById2;
                        if (findViewById2 != null) {
                            ((C0111a) findViewById2.getLayoutParams()).f624a0 = true;
                            c26398g.f73999b.setVisibility(0);
                            c26398g.setVisibility(0);
                        }
                    }
                }
                this.f593p.clear();
                this.f593p.put(0, this.f580c);
                this.f593p.put(getId(), this.f580c);
                for (int i13 = 0; i13 < childCount3; i13++) {
                    View childAt4 = getChildAt(i13);
                    this.f593p.put(childAt4.getId(), m43034R0(childAt4));
                }
                for (int i14 = 0; i14 < childCount3; i14++) {
                    View childAt5 = getChildAt(i14);
                    C26363d m43034R02 = m43034R0(childAt5);
                    if (m43034R02 != null) {
                        C0111a c0111a = (C0111a) childAt5.getLayoutParams();
                        e eVar4 = this.f580c;
                        eVar4.f73777H0.add(m43034R02);
                        C26363d c26363d = m43034R02.f73684R;
                        if (c26363d != null) {
                            ((C26369l) c26363d).f73777H0.remove(m43034R02);
                            m43034R02.mo2037G();
                        }
                        m43034R02.f73684R = eVar4;
                        m43038N0(isInEditMode, childAt5, m43034R02, c0111a, this.f593p);
                    }
                }
            }
            if (z) {
                e eVar5 = this.f580c;
                eVar5.I0.m2032c(eVar5);
            }
        }
        m43028c1(this.f580c, this.f586i, i, i2);
        int m2062w3 = this.f580c.m2062w();
        int m2068q3 = this.f580c.m2068q();
        e eVar6 = this.f580c;
        m43029b1(i, i2, m2062w3, m2068q3, eVar6.U0, eVar6.V0);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        C26363d m43034R0 = m43034R0(view);
        if ((view instanceof Guideline) && !(m43034R0 instanceof C26365g)) {
            C0111a c0111a = (C0111a) view.getLayoutParams();
            C26365g c26365g = new C26365g();
            c0111a.f646l0 = c26365g;
            c0111a.f621Y = true;
            c26365g.m2048W(c0111a.f614R);
        }
        if (view instanceof AbstractC26385b) {
            AbstractC26385b abstractC26385b = (AbstractC26385b) view;
            abstractC26385b.m1975t();
            ((C0111a) view.getLayoutParams()).f622Z = true;
            if (!this.f579b.contains(abstractC26385b)) {
                this.f579b.add(abstractC26385b);
            }
        }
        this.f578a.put(view.getId(), view);
        this.f585h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f578a.remove(view.getId());
        C26363d m43034R0 = m43034R0(view);
        this.f580c.f73777H0.remove(m43034R0);
        m43034R0.mo2037G();
        this.f579b.remove(view);
        this.f585h = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f585h = true;
        this.f591n = -1;
        this.f592o = -1;
        super.requestLayout();
    }

    public void setConstraintSet(C26389d c26389d) {
        this.f587j = c26389d;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f578a.remove(getId());
        super.setId(i);
        this.f578a.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f584g) {
            return;
        }
        this.f584g = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f583f) {
            return;
        }
        this.f583f = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f582e) {
            return;
        }
        this.f582e = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f581d) {
            return;
        }
        this.f581d = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC26397f abstractC26397f) {
        C26386c c26386c = this.f588k;
        if (c26386c != null) {
            Objects.requireNonNull(c26386c);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f586i = i;
        e eVar = this.f580c;
        eVar.T0 = i;
        C26355d.f73579p = eVar.e0(512);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
