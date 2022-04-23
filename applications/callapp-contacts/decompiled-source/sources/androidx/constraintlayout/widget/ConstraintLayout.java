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
import androidx.constraintlayout.a.a.a.b;
import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import androidx.constraintlayout.a.a.h;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {
    private d m;
    SparseArray<View> O = new SparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<ConstraintHelper> f1584a = new ArrayList<>(4);
    public f P = new f();

    /* renamed from: b  reason: collision with root package name */
    private int f1585b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f1586c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f1587d = Integer.MAX_VALUE;
    private int e = Integer.MAX_VALUE;
    protected boolean Q = true;
    private int f = 257;
    private c g = null;
    protected b R = null;
    private int h = -1;
    private HashMap<String, Integer> i = new HashMap<>();
    private int j = -1;
    private int k = -1;
    int S = -1;
    int T = -1;
    int U = 0;
    int V = 0;
    private SparseArray<e> l = new SparseArray<>();
    a W = new a(this);
    private int n = 0;
    private int o = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1588a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[e.a.values().length];
            f1588a = iArr;
            try {
                iArr[e.a.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1588a[e.a.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1588a[e.a.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1588a[e.a.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        float C;
        int D;
        public float E;
        public float F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public boolean T;
        public boolean U;
        public String V;
        boolean W;
        boolean X;
        boolean Y;
        boolean Z;

        /* renamed from: a  reason: collision with root package name */
        public int f1589a;
        boolean aa;
        boolean ab;
        boolean ac;
        int ad;
        int ae;
        int af;
        int ag;
        int ah;
        int ai;
        float aj;
        int ak;
        int al;
        float am;
        public e an;
        public boolean ao;

        /* renamed from: b  reason: collision with root package name */
        public int f1590b;

        /* renamed from: c  reason: collision with root package name */
        public float f1591c;

        /* renamed from: d  reason: collision with root package name */
        public int f1592d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        static final class a {

            /* renamed from: a  reason: collision with root package name */
            public static final SparseIntArray f1593a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1593a = sparseIntArray;
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(e.b.ConstraintLayout_Layout_layout_constraintTag, 51);
            }

            private a() {
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1589a = -1;
            this.f1590b = -1;
            this.f1591c = -1.0f;
            this.f1592d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = BitmapDescriptorFactory.HUE_RED;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.a.a.e();
            this.ao = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f1589a = -1;
            this.f1590b = -1;
            this.f1591c = -1.0f;
            this.f1592d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = BitmapDescriptorFactory.HUE_RED;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.a.a.e();
            this.ao = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = a.f1593a.get(index);
                switch (i3) {
                    case 1:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId == -1) {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f;
                        if (f < BitmapDescriptorFactory.HUE_RED) {
                            this.o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f1589a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1589a);
                        break;
                    case 6:
                        this.f1590b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1590b);
                        break;
                    case 7:
                        this.f1591c = obtainStyledAttributes.getFloat(index, this.f1591c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f1592d);
                        this.f1592d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1592d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.e);
                        this.e = resourceId3;
                        if (resourceId3 == -1) {
                            this.e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId5;
                        if (resourceId5 == -1) {
                            this.g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.h);
                        this.h = resourceId6;
                        if (resourceId6 == -1) {
                            this.h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.i);
                        this.i = resourceId7;
                        if (resourceId7 == -1) {
                            this.i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.j);
                        this.j = resourceId8;
                        if (resourceId8 == -1) {
                            this.j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.k);
                        this.k = resourceId9;
                        if (resourceId9 == -1) {
                            this.k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId10;
                        if (resourceId10 == -1) {
                            this.l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 == -1) {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 == -1) {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 == -1) {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 == -1) {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = obtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.I = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.J = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.O = Math.max((float) BitmapDescriptorFactory.HUE_RED, obtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    case 36:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.P = Math.max((float) BitmapDescriptorFactory.HUE_RED, obtainStyledAttributes.getFloat(index, this.P));
                        this.J = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = Float.NaN;
                                this.D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.D = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.D = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.B.substring(i);
                                        if (substring2.length() > 0) {
                                            this.C = Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.B.substring(i, indexOf2);
                                        String substring4 = this.B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > BitmapDescriptorFactory.HUE_RED && parseFloat2 > BitmapDescriptorFactory.HUE_RED) {
                                                    if (this.D == 1) {
                                                        this.C = Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        this.C = Math.abs(parseFloat / parseFloat2);
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
                                this.E = obtainStyledAttributes.getFloat(index, this.E);
                                continue;
                            case 46:
                                this.F = obtainStyledAttributes.getFloat(index, this.F);
                                continue;
                            case 47:
                                this.G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.H = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                continue;
                            case 50:
                                this.R = obtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                                continue;
                            case 51:
                                this.V = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1589a = -1;
            this.f1590b = -1;
            this.f1591c = -1.0f;
            this.f1592d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = BitmapDescriptorFactory.HUE_RED;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.a.a.e();
            this.ao = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f1589a = -1;
            this.f1590b = -1;
            this.f1591c = -1.0f;
            this.f1592d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = BitmapDescriptorFactory.HUE_RED;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = BitmapDescriptorFactory.HUE_RED;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = null;
            this.W = true;
            this.X = true;
            this.Y = false;
            this.Z = false;
            this.aa = false;
            this.ab = false;
            this.ac = false;
            this.ad = -1;
            this.ae = -1;
            this.af = -1;
            this.ag = -1;
            this.ah = -1;
            this.ai = -1;
            this.aj = 0.5f;
            this.an = new androidx.constraintlayout.a.a.e();
            this.ao = false;
            this.f1589a = layoutParams.f1589a;
            this.f1590b = layoutParams.f1590b;
            this.f1591c = layoutParams.f1591c;
            this.f1592d = layoutParams.f1592d;
            this.e = layoutParams.e;
            this.f = layoutParams.f;
            this.g = layoutParams.g;
            this.h = layoutParams.h;
            this.i = layoutParams.i;
            this.j = layoutParams.j;
            this.k = layoutParams.k;
            this.l = layoutParams.l;
            this.m = layoutParams.m;
            this.n = layoutParams.n;
            this.o = layoutParams.o;
            this.p = layoutParams.p;
            this.q = layoutParams.q;
            this.r = layoutParams.r;
            this.s = layoutParams.s;
            this.t = layoutParams.t;
            this.u = layoutParams.u;
            this.v = layoutParams.v;
            this.w = layoutParams.w;
            this.x = layoutParams.x;
            this.y = layoutParams.y;
            this.z = layoutParams.z;
            this.A = layoutParams.A;
            this.B = layoutParams.B;
            this.C = layoutParams.C;
            this.D = layoutParams.D;
            this.E = layoutParams.E;
            this.F = layoutParams.F;
            this.G = layoutParams.G;
            this.H = layoutParams.H;
            this.T = layoutParams.T;
            this.U = layoutParams.U;
            this.I = layoutParams.I;
            this.J = layoutParams.J;
            this.K = layoutParams.K;
            this.M = layoutParams.M;
            this.L = layoutParams.L;
            this.N = layoutParams.N;
            this.O = layoutParams.O;
            this.P = layoutParams.P;
            this.Q = layoutParams.Q;
            this.R = layoutParams.R;
            this.S = layoutParams.S;
            this.W = layoutParams.W;
            this.X = layoutParams.X;
            this.Y = layoutParams.Y;
            this.Z = layoutParams.Z;
            this.ad = layoutParams.ad;
            this.ae = layoutParams.ae;
            this.af = layoutParams.af;
            this.ag = layoutParams.ag;
            this.ah = layoutParams.ah;
            this.ai = layoutParams.ai;
            this.aj = layoutParams.aj;
            this.V = layoutParams.V;
            this.an = layoutParams.an;
        }

        public final void a() {
            this.Z = false;
            this.W = true;
            this.X = true;
            if (this.width == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            if (this.height == -2 && this.U) {
                this.X = false;
                if (this.J == 0) {
                    this.J = 1;
                }
            }
            if (this.width == 0 || this.width == -1) {
                this.W = false;
                if (this.width == 0 && this.I == 1) {
                    this.width = -2;
                    this.T = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.X = false;
                if (this.height == 0 && this.J == 1) {
                    this.height = -2;
                    this.U = true;
                }
            }
            if (this.f1591c != -1.0f || this.f1589a != -1 || this.f1590b != -1) {
                this.Z = true;
                this.W = true;
                this.X = true;
                if (!(this.an instanceof h)) {
                    this.an = new h();
                }
                ((h) this.an).o(this.S);
            }
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    public final class a implements b.AbstractC0032b {

        /* renamed from: a  reason: collision with root package name */
        ConstraintLayout f1594a;

        /* renamed from: b  reason: collision with root package name */
        int f1595b;

        /* renamed from: c  reason: collision with root package name */
        int f1596c;

        /* renamed from: d  reason: collision with root package name */
        int f1597d;
        int e;
        int f;
        int g;

        public a(ConstraintLayout constraintLayout) {
            this.f1594a = constraintLayout;
        }

        private static boolean a(int i, int i2, int i3) {
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

        @Override // androidx.constraintlayout.a.a.a.b.AbstractC0032b
        public final void a() {
            int childCount = this.f1594a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f1594a.getChildAt(i);
                if (childAt instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt;
                    if (placeholder.f1600b != null) {
                        LayoutParams layoutParams = (LayoutParams) placeholder.getLayoutParams();
                        LayoutParams layoutParams2 = (LayoutParams) placeholder.f1600b.getLayoutParams();
                        layoutParams2.an.ak = 0;
                        if (layoutParams.an.R[0] != e.a.FIXED) {
                            layoutParams.an.g(layoutParams2.an.o());
                        }
                        if (layoutParams.an.R[1] != e.a.FIXED) {
                            layoutParams.an.h(layoutParams2.an.p());
                        }
                        layoutParams2.an.ak = 8;
                    }
                }
            }
            int size = this.f1594a.f1584a.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f1594a.f1584a.get(i2);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00b9, code lost:
            if (r7.m == androidx.constraintlayout.a.a.a.b.a.f1322c) goto L_0x00bc;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01d6, code lost:
            if (r7.m == androidx.constraintlayout.a.a.a.b.a.f1322c) goto L_0x01d9;
         */
        @Override // androidx.constraintlayout.a.a.a.b.AbstractC0032b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(androidx.constraintlayout.a.a.e r6, androidx.constraintlayout.a.a.a.b.a r7) {
            /*
                Method dump skipped, instructions count: 1532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.a(androidx.constraintlayout.a.a.e, androidx.constraintlayout.a.a.a.b$a):void");
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        a(null, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(attributeSet, i, i2);
    }

    private void a(AttributeSet attributeSet, int i, int i2) {
        this.P.aj = this;
        this.P.a(this.W);
        this.O.put(getId(), this);
        this.g = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == e.b.ConstraintLayout_Layout_android_minWidth) {
                    this.f1585b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1585b);
                } else if (index == e.b.ConstraintLayout_Layout_android_minHeight) {
                    this.f1586c = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1586c);
                } else if (index == e.b.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1587d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1587d);
                } else if (index == e.b.ConstraintLayout_Layout_android_maxHeight) {
                    this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                } else if (index == e.b.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f = obtainStyledAttributes.getInt(index, this.f);
                } else if (index == e.b.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            c(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.R = null;
                        }
                    }
                } else if (index == e.b.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        c cVar = new c();
                        this.g = cVar;
                        cVar.b(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.g = null;
                    }
                    this.h = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.P.o(this.f);
    }

    private boolean a() {
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
                androidx.constraintlayout.a.a.e a2 = a(getChildAt(i2));
                if (a2 != null) {
                    a2.k();
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
                        getTargetWidget(childAt.getId()).al = str;
                    } catch (Resources.NotFoundException e) {
                    }
                }
            }
            if (this.h != -1) {
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = getChildAt(i4);
                    if (childAt2.getId() == this.h && (childAt2 instanceof Constraints)) {
                        Constraints constraints = (Constraints) childAt2;
                        if (constraints.f1598a == null) {
                            constraints.f1598a = new c();
                        }
                        c cVar = constraints.f1598a;
                        int childCount3 = constraints.getChildCount();
                        cVar.f1623c.clear();
                        for (int i5 = 0; i5 < childCount3; i5++) {
                            View childAt3 = constraints.getChildAt(i5);
                            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt3.getLayoutParams();
                            int id = childAt3.getId();
                            if (!cVar.f1622b || id != -1) {
                                if (!cVar.f1623c.containsKey(Integer.valueOf(id))) {
                                    cVar.f1623c.put(Integer.valueOf(id), new c.a());
                                }
                                c.a aVar = cVar.f1623c.get(Integer.valueOf(id));
                                if (childAt3 instanceof ConstraintHelper) {
                                    ConstraintHelper constraintHelper = (ConstraintHelper) childAt3;
                                    aVar.a(id, layoutParams);
                                    if (constraintHelper instanceof Barrier) {
                                        aVar.f1628d.ad = 1;
                                        Barrier barrier = (Barrier) constraintHelper;
                                        aVar.f1628d.ab = barrier.f1579a;
                                        aVar.f1628d.ae = barrier.b();
                                        aVar.f1628d.ac = barrier.f1580b.f1315c;
                                    }
                                }
                                aVar.a(id, layoutParams);
                            } else {
                                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                            }
                        }
                        this.g = constraints.f1598a;
                    }
                }
            }
            c cVar2 = this.g;
            if (cVar2 != null) {
                cVar2.d(this);
            }
            this.P.be.clear();
            int size = this.f1584a.size();
            if (size > 0) {
                for (int i6 = 0; i6 < size; i6++) {
                    this.f1584a.get(i6).b(this);
                }
            }
            for (int i7 = 0; i7 < childCount2; i7++) {
                View childAt4 = getChildAt(i7);
                if (childAt4 instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt4;
                    if (placeholder.f1599a == -1 && !placeholder.isInEditMode()) {
                        placeholder.setVisibility(placeholder.f1601c);
                    }
                    placeholder.f1600b = findViewById(placeholder.f1599a);
                    if (placeholder.f1600b != null) {
                        ((LayoutParams) placeholder.f1600b.getLayoutParams()).ab = true;
                        placeholder.f1600b.setVisibility(0);
                        placeholder.setVisibility(0);
                    }
                }
            }
            this.l.clear();
            this.l.put(0, this.P);
            this.l.put(getId(), this.P);
            for (int i8 = 0; i8 < childCount2; i8++) {
                View childAt5 = getChildAt(i8);
                this.l.put(childAt5.getId(), a(childAt5));
            }
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt6 = getChildAt(i9);
                androidx.constraintlayout.a.a.e a3 = a(childAt6);
                if (a3 != null) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt6.getLayoutParams();
                    this.P.a(a3);
                    a(isInEditMode, childAt6, a3, layoutParams2, this.l);
                }
            }
        }
        return z;
    }

    private void b() {
        this.Q = true;
        this.j = -1;
        this.k = -1;
        this.S = -1;
        this.T = -1;
        this.U = 0;
        this.V = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LayoutParams c() {
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

    private final androidx.constraintlayout.a.a.e getTargetWidget(int i) {
        if (i == 0) {
            return this.P;
        }
        View view = this.O.get(i);
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
            return this.P;
        }
        if (view2 == null) {
            return null;
        }
        return ((LayoutParams) view2.getLayoutParams()).an;
    }

    public final androidx.constraintlayout.a.a.e a(View view) {
        if (view == this) {
            return this.P;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).an;
    }

    public final Object a(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.i;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.i.get(str);
    }

    public final void a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        int i5 = this.W.e;
        int i6 = i3 + this.W.f1597d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = resolveSizeAndState(i6, i, 0);
            int resolveSizeAndState2 = resolveSizeAndState(i7, i2, 0);
            int min = Math.min(this.f1587d, resolveSizeAndState & 16777215);
            int min2 = Math.min(this.e, resolveSizeAndState2 & 16777215);
            int i8 = min;
            if (z) {
                i8 = min | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
            int i9 = min2;
            if (z2) {
                i9 = min2 | Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
            setMeasuredDimension(i8, i9);
            this.j = i8;
            this.k = i9;
            return;
        }
        setMeasuredDimension(i6, i7);
        this.j = i6;
        this.k = i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00a1, code lost:
        if (isRtl() != false) goto L_0x00b3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.constraintlayout.a.a.f r10, int r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a(androidx.constraintlayout.a.a.f, int, int, int):void");
    }

    public final void a(boolean z, View view, androidx.constraintlayout.a.a.e eVar, LayoutParams layoutParams, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        androidx.constraintlayout.a.a.e eVar2;
        androidx.constraintlayout.a.a.e eVar3;
        androidx.constraintlayout.a.a.e eVar4;
        androidx.constraintlayout.a.a.e eVar5;
        layoutParams.a();
        layoutParams.ao = false;
        eVar.ak = view.getVisibility();
        if (layoutParams.ab) {
            eVar.D = true;
            eVar.ak = 8;
        }
        eVar.aj = view;
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).a(eVar, this.P.f1377d);
        }
        if (layoutParams.Z) {
            h hVar = (h) eVar;
            int i = layoutParams.ak;
            int i2 = layoutParams.al;
            float f = layoutParams.am;
            if (Build.VERSION.SDK_INT < 17) {
                i = layoutParams.f1589a;
                i2 = layoutParams.f1590b;
                f = layoutParams.f1591c;
            }
            if (f != -1.0f) {
                hVar.a(f);
            } else if (i != -1) {
                hVar.p(i);
            } else if (i2 != -1) {
                hVar.q(i2);
            }
        } else {
            int i3 = layoutParams.ad;
            int i4 = layoutParams.ae;
            int i5 = layoutParams.af;
            int i6 = layoutParams.ag;
            int i7 = layoutParams.ah;
            int i8 = layoutParams.ai;
            float f2 = layoutParams.aj;
            if (Build.VERSION.SDK_INT < 17) {
                int i9 = layoutParams.f1592d;
                int i10 = layoutParams.e;
                int i11 = layoutParams.f;
                int i12 = layoutParams.g;
                i7 = layoutParams.t;
                i8 = layoutParams.v;
                f2 = layoutParams.z;
                i3 = i9;
                i4 = i10;
                if (i9 == -1) {
                    i3 = i9;
                    i4 = i10;
                    if (i10 == -1) {
                        if (layoutParams.q != -1) {
                            i3 = layoutParams.q;
                            i4 = i10;
                        } else {
                            i3 = i9;
                            i4 = i10;
                            if (layoutParams.p != -1) {
                                i4 = layoutParams.p;
                                i3 = i9;
                            }
                        }
                    }
                }
                i5 = i11;
                i6 = i12;
                if (i11 == -1) {
                    i5 = i11;
                    i6 = i12;
                    if (i12 == -1) {
                        if (layoutParams.r != -1) {
                            i5 = layoutParams.r;
                            i6 = i12;
                        } else {
                            i5 = i11;
                            i6 = i12;
                            if (layoutParams.s != -1) {
                                i6 = layoutParams.s;
                                i5 = i11;
                            }
                        }
                    }
                }
            }
            if (layoutParams.m != -1) {
                androidx.constraintlayout.a.a.e eVar6 = sparseArray.get(layoutParams.m);
                if (eVar6 != null) {
                    eVar.a(eVar6, layoutParams.o, layoutParams.n);
                }
            } else {
                if (i3 != -1) {
                    androidx.constraintlayout.a.a.e eVar7 = sparseArray.get(i3);
                    if (eVar7 != null) {
                        eVar.a(d.a.LEFT, eVar7, d.a.LEFT, layoutParams.leftMargin, i7);
                    }
                } else if (!(i4 == -1 || (eVar5 = sparseArray.get(i4)) == null)) {
                    eVar.a(d.a.LEFT, eVar5, d.a.RIGHT, layoutParams.leftMargin, i7);
                }
                if (i5 != -1) {
                    androidx.constraintlayout.a.a.e eVar8 = sparseArray.get(i5);
                    if (eVar8 != null) {
                        eVar.a(d.a.RIGHT, eVar8, d.a.LEFT, layoutParams.rightMargin, i8);
                    }
                } else if (!(i6 == -1 || (eVar4 = sparseArray.get(i6)) == null)) {
                    eVar.a(d.a.RIGHT, eVar4, d.a.RIGHT, layoutParams.rightMargin, i8);
                }
                if (layoutParams.h != -1) {
                    androidx.constraintlayout.a.a.e eVar9 = sparseArray.get(layoutParams.h);
                    if (eVar9 != null) {
                        eVar.a(d.a.TOP, eVar9, d.a.TOP, layoutParams.topMargin, layoutParams.u);
                    }
                } else if (!(layoutParams.i == -1 || (eVar3 = sparseArray.get(layoutParams.i)) == null)) {
                    eVar.a(d.a.TOP, eVar3, d.a.BOTTOM, layoutParams.topMargin, layoutParams.u);
                }
                if (layoutParams.j != -1) {
                    androidx.constraintlayout.a.a.e eVar10 = sparseArray.get(layoutParams.j);
                    if (eVar10 != null) {
                        eVar.a(d.a.BOTTOM, eVar10, d.a.TOP, layoutParams.bottomMargin, layoutParams.w);
                    }
                } else if (!(layoutParams.k == -1 || (eVar2 = sparseArray.get(layoutParams.k)) == null)) {
                    eVar.a(d.a.BOTTOM, eVar2, d.a.BOTTOM, layoutParams.bottomMargin, layoutParams.w);
                }
                if (layoutParams.l != -1) {
                    View view2 = this.O.get(layoutParams.l);
                    androidx.constraintlayout.a.a.e eVar11 = sparseArray.get(layoutParams.l);
                    if (!(eVar11 == null || view2 == null || !(view2.getLayoutParams() instanceof LayoutParams))) {
                        LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                        layoutParams.Y = true;
                        layoutParams2.Y = true;
                        eVar.a(d.a.BASELINE).a(eVar11.a(d.a.BASELINE), 0, -1, true);
                        eVar.C = true;
                        layoutParams2.an.C = true;
                        eVar.a(d.a.TOP).f();
                        eVar.a(d.a.BOTTOM).f();
                    }
                }
                if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                    eVar.ah = f2;
                }
                if (layoutParams.A >= BitmapDescriptorFactory.HUE_RED) {
                    eVar.ai = layoutParams.A;
                }
            }
            if (z && !(layoutParams.Q == -1 && layoutParams.R == -1)) {
                eVar.d(layoutParams.Q, layoutParams.R);
            }
            if (layoutParams.W) {
                eVar.R[0] = e.a.FIXED;
                eVar.g(layoutParams.width);
                if (layoutParams.width == -2) {
                    eVar.R[0] = e.a.WRAP_CONTENT;
                }
            } else if (layoutParams.width == -1) {
                if (layoutParams.T) {
                    eVar.R[0] = e.a.MATCH_CONSTRAINT;
                } else {
                    eVar.R[0] = e.a.MATCH_PARENT;
                }
                eVar.a(d.a.LEFT).g = layoutParams.leftMargin;
                eVar.a(d.a.RIGHT).g = layoutParams.rightMargin;
            } else {
                eVar.R[0] = e.a.MATCH_CONSTRAINT;
                eVar.g(0);
            }
            if (layoutParams.X) {
                eVar.R[1] = e.a.FIXED;
                eVar.h(layoutParams.height);
                if (layoutParams.height == -2) {
                    eVar.R[1] = e.a.WRAP_CONTENT;
                }
            } else if (layoutParams.height == -1) {
                if (layoutParams.U) {
                    eVar.R[1] = e.a.MATCH_CONSTRAINT;
                } else {
                    eVar.R[1] = e.a.MATCH_PARENT;
                }
                eVar.a(d.a.TOP).g = layoutParams.topMargin;
                eVar.a(d.a.BOTTOM).g = layoutParams.bottomMargin;
            } else {
                eVar.R[1] = e.a.MATCH_CONSTRAINT;
                eVar.h(0);
            }
            eVar.a(layoutParams.B);
            eVar.aB[0] = layoutParams.E;
            eVar.aB[1] = layoutParams.F;
            eVar.ax = layoutParams.G;
            eVar.ay = layoutParams.H;
            eVar.a(layoutParams.I, layoutParams.K, layoutParams.M, layoutParams.O);
            eVar.b(layoutParams.J, layoutParams.L, layoutParams.N, layoutParams.P);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    protected void c(int i) {
        this.R = new b(getContext(), this, i);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.f1584a;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f1584a.get(i).a(this);
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

    @Override // android.view.View
    public void forceLayout() {
        b();
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return c();
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
        return this.P.aX;
    }

    public View getViewById(int i) {
        return this.O.get(i);
    }

    public boolean isRtl() {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            androidx.constraintlayout.a.a.e eVar = layoutParams.an;
            if ((childAt.getVisibility() != 8 || layoutParams.Z || layoutParams.aa || layoutParams.ac || isInEditMode) && !layoutParams.ab) {
                int m = eVar.m();
                int n = eVar.n();
                int o = eVar.o() + m;
                int p = eVar.p() + n;
                childAt.layout(m, n, o, p);
                if ((childAt instanceof Placeholder) && (view = ((Placeholder) childAt).f1600b) != null) {
                    view.setVisibility(0);
                    view.layout(m, n, o, p);
                }
            }
        }
        int size = this.f1584a.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f1584a.get(i6).a();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.Q) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.Q = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.Q) {
            int i4 = this.n;
            if (i4 == i && this.o == i2) {
                a(i, i2, this.P.o(), this.P.p(), this.P.aZ, this.P.ba);
                return;
            } else if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.o) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.P.p()) {
                this.n = i;
                this.o = i2;
                a(i, i2, this.P.o(), this.P.p(), this.P.aZ, this.P.ba);
                return;
            }
        }
        this.n = i;
        this.o = i2;
        this.P.f1377d = isRtl();
        if (this.Q) {
            this.Q = false;
            if (a()) {
                this.P.e();
            }
        }
        a(this.P, this.f, i, i2);
        a(i, i2, this.P.o(), this.P.p(), this.P.aZ, this.P.ba);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        androidx.constraintlayout.a.a.e a2 = a(view);
        if ((view instanceof Guideline) && !(a2 instanceof h)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.an = new h();
            layoutParams.Z = true;
            ((h) layoutParams.an).o(layoutParams.S);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.c();
            ((LayoutParams) view.getLayoutParams()).aa = true;
            if (!this.f1584a.contains(constraintHelper)) {
                this.f1584a.add(constraintHelper);
            }
        }
        this.O.put(view.getId(), view);
        this.Q = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.O.remove(view.getId());
        this.P.b(a(view));
        this.f1584a.remove(view);
        this.Q = true;
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
        b();
        super.requestLayout();
    }

    public void setConstraintSet(c cVar) {
        this.g = cVar;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.i == null) {
                this.i = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            String str2 = str;
            if (indexOf != -1) {
                str2 = str.substring(indexOf + 1);
            }
            this.i.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i) {
        this.O.remove(getId());
        super.setId(i);
        this.O.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i != this.e) {
            this.e = i;
            requestLayout();
        }
    }

    public void setMaxWidth(int i) {
        if (i != this.f1587d) {
            this.f1587d = i;
            requestLayout();
        }
    }

    public void setMinHeight(int i) {
        if (i != this.f1586c) {
            this.f1586c = i;
            requestLayout();
        }
    }

    public void setMinWidth(int i) {
        if (i != this.f1585b) {
            this.f1585b = i;
            requestLayout();
        }
    }

    public void setOnConstraintsChanged(d dVar) {
        this.m = dVar;
        b bVar = this.R;
        if (bVar != null) {
            bVar.f1612d = dVar;
        }
    }

    public void setOptimizationLevel(int i) {
        this.f = i;
        this.P.o(i);
    }

    public void setState(int i, int i2, int i3) {
        b bVar = this.R;
        if (bVar != null) {
            bVar.a(i, i2, i3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
