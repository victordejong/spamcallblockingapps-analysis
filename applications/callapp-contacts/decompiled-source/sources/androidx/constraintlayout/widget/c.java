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
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.e;
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
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c.class */
public final class c {
    private static final int[] e = {0, 4, 8};
    private static SparseIntArray f;

    /* renamed from: a  reason: collision with root package name */
    public boolean f1621a;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, androidx.constraintlayout.widget.a> f1624d = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public boolean f1622b = true;

    /* renamed from: c  reason: collision with root package name */
    public HashMap<Integer, a> f1623c = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1625a;

        /* renamed from: b  reason: collision with root package name */
        public final d f1626b = new d();

        /* renamed from: c  reason: collision with root package name */
        public final C0038c f1627c = new C0038c();

        /* renamed from: d  reason: collision with root package name */
        public final b f1628d = new b();
        public final e e = new e();
        public HashMap<String, androidx.constraintlayout.widget.a> f = new HashMap<>();

        public final void a(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f1625a = i;
            this.f1628d.h = layoutParams.f1592d;
            this.f1628d.i = layoutParams.e;
            this.f1628d.j = layoutParams.f;
            this.f1628d.k = layoutParams.g;
            this.f1628d.l = layoutParams.h;
            this.f1628d.m = layoutParams.i;
            this.f1628d.n = layoutParams.j;
            this.f1628d.o = layoutParams.k;
            this.f1628d.p = layoutParams.l;
            this.f1628d.q = layoutParams.p;
            this.f1628d.r = layoutParams.q;
            this.f1628d.s = layoutParams.r;
            this.f1628d.t = layoutParams.s;
            this.f1628d.u = layoutParams.z;
            this.f1628d.v = layoutParams.A;
            this.f1628d.w = layoutParams.B;
            this.f1628d.x = layoutParams.m;
            this.f1628d.y = layoutParams.n;
            this.f1628d.z = layoutParams.o;
            this.f1628d.A = layoutParams.Q;
            this.f1628d.B = layoutParams.R;
            this.f1628d.C = layoutParams.S;
            this.f1628d.g = layoutParams.f1591c;
            this.f1628d.e = layoutParams.f1589a;
            this.f1628d.f = layoutParams.f1590b;
            this.f1628d.f1631c = layoutParams.width;
            this.f1628d.f1632d = layoutParams.height;
            this.f1628d.D = layoutParams.leftMargin;
            this.f1628d.E = layoutParams.rightMargin;
            this.f1628d.F = layoutParams.topMargin;
            this.f1628d.G = layoutParams.bottomMargin;
            this.f1628d.P = layoutParams.F;
            this.f1628d.Q = layoutParams.E;
            this.f1628d.S = layoutParams.H;
            this.f1628d.R = layoutParams.G;
            this.f1628d.ah = layoutParams.T;
            this.f1628d.ai = layoutParams.U;
            this.f1628d.T = layoutParams.I;
            this.f1628d.U = layoutParams.J;
            this.f1628d.V = layoutParams.M;
            this.f1628d.W = layoutParams.N;
            this.f1628d.X = layoutParams.K;
            this.f1628d.Y = layoutParams.L;
            this.f1628d.Z = layoutParams.O;
            this.f1628d.aa = layoutParams.P;
            this.f1628d.ag = layoutParams.V;
            this.f1628d.K = layoutParams.u;
            this.f1628d.M = layoutParams.w;
            this.f1628d.J = layoutParams.t;
            this.f1628d.L = layoutParams.v;
            this.f1628d.O = layoutParams.x;
            this.f1628d.N = layoutParams.y;
            if (Build.VERSION.SDK_INT >= 17) {
                this.f1628d.H = layoutParams.getMarginEnd();
                this.f1628d.I = layoutParams.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i, Constraints.LayoutParams layoutParams) {
            a(i, (ConstraintLayout.LayoutParams) layoutParams);
            this.f1626b.f1640d = layoutParams.ap;
            this.e.f1642b = layoutParams.as;
            this.e.f1643c = layoutParams.at;
            this.e.f1644d = layoutParams.au;
            this.e.e = layoutParams.av;
            this.e.f = layoutParams.aw;
            this.e.g = layoutParams.ax;
            this.e.h = layoutParams.ay;
            this.e.i = layoutParams.az;
            this.e.j = layoutParams.aA;
            this.e.k = layoutParams.aB;
            this.e.m = layoutParams.ar;
            this.e.l = layoutParams.aq;
        }

        public final void a(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.f1592d = this.f1628d.h;
            layoutParams.e = this.f1628d.i;
            layoutParams.f = this.f1628d.j;
            layoutParams.g = this.f1628d.k;
            layoutParams.h = this.f1628d.l;
            layoutParams.i = this.f1628d.m;
            layoutParams.j = this.f1628d.n;
            layoutParams.k = this.f1628d.o;
            layoutParams.l = this.f1628d.p;
            layoutParams.p = this.f1628d.q;
            layoutParams.q = this.f1628d.r;
            layoutParams.r = this.f1628d.s;
            layoutParams.s = this.f1628d.t;
            layoutParams.leftMargin = this.f1628d.D;
            layoutParams.rightMargin = this.f1628d.E;
            layoutParams.topMargin = this.f1628d.F;
            layoutParams.bottomMargin = this.f1628d.G;
            layoutParams.x = this.f1628d.O;
            layoutParams.y = this.f1628d.N;
            layoutParams.u = this.f1628d.K;
            layoutParams.w = this.f1628d.M;
            layoutParams.z = this.f1628d.u;
            layoutParams.A = this.f1628d.v;
            layoutParams.m = this.f1628d.x;
            layoutParams.n = this.f1628d.y;
            layoutParams.o = this.f1628d.z;
            layoutParams.B = this.f1628d.w;
            layoutParams.Q = this.f1628d.A;
            layoutParams.R = this.f1628d.B;
            layoutParams.F = this.f1628d.P;
            layoutParams.E = this.f1628d.Q;
            layoutParams.H = this.f1628d.S;
            layoutParams.G = this.f1628d.R;
            layoutParams.T = this.f1628d.ah;
            layoutParams.U = this.f1628d.ai;
            layoutParams.I = this.f1628d.T;
            layoutParams.J = this.f1628d.U;
            layoutParams.M = this.f1628d.V;
            layoutParams.N = this.f1628d.W;
            layoutParams.K = this.f1628d.X;
            layoutParams.L = this.f1628d.Y;
            layoutParams.O = this.f1628d.Z;
            layoutParams.P = this.f1628d.aa;
            layoutParams.S = this.f1628d.C;
            layoutParams.f1591c = this.f1628d.g;
            layoutParams.f1589a = this.f1628d.e;
            layoutParams.f1590b = this.f1628d.f;
            layoutParams.width = this.f1628d.f1631c;
            layoutParams.height = this.f1628d.f1632d;
            if (this.f1628d.ag != null) {
                layoutParams.V = this.f1628d.ag;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f1628d.I);
                layoutParams.setMarginEnd(this.f1628d.H);
            }
            layoutParams.a();
        }

