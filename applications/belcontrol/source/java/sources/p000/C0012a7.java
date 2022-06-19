package p000;

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
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.Guideline;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.ads.AdError;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: a7 */
/* loaded from: classes-dex2jar.jar:a7.class */
public class C0012a7 {

    /* renamed from: d */
    public static final int[] f75d = {0, 4, 8};

    /* renamed from: e */
    public static SparseIntArray f76e;

    /* renamed from: a */
    public HashMap<String, y6> f77a = new HashMap<>();

    /* renamed from: b */
    public boolean f78b = true;

    /* renamed from: c */
    public HashMap<Integer, C0013a> f79c = new HashMap<>();

    /* renamed from: a7$a */
    /* loaded from: classes-dex2jar.jar:a7$a.class */
    public static class C0013a {

        /* renamed from: a */
        public int f80a;

        /* renamed from: b */
        public final C0016d f81b = new C0016d();

        /* renamed from: c */
        public final C0015c f82c = new C0015c();

        /* renamed from: d */
        public final C0014b f83d = new C0014b();

        /* renamed from: e */
        public final C0017e f84e = new C0017e();

        /* renamed from: f */
        public HashMap<String, y6> f85f = new HashMap<>();

        /* renamed from: d */
        public void m7347d(ConstraintLayout.LayoutParams layoutParams) {
            C0014b c0014b = this.f83d;
            layoutParams.f722d = c0014b.f127h;
            layoutParams.f724e = c0014b.f129i;
            layoutParams.f726f = c0014b.f131j;
            layoutParams.f728g = c0014b.f133k;
            layoutParams.f730h = c0014b.f134l;
            layoutParams.f732i = c0014b.f135m;
            layoutParams.f734j = c0014b.f136n;
            layoutParams.f736k = c0014b.f137o;
            layoutParams.f738l = c0014b.f138p;
            layoutParams.f745p = c0014b.f139q;
            layoutParams.f746q = c0014b.f140r;
            layoutParams.f747r = c0014b.f141s;
            layoutParams.f748s = c0014b.f142t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = c0014b.f90D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = c0014b.f91E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = c0014b.f92F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = c0014b.f93G;
            layoutParams.f753x = c0014b.f101O;
            layoutParams.f754y = c0014b.f100N;
            layoutParams.f750u = c0014b.f97K;
            layoutParams.f752w = c0014b.f99M;
            layoutParams.f755z = c0014b.f143u;
            layoutParams.f690A = c0014b.f144v;
            layoutParams.f740m = c0014b.f146x;
            layoutParams.f742n = c0014b.f147y;
            C0014b c0014b2 = this.f83d;
            layoutParams.f744o = c0014b2.f148z;
            layoutParams.f691B = c0014b2.f145w;
            layoutParams.f705P = c0014b2.f87A;
            layoutParams.f706Q = c0014b2.f88B;
            layoutParams.f694E = c0014b2.f102P;
            layoutParams.f693D = c0014b2.f103Q;
            layoutParams.f696G = c0014b2.f105S;
            layoutParams.f695F = c0014b2.f104R;
            layoutParams.f708S = c0014b2.f128h0;
            layoutParams.f709T = c0014b2.f130i0;
            layoutParams.f697H = c0014b2.f106T;
            layoutParams.f698I = c0014b2.f107U;
            layoutParams.f701L = c0014b2.f108V;
            layoutParams.f702M = c0014b2.f109W;
            layoutParams.f699J = c0014b2.f110X;
            layoutParams.f700K = c0014b2.f111Y;
            layoutParams.f703N = c0014b2.f112Z;
            layoutParams.f704O = c0014b2.f114a0;
            layoutParams.f707R = c0014b2.f89C;
            layoutParams.f720c = c0014b2.f125g;
            layoutParams.f716a = c0014b2.f121e;
            layoutParams.f718b = c0014b2.f123f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = c0014b2.f117c;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = c0014b2.f119d;
            String str = c0014b2.f126g0;
            if (str != null) {
                layoutParams.f710U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f83d.f95I);
                layoutParams.setMarginEnd(this.f83d.f94H);
            }
            layoutParams.m6843c();
        }

        /* renamed from: e */
        public C0013a clone() {
            C0013a c0013a = new C0013a();
            c0013a.f83d.m7342a(this.f83d);
            c0013a.f82c.m7340a(this.f82c);
            c0013a.f81b.m7338a(this.f81b);
            c0013a.f84e.m7336a(this.f84e);
            c0013a.f80a = this.f80a;
            return c0013a;
        }

        /* renamed from: f */
        public final void m7345f(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f80a = i;
            C0014b c0014b = this.f83d;
            c0014b.f127h = layoutParams.f722d;
            c0014b.f129i = layoutParams.f724e;
            c0014b.f131j = layoutParams.f726f;
            c0014b.f133k = layoutParams.f728g;
            c0014b.f134l = layoutParams.f730h;
            c0014b.f135m = layoutParams.f732i;
            c0014b.f136n = layoutParams.f734j;
            c0014b.f137o = layoutParams.f736k;
            c0014b.f138p = layoutParams.f738l;
            c0014b.f139q = layoutParams.f745p;
            c0014b.f140r = layoutParams.f746q;
            c0014b.f141s = layoutParams.f747r;
            c0014b.f142t = layoutParams.f748s;
            c0014b.f143u = layoutParams.f755z;
            c0014b.f144v = layoutParams.f690A;
            c0014b.f145w = layoutParams.f691B;
            c0014b.f146x = layoutParams.f740m;
            c0014b.f147y = layoutParams.f742n;
            c0014b.f148z = layoutParams.f744o;
            c0014b.f87A = layoutParams.f705P;
            c0014b.f88B = layoutParams.f706Q;
            c0014b.f89C = layoutParams.f707R;
            c0014b.f125g = layoutParams.f720c;
            c0014b.f121e = layoutParams.f716a;
            c0014b.f123f = layoutParams.f718b;
            C0014b c0014b2 = this.f83d;
            c0014b2.f117c = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            c0014b2.f119d = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            c0014b2.f90D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            c0014b2.f91E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            c0014b2.f92F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            c0014b2.f93G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            c0014b2.f102P = layoutParams.f694E;
            c0014b2.f103Q = layoutParams.f693D;
            c0014b2.f105S = layoutParams.f696G;
            c0014b2.f104R = layoutParams.f695F;
            c0014b2.f128h0 = layoutParams.f708S;
            c0014b2.f130i0 = layoutParams.f709T;
            c0014b2.f106T = layoutParams.f697H;
            c0014b2.f107U = layoutParams.f698I;
            c0014b2.f108V = layoutParams.f701L;
            c0014b2.f109W = layoutParams.f702M;
            c0014b2.f110X = layoutParams.f699J;
            c0014b2.f111Y = layoutParams.f700K;
            c0014b2.f112Z = layoutParams.f703N;
            c0014b2.f114a0 = layoutParams.f704O;
            c0014b2.f126g0 = layoutParams.f710U;
            c0014b2.f97K = layoutParams.f750u;
            c0014b2.f99M = layoutParams.f752w;
            c0014b2.f96J = layoutParams.f749t;
            c0014b2.f98L = layoutParams.f751v;
            C0014b c0014b3 = this.f83d;
            c0014b3.f101O = layoutParams.f753x;
            c0014b3.f100N = layoutParams.f754y;
            if (Build.VERSION.SDK_INT >= 17) {
                c0014b3.f94H = layoutParams.getMarginEnd();
                this.f83d.f95I = layoutParams.getMarginStart();
            }
        }

        /* renamed from: g */
        public final void m7344g(int i, Constraints.LayoutParams layoutParams) {
            m7345f(i, layoutParams);
            this.f81b.f160d = layoutParams.o0;
            C0017e c0017e = this.f84e;
            c0017e.f164b = layoutParams.r0;
            c0017e.f165c = layoutParams.s0;
            c0017e.f166d = layoutParams.t0;
            c0017e.f167e = layoutParams.u0;
            c0017e.f168f = layoutParams.v0;
            c0017e.f169g = layoutParams.w0;
            c0017e.f170h = layoutParams.x0;
            c0017e.f171i = layoutParams.y0;
            c0017e.f172j = layoutParams.z0;
            c0017e.f173k = layoutParams.A0;
            c0017e.f175m = layoutParams.q0;
            c0017e.f174l = layoutParams.p0;
        }