        public final /* synthetic */ Object clone() throws CloneNotSupportedException {
            a aVar = new a();
            aVar.f1628d.a(this.f1628d);
            aVar.f1627c.a(this.f1627c);
            aVar.f1626b.a(this.f1626b);
            aVar.e.a(this.e);
            aVar.f1625a = this.f1625a;
            return aVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$b.class */
    public static final class b {
        private static SparseIntArray ak;
        public int[] ae;
        public String af;
        public String ag;

        /* renamed from: c  reason: collision with root package name */
        public int f1631c;

        /* renamed from: d  reason: collision with root package name */
        public int f1632d;

        /* renamed from: a  reason: collision with root package name */
        public boolean f1629a = false;

        /* renamed from: b  reason: collision with root package name */
        public boolean f1630b = false;
        public int e = -1;
        public int f = -1;
        public float g = -1.0f;
        public int h = -1;
        public int i = -1;
        public int j = -1;
        public int k = -1;
        public int l = -1;
        public int m = -1;
        public int n = -1;
        public int o = -1;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public float u = 0.5f;
        public float v = 0.5f;
        public String w = null;
        public int x = -1;
        public int y = 0;
        public float z = BitmapDescriptorFactory.HUE_RED;
        public int A = -1;
        public int B = -1;
        public int C = -1;
        public int D = -1;
        public int E = -1;
        public int F = -1;
        public int G = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int M = -1;
        public int N = -1;
        public int O = -1;
        public float P = -1.0f;
        public float Q = -1.0f;
        public int R = 0;
        public int S = 0;
        public int T = 0;
        public int U = 0;
        public int V = -1;
        public int W = -1;
        public int X = -1;
        public int Y = -1;
        public float Z = 1.0f;
        public float aa = 1.0f;
        public int ab = -1;
        public int ac = 0;
        public int ad = -1;
        public boolean ah = false;
        public boolean ai = false;
        public boolean aj = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            ak = sparseIntArray;
            sparseIntArray.append(e.b.Layout_layout_constraintLeft_toLeftOf, 24);
            ak.append(e.b.Layout_layout_constraintLeft_toRightOf, 25);
            ak.append(e.b.Layout_layout_constraintRight_toLeftOf, 28);
            ak.append(e.b.Layout_layout_constraintRight_toRightOf, 29);
            ak.append(e.b.Layout_layout_constraintTop_toTopOf, 35);
            ak.append(e.b.Layout_layout_constraintTop_toBottomOf, 34);
            ak.append(e.b.Layout_layout_constraintBottom_toTopOf, 4);
            ak.append(e.b.Layout_layout_constraintBottom_toBottomOf, 3);
            ak.append(e.b.Layout_layout_constraintBaseline_toBaselineOf, 1);
            ak.append(e.b.Layout_layout_editor_absoluteX, 6);
            ak.append(e.b.Layout_layout_editor_absoluteY, 7);
            ak.append(e.b.Layout_layout_constraintGuide_begin, 17);
            ak.append(e.b.Layout_layout_constraintGuide_end, 18);
            ak.append(e.b.Layout_layout_constraintGuide_percent, 19);
            ak.append(e.b.Layout_android_orientation, 26);
            ak.append(e.b.Layout_layout_constraintStart_toEndOf, 31);
            ak.append(e.b.Layout_layout_constraintStart_toStartOf, 32);
            ak.append(e.b.Layout_layout_constraintEnd_toStartOf, 10);
            ak.append(e.b.Layout_layout_constraintEnd_toEndOf, 9);
            ak.append(e.b.Layout_layout_goneMarginLeft, 13);
            ak.append(e.b.Layout_layout_goneMarginTop, 16);
            ak.append(e.b.Layout_layout_goneMarginRight, 14);
            ak.append(e.b.Layout_layout_goneMarginBottom, 11);
            ak.append(e.b.Layout_layout_goneMarginStart, 15);
            ak.append(e.b.Layout_layout_goneMarginEnd, 12);
            ak.append(e.b.Layout_layout_constraintVertical_weight, 38);
            ak.append(e.b.Layout_layout_constraintHorizontal_weight, 37);
            ak.append(e.b.Layout_layout_constraintHorizontal_chainStyle, 39);
            ak.append(e.b.Layout_layout_constraintVertical_chainStyle, 40);
            ak.append(e.b.Layout_layout_constraintHorizontal_bias, 20);
            ak.append(e.b.Layout_layout_constraintVertical_bias, 36);
            ak.append(e.b.Layout_layout_constraintDimensionRatio, 5);
            ak.append(e.b.Layout_layout_constraintLeft_creator, 76);
            ak.append(e.b.Layout_layout_constraintTop_creator, 76);
            ak.append(e.b.Layout_layout_constraintRight_creator, 76);
            ak.append(e.b.Layout_layout_constraintBottom_creator, 76);
            ak.append(e.b.Layout_layout_constraintBaseline_creator, 76);
            ak.append(e.b.Layout_android_layout_marginLeft, 23);
            ak.append(e.b.Layout_android_layout_marginRight, 27);
            ak.append(e.b.Layout_android_layout_marginStart, 30);
            ak.append(e.b.Layout_android_layout_marginEnd, 8);
            ak.append(e.b.Layout_android_layout_marginTop, 33);
            ak.append(e.b.Layout_android_layout_marginBottom, 2);
            ak.append(e.b.Layout_android_layout_width, 22);
            ak.append(e.b.Layout_android_layout_height, 21);
            ak.append(e.b.Layout_layout_constraintCircle, 61);
            ak.append(e.b.Layout_layout_constraintCircleRadius, 62);
            ak.append(e.b.Layout_layout_constraintCircleAngle, 63);
            ak.append(e.b.Layout_layout_constraintWidth_percent, 69);
            ak.append(e.b.Layout_layout_constraintHeight_percent, 70);
            ak.append(e.b.Layout_chainUseRtl, 71);
            ak.append(e.b.Layout_barrierDirection, 72);
            ak.append(e.b.Layout_barrierMargin, 73);
            ak.append(e.b.Layout_constraint_referenced_ids, 74);
            ak.append(e.b.Layout_barrierAllowsGoneWidgets, 75);
        }

        final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.Layout);
            this.f1630b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = ak.get(index);
                if (i2 == 80) {
                    this.ah = obtainStyledAttributes.getBoolean(index, this.ah);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.p = c.b(obtainStyledAttributes, index, this.p);
                            continue;
                        case 2:
                            this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                            continue;
                        case 3:
                            this.o = c.b(obtainStyledAttributes, index, this.o);
                            continue;
                        case 4:
                            this.n = c.b(obtainStyledAttributes, index, this.n);
                            continue;
                        case 5:
                            this.w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.A = obtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                            continue;
                        case 7:
                            this.B = obtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.t = c.b(obtainStyledAttributes, index, this.t);
                            continue;
                        case 10:
                            this.s = c.b(obtainStyledAttributes, index, this.s);
                            continue;
                        case 11:
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            continue;
                        case 12:
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            continue;
                        case 13:
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            continue;
                        case 14:
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            continue;
                        case 15:
                            this.O = obtainStyledAttributes.getDimensionPixelSize(index, this.O);
                            continue;
                        case 16:
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            continue;
                        case 17:
                            this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                            continue;
                        case 18:
                            this.f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                            continue;
                        case 19:
                            this.g = obtainStyledAttributes.getFloat(index, this.g);
                            continue;
                        case 20:
                            this.u = obtainStyledAttributes.getFloat(index, this.u);
                            continue;
                        case 21:
                            this.f1632d = obtainStyledAttributes.getLayoutDimension(index, this.f1632d);
                            continue;
                        case 22:
                            this.f1631c = obtainStyledAttributes.getLayoutDimension(index, this.f1631c);
                            continue;
                        case 23:
                            this.D = obtainStyledAttributes.getDimensionPixelSize(index, this.D);
                            continue;
                        case 24:
                            this.h = c.b(obtainStyledAttributes, index, this.h);
                            continue;
                        case 25:
                            this.i = c.b(obtainStyledAttributes, index, this.i);
                            continue;
                        case 26:
                            this.C = obtainStyledAttributes.getInt(index, this.C);
                            continue;
                        case 27:
                            this.E = obtainStyledAttributes.getDimensionPixelSize(index, this.E);
                            continue;
                        case 28:
                            this.j = c.b(obtainStyledAttributes, index, this.j);
                            continue;
                        case 29:
                            this.k = c.b(obtainStyledAttributes, index, this.k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.q = c.b(obtainStyledAttributes, index, this.q);
                            continue;
                        case 32:
                            this.r = c.b(obtainStyledAttributes, index, this.r);
                            continue;
                        case 33:
                            this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                            continue;
                        case 34:
                            this.m = c.b(obtainStyledAttributes, index, this.m);
                            continue;
                        case 35:
                            this.l = c.b(obtainStyledAttributes, index, this.l);
                            continue;
                        case 36:
                            this.v = obtainStyledAttributes.getFloat(index, this.v);
                            continue;
                        case 37:
                            this.Q = obtainStyledAttributes.getFloat(index, this.Q);
                            continue;
                        case 38:
                            this.P = obtainStyledAttributes.getFloat(index, this.P);
                            continue;
                        case 39:
                            this.R = obtainStyledAttributes.getInt(index, this.R);
                            continue;
                        case 40:
                            this.S = obtainStyledAttributes.getInt(index, this.S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.T = obtainStyledAttributes.getInt(index, this.T);
                                    continue;
                                case 55:
                                    this.U = obtainStyledAttributes.getInt(index, this.U);
                                    continue;
                                case 56:
                                    this.V = obtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                    continue;
                                case 57:
                                    this.W = obtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                    continue;
                                case 58:
                                    this.X = obtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                    continue;
                                case 59:
                                    this.Y = obtainStyledAttributes.getDimensionPixelSize(index, this.Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.x = c.b(obtainStyledAttributes, index, this.x);
                                            continue;
                                        case 62:
                                            this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                                            continue;
                                        case 63:
                                            this.z = obtainStyledAttributes.getFloat(index, this.z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.aa = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    continue;
                                                case 72:
                                                    this.ab = obtainStyledAttributes.getInt(index, this.ab);
                                                    continue;
                                                case 73:
                                                    this.ac = obtainStyledAttributes.getDimensionPixelSize(index, this.ac);
                                                    continue;
                                                case 74:
                                                    this.af = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.aj = obtainStyledAttributes.getBoolean(index, this.aj);
                                                    continue;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + ak.get(index));
                                                    continue;
                                                case 77:
                                                    this.ag = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + ak.get(index));
                                                    continue;
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.ai = obtainStyledAttributes.getBoolean(index, this.ai);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final void a(b bVar) {
            this.f1629a = bVar.f1629a;
            this.f1631c = bVar.f1631c;
            this.f1630b = bVar.f1630b;
            this.f1632d = bVar.f1632d;
            this.e = bVar.e;
            this.f = bVar.f;
            this.g = bVar.g;
            this.h = bVar.h;
            this.i = bVar.i;
            this.j = bVar.j;
            this.k = bVar.k;
            this.l = bVar.l;
            this.m = bVar.m;
            this.n = bVar.n;
            this.o = bVar.o;
            this.p = bVar.p;
            this.q = bVar.q;
            this.r = bVar.r;
            this.s = bVar.s;
            this.t = bVar.t;
            this.u = bVar.u;
            this.v = bVar.v;
            this.w = bVar.w;
            this.x = bVar.x;
            this.y = bVar.y;
            this.z = bVar.z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            this.H = bVar.H;
            this.I = bVar.I;
            this.J = bVar.J;
            this.K = bVar.K;
            this.L = bVar.L;
            this.M = bVar.M;
            this.N = bVar.N;
            this.O = bVar.O;
            this.P = bVar.P;
            this.Q = bVar.Q;
            this.R = bVar.R;
            this.S = bVar.S;
            this.T = bVar.T;
            this.U = bVar.U;
            this.V = bVar.V;
            this.W = bVar.W;
            this.X = bVar.X;
            this.Y = bVar.Y;
            this.Z = bVar.Z;
            this.aa = bVar.aa;
            this.ab = bVar.ab;
            this.ac = bVar.ac;
            this.ad = bVar.ad;
            this.ag = bVar.ag;
            int[] iArr = bVar.ae;
            if (iArr != null) {
                this.ae = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.ae = null;
            }
            this.af = bVar.af;
            this.ah = bVar.ah;
            this.ai = bVar.ai;
            this.aj = bVar.aj;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$c.class */
    public static final class C0038c {
        private static SparseIntArray h;

        /* renamed from: a  reason: collision with root package name */
        public boolean f1633a = false;

        /* renamed from: b  reason: collision with root package name */
        public int f1634b = -1;

        /* renamed from: c  reason: collision with root package name */
        public String f1635c = null;

        /* renamed from: d  reason: collision with root package name */
        public int f1636d = -1;
        public int e = 0;
        public float f = Float.NaN;
        public float g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            h = sparseIntArray;
            sparseIntArray.append(e.b.Motion_motionPathRotate, 1);
            h.append(e.b.Motion_pathMotionArc, 2);
            h.append(e.b.Motion_transitionEasing, 3);
            h.append(e.b.Motion_drawPath, 4);
            h.append(e.b.Motion_animate_relativeTo, 5);
            h.append(e.b.Motion_motionStagger, 6);
        }

        final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.Motion);
            this.f1633a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (h.get(index)) {
                    case 1:
                        this.g = obtainStyledAttributes.getFloat(index, this.g);
                        break;
                    case 2:
                        this.f1636d = obtainStyledAttributes.getInt(index, this.f1636d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1635c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f1635c = androidx.constraintlayout.motion.a.c.f1438c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f1634b = c.b(obtainStyledAttributes, index, this.f1634b);
                        break;
                    case 6:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final void a(C0038c cVar) {
            this.f1633a = cVar.f1633a;
            this.f1634b = cVar.f1634b;
            this.f1635c = cVar.f1635c;
            this.f1636d = cVar.f1636d;
            this.e = cVar.e;
            this.g = cVar.g;
            this.f = cVar.f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1637a = false;

        /* renamed from: b  reason: collision with root package name */
        public int f1638b = 0;

        /* renamed from: c  reason: collision with root package name */
        public int f1639c = 0;

        /* renamed from: d  reason: collision with root package name */
        public float f1640d = 1.0f;
        public float e = Float.NaN;

        final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.PropertySet);
            this.f1637a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.PropertySet_android_alpha) {
                    this.f1640d = obtainStyledAttributes.getFloat(index, this.f1640d);
                } else if (index == e.b.PropertySet_android_visibility) {
                    this.f1638b = obtainStyledAttributes.getInt(index, this.f1638b);
                    this.f1638b = c.e[this.f1638b];
                } else if (index == e.b.PropertySet_visibilityMode) {
                    this.f1639c = obtainStyledAttributes.getInt(index, this.f1639c);
                } else if (index == e.b.PropertySet_motionProgress) {
                    this.e = obtainStyledAttributes.getFloat(index, this.e);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final void a(d dVar) {
            this.f1637a = dVar.f1637a;
            this.f1638b = dVar.f1638b;
            this.f1640d = dVar.f1640d;
            this.e = dVar.e;
            this.f1639c = dVar.f1639c;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$e.class */
    public static final class e {
        private static SparseIntArray n;

        /* renamed from: a  reason: collision with root package name */
        public boolean f1641a = false;

        /* renamed from: b  reason: collision with root package name */
        public float f1642b = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: c  reason: collision with root package name */
        public float f1643c = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: d  reason: collision with root package name */
        public float f1644d = BitmapDescriptorFactory.HUE_RED;
        public float e = 1.0f;
        public float f = 1.0f;
        public float g = Float.NaN;
        public float h = Float.NaN;
        public float i = BitmapDescriptorFactory.HUE_RED;
        public float j = BitmapDescriptorFactory.HUE_RED;
        public float k = BitmapDescriptorFactory.HUE_RED;
        public boolean l = false;
        public float m = BitmapDescriptorFactory.HUE_RED;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            n = sparseIntArray;
            sparseIntArray.append(e.b.Transform_android_rotation, 1);
            n.append(e.b.Transform_android_rotationX, 2);
            n.append(e.b.Transform_android_rotationY, 3);
            n.append(e.b.Transform_android_scaleX, 4);
            n.append(e.b.Transform_android_scaleY, 5);
            n.append(e.b.Transform_android_transformPivotX, 6);
            n.append(e.b.Transform_android_transformPivotY, 7);
            n.append(e.b.Transform_android_translationX, 8);
            n.append(e.b.Transform_android_translationY, 9);
            n.append(e.b.Transform_android_translationZ, 10);
            n.append(e.b.Transform_android_elevation, 11);
        }

        final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.Transform);
            this.f1641a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (n.get(index)) {
                    case 1:
                        this.f1642b = obtainStyledAttributes.getFloat(index, this.f1642b);
                        break;
                    case 2:
                        this.f1643c = obtainStyledAttributes.getFloat(index, this.f1643c);
                        break;
                    case 3:
                        this.f1644d = obtainStyledAttributes.getFloat(index, this.f1644d);
                        break;
                    case 4:
                        this.e = obtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case 5:
                        this.f = obtainStyledAttributes.getFloat(index, this.f);
                        break;
                    case 6:
                        this.g = obtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case 7:
                        this.h = obtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case 8:
                        this.i = obtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case 9:
                        this.j = obtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.k = obtainStyledAttributes.getDimension(index, this.k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.l = true;
                            this.m = obtainStyledAttributes.getDimension(index, this.m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final void a(e eVar) {
            this.f1641a = eVar.f1641a;
            this.f1642b = eVar.f1642b;
            this.f1643c = eVar.f1643c;
            this.f1644d = eVar.f1644d;
            this.e = eVar.e;
            this.f = eVar.f;
            this.g = eVar.g;
            this.h = eVar.h;
            this.i = eVar.i;
            this.j = eVar.j;
            this.k = eVar.k;
            this.l = eVar.l;
            this.m = eVar.m;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f = sparseIntArray;
        sparseIntArray.append(e.b.Constraint_layout_constraintLeft_toLeftOf, 25);
        f.append(e.b.Constraint_layout_constraintLeft_toRightOf, 26);
        f.append(e.b.Constraint_layout_constraintRight_toLeftOf, 29);
        f.append(e.b.Constraint_layout_constraintRight_toRightOf, 30);
        f.append(e.b.Constraint_layout_constraintTop_toTopOf, 36);
        f.append(e.b.Constraint_layout_constraintTop_toBottomOf, 35);
        f.append(e.b.Constraint_layout_constraintBottom_toTopOf, 4);
        f.append(e.b.Constraint_layout_constraintBottom_toBottomOf, 3);
        f.append(e.b.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f.append(e.b.Constraint_layout_editor_absoluteX, 6);
        f.append(e.b.Constraint_layout_editor_absoluteY, 7);
        f.append(e.b.Constraint_layout_constraintGuide_begin, 17);
        f.append(e.b.Constraint_layout_constraintGuide_end, 18);
        f.append(e.b.Constraint_layout_constraintGuide_percent, 19);
        f.append(e.b.Constraint_android_orientation, 27);
        f.append(e.b.Constraint_layout_constraintStart_toEndOf, 32);
        f.append(e.b.Constraint_layout_constraintStart_toStartOf, 33);
        f.append(e.b.Constraint_layout_constraintEnd_toStartOf, 10);
        f.append(e.b.Constraint_layout_constraintEnd_toEndOf, 9);
        f.append(e.b.Constraint_layout_goneMarginLeft, 13);
        f.append(e.b.Constraint_layout_goneMarginTop, 16);
        f.append(e.b.Constraint_layout_goneMarginRight, 14);
        f.append(e.b.Constraint_layout_goneMarginBottom, 11);
        f.append(e.b.Constraint_layout_goneMarginStart, 15);
        f.append(e.b.Constraint_layout_goneMarginEnd, 12);
        f.append(e.b.Constraint_layout_constraintVertical_weight, 40);
        f.append(e.b.Constraint_layout_constraintHorizontal_weight, 39);
        f.append(e.b.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f.append(e.b.Constraint_layout_constraintVertical_chainStyle, 42);
        f.append(e.b.Constraint_layout_constraintHorizontal_bias, 20);
        f.append(e.b.Constraint_layout_constraintVertical_bias, 37);
        f.append(e.b.Constraint_layout_constraintDimensionRatio, 5);
        f.append(e.b.Constraint_layout_constraintLeft_creator, 82);
        f.append(e.b.Constraint_layout_constraintTop_creator, 82);
        f.append(e.b.Constraint_layout_constraintRight_creator, 82);
        f.append(e.b.Constraint_layout_constraintBottom_creator, 82);
        f.append(e.b.Constraint_layout_constraintBaseline_creator, 82);
        f.append(e.b.Constraint_android_layout_marginLeft, 24);
        f.append(e.b.Constraint_android_layout_marginRight, 28);
        f.append(e.b.Constraint_android_layout_marginStart, 31);
        f.append(e.b.Constraint_android_layout_marginEnd, 8);
        f.append(e.b.Constraint_android_layout_marginTop, 34);
        f.append(e.b.Constraint_android_layout_marginBottom, 2);
        f.append(e.b.Constraint_android_layout_width, 23);
        f.append(e.b.Constraint_android_layout_height, 21);
        f.append(e.b.Constraint_android_visibility, 22);
        f.append(e.b.Constraint_android_alpha, 43);
        f.append(e.b.Constraint_android_elevation, 44);
        f.append(e.b.Constraint_android_rotationX, 45);
        f.append(e.b.Constraint_android_rotationY, 46);
        f.append(e.b.Constraint_android_rotation, 60);
        f.append(e.b.Constraint_android_scaleX, 47);
        f.append(e.b.Constraint_android_scaleY, 48);
        f.append(e.b.Constraint_android_transformPivotX, 49);
        f.append(e.b.Constraint_android_transformPivotY, 50);
        f.append(e.b.Constraint_android_translationX, 51);
        f.append(e.b.Constraint_android_translationY, 52);
        f.append(e.b.Constraint_android_translationZ, 53);
        f.append(e.b.Constraint_layout_constraintWidth_default, 54);
        f.append(e.b.Constraint_layout_constraintHeight_default, 55);
        f.append(e.b.Constraint_layout_constraintWidth_max, 56);
        f.append(e.b.Constraint_layout_constraintHeight_max, 57);
        f.append(e.b.Constraint_layout_constraintWidth_min, 58);
        f.append(e.b.Constraint_layout_constraintHeight_min, 59);
        f.append(e.b.Constraint_layout_constraintCircle, 61);
        f.append(e.b.Constraint_layout_constraintCircleRadius, 62);
        f.append(e.b.Constraint_layout_constraintCircleAngle, 63);
        f.append(e.b.Constraint_animate_relativeTo, 64);
        f.append(e.b.Constraint_transitionEasing, 65);
        f.append(e.b.Constraint_drawPath, 66);
        f.append(e.b.Constraint_transitionPathRotate, 67);
        f.append(e.b.Constraint_motionStagger, 79);
        f.append(e.b.Constraint_android_id, 38);
        f.append(e.b.Constraint_motionProgress, 68);
        f.append(e.b.Constraint_layout_constraintWidth_percent, 69);
        f.append(e.b.Constraint_layout_constraintHeight_percent, 70);
        f.append(e.b.Constraint_chainUseRtl, 71);
        f.append(e.b.Constraint_barrierDirection, 72);
        f.append(e.b.Constraint_barrierMargin, 73);
        f.append(e.b.Constraint_constraint_referenced_ids, 74);
        f.append(e.b.Constraint_barrierAllowsGoneWidgets, 75);
        f.append(e.b.Constraint_pathMotionArc, 76);
        f.append(e.b.Constraint_layout_constraintTag, 77);
        f.append(e.b.Constraint_visibilityMode, 78);
        f.append(e.b.Constraint_layout_constrainedWidth, 80);
        f.append(e.b.Constraint_layout_constrainedHeight, 81);
    }

    private static a a(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.b.Constraint);
        a(aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    private static void a(a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (!(index == e.b.Constraint_android_id || e.b.Constraint_android_layout_marginStart == index || e.b.Constraint_android_layout_marginEnd == index)) {
                aVar.f1627c.f1633a = true;
                aVar.f1628d.f1630b = true;
                aVar.f1626b.f1637a = true;
                aVar.e.f1641a = true;
            }
            switch (f.get(index)) {
                case 1:
                    aVar.f1628d.p = b(typedArray, index, aVar.f1628d.p);
                    break;
                case 2:
                    aVar.f1628d.G = typedArray.getDimensionPixelSize(index, aVar.f1628d.G);
                    break;
                case 3:
                    aVar.f1628d.o = b(typedArray, index, aVar.f1628d.o);
                    break;
                case 4:
                    aVar.f1628d.n = b(typedArray, index, aVar.f1628d.n);
                    break;
                case 5:
                    aVar.f1628d.w = typedArray.getString(index);
                    break;
                case 6:
                    aVar.f1628d.A = typedArray.getDimensionPixelOffset(index, aVar.f1628d.A);
                    break;
                case 7:
                    aVar.f1628d.B = typedArray.getDimensionPixelOffset(index, aVar.f1628d.B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.f1628d.H = typedArray.getDimensionPixelSize(index, aVar.f1628d.H);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    aVar.f1628d.t = b(typedArray, index, aVar.f1628d.t);
                    break;
                case 10:
                    aVar.f1628d.s = b(typedArray, index, aVar.f1628d.s);
                    break;
                case 11:
                    aVar.f1628d.M = typedArray.getDimensionPixelSize(index, aVar.f1628d.M);
                    break;
                case 12:
                    aVar.f1628d.N = typedArray.getDimensionPixelSize(index, aVar.f1628d.N);
                    break;
                case 13:
                    aVar.f1628d.J = typedArray.getDimensionPixelSize(index, aVar.f1628d.J);
                    break;
                case 14:
                    aVar.f1628d.L = typedArray.getDimensionPixelSize(index, aVar.f1628d.L);
                    break;
                case 15:
                    aVar.f1628d.O = typedArray.getDimensionPixelSize(index, aVar.f1628d.O);
                    break;
                case 16:
                    aVar.f1628d.K = typedArray.getDimensionPixelSize(index, aVar.f1628d.K);
                    break;
                case 17:
                    aVar.f1628d.e = typedArray.getDimensionPixelOffset(index, aVar.f1628d.e);
                    break;
                case 18:
                    aVar.f1628d.f = typedArray.getDimensionPixelOffset(index, aVar.f1628d.f);
                    break;
                case 19:
                    aVar.f1628d.g = typedArray.getFloat(index, aVar.f1628d.g);
                    break;
                case 20:
                    aVar.f1628d.u = typedArray.getFloat(index, aVar.f1628d.u);
                    break;
                case 21:
                    aVar.f1628d.f1632d = typedArray.getLayoutDimension(index, aVar.f1628d.f1632d);
                    break;
                case 22:
                    aVar.f1626b.f1638b = typedArray.getInt(index, aVar.f1626b.f1638b);
                    aVar.f1626b.f1638b = e[aVar.f1626b.f1638b];
                    break;
                case 23:
                    aVar.f1628d.f1631c = typedArray.getLayoutDimension(index, aVar.f1628d.f1631c);
                    break;
                case 24:
                    aVar.f1628d.D = typedArray.getDimensionPixelSize(index, aVar.f1628d.D);
                    break;
                case 25:
                    aVar.f1628d.h = b(typedArray, index, aVar.f1628d.h);
                    break;
                case 26:
                    aVar.f1628d.i = b(typedArray, index, aVar.f1628d.i);
                    break;
                case 27:
                    aVar.f1628d.C = typedArray.getInt(index, aVar.f1628d.C);
                    break;
                case 28:
                    aVar.f1628d.E = typedArray.getDimensionPixelSize(index, aVar.f1628d.E);
                    break;
                case 29:
                    aVar.f1628d.j = b(typedArray, index, aVar.f1628d.j);
                    break;
                case 30:
                    aVar.f1628d.k = b(typedArray, index, aVar.f1628d.k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        aVar.f1628d.I = typedArray.getDimensionPixelSize(index, aVar.f1628d.I);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    aVar.f1628d.q = b(typedArray, index, aVar.f1628d.q);
                    break;
                case 33:
                    aVar.f1628d.r = b(typedArray, index, aVar.f1628d.r);
                    break;
                case 34:
                    aVar.f1628d.F = typedArray.getDimensionPixelSize(index, aVar.f1628d.F);
                    break;
                case 35:
                    aVar.f1628d.m = b(typedArray, index, aVar.f1628d.m);
                    break;
                case 36:
                    aVar.f1628d.l = b(typedArray, index, aVar.f1628d.l);
                    break;
                case 37:
                    aVar.f1628d.v = typedArray.getFloat(index, aVar.f1628d.v);
                    break;
                case 38:
                    aVar.f1625a = typedArray.getResourceId(index, aVar.f1625a);
                    break;
                case 39:
                    aVar.f1628d.Q = typedArray.getFloat(index, aVar.f1628d.Q);
                    break;
                case 40:
                    aVar.f1628d.P = typedArray.getFloat(index, aVar.f1628d.P);
                    break;
                case 41:
                    aVar.f1628d.R = typedArray.getInt(index, aVar.f1628d.R);
                    break;
                case 42:
                    aVar.f1628d.S = typedArray.getInt(index, aVar.f1628d.S);
                    break;
                case 43:
                    aVar.f1626b.f1640d = typedArray.getFloat(index, aVar.f1626b.f1640d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.l = true;
                        aVar.e.m = typedArray.getDimension(index, aVar.e.m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    aVar.e.f1643c = typedArray.getFloat(index, aVar.e.f1643c);
                    break;
                case 46:
                    aVar.e.f1644d = typedArray.getFloat(index, aVar.e.f1644d);
                    break;
                case 47:
                    aVar.e.e = typedArray.getFloat(index, aVar.e.e);
                    break;
                case 48:
                    aVar.e.f = typedArray.getFloat(index, aVar.e.f);
                    break;
                case 49:
                    aVar.e.g = typedArray.getDimension(index, aVar.e.g);
                    break;
                case 50:
                    aVar.e.h = typedArray.getDimension(index, aVar.e.h);
                    break;
                case 51:
                    aVar.e.i = typedArray.getDimension(index, aVar.e.i);
                    break;
                case 52:
                    aVar.e.j = typedArray.getDimension(index, aVar.e.j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.k = typedArray.getDimension(index, aVar.e.k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    aVar.f1628d.T = typedArray.getInt(index, aVar.f1628d.T);
                    break;
                case 55:
                    aVar.f1628d.U = typedArray.getInt(index, aVar.f1628d.U);
                    break;
                case 56:
                    aVar.f1628d.V = typedArray.getDimensionPixelSize(index, aVar.f1628d.V);
                    break;
                case 57:
                    aVar.f1628d.W = typedArray.getDimensionPixelSize(index, aVar.f1628d.W);
                    break;
                case 58:
                    aVar.f1628d.X = typedArray.getDimensionPixelSize(index, aVar.f1628d.X);
                    break;
                case 59:
                    aVar.f1628d.Y = typedArray.getDimensionPixelSize(index, aVar.f1628d.Y);
                    break;
                case 60:
                    aVar.e.f1642b = typedArray.getFloat(index, aVar.e.f1642b);
                    break;
                case 61:
                    aVar.f1628d.x = b(typedArray, index, aVar.f1628d.x);
                    break;
                case 62:
                    aVar.f1628d.y = typedArray.getDimensionPixelSize(index, aVar.f1628d.y);
                    break;
                case 63:
                    aVar.f1628d.z = typedArray.getFloat(index, aVar.f1628d.z);
                    break;
                case 64:
                    aVar.f1627c.f1634b = b(typedArray, index, aVar.f1627c.f1634b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        aVar.f1627c.f1635c = typedArray.getString(index);
                        break;
                    } else {
                        aVar.f1627c.f1635c = androidx.constraintlayout.motion.a.c.f1438c[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    aVar.f1627c.e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    aVar.f1627c.g = typedArray.getFloat(index, aVar.f1627c.g);
                    break;
                case 68:
                    aVar.f1626b.e = typedArray.getFloat(index, aVar.f1626b.e);
                    break;
                case 69:
                    aVar.f1628d.Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    aVar.f1628d.aa = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    aVar.f1628d.ab = typedArray.getInt(index, aVar.f1628d.ab);
                    break;
                case 73:
                    aVar.f1628d.ac = typedArray.getDimensionPixelSize(index, aVar.f1628d.ac);
                    break;
                case 74:
                    aVar.f1628d.af = typedArray.getString(index);
                    break;
                case 75:
                    aVar.f1628d.aj = typedArray.getBoolean(index, aVar.f1628d.aj);
                    break;
                case 76:
                    aVar.f1627c.f1636d = typedArray.getInt(index, aVar.f1627c.f1636d);
                    break;
                case 77:
                    aVar.f1628d.ag = typedArray.getString(index);
                    break;
                case 78:
                    aVar.f1626b.f1639c = typedArray.getInt(index, aVar.f1626b.f1639c);
                    break;
                case 79:
                    aVar.f1627c.f = typedArray.getFloat(index, aVar.f1627c.f);
                    break;
                case 80:
                    aVar.f1628d.ah = typedArray.getBoolean(index, aVar.f1628d.ah);
                    break;
                case 81:
                    aVar.f1628d.ai = typedArray.getBoolean(index, aVar.f1628d.ai);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f.get(index));
                    break;
            }
        }
    }

    private static int[] a(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = e.a.class.getField(trim).getInt(null);
            } catch (Exception e2) {
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
                        Object a2 = ((ConstraintLayout) view.getParent()).a(trim);
                        i5 = i4;
                        if (a2 != null) {
                            i5 = i4;
                            if (a2 instanceof Integer) {
                                i5 = ((Integer) a2).intValue();
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

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    private static String f(int i) {
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

    public final int a(int i) {
        return e(i).f1626b.f1639c;
    }

    public final void a(int i, int i2) {
        if (this.f1623c.containsKey(Integer.valueOf(i))) {
            a aVar = this.f1623c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    aVar.f1628d.i = -1;
                    aVar.f1628d.h = -1;
                    aVar.f1628d.D = -1;
                    aVar.f1628d.J = -1;
                    return;
                case 2:
                    aVar.f1628d.k = -1;
                    aVar.f1628d.j = -1;
                    aVar.f1628d.E = -1;
                    aVar.f1628d.L = -1;
                    return;
                case 3:
                    aVar.f1628d.m = -1;
                    aVar.f1628d.l = -1;
                    aVar.f1628d.F = -1;
                    aVar.f1628d.K = -1;
                    return;
                case 4:
                    aVar.f1628d.n = -1;
                    aVar.f1628d.o = -1;
                    aVar.f1628d.G = -1;
                    aVar.f1628d.M = -1;
                    return;
                case 5:
                    aVar.f1628d.p = -1;
                    return;
                case 6:
                    aVar.f1628d.q = -1;
                    aVar.f1628d.r = -1;
                    aVar.f1628d.I = -1;
                    aVar.f1628d.O = -1;
                    return;
                case 7:
                    aVar.f1628d.s = -1;
                    aVar.f1628d.t = -1;
                    aVar.f1628d.H = -1;
                    aVar.f1628d.N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    public final void a(int i, int i2, int i3) {
        if (!this.f1623c.containsKey(Integer.valueOf(i))) {
            this.f1623c.put(Integer.valueOf(i), new a());
        }
        a aVar = this.f1623c.get(Integer.valueOf(i));
        if (i3 == 3) {
            aVar.f1628d.l = i2;
            aVar.f1628d.m = -1;
            aVar.f1628d.p = -1;
        } else if (i3 == 4) {
            aVar.f1628d.m = i2;
            aVar.f1628d.l = -1;
            aVar.f1628d.p = -1;
        } else {
            throw new IllegalArgumentException("right to " + f(i3) + " undefined");
        }
    }

    public final void a(int i, int i2, int i3, float f2) {
        a e2 = e(i);
        e2.f1628d.x = i2;
        e2.f1628d.y = i3;
        e2.f1628d.z = f2;
    }

    public final void a(int i, int i2, int i3, int i4, int i5) {
        if (!this.f1623c.containsKey(Integer.valueOf(i))) {
            this.f1623c.put(Integer.valueOf(i), new a());
        }
        a aVar = this.f1623c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    aVar.f1628d.h = i3;
                    aVar.f1628d.i = -1;
                } else if (i4 == 2) {
                    aVar.f1628d.i = i3;
                    aVar.f1628d.h = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + f(i4) + " undefined");
                }
                aVar.f1628d.D = i5;
                return;
            case 2:
                if (i4 == 1) {
                    aVar.f1628d.j = i3;
                    aVar.f1628d.k = -1;
                } else if (i4 == 2) {
                    aVar.f1628d.k = i3;
                    aVar.f1628d.j = -1;
                } else {
                    throw new IllegalArgumentException("right to " + f(i4) + " undefined");
                }
                aVar.f1628d.E = i5;
                return;
            case 3:
                if (i4 == 3) {
                    aVar.f1628d.l = i3;
                    aVar.f1628d.m = -1;
                    aVar.f1628d.p = -1;
                } else if (i4 == 4) {
                    aVar.f1628d.m = i3;
                    aVar.f1628d.l = -1;
                    aVar.f1628d.p = -1;
                } else {
                    throw new IllegalArgumentException("right to " + f(i4) + " undefined");
                }
                aVar.f1628d.F = i5;
                return;
            case 4:
                if (i4 == 4) {
                    aVar.f1628d.o = i3;
                    aVar.f1628d.n = -1;
                    aVar.f1628d.p = -1;
                } else if (i4 == 3) {
                    aVar.f1628d.n = i3;
                    aVar.f1628d.o = -1;
                    aVar.f1628d.p = -1;
                } else {
                    throw new IllegalArgumentException("right to " + f(i4) + " undefined");
                }
                aVar.f1628d.G = i5;
                return;
            case 5:
                if (i4 == 5) {
                    aVar.f1628d.p = i3;
                    aVar.f1628d.o = -1;
                    aVar.f1628d.n = -1;
                    aVar.f1628d.l = -1;
                    aVar.f1628d.m = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + f(i4) + " undefined");
            case 6:
                if (i4 == 6) {
                    aVar.f1628d.r = i3;
                    aVar.f1628d.q = -1;
                } else if (i4 == 7) {
                    aVar.f1628d.q = i3;
                    aVar.f1628d.r = -1;
                } else {
                    throw new IllegalArgumentException("right to " + f(i4) + " undefined");
                }
                aVar.f1628d.I = i5;
                return;
            case 7:
                if (i4 == 7) {
                    aVar.f1628d.t = i3;
                    aVar.f1628d.s = -1;
                } else if (i4 == 6) {
                    aVar.f1628d.s = i3;
                    aVar.f1628d.t = -1;
                } else {
                    throw new IllegalArgumentException("right to " + f(i4) + " undefined");
                }
                aVar.f1628d.H = i5;
                return;
            default:
                throw new IllegalArgumentException(f(i2) + " to " + f(i4) + " unknown");
        }
    }

    public final void a(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f1623c.containsKey(Integer.valueOf(i))) {
            this.f1623c.get(Integer.valueOf(i)).a(layoutParams);
        }
    }

    public final void a(Context context, int i) {
        a((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public final void a(Context context, XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (eventType != 1) {
                if (eventType != 0) {
                    char c2 = 3;
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -2025855158:
                                if (name.equals("Layout")) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    c2 = 7;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                                aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case 1:
                                aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                aVar.f1628d.f1629a = true;
                                aVar.f1628d.f1630b = true;
                                break;
                            case 2:
                                aVar = a(context, Xml.asAttributeSet(xmlPullParser));
                                aVar.f1628d.ad = 1;
                                break;
                            case 3:
                                if (aVar != null) {
                                    aVar.f1626b.a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 4:
                                if (aVar != null) {
                                    aVar.e.a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 5:
                                if (aVar != null) {
                                    aVar.f1628d.a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 6:
                                if (aVar != null) {
                                    aVar.f1627c.a(context, Xml.asAttributeSet(xmlPullParser));
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            case 7:
                                if (aVar != null) {
                                    androidx.constraintlayout.widget.a.a(context, xmlPullParser, aVar.f);
                                    aVar = aVar;
                                    break;
                                } else {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                            default:
                                aVar = aVar;
                                break;
                        }
                    } else if (eventType != 3) {
                        aVar = aVar;
                    } else {
                        String name2 = xmlPullParser.getName();
                        if (!"ConstraintSet".equals(name2)) {
                            aVar = aVar;
                            if (name2.equalsIgnoreCase("Constraint")) {
                                this.f1623c.put(Integer.valueOf(aVar.f1625a), aVar);
                                aVar = null;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    xmlPullParser.getName();
                    aVar = aVar;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    public final void a(ConstraintHelper constraintHelper, androidx.constraintlayout.a.a.e eVar, ConstraintLayout.LayoutParams layoutParams, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f1623c.containsKey(Integer.valueOf(id))) {
            a aVar = this.f1623c.get(Integer.valueOf(id));
            if (eVar instanceof j) {
                constraintHelper.a(aVar, (j) eVar, layoutParams, sparseArray);
            }
        }
    }

    public final void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f1623c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (!this.f1622b || id != -1) {
                if (!this.f1623c.containsKey(Integer.valueOf(id))) {
                    this.f1623c.put(Integer.valueOf(id), new a());
                }
                a aVar = this.f1623c.get(Integer.valueOf(id));
                aVar.f = androidx.constraintlayout.widget.a.a(this.f1624d, childAt);
                aVar.a(id, layoutParams);
                aVar.f1626b.f1638b = childAt.getVisibility();
                if (Build.VERSION.SDK_INT >= 17) {
                    aVar.f1626b.f1640d = childAt.getAlpha();
                    aVar.e.f1642b = childAt.getRotation();
                    aVar.e.f1643c = childAt.getRotationX();
                    aVar.e.f1644d = childAt.getRotationY();
                    aVar.e.e = childAt.getScaleX();
                    aVar.e.f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (!(pivotX == 0.0d && pivotY == 0.0d)) {
                        aVar.e.g = pivotX;
                        aVar.e.h = pivotY;
                    }
                    aVar.e.i = childAt.getTranslationX();
                    aVar.e.j = childAt.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        aVar.e.k = childAt.getTranslationZ();
                        if (aVar.e.l) {
                            aVar.e.m = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    aVar.f1628d.aj = barrier.f1580b.f1314b;
                    aVar.f1628d.ae = barrier.b();
                    aVar.f1628d.ab = barrier.f1579a;
                    aVar.f1628d.ac = barrier.f1580b.f1315c;
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    public final void a(c cVar) {
        for (Integer num : cVar.f1623c.keySet()) {
            int intValue = num.intValue();
            a aVar = cVar.f1623c.get(num);
            if (!this.f1623c.containsKey(Integer.valueOf(intValue))) {
                this.f1623c.put(Integer.valueOf(intValue), new a());
            }
            a aVar2 = this.f1623c.get(Integer.valueOf(intValue));
            if (!aVar2.f1628d.f1630b) {
                aVar2.f1628d.a(aVar.f1628d);
            }
            if (!aVar2.f1626b.f1637a) {
                aVar2.f1626b.a(aVar.f1626b);
            }
            if (!aVar2.e.f1641a) {
                aVar2.e.a(aVar.e);
            }
            if (!aVar2.f1627c.f1633a) {
                aVar2.f1627c.a(aVar.f1627c);
            }
            for (String str : aVar.f.keySet()) {
                if (!aVar2.f.containsKey(str)) {
                    aVar2.f.put(str, aVar.f.get(str));
                }
            }
        }
    }

    public final void a(int[] iArr) {
        if (iArr.length >= 2) {
            e(iArr[0]).f1628d.R = 0;
            a(iArr[0], 1, 0, 1, -1);
            for (int i = 1; i < iArr.length; i++) {
                int i2 = i - 1;
                a(iArr[i], 1, iArr[i2], 2, -1);
                a(iArr[i2], 2, iArr[i], 1, -1);
            }
            a(iArr[iArr.length - 1], 2, 0, 2, -1);
            return;
        }
        throw new IllegalArgumentException("must have 2 or more widgets in a chain");
    }

    public final int[] a() {
        Integer[] numArr = (Integer[]) this.f1623c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public final int b(int i) {
        return e(i).f1626b.f1638b;
    }

    public final void b(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a a2 = a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        a2.f1628d.f1629a = true;
                    }
                    this.f1623c.put(Integer.valueOf(a2.f1625a), a2);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        d(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public final int c(int i) {
        return e(i).f1628d.f1632d;
    }

    public final void c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f1623c.containsKey(Integer.valueOf(id))) {
                new StringBuilder("id unknown ").append(androidx.constraintlayout.motion.widget.a.a(childAt));
            } else if (this.f1622b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else if (this.f1623c.containsKey(Integer.valueOf(id))) {
                androidx.constraintlayout.widget.a.a(childAt, this.f1623c.get(Integer.valueOf(id)).f);
            }
        }
    }

    public final int d(int i) {
        return e(i).f1628d.f1631c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f1623c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f1623c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + androidx.constraintlayout.motion.widget.a.a(childAt));
            } else if (this.f1622b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else if (id != -1 && this.f1623c.containsKey(Integer.valueOf(id))) {
                hashSet.remove(Integer.valueOf(id));
                a aVar = this.f1623c.get(Integer.valueOf(id));
                if (childAt instanceof Barrier) {
                    aVar.f1628d.ad = 1;
                }
                if (aVar.f1628d.ad != -1 && aVar.f1628d.ad == 1) {
                    Barrier barrier = (Barrier) childAt;
                    barrier.setId(id);
                    barrier.setType(aVar.f1628d.ab);
                    barrier.setMargin(aVar.f1628d.ac);
                    barrier.setAllowsGoneWidget(aVar.f1628d.aj);
                    if (aVar.f1628d.ae != null) {
                        barrier.setReferencedIds(aVar.f1628d.ae);
                    } else if (aVar.f1628d.af != null) {
                        aVar.f1628d.ae = a(barrier, aVar.f1628d.af);
                        barrier.setReferencedIds(aVar.f1628d.ae);
                    }
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                layoutParams.a();
                aVar.a(layoutParams);
                androidx.constraintlayout.widget.a.a(childAt, aVar.f);
                childAt.setLayoutParams(layoutParams);
                if (aVar.f1626b.f1639c == 0) {
                    childAt.setVisibility(aVar.f1626b.f1638b);
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    childAt.setAlpha(aVar.f1626b.f1640d);
                    childAt.setRotation(aVar.e.f1642b);
                    childAt.setRotationX(aVar.e.f1643c);
                    childAt.setRotationY(aVar.e.f1644d);
                    childAt.setScaleX(aVar.e.e);
                    childAt.setScaleY(aVar.e.f);
                    if (!Float.isNaN(aVar.e.g)) {
                        childAt.setPivotX(aVar.e.g);
                    }
                    if (!Float.isNaN(aVar.e.h)) {
                        childAt.setPivotY(aVar.e.h);
                    }
                    childAt.setTranslationX(aVar.e.i);
                    childAt.setTranslationY(aVar.e.j);
                    if (Build.VERSION.SDK_INT >= 21) {
                        childAt.setTranslationZ(aVar.e.k);
                        if (aVar.e.l) {
                            childAt.setElevation(aVar.e.m);
                        }
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            Integer num = (Integer) it2.next();
            a aVar2 = this.f1623c.get(num);
            if (aVar2.f1628d.ad != -1 && aVar2.f1628d.ad == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                if (aVar2.f1628d.ae != null) {
                    barrier2.setReferencedIds(aVar2.f1628d.ae);
                } else if (aVar2.f1628d.af != null) {
                    aVar2.f1628d.ae = a(barrier2, aVar2.f1628d.af);
                    barrier2.setReferencedIds(aVar2.f1628d.ae);
                }
                barrier2.setType(aVar2.f1628d.ab);
                barrier2.setMargin(aVar2.f1628d.ac);
                ConstraintLayout.LayoutParams c2 = ConstraintLayout.c();
                barrier2.c();
                aVar2.a(c2);
                constraintLayout.addView(barrier2, c2);
            }
            if (aVar2.f1628d.f1629a) {
                Guideline guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams c3 = ConstraintLayout.c();
                aVar2.a(c3);
                constraintLayout.addView(guideline, c3);
            }
        }
    }

    public final a e(int i) {
        if (!this.f1623c.containsKey(Integer.valueOf(i))) {
            this.f1623c.put(Integer.valueOf(i), new a());
        }
        return this.f1623c.get(Integer.valueOf(i));
    }
}