        /* renamed from: h */
        public final void m7343h(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m7344g(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                C0014b c0014b = this.f83d;
                c0014b.f120d0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                c0014b.f116b0 = barrier.getType();
                this.f83d.f122e0 = barrier.getReferencedIds();
                this.f83d.f118c0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: a7$b */
    /* loaded from: classes-dex2jar.jar:a7$b.class */
    public static class C0014b {

        /* renamed from: k0 */
        public static SparseIntArray f86k0;

        /* renamed from: c */
        public int f117c;

        /* renamed from: d */
        public int f119d;

        /* renamed from: e0 */
        public int[] f122e0;

        /* renamed from: f0 */
        public String f124f0;

        /* renamed from: g0 */
        public String f126g0;

        /* renamed from: a */
        public boolean f113a = false;

        /* renamed from: b */
        public boolean f115b = false;

        /* renamed from: e */
        public int f121e = -1;

        /* renamed from: f */
        public int f123f = -1;

        /* renamed from: g */
        public float f125g = -1.0f;

        /* renamed from: h */
        public int f127h = -1;

        /* renamed from: i */
        public int f129i = -1;

        /* renamed from: j */
        public int f131j = -1;

        /* renamed from: k */
        public int f133k = -1;

        /* renamed from: l */
        public int f134l = -1;

        /* renamed from: m */
        public int f135m = -1;

        /* renamed from: n */
        public int f136n = -1;

        /* renamed from: o */
        public int f137o = -1;

        /* renamed from: p */
        public int f138p = -1;

        /* renamed from: q */
        public int f139q = -1;

        /* renamed from: r */
        public int f140r = -1;

        /* renamed from: s */
        public int f141s = -1;

        /* renamed from: t */
        public int f142t = -1;

        /* renamed from: u */
        public float f143u = 0.5f;

        /* renamed from: v */
        public float f144v = 0.5f;

        /* renamed from: w */
        public String f145w = null;

        /* renamed from: x */
        public int f146x = -1;

        /* renamed from: y */
        public int f147y = 0;

        /* renamed from: z */
        public float f148z = 0.0f;

        /* renamed from: A */
        public int f87A = -1;

        /* renamed from: B */
        public int f88B = -1;

        /* renamed from: C */
        public int f89C = -1;

        /* renamed from: D */
        public int f90D = -1;

        /* renamed from: E */
        public int f91E = -1;

        /* renamed from: F */
        public int f92F = -1;

        /* renamed from: G */
        public int f93G = -1;

        /* renamed from: H */
        public int f94H = -1;

        /* renamed from: I */
        public int f95I = -1;

        /* renamed from: J */
        public int f96J = -1;

        /* renamed from: K */
        public int f97K = -1;

        /* renamed from: L */
        public int f98L = -1;

        /* renamed from: M */
        public int f99M = -1;

        /* renamed from: N */
        public int f100N = -1;

        /* renamed from: O */
        public int f101O = -1;

        /* renamed from: P */
        public float f102P = -1.0f;

        /* renamed from: Q */
        public float f103Q = -1.0f;

        /* renamed from: R */
        public int f104R = 0;

        /* renamed from: S */
        public int f105S = 0;

        /* renamed from: T */
        public int f106T = 0;

        /* renamed from: U */
        public int f107U = 0;

        /* renamed from: V */
        public int f108V = -1;

        /* renamed from: W */
        public int f109W = -1;

        /* renamed from: X */
        public int f110X = -1;

        /* renamed from: Y */
        public int f111Y = -1;

        /* renamed from: Z */
        public float f112Z = 1.0f;

        /* renamed from: a0 */
        public float f114a0 = 1.0f;

        /* renamed from: b0 */
        public int f116b0 = -1;

        /* renamed from: c0 */
        public int f118c0 = 0;

        /* renamed from: d0 */
        public int f120d0 = -1;

        /* renamed from: h0 */
        public boolean f128h0 = false;

        /* renamed from: i0 */
        public boolean f130i0 = false;

        /* renamed from: j0 */
        public boolean f132j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f86k0 = sparseIntArray;
            sparseIntArray.append(C1278d7.Layout_layout_constraintLeft_toLeftOf, 24);
            f86k0.append(C1278d7.Layout_layout_constraintLeft_toRightOf, 25);
            f86k0.append(C1278d7.Layout_layout_constraintRight_toLeftOf, 28);
            f86k0.append(C1278d7.Layout_layout_constraintRight_toRightOf, 29);
            f86k0.append(C1278d7.Layout_layout_constraintTop_toTopOf, 35);
            f86k0.append(C1278d7.Layout_layout_constraintTop_toBottomOf, 34);
            f86k0.append(C1278d7.Layout_layout_constraintBottom_toTopOf, 4);
            f86k0.append(C1278d7.Layout_layout_constraintBottom_toBottomOf, 3);
            f86k0.append(C1278d7.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f86k0.append(C1278d7.Layout_layout_editor_absoluteX, 6);
            f86k0.append(C1278d7.Layout_layout_editor_absoluteY, 7);
            f86k0.append(C1278d7.Layout_layout_constraintGuide_begin, 17);
            f86k0.append(C1278d7.Layout_layout_constraintGuide_end, 18);
            f86k0.append(C1278d7.Layout_layout_constraintGuide_percent, 19);
            f86k0.append(C1278d7.Layout_android_orientation, 26);
            f86k0.append(C1278d7.Layout_layout_constraintStart_toEndOf, 31);
            f86k0.append(C1278d7.Layout_layout_constraintStart_toStartOf, 32);
            f86k0.append(C1278d7.Layout_layout_constraintEnd_toStartOf, 10);
            f86k0.append(C1278d7.Layout_layout_constraintEnd_toEndOf, 9);
            f86k0.append(C1278d7.Layout_layout_goneMarginLeft, 13);
            f86k0.append(C1278d7.Layout_layout_goneMarginTop, 16);
            f86k0.append(C1278d7.Layout_layout_goneMarginRight, 14);
            f86k0.append(C1278d7.Layout_layout_goneMarginBottom, 11);
            f86k0.append(C1278d7.Layout_layout_goneMarginStart, 15);
            f86k0.append(C1278d7.Layout_layout_goneMarginEnd, 12);
            f86k0.append(C1278d7.Layout_layout_constraintVertical_weight, 38);
            f86k0.append(C1278d7.Layout_layout_constraintHorizontal_weight, 37);
            f86k0.append(C1278d7.Layout_layout_constraintHorizontal_chainStyle, 39);
            f86k0.append(C1278d7.Layout_layout_constraintVertical_chainStyle, 40);
            f86k0.append(C1278d7.Layout_layout_constraintHorizontal_bias, 20);
            f86k0.append(C1278d7.Layout_layout_constraintVertical_bias, 36);
            f86k0.append(C1278d7.Layout_layout_constraintDimensionRatio, 5);
            f86k0.append(C1278d7.Layout_layout_constraintLeft_creator, 76);
            f86k0.append(C1278d7.Layout_layout_constraintTop_creator, 76);
            f86k0.append(C1278d7.Layout_layout_constraintRight_creator, 76);
            f86k0.append(C1278d7.Layout_layout_constraintBottom_creator, 76);
            f86k0.append(C1278d7.Layout_layout_constraintBaseline_creator, 76);
            f86k0.append(C1278d7.Layout_android_layout_marginLeft, 23);
            f86k0.append(C1278d7.Layout_android_layout_marginRight, 27);
            f86k0.append(C1278d7.Layout_android_layout_marginStart, 30);
            f86k0.append(C1278d7.Layout_android_layout_marginEnd, 8);
            f86k0.append(C1278d7.Layout_android_layout_marginTop, 33);
            f86k0.append(C1278d7.Layout_android_layout_marginBottom, 2);
            f86k0.append(C1278d7.Layout_android_layout_width, 22);
            f86k0.append(C1278d7.Layout_android_layout_height, 21);
            f86k0.append(C1278d7.Layout_layout_constraintCircle, 61);
            f86k0.append(C1278d7.Layout_layout_constraintCircleRadius, 62);
            f86k0.append(C1278d7.Layout_layout_constraintCircleAngle, 63);
            f86k0.append(C1278d7.Layout_layout_constraintWidth_percent, 69);
            f86k0.append(C1278d7.Layout_layout_constraintHeight_percent, 70);
            f86k0.append(C1278d7.Layout_chainUseRtl, 71);
            f86k0.append(C1278d7.Layout_barrierDirection, 72);
            f86k0.append(C1278d7.Layout_barrierMargin, 73);
            f86k0.append(C1278d7.Layout_constraint_referenced_ids, 74);
            f86k0.append(C1278d7.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m7342a(C0014b c0014b) {
            this.f113a = c0014b.f113a;
            this.f117c = c0014b.f117c;
            this.f115b = c0014b.f115b;
            this.f119d = c0014b.f119d;
            this.f121e = c0014b.f121e;
            this.f123f = c0014b.f123f;
            this.f125g = c0014b.f125g;
            this.f127h = c0014b.f127h;
            this.f129i = c0014b.f129i;
            this.f131j = c0014b.f131j;
            this.f133k = c0014b.f133k;
            this.f134l = c0014b.f134l;
            this.f135m = c0014b.f135m;
            this.f136n = c0014b.f136n;
            this.f137o = c0014b.f137o;
            this.f138p = c0014b.f138p;
            this.f139q = c0014b.f139q;
            this.f140r = c0014b.f140r;
            this.f141s = c0014b.f141s;
            this.f142t = c0014b.f142t;
            this.f143u = c0014b.f143u;
            this.f144v = c0014b.f144v;
            this.f145w = c0014b.f145w;
            this.f146x = c0014b.f146x;
            this.f147y = c0014b.f147y;
            this.f148z = c0014b.f148z;
            this.f87A = c0014b.f87A;
            this.f88B = c0014b.f88B;
            this.f89C = c0014b.f89C;
            this.f90D = c0014b.f90D;
            this.f91E = c0014b.f91E;
            this.f92F = c0014b.f92F;
            this.f93G = c0014b.f93G;
            this.f94H = c0014b.f94H;
            this.f95I = c0014b.f95I;
            this.f96J = c0014b.f96J;
            this.f97K = c0014b.f97K;
            this.f98L = c0014b.f98L;
            this.f99M = c0014b.f99M;
            this.f100N = c0014b.f100N;
            this.f101O = c0014b.f101O;
            this.f102P = c0014b.f102P;
            this.f103Q = c0014b.f103Q;
            this.f104R = c0014b.f104R;
            this.f105S = c0014b.f105S;
            this.f106T = c0014b.f106T;
            this.f107U = c0014b.f107U;
            this.f108V = c0014b.f108V;
            this.f109W = c0014b.f109W;
            this.f110X = c0014b.f110X;
            this.f111Y = c0014b.f111Y;
            this.f112Z = c0014b.f112Z;
            this.f114a0 = c0014b.f114a0;
            this.f116b0 = c0014b.f116b0;
            this.f118c0 = c0014b.f118c0;
            this.f120d0 = c0014b.f120d0;
            this.f126g0 = c0014b.f126g0;
            int[] iArr = c0014b.f122e0;
            if (iArr != null) {
                this.f122e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f122e0 = null;
            }
            this.f124f0 = c0014b.f124f0;
            this.f128h0 = c0014b.f128h0;
            this.f130i0 = c0014b.f130i0;
            this.f132j0 = c0014b.f132j0;
        }

        /* renamed from: b */
        public void m7341b(Context context, AttributeSet attributeSet) {
            StringBuilder sb;
            String str;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.Layout);
            this.f115b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f86k0.get(index);
                if (i2 == 80) {
                    this.f128h0 = obtainStyledAttributes.getBoolean(index, this.f128h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f138p = C0012a7.m7384A(obtainStyledAttributes, index, this.f138p);
                            continue;
                        case 2:
                            this.f93G = obtainStyledAttributes.getDimensionPixelSize(index, this.f93G);
                            continue;
                        case 3:
                            this.f137o = C0012a7.m7384A(obtainStyledAttributes, index, this.f137o);
                            continue;
                        case 4:
                            this.f136n = C0012a7.m7384A(obtainStyledAttributes, index, this.f136n);
                            continue;
                        case 5:
                            this.f145w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f87A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f87A);
                            continue;
                        case 7:
                            this.f88B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f88B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f94H = obtainStyledAttributes.getDimensionPixelSize(index, this.f94H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f142t = C0012a7.m7384A(obtainStyledAttributes, index, this.f142t);
                            continue;
                        case 10:
                            this.f141s = C0012a7.m7384A(obtainStyledAttributes, index, this.f141s);
                            continue;
                        case 11:
                            this.f99M = obtainStyledAttributes.getDimensionPixelSize(index, this.f99M);
                            continue;
                        case 12:
                            this.f100N = obtainStyledAttributes.getDimensionPixelSize(index, this.f100N);
                            continue;
                        case 13:
                            this.f96J = obtainStyledAttributes.getDimensionPixelSize(index, this.f96J);
                            continue;
                        case 14:
                            this.f98L = obtainStyledAttributes.getDimensionPixelSize(index, this.f98L);
                            continue;
                        case 15:
                            this.f101O = obtainStyledAttributes.getDimensionPixelSize(index, this.f101O);
                            continue;
                        case 16:
                            this.f97K = obtainStyledAttributes.getDimensionPixelSize(index, this.f97K);
                            continue;
                        case 17:
                            this.f121e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f121e);
                            continue;
                        case 18:
                            this.f123f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f123f);
                            continue;
                        case 19:
                            this.f125g = obtainStyledAttributes.getFloat(index, this.f125g);
                            continue;
                        case 20:
                            this.f143u = obtainStyledAttributes.getFloat(index, this.f143u);
                            continue;
                        case 21:
                            this.f119d = obtainStyledAttributes.getLayoutDimension(index, this.f119d);
                            continue;
                        case 22:
                            this.f117c = obtainStyledAttributes.getLayoutDimension(index, this.f117c);
                            continue;
                        case 23:
                            this.f90D = obtainStyledAttributes.getDimensionPixelSize(index, this.f90D);
                            continue;
                        case 24:
                            this.f127h = C0012a7.m7384A(obtainStyledAttributes, index, this.f127h);
                            continue;
                        case 25:
                            this.f129i = C0012a7.m7384A(obtainStyledAttributes, index, this.f129i);
                            continue;
                        case 26:
                            this.f89C = obtainStyledAttributes.getInt(index, this.f89C);
                            continue;
                        case 27:
                            this.f91E = obtainStyledAttributes.getDimensionPixelSize(index, this.f91E);
                            continue;
                        case 28:
                            this.f131j = C0012a7.m7384A(obtainStyledAttributes, index, this.f131j);
                            continue;
                        case 29:
                            this.f133k = C0012a7.m7384A(obtainStyledAttributes, index, this.f133k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f95I = obtainStyledAttributes.getDimensionPixelSize(index, this.f95I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f139q = C0012a7.m7384A(obtainStyledAttributes, index, this.f139q);
                            continue;
                        case 32:
                            this.f140r = C0012a7.m7384A(obtainStyledAttributes, index, this.f140r);
                            continue;
                        case 33:
                            this.f92F = obtainStyledAttributes.getDimensionPixelSize(index, this.f92F);
                            continue;
                        case 34:
                            this.f135m = C0012a7.m7384A(obtainStyledAttributes, index, this.f135m);
                            continue;
                        case 35:
                            this.f134l = C0012a7.m7384A(obtainStyledAttributes, index, this.f134l);
                            continue;
                        case 36:
                            this.f144v = obtainStyledAttributes.getFloat(index, this.f144v);
                            continue;
                        case 37:
                            this.f103Q = obtainStyledAttributes.getFloat(index, this.f103Q);
                            continue;
                        case 38:
                            this.f102P = obtainStyledAttributes.getFloat(index, this.f102P);
                            continue;
                        case 39:
                            this.f104R = obtainStyledAttributes.getInt(index, this.f104R);
                            continue;
                        case 40:
                            this.f105S = obtainStyledAttributes.getInt(index, this.f105S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f106T = obtainStyledAttributes.getInt(index, this.f106T);
                                    continue;
                                case 55:
                                    this.f107U = obtainStyledAttributes.getInt(index, this.f107U);
                                    continue;
                                case 56:
                                    this.f108V = obtainStyledAttributes.getDimensionPixelSize(index, this.f108V);
                                    continue;
                                case 57:
                                    this.f109W = obtainStyledAttributes.getDimensionPixelSize(index, this.f109W);
                                    continue;
                                case 58:
                                    this.f110X = obtainStyledAttributes.getDimensionPixelSize(index, this.f110X);
                                    continue;
                                case 59:
                                    this.f111Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f111Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f146x = C0012a7.m7384A(obtainStyledAttributes, index, this.f146x);
                                            continue;
                                        case 62:
                                            this.f147y = obtainStyledAttributes.getDimensionPixelSize(index, this.f147y);
                                            continue;
                                        case 63:
                                            this.f148z = obtainStyledAttributes.getFloat(index, this.f148z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f112Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 70:
                                                    this.f114a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    break;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    break;
                                                case 72:
                                                    this.f116b0 = obtainStyledAttributes.getInt(index, this.f116b0);
                                                    break;
                                                case 73:
                                                    this.f118c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f118c0);
                                                    break;
                                                case 74:
                                                    this.f124f0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                case 75:
                                                    this.f132j0 = obtainStyledAttributes.getBoolean(index, this.f132j0);
                                                    break;
                                                case 76:
                                                    sb = new StringBuilder();
                                                    str = "unused attribute 0x";
                                                    sb.append(str);
                                                    sb.append(Integer.toHexString(index));
                                                    sb.append("   ");
                                                    sb.append(f86k0.get(index));
                                                    Log.w("ConstraintSet", sb.toString());
                                                    continue;
                                                    continue;
                                                    continue;
                                                case 77:
                                                    this.f126g0 = obtainStyledAttributes.getString(index);
                                                    break;
                                                default:
                                                    sb = new StringBuilder();
                                                    str = "Unknown attribute 0x";
                                                    sb.append(str);
                                                    sb.append(Integer.toHexString(index));
                                                    sb.append("   ");
                                                    sb.append(f86k0.get(index));
                                                    Log.w("ConstraintSet", sb.toString());
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f130i0 = obtainStyledAttributes.getBoolean(index, this.f130i0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a7$c */
    /* loaded from: classes-dex2jar.jar:a7$c.class */
    public static class C0015c {

        /* renamed from: h */
        public static SparseIntArray f149h;

        /* renamed from: a */
        public boolean f150a = false;

        /* renamed from: b */
        public int f151b = -1;

        /* renamed from: c */
        public String f152c = null;

        /* renamed from: d */
        public int f153d = -1;

        /* renamed from: e */
        public int f154e = 0;

        /* renamed from: f */
        public float f155f = Float.NaN;

        /* renamed from: g */
        public float f156g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f149h = sparseIntArray;
            sparseIntArray.append(C1278d7.Motion_motionPathRotate, 1);
            f149h.append(C1278d7.Motion_pathMotionArc, 2);
            f149h.append(C1278d7.Motion_transitionEasing, 3);
            f149h.append(C1278d7.Motion_drawPath, 4);
            f149h.append(C1278d7.Motion_animate_relativeTo, 5);
            f149h.append(C1278d7.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        public void m7340a(C0015c c0015c) {
            this.f150a = c0015c.f150a;
            this.f151b = c0015c.f151b;
            this.f152c = c0015c.f152c;
            this.f153d = c0015c.f153d;
            this.f154e = c0015c.f154e;
            this.f156g = c0015c.f156g;
            this.f155f = c0015c.f155f;
        }

        /* renamed from: b */
        public void m7339b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.Motion);
            this.f150a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f149h.get(index)) {
                    case 1:
                        this.f156g = obtainStyledAttributes.getFloat(index, this.f156g);
                        break;
                    case 2:
                        this.f153d = obtainStyledAttributes.getInt(index, this.f153d);
                        break;
                    case 3:
                        this.f152c = obtainStyledAttributes.peekValue(index).type == 3 ? obtainStyledAttributes.getString(index) : l4.c[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    case 4:
                        this.f154e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f151b = C0012a7.m7384A(obtainStyledAttributes, index, this.f151b);
                        break;
                    case 6:
                        this.f155f = obtainStyledAttributes.getFloat(index, this.f155f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a7$d */
    /* loaded from: classes-dex2jar.jar:a7$d.class */
    public static class C0016d {

        /* renamed from: a */
        public boolean f157a = false;

        /* renamed from: b */
        public int f158b = 0;

        /* renamed from: c */
        public int f159c = 0;

        /* renamed from: d */
        public float f160d = 1.0f;

        /* renamed from: e */
        public float f161e = Float.NaN;

        /* renamed from: a */
        public void m7338a(C0016d c0016d) {
            this.f157a = c0016d.f157a;
            this.f158b = c0016d.f158b;
            this.f160d = c0016d.f160d;
            this.f161e = c0016d.f161e;
            this.f159c = c0016d.f159c;
        }

        /* renamed from: b */
        public void m7337b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.PropertySet);
            this.f157a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.PropertySet_android_alpha) {
                    this.f160d = obtainStyledAttributes.getFloat(index, this.f160d);
                } else if (index == C1278d7.PropertySet_android_visibility) {
                    this.f158b = obtainStyledAttributes.getInt(index, this.f158b);
                    this.f158b = C0012a7.f75d[this.f158b];
                } else if (index == C1278d7.PropertySet_visibilityMode) {
                    this.f159c = obtainStyledAttributes.getInt(index, this.f159c);
                } else if (index == C1278d7.PropertySet_motionProgress) {
                    this.f161e = obtainStyledAttributes.getFloat(index, this.f161e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a7$e */
    /* loaded from: classes-dex2jar.jar:a7$e.class */
    public static class C0017e {

        /* renamed from: n */
        public static SparseIntArray f162n;

        /* renamed from: a */
        public boolean f163a = false;

        /* renamed from: b */
        public float f164b = 0.0f;

        /* renamed from: c */
        public float f165c = 0.0f;

        /* renamed from: d */
        public float f166d = 0.0f;

        /* renamed from: e */
        public float f167e = 1.0f;

        /* renamed from: f */
        public float f168f = 1.0f;

        /* renamed from: g */
        public float f169g = Float.NaN;

        /* renamed from: h */
        public float f170h = Float.NaN;

        /* renamed from: i */
        public float f171i = 0.0f;

        /* renamed from: j */
        public float f172j = 0.0f;

        /* renamed from: k */
        public float f173k = 0.0f;

        /* renamed from: l */
        public boolean f174l = false;

        /* renamed from: m */
        public float f175m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f162n = sparseIntArray;
            sparseIntArray.append(C1278d7.Transform_android_rotation, 1);
            f162n.append(C1278d7.Transform_android_rotationX, 2);
            f162n.append(C1278d7.Transform_android_rotationY, 3);
            f162n.append(C1278d7.Transform_android_scaleX, 4);
            f162n.append(C1278d7.Transform_android_scaleY, 5);
            f162n.append(C1278d7.Transform_android_transformPivotX, 6);
            f162n.append(C1278d7.Transform_android_transformPivotY, 7);
            f162n.append(C1278d7.Transform_android_translationX, 8);
            f162n.append(C1278d7.Transform_android_translationY, 9);
            f162n.append(C1278d7.Transform_android_translationZ, 10);
            f162n.append(C1278d7.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        public void m7336a(C0017e c0017e) {
            this.f163a = c0017e.f163a;
            this.f164b = c0017e.f164b;
            this.f165c = c0017e.f165c;
            this.f166d = c0017e.f166d;
            this.f167e = c0017e.f167e;
            this.f168f = c0017e.f168f;
            this.f169g = c0017e.f169g;
            this.f170h = c0017e.f170h;
            this.f171i = c0017e.f171i;
            this.f172j = c0017e.f172j;
            this.f173k = c0017e.f173k;
            this.f174l = c0017e.f174l;
            this.f175m = c0017e.f175m;
        }

        /* renamed from: b */
        public void m7335b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.Transform);
            this.f163a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f162n.get(index)) {
                    case 1:
                        this.f164b = obtainStyledAttributes.getFloat(index, this.f164b);
                        break;
                    case 2:
                        this.f165c = obtainStyledAttributes.getFloat(index, this.f165c);
                        break;
                    case 3:
                        this.f166d = obtainStyledAttributes.getFloat(index, this.f166d);
                        break;
                    case 4:
                        this.f167e = obtainStyledAttributes.getFloat(index, this.f167e);
                        break;
                    case 5:
                        this.f168f = obtainStyledAttributes.getFloat(index, this.f168f);
                        break;
                    case 6:
                        this.f169g = obtainStyledAttributes.getDimension(index, this.f169g);
                        break;
                    case 7:
                        this.f170h = obtainStyledAttributes.getDimension(index, this.f170h);
                        break;
                    case 8:
                        this.f171i = obtainStyledAttributes.getDimension(index, this.f171i);
                        break;
                    case 9:
                        this.f172j = obtainStyledAttributes.getDimension(index, this.f172j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f173k = obtainStyledAttributes.getDimension(index, this.f173k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f174l = true;
                            this.f175m = obtainStyledAttributes.getDimension(index, this.f175m);
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
        f76e = sparseIntArray;
        sparseIntArray.append(C1278d7.Constraint_layout_constraintLeft_toLeftOf, 25);
        f76e.append(C1278d7.Constraint_layout_constraintLeft_toRightOf, 26);
        f76e.append(C1278d7.Constraint_layout_constraintRight_toLeftOf, 29);
        f76e.append(C1278d7.Constraint_layout_constraintRight_toRightOf, 30);
        f76e.append(C1278d7.Constraint_layout_constraintTop_toTopOf, 36);
        f76e.append(C1278d7.Constraint_layout_constraintTop_toBottomOf, 35);
        f76e.append(C1278d7.Constraint_layout_constraintBottom_toTopOf, 4);
        f76e.append(C1278d7.Constraint_layout_constraintBottom_toBottomOf, 3);
        f76e.append(C1278d7.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f76e.append(C1278d7.Constraint_layout_editor_absoluteX, 6);
        f76e.append(C1278d7.Constraint_layout_editor_absoluteY, 7);
        f76e.append(C1278d7.Constraint_layout_constraintGuide_begin, 17);
        f76e.append(C1278d7.Constraint_layout_constraintGuide_end, 18);
        f76e.append(C1278d7.Constraint_layout_constraintGuide_percent, 19);
        f76e.append(C1278d7.Constraint_android_orientation, 27);
        f76e.append(C1278d7.Constraint_layout_constraintStart_toEndOf, 32);
        f76e.append(C1278d7.Constraint_layout_constraintStart_toStartOf, 33);
        f76e.append(C1278d7.Constraint_layout_constraintEnd_toStartOf, 10);
        f76e.append(C1278d7.Constraint_layout_constraintEnd_toEndOf, 9);
        f76e.append(C1278d7.Constraint_layout_goneMarginLeft, 13);
        f76e.append(C1278d7.Constraint_layout_goneMarginTop, 16);
        f76e.append(C1278d7.Constraint_layout_goneMarginRight, 14);
        f76e.append(C1278d7.Constraint_layout_goneMarginBottom, 11);
        f76e.append(C1278d7.Constraint_layout_goneMarginStart, 15);
        f76e.append(C1278d7.Constraint_layout_goneMarginEnd, 12);
        f76e.append(C1278d7.Constraint_layout_constraintVertical_weight, 40);
        f76e.append(C1278d7.Constraint_layout_constraintHorizontal_weight, 39);
        f76e.append(C1278d7.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f76e.append(C1278d7.Constraint_layout_constraintVertical_chainStyle, 42);
        f76e.append(C1278d7.Constraint_layout_constraintHorizontal_bias, 20);
        f76e.append(C1278d7.Constraint_layout_constraintVertical_bias, 37);
        f76e.append(C1278d7.Constraint_layout_constraintDimensionRatio, 5);
        f76e.append(C1278d7.Constraint_layout_constraintLeft_creator, 82);
        f76e.append(C1278d7.Constraint_layout_constraintTop_creator, 82);
        f76e.append(C1278d7.Constraint_layout_constraintRight_creator, 82);
        f76e.append(C1278d7.Constraint_layout_constraintBottom_creator, 82);
        f76e.append(C1278d7.Constraint_layout_constraintBaseline_creator, 82);
        f76e.append(C1278d7.Constraint_android_layout_marginLeft, 24);
        f76e.append(C1278d7.Constraint_android_layout_marginRight, 28);
        f76e.append(C1278d7.Constraint_android_layout_marginStart, 31);
        f76e.append(C1278d7.Constraint_android_layout_marginEnd, 8);
        f76e.append(C1278d7.Constraint_android_layout_marginTop, 34);
        f76e.append(C1278d7.Constraint_android_layout_marginBottom, 2);
        f76e.append(C1278d7.Constraint_android_layout_width, 23);
        f76e.append(C1278d7.Constraint_android_layout_height, 21);
        f76e.append(C1278d7.Constraint_android_visibility, 22);
        f76e.append(C1278d7.Constraint_android_alpha, 43);
        f76e.append(C1278d7.Constraint_android_elevation, 44);
        f76e.append(C1278d7.Constraint_android_rotationX, 45);
        f76e.append(C1278d7.Constraint_android_rotationY, 46);
        f76e.append(C1278d7.Constraint_android_rotation, 60);
        f76e.append(C1278d7.Constraint_android_scaleX, 47);
        f76e.append(C1278d7.Constraint_android_scaleY, 48);
        f76e.append(C1278d7.Constraint_android_transformPivotX, 49);
        f76e.append(C1278d7.Constraint_android_transformPivotY, 50);
        f76e.append(C1278d7.Constraint_android_translationX, 51);
        f76e.append(C1278d7.Constraint_android_translationY, 52);
        f76e.append(C1278d7.Constraint_android_translationZ, 53);
        f76e.append(C1278d7.Constraint_layout_constraintWidth_default, 54);
        f76e.append(C1278d7.Constraint_layout_constraintHeight_default, 55);
        f76e.append(C1278d7.Constraint_layout_constraintWidth_max, 56);
        f76e.append(C1278d7.Constraint_layout_constraintHeight_max, 57);
        f76e.append(C1278d7.Constraint_layout_constraintWidth_min, 58);
        f76e.append(C1278d7.Constraint_layout_constraintHeight_min, 59);
        f76e.append(C1278d7.Constraint_layout_constraintCircle, 61);
        f76e.append(C1278d7.Constraint_layout_constraintCircleRadius, 62);
        f76e.append(C1278d7.Constraint_layout_constraintCircleAngle, 63);
        f76e.append(C1278d7.Constraint_animate_relativeTo, 64);
        f76e.append(C1278d7.Constraint_transitionEasing, 65);
        f76e.append(C1278d7.Constraint_drawPath, 66);
        f76e.append(C1278d7.Constraint_transitionPathRotate, 67);
        f76e.append(C1278d7.Constraint_motionStagger, 79);
        f76e.append(C1278d7.Constraint_android_id, 38);
        f76e.append(C1278d7.Constraint_motionProgress, 68);
        f76e.append(C1278d7.Constraint_layout_constraintWidth_percent, 69);
        f76e.append(C1278d7.Constraint_layout_constraintHeight_percent, 70);
        f76e.append(C1278d7.Constraint_chainUseRtl, 71);
        f76e.append(C1278d7.Constraint_barrierDirection, 72);
        f76e.append(C1278d7.Constraint_barrierMargin, 73);
        f76e.append(C1278d7.Constraint_constraint_referenced_ids, 74);
        f76e.append(C1278d7.Constraint_barrierAllowsGoneWidgets, 75);
        f76e.append(C1278d7.Constraint_pathMotionArc, 76);
        f76e.append(C1278d7.Constraint_layout_constraintTag, 77);
        f76e.append(C1278d7.Constraint_visibilityMode, 78);
        f76e.append(C1278d7.Constraint_layout_constrainedWidth, 80);
        f76e.append(C1278d7.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: A */
    public static int m7384A(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: B */
    public final void m7383B(Context context, C0013a c0013a, TypedArray typedArray) {
        String str;
        C0015c c0015c;
        String str2;
        StringBuilder sb;
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C1278d7.Constraint_android_id && C1278d7.Constraint_android_layout_marginStart != index && C1278d7.Constraint_android_layout_marginEnd != index) {
                c0013a.f82c.f150a = true;
                c0013a.f83d.f115b = true;
                c0013a.f81b.f157a = true;
                c0013a.f84e.f163a = true;
            }
            switch (f76e.get(index)) {
                case 1:
                    C0014b c0014b = c0013a.f83d;
                    c0014b.f138p = m7384A(typedArray, index, c0014b.f138p);
                    continue;
                case 2:
                    C0014b c0014b2 = c0013a.f83d;
                    c0014b2.f93G = typedArray.getDimensionPixelSize(index, c0014b2.f93G);
                    continue;
                case 3:
                    C0014b c0014b3 = c0013a.f83d;
                    c0014b3.f137o = m7384A(typedArray, index, c0014b3.f137o);
                    continue;
                case 4:
                    C0014b c0014b4 = c0013a.f83d;
                    c0014b4.f136n = m7384A(typedArray, index, c0014b4.f136n);
                    continue;
                case 5:
                    c0013a.f83d.f145w = typedArray.getString(index);
                    continue;
                case 6:
                    C0014b c0014b5 = c0013a.f83d;
                    c0014b5.f87A = typedArray.getDimensionPixelOffset(index, c0014b5.f87A);
                    continue;
                case 7:
                    C0014b c0014b6 = c0013a.f83d;
                    c0014b6.f88B = typedArray.getDimensionPixelOffset(index, c0014b6.f88B);
                    continue;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0014b c0014b7 = c0013a.f83d;
                        c0014b7.f94H = typedArray.getDimensionPixelSize(index, c0014b7.f94H);
                    } else {
                        continue;
                    }
                case 9:
                    C0014b c0014b8 = c0013a.f83d;
                    c0014b8.f142t = m7384A(typedArray, index, c0014b8.f142t);
                    continue;
                case 10:
                    C0014b c0014b9 = c0013a.f83d;
                    c0014b9.f141s = m7384A(typedArray, index, c0014b9.f141s);
                    continue;
                case 11:
                    C0014b c0014b10 = c0013a.f83d;
                    c0014b10.f99M = typedArray.getDimensionPixelSize(index, c0014b10.f99M);
                    continue;
                case 12:
                    C0014b c0014b11 = c0013a.f83d;
                    c0014b11.f100N = typedArray.getDimensionPixelSize(index, c0014b11.f100N);
                    continue;
                case 13:
                    C0014b c0014b12 = c0013a.f83d;
                    c0014b12.f96J = typedArray.getDimensionPixelSize(index, c0014b12.f96J);
                    continue;
                case 14:
                    C0014b c0014b13 = c0013a.f83d;
                    c0014b13.f98L = typedArray.getDimensionPixelSize(index, c0014b13.f98L);
                    continue;
                case 15:
                    C0014b c0014b14 = c0013a.f83d;
                    c0014b14.f101O = typedArray.getDimensionPixelSize(index, c0014b14.f101O);
                    continue;
                case 16:
                    C0014b c0014b15 = c0013a.f83d;
                    c0014b15.f97K = typedArray.getDimensionPixelSize(index, c0014b15.f97K);
                    continue;
                case 17:
                    C0014b c0014b16 = c0013a.f83d;
                    c0014b16.f121e = typedArray.getDimensionPixelOffset(index, c0014b16.f121e);
                    continue;
                case 18:
                    C0014b c0014b17 = c0013a.f83d;
                    c0014b17.f123f = typedArray.getDimensionPixelOffset(index, c0014b17.f123f);
                    continue;
                case 19:
                    C0014b c0014b18 = c0013a.f83d;
                    c0014b18.f125g = typedArray.getFloat(index, c0014b18.f125g);
                    continue;
                case 20:
                    C0014b c0014b19 = c0013a.f83d;
                    c0014b19.f143u = typedArray.getFloat(index, c0014b19.f143u);
                    continue;
                case 21:
                    C0014b c0014b20 = c0013a.f83d;
                    c0014b20.f119d = typedArray.getLayoutDimension(index, c0014b20.f119d);
                    continue;
                case 22:
                    C0016d c0016d = c0013a.f81b;
                    c0016d.f158b = typedArray.getInt(index, c0016d.f158b);
                    C0016d c0016d2 = c0013a.f81b;
                    c0016d2.f158b = f75d[c0016d2.f158b];
                    continue;
                case 23:
                    C0014b c0014b21 = c0013a.f83d;
                    c0014b21.f117c = typedArray.getLayoutDimension(index, c0014b21.f117c);
                    continue;
                case 24:
                    C0014b c0014b22 = c0013a.f83d;
                    c0014b22.f90D = typedArray.getDimensionPixelSize(index, c0014b22.f90D);
                    continue;
                case 25:
                    C0014b c0014b23 = c0013a.f83d;
                    c0014b23.f127h = m7384A(typedArray, index, c0014b23.f127h);
                    continue;
                case 26:
                    C0014b c0014b24 = c0013a.f83d;
                    c0014b24.f129i = m7384A(typedArray, index, c0014b24.f129i);
                    continue;
                case 27:
                    C0014b c0014b25 = c0013a.f83d;
                    c0014b25.f89C = typedArray.getInt(index, c0014b25.f89C);
                    continue;
                case 28:
                    C0014b c0014b26 = c0013a.f83d;
                    c0014b26.f91E = typedArray.getDimensionPixelSize(index, c0014b26.f91E);
                    continue;
                case 29:
                    C0014b c0014b27 = c0013a.f83d;
                    c0014b27.f131j = m7384A(typedArray, index, c0014b27.f131j);
                    continue;
                case 30:
                    C0014b c0014b28 = c0013a.f83d;
                    c0014b28.f133k = m7384A(typedArray, index, c0014b28.f133k);
                    continue;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0014b c0014b29 = c0013a.f83d;
                        c0014b29.f95I = typedArray.getDimensionPixelSize(index, c0014b29.f95I);
                    } else {
                        continue;
                    }
                case 32:
                    C0014b c0014b30 = c0013a.f83d;
                    c0014b30.f139q = m7384A(typedArray, index, c0014b30.f139q);
                    continue;
                case 33:
                    C0014b c0014b31 = c0013a.f83d;
                    c0014b31.f140r = m7384A(typedArray, index, c0014b31.f140r);
                    continue;
                case 34:
                    C0014b c0014b32 = c0013a.f83d;
                    c0014b32.f92F = typedArray.getDimensionPixelSize(index, c0014b32.f92F);
                    continue;
                case 35:
                    C0014b c0014b33 = c0013a.f83d;
                    c0014b33.f135m = m7384A(typedArray, index, c0014b33.f135m);
                    continue;
                case 36:
                    C0014b c0014b34 = c0013a.f83d;
                    c0014b34.f134l = m7384A(typedArray, index, c0014b34.f134l);
                    continue;
                case 37:
                    C0014b c0014b35 = c0013a.f83d;
                    c0014b35.f144v = typedArray.getFloat(index, c0014b35.f144v);
                    continue;
                case 38:
                    c0013a.f80a = typedArray.getResourceId(index, c0013a.f80a);
                    continue;
                case 39:
                    C0014b c0014b36 = c0013a.f83d;
                    c0014b36.f103Q = typedArray.getFloat(index, c0014b36.f103Q);
                    continue;
                case 40:
                    C0014b c0014b37 = c0013a.f83d;
                    c0014b37.f102P = typedArray.getFloat(index, c0014b37.f102P);
                    continue;
                case 41:
                    C0014b c0014b38 = c0013a.f83d;
                    c0014b38.f104R = typedArray.getInt(index, c0014b38.f104R);
                    continue;
                case 42:
                    C0014b c0014b39 = c0013a.f83d;
                    c0014b39.f105S = typedArray.getInt(index, c0014b39.f105S);
                    continue;
                case 43:
                    C0016d c0016d3 = c0013a.f81b;
                    c0016d3.f160d = typedArray.getFloat(index, c0016d3.f160d);
                    continue;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0017e c0017e = c0013a.f84e;
                        c0017e.f174l = true;
                        c0017e.f175m = typedArray.getDimension(index, c0017e.f175m);
                    } else {
                        continue;
                    }
                case 45:
                    C0017e c0017e2 = c0013a.f84e;
                    c0017e2.f165c = typedArray.getFloat(index, c0017e2.f165c);
                    continue;
                case 46:
                    C0017e c0017e3 = c0013a.f84e;
                    c0017e3.f166d = typedArray.getFloat(index, c0017e3.f166d);
                    continue;
                case 47:
                    C0017e c0017e4 = c0013a.f84e;
                    c0017e4.f167e = typedArray.getFloat(index, c0017e4.f167e);
                    continue;
                case 48:
                    C0017e c0017e5 = c0013a.f84e;
                    c0017e5.f168f = typedArray.getFloat(index, c0017e5.f168f);
                    continue;
                case 49:
                    C0017e c0017e6 = c0013a.f84e;
                    c0017e6.f169g = typedArray.getDimension(index, c0017e6.f169g);
                    continue;
                case 50:
                    C0017e c0017e7 = c0013a.f84e;
                    c0017e7.f170h = typedArray.getDimension(index, c0017e7.f170h);
                    continue;
                case 51:
                    C0017e c0017e8 = c0013a.f84e;
                    c0017e8.f171i = typedArray.getDimension(index, c0017e8.f171i);
                    continue;
                case 52:
                    C0017e c0017e9 = c0013a.f84e;
                    c0017e9.f172j = typedArray.getDimension(index, c0017e9.f172j);
                    continue;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0017e c0017e10 = c0013a.f84e;
                        c0017e10.f173k = typedArray.getDimension(index, c0017e10.f173k);
                    } else {
                        continue;
                    }
                case 54:
                    C0014b c0014b40 = c0013a.f83d;
                    c0014b40.f106T = typedArray.getInt(index, c0014b40.f106T);
                    continue;
                case 55:
                    C0014b c0014b41 = c0013a.f83d;
                    c0014b41.f107U = typedArray.getInt(index, c0014b41.f107U);
                    continue;
                case 56:
                    C0014b c0014b42 = c0013a.f83d;
                    c0014b42.f108V = typedArray.getDimensionPixelSize(index, c0014b42.f108V);
                    continue;
                case 57:
                    C0014b c0014b43 = c0013a.f83d;
                    c0014b43.f109W = typedArray.getDimensionPixelSize(index, c0014b43.f109W);
                    continue;
                case 58:
                    C0014b c0014b44 = c0013a.f83d;
                    c0014b44.f110X = typedArray.getDimensionPixelSize(index, c0014b44.f110X);
                    continue;
                case 59:
                    C0014b c0014b45 = c0013a.f83d;
                    c0014b45.f111Y = typedArray.getDimensionPixelSize(index, c0014b45.f111Y);
                    continue;
                case 60:
                    C0017e c0017e11 = c0013a.f84e;
                    c0017e11.f164b = typedArray.getFloat(index, c0017e11.f164b);
                    continue;
                case 61:
                    C0014b c0014b46 = c0013a.f83d;
                    c0014b46.f146x = m7384A(typedArray, index, c0014b46.f146x);
                    continue;
                case 62:
                    C0014b c0014b47 = c0013a.f83d;
                    c0014b47.f147y = typedArray.getDimensionPixelSize(index, c0014b47.f147y);
                    continue;
                case 63:
                    C0014b c0014b48 = c0013a.f83d;
                    c0014b48.f148z = typedArray.getFloat(index, c0014b48.f148z);
                    continue;
                case 64:
                    C0015c c0015c2 = c0013a.f82c;
                    c0015c2.f151b = m7384A(typedArray, index, c0015c2.f151b);
                    continue;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0015c = c0013a.f82c;
                        str = typedArray.getString(index);
                    } else {
                        c0015c = c0013a.f82c;
                        str = l4.c[typedArray.getInteger(index, 0)];
                    }
                    c0015c.f152c = str;
                    continue;
                case 66:
                    c0013a.f82c.f154e = typedArray.getInt(index, 0);
                    continue;
                case 67:
                    C0015c c0015c3 = c0013a.f82c;
                    c0015c3.f156g = typedArray.getFloat(index, c0015c3.f156g);
                    continue;
                case 68:
                    C0016d c0016d4 = c0013a.f81b;
                    c0016d4.f161e = typedArray.getFloat(index, c0016d4.f161e);
                    continue;
                case 69:
                    c0013a.f83d.f112Z = typedArray.getFloat(index, 1.0f);
                    continue;
                case 70:
                    c0013a.f83d.f114a0 = typedArray.getFloat(index, 1.0f);
                    continue;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    continue;
                case 72:
                    C0014b c0014b49 = c0013a.f83d;
                    c0014b49.f116b0 = typedArray.getInt(index, c0014b49.f116b0);
                    continue;
                case 73:
                    C0014b c0014b50 = c0013a.f83d;
                    c0014b50.f118c0 = typedArray.getDimensionPixelSize(index, c0014b50.f118c0);
                    continue;
                case 74:
                    c0013a.f83d.f124f0 = typedArray.getString(index);
                    continue;
                case 75:
                    C0014b c0014b51 = c0013a.f83d;
                    c0014b51.f132j0 = typedArray.getBoolean(index, c0014b51.f132j0);
                    continue;
                case 76:
                    C0015c c0015c4 = c0013a.f82c;
                    c0015c4.f153d = typedArray.getInt(index, c0015c4.f153d);
                    continue;
                case 77:
                    c0013a.f83d.f126g0 = typedArray.getString(index);
                    continue;
                case 78:
                    C0016d c0016d5 = c0013a.f81b;
                    c0016d5.f159c = typedArray.getInt(index, c0016d5.f159c);
                    continue;
                case 79:
                    C0015c c0015c5 = c0013a.f82c;
                    c0015c5.f155f = typedArray.getFloat(index, c0015c5.f155f);
                    continue;
                case 80:
                    C0014b c0014b52 = c0013a.f83d;
                    c0014b52.f128h0 = typedArray.getBoolean(index, c0014b52.f128h0);
                    continue;
                case 81:
                    C0014b c0014b53 = c0013a.f83d;
                    c0014b53.f130i0 = typedArray.getBoolean(index, c0014b53.f130i0);
                    continue;
                case 82:
                    sb = new StringBuilder();
                    str2 = "unused attribute 0x";
                    break;
                default:
                    sb = new StringBuilder();
                    str2 = "Unknown attribute 0x";
                    break;
            }
            sb.append(str2);
            sb.append(Integer.toHexString(index));
            sb.append("   ");
            sb.append(f76e.get(index));
            Log.w("ConstraintSet", sb.toString());
        }
    }

    /* renamed from: C */
    public void m7382C(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Barrier childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f78b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f79c.containsKey(Integer.valueOf(id))) {
                this.f79c.put(Integer.valueOf(id), new C0013a());
            }
            C0013a c0013a = this.f79c.get(Integer.valueOf(id));
            if (!c0013a.f83d.f115b) {
                c0013a.m7345f(id, layoutParams);
                if (childAt instanceof ConstraintHelper) {
                    c0013a.f83d.f122e0 = ((ConstraintHelper) childAt).getReferencedIds();
                    if (childAt instanceof Barrier) {
                        Barrier barrier = childAt;
                        c0013a.f83d.f132j0 = barrier.w();
                        c0013a.f83d.f116b0 = barrier.getType();
                        c0013a.f83d.f118c0 = barrier.getMargin();
                    }
                }
                c0013a.f83d.f115b = true;
            }
            C0016d c0016d = c0013a.f81b;
            if (!c0016d.f157a) {
                c0016d.f158b = childAt.getVisibility();
                c0013a.f81b.f160d = childAt.getAlpha();
                c0013a.f81b.f157a = true;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                C0017e c0017e = c0013a.f84e;
                if (!c0017e.f163a) {
                    c0017e.f163a = true;
                    c0017e.f164b = childAt.getRotation();
                    c0013a.f84e.f165c = childAt.getRotationX();
                    c0013a.f84e.f166d = childAt.getRotationY();
                    c0013a.f84e.f167e = childAt.getScaleX();
                    c0013a.f84e.f168f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        C0017e c0017e2 = c0013a.f84e;
                        c0017e2.f169g = pivotX;
                        c0017e2.f170h = pivotY;
                    }
                    c0013a.f84e.f171i = childAt.getTranslationX();
                    c0013a.f84e.f172j = childAt.getTranslationY();
                    if (i2 >= 21) {
                        c0013a.f84e.f173k = childAt.getTranslationZ();
                        C0017e c0017e3 = c0013a.f84e;
                        if (c0017e3.f174l) {
                            c0017e3.f175m = childAt.getElevation();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: D */
    public void m7381D(C0012a7 c0012a7) {
        for (Integer num : c0012a7.f79c.keySet()) {
            int intValue = num.intValue();
            C0013a c0013a = c0012a7.f79c.get(num);
            if (!this.f79c.containsKey(Integer.valueOf(intValue))) {
                this.f79c.put(Integer.valueOf(intValue), new C0013a());
            }
            C0013a c0013a2 = this.f79c.get(Integer.valueOf(intValue));
            C0014b c0014b = c0013a2.f83d;
            if (!c0014b.f115b) {
                c0014b.m7342a(c0013a.f83d);
            }
            C0016d c0016d = c0013a2.f81b;
            if (!c0016d.f157a) {
                c0016d.m7338a(c0013a.f81b);
            }
            C0017e c0017e = c0013a2.f84e;
            if (!c0017e.f163a) {
                c0017e.m7336a(c0013a.f84e);
            }
            C0015c c0015c = c0013a2.f82c;
            if (!c0015c.f150a) {
                c0015c.m7340a(c0013a.f82c);
            }
            for (String str : c0013a.f85f.keySet()) {
                if (!c0013a2.f85f.containsKey(str)) {
                    c0013a2.f85f.put(str, c0013a.f85f.get(str));
                }
            }
        }
    }

    /* renamed from: E */
    public void m7380E(boolean z) {
        this.f78b = z;
    }

    /* renamed from: F */
    public void m7379F(int i, int i2, int i3) {
        C0013a m7360q = m7360q(i);
        switch (i2) {
            case 1:
                m7360q.f83d.f90D = i3;
                return;
            case 2:
                m7360q.f83d.f91E = i3;
                return;
            case 3:
                m7360q.f83d.f92F = i3;
                return;
            case 4:
                m7360q.f83d.f93G = i3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                m7360q.f83d.f95I = i3;
                return;
            case 7:
                m7360q.f83d.f94H = i3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    /* renamed from: G */
    public void m7378G(boolean z) {
    }

    /* renamed from: H */
    public final String m7377H(int i) {
        switch (i) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return TtmlNode.START;
            case 7:
                return TtmlNode.END;
            default:
                return AdError.UNDEFINED_DOMAIN;
        }
    }

    /* renamed from: c */
    public void m7374c(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f79c.containsKey(Integer.valueOf(id))) {
                Log.v("ConstraintSet", "id unknown " + r4.c(childAt));
            } else if (this.f78b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f79c.containsKey(Integer.valueOf(id))) {
                    y6.h(childAt, this.f79c.get(Integer.valueOf(id)).f85f);
                }
            }
        }
    }

    /* renamed from: d */
    public void m7373d(ConstraintLayout constraintLayout) {
        m7371f(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: e */
    public void m7372e(ConstraintHelper constraintHelper, z5 z5Var, ConstraintLayout.LayoutParams layoutParams, SparseArray<z5> sparseArray) {
        int id = constraintHelper.getId();
        if (this.f79c.containsKey(Integer.valueOf(id))) {
            C0013a c0013a = this.f79c.get(Integer.valueOf(id));
            if (!(z5Var instanceof e6)) {
                return;
            }
            constraintHelper.m6853o(c0013a, (e6) z5Var, layoutParams, sparseArray);
        }
    }

    /* renamed from: f */
    public void m7371f(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f79c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f79c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + r4.c(childAt));
            } else if (this.f78b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.f79c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        C0013a c0013a = this.f79c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            c0013a.f83d.f120d0 = 1;
                        }
                        int i2 = c0013a.f83d.f120d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(c0013a.f83d.f116b0);
                            barrier.setMargin(c0013a.f83d.f118c0);
                            barrier.setAllowsGoneWidget(c0013a.f83d.f132j0);
                            C0014b c0014b = c0013a.f83d;
                            int[] iArr = c0014b.f122e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = c0014b.f124f0;
                                if (str != null) {
                                    c0014b.f122e0 = m7362o(barrier, str);
                                    barrier.setReferencedIds(c0013a.f83d.f122e0);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.m6843c();
                        c0013a.m7347d(layoutParams);
                        if (z) {
                            y6.h(childAt, c0013a.f85f);
                        }
                        childAt.setLayoutParams(layoutParams);
                        C0016d c0016d = c0013a.f81b;
                        if (c0016d.f159c == 0) {
                            childAt.setVisibility(c0016d.f158b);
                        }
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 17) {
                            childAt.setAlpha(c0013a.f81b.f160d);
                            childAt.setRotation(c0013a.f84e.f164b);
                            childAt.setRotationX(c0013a.f84e.f165c);
                            childAt.setRotationY(c0013a.f84e.f166d);
                            childAt.setScaleX(c0013a.f84e.f167e);
                            childAt.setScaleY(c0013a.f84e.f168f);
                            if (!Float.isNaN(c0013a.f84e.f169g)) {
                                childAt.setPivotX(c0013a.f84e.f169g);
                            }
                            if (!Float.isNaN(c0013a.f84e.f170h)) {
                                childAt.setPivotY(c0013a.f84e.f170h);
                            }
                            childAt.setTranslationX(c0013a.f84e.f171i);
                            childAt.setTranslationY(c0013a.f84e.f172j);
                            if (i3 >= 21) {
                                childAt.setTranslationZ(c0013a.f84e.f173k);
                                C0017e c0017e = c0013a.f84e;
                                if (c0017e.f174l) {
                                    childAt.setElevation(c0017e.f175m);
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
            C0013a c0013a2 = this.f79c.get(num);
            int i4 = c0013a2.f83d.f120d0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C0014b c0014b2 = c0013a2.f83d;
                int[] iArr2 = c0014b2.f122e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c0014b2.f124f0;
                    if (str2 != null) {
                        c0014b2.f122e0 = m7362o(barrier2, str2);
                        barrier2.setReferencedIds(c0013a2.f83d.f122e0);
                    }
                }
                barrier2.setType(c0013a2.f83d.f116b0);
                barrier2.setMargin(c0013a2.f83d.f118c0);
                ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m6846v();
                c0013a2.m7347d(generateDefaultLayoutParams);
                constraintLayout.addView((View) barrier2, (ViewGroup.LayoutParams) generateDefaultLayoutParams);
            }
            if (c0013a2.f83d.f113a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c0013a2.m7347d(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: g */
    public void m7370g(int i, ConstraintLayout.LayoutParams layoutParams) {
        if (this.f79c.containsKey(Integer.valueOf(i))) {
            this.f79c.get(Integer.valueOf(i)).m7347d(layoutParams);
        }
    }

    /* renamed from: h */
    public void m7369h(int i, int i2) {
        if (this.f79c.containsKey(Integer.valueOf(i))) {
            C0013a c0013a = this.f79c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C0014b c0014b = c0013a.f83d;
                    c0014b.f129i = -1;
                    c0014b.f127h = -1;
                    c0014b.f90D = -1;
                    c0014b.f96J = -1;
                    return;
                case 2:
                    C0014b c0014b2 = c0013a.f83d;
                    c0014b2.f133k = -1;
                    c0014b2.f131j = -1;
                    c0014b2.f91E = -1;
                    c0014b2.f98L = -1;
                    return;
                case 3:
                    C0014b c0014b3 = c0013a.f83d;
                    c0014b3.f135m = -1;
                    c0014b3.f134l = -1;
                    c0014b3.f92F = -1;
                    c0014b3.f97K = -1;
                    return;
                case 4:
                    C0014b c0014b4 = c0013a.f83d;
                    c0014b4.f136n = -1;
                    c0014b4.f137o = -1;
                    c0014b4.f93G = -1;
                    c0014b4.f99M = -1;
                    return;
                case 5:
                    c0013a.f83d.f138p = -1;
                    return;
                case 6:
                    C0014b c0014b5 = c0013a.f83d;
                    c0014b5.f139q = -1;
                    c0014b5.f140r = -1;
                    c0014b5.f95I = -1;
                    c0014b5.f101O = -1;
                    return;
                case 7:
                    C0014b c0014b6 = c0013a.f83d;
                    c0014b6.f141s = -1;
                    c0014b6.f142t = -1;
                    c0014b6.f94H = -1;
                    c0014b6.f100N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: i */
    public void m7368i(Context context, int i) {
        m7367j((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: j */
    public void m7367j(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f79c.clear();
        for (int i = 0; i < childCount; i++) {
            Barrier childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f78b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f79c.containsKey(Integer.valueOf(id))) {
                this.f79c.put(Integer.valueOf(id), new C0013a());
            }
            C0013a c0013a = this.f79c.get(Integer.valueOf(id));
            c0013a.f85f = y6.b(this.f77a, childAt);
            c0013a.m7345f(id, layoutParams);
            c0013a.f81b.f158b = childAt.getVisibility();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                c0013a.f81b.f160d = childAt.getAlpha();
                c0013a.f84e.f164b = childAt.getRotation();
                c0013a.f84e.f165c = childAt.getRotationX();
                c0013a.f84e.f166d = childAt.getRotationY();
                c0013a.f84e.f167e = childAt.getScaleX();
                c0013a.f84e.f168f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    C0017e c0017e = c0013a.f84e;
                    c0017e.f169g = pivotX;
                    c0017e.f170h = pivotY;
                }
                c0013a.f84e.f171i = childAt.getTranslationX();
                c0013a.f84e.f172j = childAt.getTranslationY();
                if (i2 >= 21) {
                    c0013a.f84e.f173k = childAt.getTranslationZ();
                    C0017e c0017e2 = c0013a.f84e;
                    if (c0017e2.f174l) {
                        c0017e2.f175m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = childAt;
                c0013a.f83d.f132j0 = barrier.w();
                c0013a.f83d.f122e0 = barrier.getReferencedIds();
                c0013a.f83d.f116b0 = barrier.getType();
                c0013a.f83d.f118c0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: k */
    public void m7366k(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f79c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f78b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f79c.containsKey(Integer.valueOf(id))) {
                this.f79c.put(Integer.valueOf(id), new C0013a());
            }
            C0013a c0013a = this.f79c.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                c0013a.m7343h((ConstraintHelper) childAt, id, layoutParams);
            }
            c0013a.m7344g(id, layoutParams);
        }
    }

    /* renamed from: l */
    public void m7365l(int i, int i2, int i3, int i4) {
        C0014b c0014b;
        if (!this.f79c.containsKey(Integer.valueOf(i))) {
            this.f79c.put(Integer.valueOf(i), new C0013a());
        }
        C0013a c0013a = this.f79c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    C0014b c0014b2 = c0013a.f83d;
                    c0014b2.f127h = i3;
                    c0014b2.f129i = -1;
                    return;
                } else if (i4 == 2) {
                    C0014b c0014b3 = c0013a.f83d;
                    c0014b3.f129i = i3;
                    c0014b3.f127h = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + m7377H(i4) + " undefined");
                }
            case 2:
                if (i4 == 1) {
                    C0014b c0014b4 = c0013a.f83d;
                    c0014b4.f131j = i3;
                    c0014b4.f133k = -1;
                    return;
                } else if (i4 == 2) {
                    C0014b c0014b5 = c0013a.f83d;
                    c0014b5.f133k = i3;
                    c0014b5.f131j = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                }
            case 3:
                if (i4 == 3) {
                    c0014b = c0013a.f83d;
                    c0014b.f134l = i3;
                    c0014b.f135m = -1;
                    break;
                } else if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    c0014b = c0013a.f83d;
                    c0014b.f135m = i3;
                    c0014b.f134l = -1;
                    break;
                }
            case 4:
                if (i4 == 4) {
                    c0014b = c0013a.f83d;
                    c0014b.f137o = i3;
                    c0014b.f136n = -1;
                    break;
                } else if (i4 != 3) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    c0014b = c0013a.f83d;
                    c0014b.f136n = i3;
                    c0014b.f137o = -1;
                    break;
                }
            case 5:
                if (i4 != 5) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                }
                C0014b c0014b6 = c0013a.f83d;
                c0014b6.f138p = i3;
                c0014b6.f137o = -1;
                c0014b6.f136n = -1;
                c0014b6.f134l = -1;
                c0014b6.f135m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    C0014b c0014b7 = c0013a.f83d;
                    c0014b7.f140r = i3;
                    c0014b7.f139q = -1;
                    return;
                } else if (i4 == 7) {
                    C0014b c0014b8 = c0013a.f83d;
                    c0014b8.f139q = i3;
                    c0014b8.f140r = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                }
            case 7:
                if (i4 == 7) {
                    C0014b c0014b9 = c0013a.f83d;
                    c0014b9.f142t = i3;
                    c0014b9.f141s = -1;
                    return;
                } else if (i4 == 6) {
                    C0014b c0014b10 = c0013a.f83d;
                    c0014b10.f141s = i3;
                    c0014b10.f142t = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                }
            default:
                throw new IllegalArgumentException(m7377H(i2) + " to " + m7377H(i4) + " unknown");
        }
        c0014b.f138p = -1;
    }

    /* renamed from: m */
    public void m7364m(int i, int i2, int i3, int i4, int i5) {
        C0014b c0014b;
        C0014b c0014b2;
        if (!this.f79c.containsKey(Integer.valueOf(i))) {
            this.f79c.put(Integer.valueOf(i), new C0013a());
        }
        C0013a c0013a = this.f79c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    C0014b c0014b3 = c0013a.f83d;
                    c0014b3.f127h = i3;
                    c0014b3.f129i = -1;
                } else if (i4 != 2) {
                    throw new IllegalArgumentException("Left to " + m7377H(i4) + " undefined");
                } else {
                    C0014b c0014b4 = c0013a.f83d;
                    c0014b4.f129i = i3;
                    c0014b4.f127h = -1;
                }
                c0013a.f83d.f90D = i5;
                return;
            case 2:
                if (i4 == 1) {
                    C0014b c0014b5 = c0013a.f83d;
                    c0014b5.f131j = i3;
                    c0014b5.f133k = -1;
                } else if (i4 != 2) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    C0014b c0014b6 = c0013a.f83d;
                    c0014b6.f133k = i3;
                    c0014b6.f131j = -1;
                }
                c0013a.f83d.f91E = i5;
                return;
            case 3:
                if (i4 == 3) {
                    c0014b = c0013a.f83d;
                    c0014b.f134l = i3;
                    c0014b.f135m = -1;
                } else if (i4 != 4) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    c0014b = c0013a.f83d;
                    c0014b.f135m = i3;
                    c0014b.f134l = -1;
                }
                c0014b.f138p = -1;
                c0013a.f83d.f92F = i5;
                return;
            case 4:
                if (i4 == 4) {
                    c0014b2 = c0013a.f83d;
                    c0014b2.f137o = i3;
                    c0014b2.f136n = -1;
                } else if (i4 != 3) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    c0014b2 = c0013a.f83d;
                    c0014b2.f136n = i3;
                    c0014b2.f137o = -1;
                }
                c0014b2.f138p = -1;
                c0013a.f83d.f93G = i5;
                return;
            case 5:
                if (i4 != 5) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                }
                C0014b c0014b7 = c0013a.f83d;
                c0014b7.f138p = i3;
                c0014b7.f137o = -1;
                c0014b7.f136n = -1;
                c0014b7.f134l = -1;
                c0014b7.f135m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    C0014b c0014b8 = c0013a.f83d;
                    c0014b8.f140r = i3;
                    c0014b8.f139q = -1;
                } else if (i4 != 7) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    C0014b c0014b9 = c0013a.f83d;
                    c0014b9.f139q = i3;
                    c0014b9.f140r = -1;
                }
                c0013a.f83d.f95I = i5;
                return;
            case 7:
                if (i4 == 7) {
                    C0014b c0014b10 = c0013a.f83d;
                    c0014b10.f142t = i3;
                    c0014b10.f141s = -1;
                } else if (i4 != 6) {
                    throw new IllegalArgumentException("right to " + m7377H(i4) + " undefined");
                } else {
                    C0014b c0014b11 = c0013a.f83d;
                    c0014b11.f141s = i3;
                    c0014b11.f142t = -1;
                }
                c0013a.f83d.f94H = i5;
                return;
            default:
                throw new IllegalArgumentException(m7377H(i2) + " to " + m7377H(i4) + " unknown");
        }
    }

    /* renamed from: n */
    public void m7363n(int i, int i2, int i3, float f) {
        C0014b c0014b = m7360q(i).f83d;
        c0014b.f146x = i2;
        c0014b.f147y = i3;
        c0014b.f148z = f;
    }

    /* renamed from: o */
    public final int[] m7362o(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0285c7.class.getField(trim).getInt(null);
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
                        Object designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, trim);
                        i5 = i4;
                        if (designInformation != null) {
                            i5 = i4;
                            if (designInformation instanceof Integer) {
                                i5 = ((Integer) designInformation).intValue();
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

    /* renamed from: p */
    public final C0013a m7361p(Context context, AttributeSet attributeSet) {
        C0013a c0013a = new C0013a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1278d7.Constraint);
        m7383B(context, c0013a, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return c0013a;
    }

    /* renamed from: q */
    public final C0013a m7360q(int i) {
        if (!this.f79c.containsKey(Integer.valueOf(i))) {
            this.f79c.put(Integer.valueOf(i), new C0013a());
        }
        return this.f79c.get(Integer.valueOf(i));
    }

    /* renamed from: r */
    public C0013a m7359r(int i) {
        if (this.f79c.containsKey(Integer.valueOf(i))) {
            return this.f79c.get(Integer.valueOf(i));
        }
        return null;
    }

    /* renamed from: s */
    public int m7358s(int i) {
        return m7360q(i).f83d.f119d;
    }

    /* renamed from: t */
    public int[] m7357t() {
        Integer[] numArr = (Integer[]) this.f79c.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: u */
    public C0013a m7356u(int i) {
        return m7360q(i);
    }

    /* renamed from: v */
    public int m7355v(int i) {
        return m7360q(i).f81b.f158b;
    }

    /* renamed from: w */
    public int m7354w(int i) {
        return m7360q(i).f81b.f159c;
    }

    /* renamed from: x */
    public int m7353x(int i) {
        return m7360q(i).f83d.f117c;
    }

    /* renamed from: y */
    public void m7352y(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0013a m7361p = m7361p(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m7361p.f83d.f113a = true;
                    }
                    this.f79c.put(Integer.valueOf(m7361p.f80a), m7361p);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: z */
    public void m7351z(Context context, XmlPullParser xmlPullParser) {
        C0013a c0013a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C0013a c0013a2 = null;
            while (true) {
                C0013a c0013a3 = c0013a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0013a = c0013a3;
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
                            c0013a = m7361p(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c0013a = m7361p(context, Xml.asAttributeSet(xmlPullParser));
                            C0014b c0014b = c0013a.f83d;
                            c0014b.f113a = true;
                            c0014b.f115b = true;
                            break;
                        case true:
                            c0013a = m7361p(context, Xml.asAttributeSet(xmlPullParser));
                            c0013a.f83d.f120d0 = 1;
                            break;
                        case true:
                            if (c0013a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0013a3.f81b.m7337b(context, Xml.asAttributeSet(xmlPullParser));
                            c0013a = c0013a3;
                            break;
                        case true:
                            if (c0013a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0013a3.f84e.m7335b(context, Xml.asAttributeSet(xmlPullParser));
                            c0013a = c0013a3;
                            break;
                        case true:
                            if (c0013a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0013a3.f83d.m7341b(context, Xml.asAttributeSet(xmlPullParser));
                            c0013a = c0013a3;
                            break;
                        case true:
                            if (c0013a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0013a3.f82c.m7339b(context, Xml.asAttributeSet(xmlPullParser));
                            c0013a = c0013a3;
                            break;
                        case true:
                            if (c0013a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            y6.g(context, xmlPullParser, c0013a3.f85f);
                            c0013a = c0013a3;
                            break;
                        default:
                            c0013a = c0013a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c0013a = c0013a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c0013a = c0013a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f79c.put(Integer.valueOf(c0013a3.f80a), c0013a3);
                        c0013a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c0013a2 = c0013a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
