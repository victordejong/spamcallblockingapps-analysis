package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.google.android.gms.ads.AdError;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1795i.p1796a.p1797a.C26273c;
import p1727n3.p1795i.p1802c.C26395e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.c.d */
/* loaded from: classes-dex2jar.jar:n3/i/c/d.class */
public class C26389d {

    /* renamed from: d */
    public static final int[] f73883d = {0, 4, 8};

    /* renamed from: e */
    public static SparseIntArray f73884e;

    /* renamed from: a */
    public HashMap<String, C26383a> f73885a = new HashMap<>();

    /* renamed from: b */
    public boolean f73886b = true;

    /* renamed from: c */
    public HashMap<Integer, C26390a> f73887c = new HashMap<>();

    /* renamed from: n3.i.c.d$a */
    /* loaded from: classes-dex2jar.jar:n3/i/c/d$a.class */
    public static class C26390a {

        /* renamed from: a */
        public int f73888a;

        /* renamed from: b */
        public final C26393d f73889b = new C26393d();

        /* renamed from: c */
        public final C26392c f73890c = new C26392c();

        /* renamed from: d */
        public final C26391b f73891d = new C26391b();

        /* renamed from: e */
        public final C26394e f73892e = new C26394e();

        /* renamed from: f */
        public HashMap<String, C26383a> f73893f = new HashMap<>();

        /* renamed from: a */
        public void m1956a(ConstraintLayout.C0111a c0111a) {
            C26391b c26391b = this.f73891d;
            c0111a.f629d = c26391b.f73935h;
            c0111a.f631e = c26391b.f73937i;
            c0111a.f633f = c26391b.f73939j;
            c0111a.f635g = c26391b.f73941k;
            c0111a.f637h = c26391b.f73942l;
            c0111a.f639i = c26391b.f73943m;
            c0111a.f641j = c26391b.f73944n;
            c0111a.f643k = c26391b.f73945o;
            c0111a.f645l = c26391b.f73946p;
            c0111a.f650p = c26391b.f73947q;
            c0111a.f651q = c26391b.f73948r;
            c0111a.f652r = c26391b.f73949s;
            c0111a.f653s = c26391b.f73950t;
            ((ViewGroup.MarginLayoutParams) c0111a).leftMargin = c26391b.f73898D;
            ((ViewGroup.MarginLayoutParams) c0111a).rightMargin = c26391b.f73899E;
            ((ViewGroup.MarginLayoutParams) c0111a).topMargin = c26391b.f73900F;
            ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin = c26391b.f73901G;
            c0111a.f658x = c26391b.f73909O;
            c0111a.f659y = c26391b.f73908N;
            c0111a.f655u = c26391b.f73905K;
            c0111a.f657w = c26391b.f73907M;
            c0111a.f660z = c26391b.f73951u;
            c0111a.f597A = c26391b.f73952v;
            c0111a.f647m = c26391b.f73954x;
            c0111a.f648n = c26391b.f73955y;
            C26391b c26391b2 = this.f73891d;
            c0111a.f649o = c26391b2.f73956z;
            c0111a.f598B = c26391b2.f73953w;
            c0111a.f612P = c26391b2.f73895A;
            c0111a.f613Q = c26391b2.f73896B;
            c0111a.f601E = c26391b2.f73910P;
            c0111a.f600D = c26391b2.f73911Q;
            c0111a.f603G = c26391b2.f73913S;
            c0111a.f602F = c26391b2.f73912R;
            c0111a.f615S = c26391b2.f73936h0;
            c0111a.f616T = c26391b2.f73938i0;
            c0111a.f604H = c26391b2.f73914T;
            c0111a.f605I = c26391b2.f73915U;
            c0111a.f608L = c26391b2.f73916V;
            c0111a.f609M = c26391b2.f73917W;
            c0111a.f606J = c26391b2.f73918X;
            c0111a.f607K = c26391b2.f73919Y;
            c0111a.f610N = c26391b2.f73920Z;
            c0111a.f611O = c26391b2.f73922a0;
            c0111a.f614R = c26391b2.f73897C;
            c0111a.f627c = c26391b2.f73933g;
            c0111a.f623a = c26391b2.f73929e;
            c0111a.f625b = c26391b2.f73931f;
            ((ViewGroup.MarginLayoutParams) c0111a).width = c26391b2.f73925c;
            ((ViewGroup.MarginLayoutParams) c0111a).height = c26391b2.f73927d;
            String str = c26391b2.f73934g0;
            if (str != null) {
                c0111a.f617U = str;
            }
            c0111a.setMarginStart(this.f73891d.f73903I);
            c0111a.setMarginEnd(this.f73891d.f73902H);
            c0111a.m43025a();
        }

        /* renamed from: b */
        public final void m1955b(int i, ConstraintLayout.C0111a c0111a) {
            this.f73888a = i;
            C26391b c26391b = this.f73891d;
            c26391b.f73935h = c0111a.f629d;
            c26391b.f73937i = c0111a.f631e;
            c26391b.f73939j = c0111a.f633f;
            c26391b.f73941k = c0111a.f635g;
            c26391b.f73942l = c0111a.f637h;
            c26391b.f73943m = c0111a.f639i;
            c26391b.f73944n = c0111a.f641j;
            c26391b.f73945o = c0111a.f643k;
            c26391b.f73946p = c0111a.f645l;
            c26391b.f73947q = c0111a.f650p;
            c26391b.f73948r = c0111a.f651q;
            c26391b.f73949s = c0111a.f652r;
            c26391b.f73950t = c0111a.f653s;
            c26391b.f73951u = c0111a.f660z;
            c26391b.f73952v = c0111a.f597A;
            c26391b.f73953w = c0111a.f598B;
            c26391b.f73954x = c0111a.f647m;
            c26391b.f73955y = c0111a.f648n;
            c26391b.f73956z = c0111a.f649o;
            c26391b.f73895A = c0111a.f612P;
            c26391b.f73896B = c0111a.f613Q;
            c26391b.f73897C = c0111a.f614R;
            c26391b.f73933g = c0111a.f627c;
            c26391b.f73929e = c0111a.f623a;
            c26391b.f73931f = c0111a.f625b;
            C26391b c26391b2 = this.f73891d;
            c26391b2.f73925c = ((ViewGroup.MarginLayoutParams) c0111a).width;
            c26391b2.f73927d = ((ViewGroup.MarginLayoutParams) c0111a).height;
            c26391b2.f73898D = ((ViewGroup.MarginLayoutParams) c0111a).leftMargin;
            c26391b2.f73899E = ((ViewGroup.MarginLayoutParams) c0111a).rightMargin;
            c26391b2.f73900F = ((ViewGroup.MarginLayoutParams) c0111a).topMargin;
            c26391b2.f73901G = ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin;
            c26391b2.f73910P = c0111a.f601E;
            c26391b2.f73911Q = c0111a.f600D;
            c26391b2.f73913S = c0111a.f603G;
            c26391b2.f73912R = c0111a.f602F;
            c26391b2.f73936h0 = c0111a.f615S;
            c26391b2.f73938i0 = c0111a.f616T;
            c26391b2.f73914T = c0111a.f604H;
            c26391b2.f73915U = c0111a.f605I;
            c26391b2.f73916V = c0111a.f608L;
            c26391b2.f73917W = c0111a.f609M;
            c26391b2.f73918X = c0111a.f606J;
            c26391b2.f73919Y = c0111a.f607K;
            c26391b2.f73920Z = c0111a.f610N;
            c26391b2.f73922a0 = c0111a.f611O;
            c26391b2.f73934g0 = c0111a.f617U;
            c26391b2.f73905K = c0111a.f655u;
            c26391b2.f73907M = c0111a.f657w;
            c26391b2.f73904J = c0111a.f654t;
            c26391b2.f73906L = c0111a.f656v;
            C26391b c26391b3 = this.f73891d;
            c26391b3.f73909O = c0111a.f658x;
            c26391b3.f73908N = c0111a.f659y;
            c26391b3.f73902H = c0111a.getMarginEnd();
            this.f73891d.f73903I = c0111a.getMarginStart();
        }

        /* renamed from: c */
        public final void m1954c(int i, C26395e.C26396a c26396a) {
            m1955b(i, c26396a);
            this.f73889b.f73968d = c26396a.f73985m0;
            C26394e c26394e = this.f73892e;
            c26394e.f73972b = c26396a.f73988p0;
            c26394e.f73973c = c26396a.f73989q0;
            c26394e.f73974d = c26396a.f73990r0;
            c26394e.f73975e = c26396a.f73991s0;
            c26394e.f73976f = c26396a.f73992t0;
            c26394e.f73977g = c26396a.f73993u0;
            c26394e.f73978h = c26396a.f73994v0;
            c26394e.f73979i = c26396a.f73995w0;
            c26394e.f73980j = c26396a.f73996x0;
            c26394e.f73981k = c26396a.f73997y0;
            c26394e.f73983m = c26396a.f73987o0;
            c26394e.f73982l = c26396a.f73986n0;
        }

        public Object clone() throws CloneNotSupportedException {
            C26390a c26390a = new C26390a();
            c26390a.f73891d.m1953a(this.f73891d);
            c26390a.f73890c.m1951a(this.f73890c);
            c26390a.f73889b.m1949a(this.f73889b);
            c26390a.f73892e.m1947a(this.f73892e);
            c26390a.f73888a = this.f73888a;
            return c26390a;
        }
    }

    /* renamed from: n3.i.c.d$b */
    /* loaded from: classes-dex2jar.jar:n3/i/c/d$b.class */
    public static class C26391b {

        /* renamed from: k0 */
        public static SparseIntArray f73894k0;

        /* renamed from: c */
        public int f73925c;

        /* renamed from: d */
        public int f73927d;

        /* renamed from: e0 */
        public int[] f73930e0;

        /* renamed from: f0 */
        public String f73932f0;

        /* renamed from: g0 */
        public String f73934g0;

        /* renamed from: a */
        public boolean f73921a = false;

        /* renamed from: b */
        public boolean f73923b = false;

        /* renamed from: e */
        public int f73929e = -1;

        /* renamed from: f */
        public int f73931f = -1;

        /* renamed from: g */
        public float f73933g = -1.0f;

        /* renamed from: h */
        public int f73935h = -1;

        /* renamed from: i */
        public int f73937i = -1;

        /* renamed from: j */
        public int f73939j = -1;

        /* renamed from: k */
        public int f73941k = -1;

        /* renamed from: l */
        public int f73942l = -1;

        /* renamed from: m */
        public int f73943m = -1;

        /* renamed from: n */
        public int f73944n = -1;

        /* renamed from: o */
        public int f73945o = -1;

        /* renamed from: p */
        public int f73946p = -1;

        /* renamed from: q */
        public int f73947q = -1;

        /* renamed from: r */
        public int f73948r = -1;

        /* renamed from: s */
        public int f73949s = -1;

        /* renamed from: t */
        public int f73950t = -1;

        /* renamed from: u */
        public float f73951u = 0.5f;

        /* renamed from: v */
        public float f73952v = 0.5f;

        /* renamed from: w */
        public String f73953w = null;

        /* renamed from: x */
        public int f73954x = -1;

        /* renamed from: y */
        public int f73955y = 0;

        /* renamed from: z */
        public float f73956z = 0.0f;

        /* renamed from: A */
        public int f73895A = -1;

        /* renamed from: B */
        public int f73896B = -1;

        /* renamed from: C */
        public int f73897C = -1;

        /* renamed from: D */
        public int f73898D = -1;

        /* renamed from: E */
        public int f73899E = -1;

        /* renamed from: F */
        public int f73900F = -1;

        /* renamed from: G */
        public int f73901G = -1;

        /* renamed from: H */
        public int f73902H = -1;

        /* renamed from: I */
        public int f73903I = -1;

        /* renamed from: J */
        public int f73904J = -1;

        /* renamed from: K */
        public int f73905K = -1;

        /* renamed from: L */
        public int f73906L = -1;

        /* renamed from: M */
        public int f73907M = -1;

        /* renamed from: N */
        public int f73908N = -1;

        /* renamed from: O */
        public int f73909O = -1;

        /* renamed from: P */
        public float f73910P = -1.0f;

        /* renamed from: Q */
        public float f73911Q = -1.0f;

        /* renamed from: R */
        public int f73912R = 0;

        /* renamed from: S */
        public int f73913S = 0;

        /* renamed from: T */
        public int f73914T = 0;

        /* renamed from: U */
        public int f73915U = 0;

        /* renamed from: V */
        public int f73916V = -1;

        /* renamed from: W */
        public int f73917W = -1;

        /* renamed from: X */
        public int f73918X = -1;

        /* renamed from: Y */
        public int f73919Y = -1;

        /* renamed from: Z */
        public float f73920Z = 1.0f;

        /* renamed from: a0 */
        public float f73922a0 = 1.0f;

        /* renamed from: b0 */
        public int f73924b0 = -1;

        /* renamed from: c0 */
        public int f73926c0 = 0;

        /* renamed from: d0 */
        public int f73928d0 = -1;

        /* renamed from: h0 */
        public boolean f73936h0 = false;

        /* renamed from: i0 */
        public boolean f73938i0 = false;

        /* renamed from: j0 */
        public boolean f73940j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73894k0 = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f73894k0.append(C0114R.styleable.Layout_layout_editor_absoluteX, 6);
            f73894k0.append(C0114R.styleable.Layout_layout_editor_absoluteY, 7);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintGuide_begin, 17);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintGuide_end, 18);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintGuide_percent, 19);
            f73894k0.append(C0114R.styleable.Layout_android_orientation, 26);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginLeft, 13);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginTop, 16);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginRight, 14);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginBottom, 11);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginStart, 15);
            f73894k0.append(C0114R.styleable.Layout_layout_goneMarginEnd, 12);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintVertical_weight, 38);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintVertical_bias, 36);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintDimensionRatio, 5);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintLeft_creator, 76);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintTop_creator, 76);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintRight_creator, 76);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintBottom_creator, 76);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintBaseline_creator, 76);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginLeft, 23);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginRight, 27);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginStart, 30);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginEnd, 8);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginTop, 33);
            f73894k0.append(C0114R.styleable.Layout_android_layout_marginBottom, 2);
            f73894k0.append(C0114R.styleable.Layout_android_layout_width, 22);
            f73894k0.append(C0114R.styleable.Layout_android_layout_height, 21);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintCircle, 61);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintCircleRadius, 62);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintCircleAngle, 63);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintWidth_percent, 69);
            f73894k0.append(C0114R.styleable.Layout_layout_constraintHeight_percent, 70);
            f73894k0.append(C0114R.styleable.Layout_chainUseRtl, 71);
            f73894k0.append(C0114R.styleable.Layout_barrierDirection, 72);
            f73894k0.append(C0114R.styleable.Layout_barrierMargin, 73);
            f73894k0.append(C0114R.styleable.Layout_constraint_referenced_ids, 74);
            f73894k0.append(C0114R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m1953a(C26391b c26391b) {
            this.f73921a = c26391b.f73921a;
            this.f73925c = c26391b.f73925c;
            this.f73923b = c26391b.f73923b;
            this.f73927d = c26391b.f73927d;
            this.f73929e = c26391b.f73929e;
            this.f73931f = c26391b.f73931f;
            this.f73933g = c26391b.f73933g;
            this.f73935h = c26391b.f73935h;
            this.f73937i = c26391b.f73937i;
            this.f73939j = c26391b.f73939j;
            this.f73941k = c26391b.f73941k;
            this.f73942l = c26391b.f73942l;
            this.f73943m = c26391b.f73943m;
            this.f73944n = c26391b.f73944n;
            this.f73945o = c26391b.f73945o;
            this.f73946p = c26391b.f73946p;
            this.f73947q = c26391b.f73947q;
            this.f73948r = c26391b.f73948r;
            this.f73949s = c26391b.f73949s;
            this.f73950t = c26391b.f73950t;
            this.f73951u = c26391b.f73951u;
            this.f73952v = c26391b.f73952v;
            this.f73953w = c26391b.f73953w;
            this.f73954x = c26391b.f73954x;
            this.f73955y = c26391b.f73955y;
            this.f73956z = c26391b.f73956z;
            this.f73895A = c26391b.f73895A;
            this.f73896B = c26391b.f73896B;
            this.f73897C = c26391b.f73897C;
            this.f73898D = c26391b.f73898D;
            this.f73899E = c26391b.f73899E;
            this.f73900F = c26391b.f73900F;
            this.f73901G = c26391b.f73901G;
            this.f73902H = c26391b.f73902H;
            this.f73903I = c26391b.f73903I;
            this.f73904J = c26391b.f73904J;
            this.f73905K = c26391b.f73905K;
            this.f73906L = c26391b.f73906L;
            this.f73907M = c26391b.f73907M;
            this.f73908N = c26391b.f73908N;
            this.f73909O = c26391b.f73909O;
            this.f73910P = c26391b.f73910P;
            this.f73911Q = c26391b.f73911Q;
            this.f73912R = c26391b.f73912R;
            this.f73913S = c26391b.f73913S;
            this.f73914T = c26391b.f73914T;
            this.f73915U = c26391b.f73915U;
            this.f73916V = c26391b.f73916V;
            this.f73917W = c26391b.f73917W;
            this.f73918X = c26391b.f73918X;
            this.f73919Y = c26391b.f73919Y;
            this.f73920Z = c26391b.f73920Z;
            this.f73922a0 = c26391b.f73922a0;
            this.f73924b0 = c26391b.f73924b0;
            this.f73926c0 = c26391b.f73926c0;
            this.f73928d0 = c26391b.f73928d0;
            this.f73934g0 = c26391b.f73934g0;
            int[] iArr = c26391b.f73930e0;
            if (iArr != null) {
                this.f73930e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f73930e0 = null;
            }
            this.f73932f0 = c26391b.f73932f0;
            this.f73936h0 = c26391b.f73936h0;
            this.f73938i0 = c26391b.f73938i0;
            this.f73940j0 = c26391b.f73940j0;
        }

        /* renamed from: b */
        public void m1952b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.Layout);
            this.f73923b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f73894k0.get(index);
                if (i2 == 80) {
                    this.f73936h0 = obtainStyledAttributes.getBoolean(index, this.f73936h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            int i3 = this.f73946p;
                            int[] iArr = C26389d.f73883d;
                            int resourceId = obtainStyledAttributes.getResourceId(index, i3);
                            int i4 = resourceId;
                            if (resourceId == -1) {
                                i4 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73946p = i4;
                            continue;
                        case 2:
                            this.f73901G = obtainStyledAttributes.getDimensionPixelSize(index, this.f73901G);
                            continue;
                        case 3:
                            int i5 = this.f73945o;
                            int[] iArr2 = C26389d.f73883d;
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, i5);
                            int i6 = resourceId2;
                            if (resourceId2 == -1) {
                                i6 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73945o = i6;
                            continue;
                        case 4:
                            int i7 = this.f73944n;
                            int[] iArr3 = C26389d.f73883d;
                            int resourceId3 = obtainStyledAttributes.getResourceId(index, i7);
                            int i8 = resourceId3;
                            if (resourceId3 == -1) {
                                i8 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73944n = i8;
                            continue;
                        case 5:
                            this.f73953w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f73895A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f73895A);
                            continue;
                        case 7:
                            this.f73896B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f73896B);
                            continue;
                        case 8:
                            this.f73902H = obtainStyledAttributes.getDimensionPixelSize(index, this.f73902H);
                            continue;
                        case 9:
                            int i9 = this.f73950t;
                            int[] iArr4 = C26389d.f73883d;
                            int resourceId4 = obtainStyledAttributes.getResourceId(index, i9);
                            int i10 = resourceId4;
                            if (resourceId4 == -1) {
                                i10 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73950t = i10;
                            continue;
                        case 10:
                            int i11 = this.f73949s;
                            int[] iArr5 = C26389d.f73883d;
                            int resourceId5 = obtainStyledAttributes.getResourceId(index, i11);
                            int i12 = resourceId5;
                            if (resourceId5 == -1) {
                                i12 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73949s = i12;
                            continue;
                        case 11:
                            this.f73907M = obtainStyledAttributes.getDimensionPixelSize(index, this.f73907M);
                            continue;
                        case 12:
                            this.f73908N = obtainStyledAttributes.getDimensionPixelSize(index, this.f73908N);
                            continue;
                        case 13:
                            this.f73904J = obtainStyledAttributes.getDimensionPixelSize(index, this.f73904J);
                            continue;
                        case 14:
                            this.f73906L = obtainStyledAttributes.getDimensionPixelSize(index, this.f73906L);
                            continue;
                        case 15:
                            this.f73909O = obtainStyledAttributes.getDimensionPixelSize(index, this.f73909O);
                            continue;
                        case 16:
                            this.f73905K = obtainStyledAttributes.getDimensionPixelSize(index, this.f73905K);
                            continue;
                        case 17:
                            this.f73929e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f73929e);
                            continue;
                        case 18:
                            this.f73931f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f73931f);
                            continue;
                        case 19:
                            this.f73933g = obtainStyledAttributes.getFloat(index, this.f73933g);
                            continue;
                        case 20:
                            this.f73951u = obtainStyledAttributes.getFloat(index, this.f73951u);
                            continue;
                        case 21:
                            this.f73927d = obtainStyledAttributes.getLayoutDimension(index, this.f73927d);
                            continue;
                        case 22:
                            this.f73925c = obtainStyledAttributes.getLayoutDimension(index, this.f73925c);
                            continue;
                        case 23:
                            this.f73898D = obtainStyledAttributes.getDimensionPixelSize(index, this.f73898D);
                            continue;
                        case 24:
                            int i13 = this.f73935h;
                            int[] iArr6 = C26389d.f73883d;
                            int resourceId6 = obtainStyledAttributes.getResourceId(index, i13);
                            int i14 = resourceId6;
                            if (resourceId6 == -1) {
                                i14 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73935h = i14;
                            continue;
                        case 25:
                            int i15 = this.f73937i;
                            int[] iArr7 = C26389d.f73883d;
                            int resourceId7 = obtainStyledAttributes.getResourceId(index, i15);
                            int i16 = resourceId7;
                            if (resourceId7 == -1) {
                                i16 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73937i = i16;
                            continue;
                        case 26:
                            this.f73897C = obtainStyledAttributes.getInt(index, this.f73897C);
                            continue;
                        case 27:
                            this.f73899E = obtainStyledAttributes.getDimensionPixelSize(index, this.f73899E);
                            continue;
                        case 28:
                            int i17 = this.f73939j;
                            int[] iArr8 = C26389d.f73883d;
                            int resourceId8 = obtainStyledAttributes.getResourceId(index, i17);
                            int i18 = resourceId8;
                            if (resourceId8 == -1) {
                                i18 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73939j = i18;
                            continue;
                        case 29:
                            int i19 = this.f73941k;
                            int[] iArr9 = C26389d.f73883d;
                            int resourceId9 = obtainStyledAttributes.getResourceId(index, i19);
                            int i20 = resourceId9;
                            if (resourceId9 == -1) {
                                i20 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73941k = i20;
                            continue;
                        case 30:
                            this.f73903I = obtainStyledAttributes.getDimensionPixelSize(index, this.f73903I);
                            continue;
                        case 31:
                            int i21 = this.f73947q;
                            int[] iArr10 = C26389d.f73883d;
                            int resourceId10 = obtainStyledAttributes.getResourceId(index, i21);
                            int i22 = resourceId10;
                            if (resourceId10 == -1) {
                                i22 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73947q = i22;
                            continue;
                        case 32:
                            int i23 = this.f73948r;
                            int[] iArr11 = C26389d.f73883d;
                            int resourceId11 = obtainStyledAttributes.getResourceId(index, i23);
                            int i24 = resourceId11;
                            if (resourceId11 == -1) {
                                i24 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73948r = i24;
                            continue;
                        case 33:
                            this.f73900F = obtainStyledAttributes.getDimensionPixelSize(index, this.f73900F);
                            continue;
                        case 34:
                            int i25 = this.f73943m;
                            int[] iArr12 = C26389d.f73883d;
                            int resourceId12 = obtainStyledAttributes.getResourceId(index, i25);
                            int i26 = resourceId12;
                            if (resourceId12 == -1) {
                                i26 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73943m = i26;
                            continue;
                        case 35:
                            int i27 = this.f73942l;
                            int[] iArr13 = C26389d.f73883d;
                            int resourceId13 = obtainStyledAttributes.getResourceId(index, i27);
                            int i28 = resourceId13;
                            if (resourceId13 == -1) {
                                i28 = obtainStyledAttributes.getInt(index, -1);
                            }
                            this.f73942l = i28;
                            continue;
                        case 36:
                            this.f73952v = obtainStyledAttributes.getFloat(index, this.f73952v);
                            continue;
                        case 37:
                            this.f73911Q = obtainStyledAttributes.getFloat(index, this.f73911Q);
                            continue;
                        case 38:
                            this.f73910P = obtainStyledAttributes.getFloat(index, this.f73910P);
                            continue;
                        case 39:
                            this.f73912R = obtainStyledAttributes.getInt(index, this.f73912R);
                            continue;
                        case 40:
                            this.f73913S = obtainStyledAttributes.getInt(index, this.f73913S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f73914T = obtainStyledAttributes.getInt(index, this.f73914T);
                                    continue;
                                case 55:
                                    this.f73915U = obtainStyledAttributes.getInt(index, this.f73915U);
                                    continue;
                                case 56:
                                    this.f73916V = obtainStyledAttributes.getDimensionPixelSize(index, this.f73916V);
                                    continue;
                                case 57:
                                    this.f73917W = obtainStyledAttributes.getDimensionPixelSize(index, this.f73917W);
                                    continue;
                                case 58:
                                    this.f73918X = obtainStyledAttributes.getDimensionPixelSize(index, this.f73918X);
                                    continue;
                                case 59:
                                    this.f73919Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f73919Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            int i29 = this.f73954x;
                                            int[] iArr14 = C26389d.f73883d;
                                            int resourceId14 = obtainStyledAttributes.getResourceId(index, i29);
                                            int i30 = resourceId14;
                                            if (resourceId14 == -1) {
                                                i30 = obtainStyledAttributes.getInt(index, -1);
                                            }
                                            this.f73954x = i30;
                                            continue;
                                        case 62:
                                            this.f73955y = obtainStyledAttributes.getDimensionPixelSize(index, this.f73955y);
                                            continue;
                                        case 63:
                                            this.f73956z = obtainStyledAttributes.getFloat(index, this.f73956z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f73920Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.f73922a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    continue;
                                                    continue;
                                                    continue;
                                                case 72:
                                                    this.f73924b0 = obtainStyledAttributes.getInt(index, this.f73924b0);
                                                    continue;
                                                case 73:
                                                    this.f73926c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f73926c0);
                                                    continue;
                                                case 74:
                                                    this.f73932f0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.f73940j0 = obtainStyledAttributes.getBoolean(index, this.f73940j0);
                                                    continue;
                                                case 76:
                                                    Integer.toHexString(index);
                                                    f73894k0.get(index);
                                                    continue;
                                                case 77:
                                                    this.f73934g0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Integer.toHexString(index);
                                                    f73894k0.get(index);
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f73938i0 = obtainStyledAttributes.getBoolean(index, this.f73938i0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: n3.i.c.d$c */
    /* loaded from: classes-dex2jar.jar:n3/i/c/d$c.class */
    public static class C26392c {

        /* renamed from: h */
        public static SparseIntArray f73957h;

        /* renamed from: a */
        public boolean f73958a = false;

        /* renamed from: b */
        public int f73959b = -1;

        /* renamed from: c */
        public String f73960c = null;

        /* renamed from: d */
        public int f73961d = -1;

        /* renamed from: e */
        public int f73962e = 0;

        /* renamed from: f */
        public float f73963f = Float.NaN;

        /* renamed from: g */
        public float f73964g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73957h = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.Motion_motionPathRotate, 1);
            f73957h.append(C0114R.styleable.Motion_pathMotionArc, 2);
            f73957h.append(C0114R.styleable.Motion_transitionEasing, 3);
            f73957h.append(C0114R.styleable.Motion_drawPath, 4);
            f73957h.append(C0114R.styleable.Motion_animate_relativeTo, 5);
            f73957h.append(C0114R.styleable.Motion_motionStagger, 6);
        }

        /* renamed from: a */
        public void m1951a(C26392c c26392c) {
            this.f73958a = c26392c.f73958a;
            this.f73959b = c26392c.f73959b;
            this.f73960c = c26392c.f73960c;
            this.f73961d = c26392c.f73961d;
            this.f73962e = c26392c.f73962e;
            this.f73964g = c26392c.f73964g;
            this.f73963f = c26392c.f73963f;
        }

        /* renamed from: b */
        public void m1950b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.Motion);
            this.f73958a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f73957h.get(index)) {
                    case 1:
                        this.f73964g = obtainStyledAttributes.getFloat(index, this.f73964g);
                        break;
                    case 2:
                        this.f73961d = obtainStyledAttributes.getInt(index, this.f73961d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f73960c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f73960c = C26273c.f73281c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f73962e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        int i2 = this.f73959b;
                        int[] iArr = C26389d.f73883d;
                        int resourceId = obtainStyledAttributes.getResourceId(index, i2);
                        int i3 = resourceId;
                        if (resourceId == -1) {
                            i3 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f73959b = i3;
                        break;
                    case 6:
                        this.f73963f = obtainStyledAttributes.getFloat(index, this.f73963f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: n3.i.c.d$d */
    /* loaded from: classes-dex2jar.jar:n3/i/c/d$d.class */
    public static class C26393d {

        /* renamed from: a */
        public boolean f73965a = false;

        /* renamed from: b */
        public int f73966b = 0;

        /* renamed from: c */
        public int f73967c = 0;

        /* renamed from: d */
        public float f73968d = 1.0f;

        /* renamed from: e */
        public float f73969e = Float.NaN;

        /* renamed from: a */
        public void m1949a(C26393d c26393d) {
            this.f73965a = c26393d.f73965a;
            this.f73966b = c26393d.f73966b;
            this.f73968d = c26393d.f73968d;
            this.f73969e = c26393d.f73969e;
            this.f73967c = c26393d.f73967c;
        }

        /* renamed from: b */
        public void m1948b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.PropertySet);
            this.f73965a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.PropertySet_android_alpha) {
                    this.f73968d = obtainStyledAttributes.getFloat(index, this.f73968d);
                } else if (index == C0114R.styleable.PropertySet_android_visibility) {
                    int i2 = obtainStyledAttributes.getInt(index, this.f73966b);
                    this.f73966b = i2;
                    int[] iArr = C26389d.f73883d;
                    this.f73966b = C26389d.f73883d[i2];
                } else if (index == C0114R.styleable.PropertySet_visibilityMode) {
                    this.f73967c = obtainStyledAttributes.getInt(index, this.f73967c);
                } else if (index == C0114R.styleable.PropertySet_motionProgress) {
                    this.f73969e = obtainStyledAttributes.getFloat(index, this.f73969e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: n3.i.c.d$e */
    /* loaded from: classes-dex2jar.jar:n3/i/c/d$e.class */
    public static class C26394e {

        /* renamed from: n */
        public static SparseIntArray f73970n;

        /* renamed from: a */
        public boolean f73971a = false;

        /* renamed from: b */
        public float f73972b = 0.0f;

        /* renamed from: c */
        public float f73973c = 0.0f;

        /* renamed from: d */
        public float f73974d = 0.0f;

        /* renamed from: e */
        public float f73975e = 1.0f;

        /* renamed from: f */
        public float f73976f = 1.0f;

        /* renamed from: g */
        public float f73977g = Float.NaN;

        /* renamed from: h */
        public float f73978h = Float.NaN;

        /* renamed from: i */
        public float f73979i = 0.0f;

        /* renamed from: j */
        public float f73980j = 0.0f;

        /* renamed from: k */
        public float f73981k = 0.0f;

        /* renamed from: l */
        public boolean f73982l = false;

        /* renamed from: m */
        public float f73983m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f73970n = sparseIntArray;
            sparseIntArray.append(C0114R.styleable.Transform_android_rotation, 1);
            f73970n.append(C0114R.styleable.Transform_android_rotationX, 2);
            f73970n.append(C0114R.styleable.Transform_android_rotationY, 3);
            f73970n.append(C0114R.styleable.Transform_android_scaleX, 4);
            f73970n.append(C0114R.styleable.Transform_android_scaleY, 5);
            f73970n.append(C0114R.styleable.Transform_android_transformPivotX, 6);
            f73970n.append(C0114R.styleable.Transform_android_transformPivotY, 7);
            f73970n.append(C0114R.styleable.Transform_android_translationX, 8);
            f73970n.append(C0114R.styleable.Transform_android_translationY, 9);
            f73970n.append(C0114R.styleable.Transform_android_translationZ, 10);
            f73970n.append(C0114R.styleable.Transform_android_elevation, 11);
        }

        /* renamed from: a */
        public void m1947a(C26394e c26394e) {
            this.f73971a = c26394e.f73971a;
            this.f73972b = c26394e.f73972b;
            this.f73973c = c26394e.f73973c;
            this.f73974d = c26394e.f73974d;
            this.f73975e = c26394e.f73975e;
            this.f73976f = c26394e.f73976f;
            this.f73977g = c26394e.f73977g;
            this.f73978h = c26394e.f73978h;
            this.f73979i = c26394e.f73979i;
            this.f73980j = c26394e.f73980j;
            this.f73981k = c26394e.f73981k;
            this.f73982l = c26394e.f73982l;
            this.f73983m = c26394e.f73983m;
        }

        /* renamed from: b */
        public void m1946b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.Transform);
            this.f73971a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f73970n.get(index)) {
                    case 1:
                        this.f73972b = obtainStyledAttributes.getFloat(index, this.f73972b);
                        break;
                    case 2:
                        this.f73973c = obtainStyledAttributes.getFloat(index, this.f73973c);
                        break;
                    case 3:
                        this.f73974d = obtainStyledAttributes.getFloat(index, this.f73974d);
                        break;
                    case 4:
                        this.f73975e = obtainStyledAttributes.getFloat(index, this.f73975e);
                        break;
                    case 5:
                        this.f73976f = obtainStyledAttributes.getFloat(index, this.f73976f);
                        break;
                    case 6:
                        this.f73977g = obtainStyledAttributes.getDimension(index, this.f73977g);
                        break;
                    case 7:
                        this.f73978h = obtainStyledAttributes.getDimension(index, this.f73978h);
                        break;
                    case 8:
                        this.f73979i = obtainStyledAttributes.getDimension(index, this.f73979i);
                        break;
                    case 9:
                        this.f73980j = obtainStyledAttributes.getDimension(index, this.f73980j);
                        break;
                    case 10:
                        this.f73981k = obtainStyledAttributes.getDimension(index, this.f73981k);
                        break;
                    case 11:
                        this.f73982l = true;
                        this.f73983m = obtainStyledAttributes.getDimension(index, this.f73983m);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f73884e = sparseIntArray;
        sparseIntArray.append(C0114R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f73884e.append(C0114R.styleable.Constraint_layout_editor_absoluteX, 6);
        f73884e.append(C0114R.styleable.Constraint_layout_editor_absoluteY, 7);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintGuide_end, 18);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f73884e.append(C0114R.styleable.Constraint_android_orientation, 27);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginLeft, 13);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginTop, 16);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginRight, 14);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginBottom, 11);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginStart, 15);
        f73884e.append(C0114R.styleable.Constraint_layout_goneMarginEnd, 12);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintLeft_creator, 82);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintTop_creator, 82);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintRight_creator, 82);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintBottom_creator, 82);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintBaseline_creator, 82);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginLeft, 24);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginRight, 28);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginStart, 31);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginEnd, 8);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginTop, 34);
        f73884e.append(C0114R.styleable.Constraint_android_layout_marginBottom, 2);
        f73884e.append(C0114R.styleable.Constraint_android_layout_width, 23);
        f73884e.append(C0114R.styleable.Constraint_android_layout_height, 21);
        f73884e.append(C0114R.styleable.Constraint_android_visibility, 22);
        f73884e.append(C0114R.styleable.Constraint_android_alpha, 43);
        f73884e.append(C0114R.styleable.Constraint_android_elevation, 44);
        f73884e.append(C0114R.styleable.Constraint_android_rotationX, 45);
        f73884e.append(C0114R.styleable.Constraint_android_rotationY, 46);
        f73884e.append(C0114R.styleable.Constraint_android_rotation, 60);
        f73884e.append(C0114R.styleable.Constraint_android_scaleX, 47);
        f73884e.append(C0114R.styleable.Constraint_android_scaleY, 48);
        f73884e.append(C0114R.styleable.Constraint_android_transformPivotX, 49);
        f73884e.append(C0114R.styleable.Constraint_android_transformPivotY, 50);
        f73884e.append(C0114R.styleable.Constraint_android_translationX, 51);
        f73884e.append(C0114R.styleable.Constraint_android_translationY, 52);
        f73884e.append(C0114R.styleable.Constraint_android_translationZ, 53);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintWidth_default, 54);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHeight_default, 55);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintWidth_max, 56);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHeight_max, 57);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintWidth_min, 58);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHeight_min, 59);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintCircle, 61);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f73884e.append(C0114R.styleable.Constraint_animate_relativeTo, 64);
        f73884e.append(C0114R.styleable.Constraint_transitionEasing, 65);
        f73884e.append(C0114R.styleable.Constraint_drawPath, 66);
        f73884e.append(C0114R.styleable.Constraint_transitionPathRotate, 67);
        f73884e.append(C0114R.styleable.Constraint_motionStagger, 79);
        f73884e.append(C0114R.styleable.Constraint_android_id, 38);
        f73884e.append(C0114R.styleable.Constraint_motionProgress, 68);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f73884e.append(C0114R.styleable.Constraint_chainUseRtl, 71);
        f73884e.append(C0114R.styleable.Constraint_barrierDirection, 72);
        f73884e.append(C0114R.styleable.Constraint_barrierMargin, 73);
        f73884e.append(C0114R.styleable.Constraint_constraint_referenced_ids, 74);
        f73884e.append(C0114R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f73884e.append(C0114R.styleable.Constraint_pathMotionArc, 76);
        f73884e.append(C0114R.styleable.Constraint_layout_constraintTag, 77);
        f73884e.append(C0114R.styleable.Constraint_visibilityMode, 78);
        f73884e.append(C0114R.styleable.Constraint_layout_constrainedWidth, 80);
        f73884e.append(C0114R.styleable.Constraint_layout_constrainedHeight, 81);
    }

    /* renamed from: a */
    public void m1970a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f73887c.containsKey(Integer.valueOf(id))) {
                MediaSessionCompat.m43216n0(childAt);
            } else if (this.f73886b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (this.f73887c.containsKey(Integer.valueOf(id))) {
                    C26383a.m1992f(childAt, this.f73887c.get(Integer.valueOf(id)).f73893f);
                }
            }
        }
    }

    /* renamed from: b */
    public void m1969b(ConstraintLayout constraintLayout) {
        m1968c(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: c */
    public void m1968c(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f73887c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f73887c.containsKey(Integer.valueOf(id))) {
                MediaSessionCompat.m43216n0(childAt);
            } else if (this.f73886b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1 && this.f73887c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C26390a c26390a = this.f73887c.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        c26390a.f73891d.f73928d0 = 1;
                    }
                    int i2 = c26390a.f73891d.f73928d0;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(c26390a.f73891d.f73924b0);
                        barrier.setMargin(c26390a.f73891d.f73926c0);
                        barrier.setAllowsGoneWidget(c26390a.f73891d.f73940j0);
                        C26391b c26391b = c26390a.f73891d;
                        int[] iArr = c26391b.f73930e0;
                        if (iArr != null) {
                            barrier.setReferencedIds(iArr);
                        } else {
                            String str = c26391b.f73932f0;
                            if (str != null) {
                                c26391b.f73930e0 = m1963h(barrier, str);
                                barrier.setReferencedIds(c26390a.f73891d.f73930e0);
                            }
                        }
                    }
                    ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) childAt.getLayoutParams();
                    c0111a.m43025a();
                    c26390a.m1956a(c0111a);
                    if (z) {
                        C26383a.m1992f(childAt, c26390a.f73893f);
                    }
                    childAt.setLayoutParams(c0111a);
                    C26393d c26393d = c26390a.f73889b;
                    if (c26393d.f73967c == 0) {
                        childAt.setVisibility(c26393d.f73966b);
                    }
                    childAt.setAlpha(c26390a.f73889b.f73968d);
                    childAt.setRotation(c26390a.f73892e.f73972b);
                    childAt.setRotationX(c26390a.f73892e.f73973c);
                    childAt.setRotationY(c26390a.f73892e.f73974d);
                    childAt.setScaleX(c26390a.f73892e.f73975e);
                    childAt.setScaleY(c26390a.f73892e.f73976f);
                    if (!Float.isNaN(c26390a.f73892e.f73977g)) {
                        childAt.setPivotX(c26390a.f73892e.f73977g);
                    }
                    if (!Float.isNaN(c26390a.f73892e.f73978h)) {
                        childAt.setPivotY(c26390a.f73892e.f73978h);
                    }
                    childAt.setTranslationX(c26390a.f73892e.f73979i);
                    childAt.setTranslationY(c26390a.f73892e.f73980j);
                    childAt.setTranslationZ(c26390a.f73892e.f73981k);
                    C26394e c26394e = c26390a.f73892e;
                    if (c26394e.f73982l) {
                        childAt.setElevation(c26394e.f73983m);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C26390a c26390a2 = this.f73887c.get(num);
            int i3 = c26390a2.f73891d.f73928d0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C26391b c26391b2 = c26390a2.f73891d;
                int[] iArr2 = c26391b2.f73930e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c26391b2.f73932f0;
                    if (str2 != null) {
                        c26391b2.f73930e0 = m1963h(barrier2, str2);
                        barrier2.setReferencedIds(c26390a2.f73891d.f73930e0);
                    }
                }
                barrier2.setType(c26390a2.f73891d.f73924b0);
                barrier2.setMargin(c26390a2.f73891d.f73926c0);
                ConstraintLayout.C0111a generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m1975t();
                c26390a2.m1956a(generateDefaultLayoutParams);
                constraintLayout.addView(barrier2, generateDefaultLayoutParams);
            }
            if (c26390a2.f73891d.f73921a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.C0111a generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c26390a2.m1956a(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: d */
    public void m1967d(int i, int i2) {
        if (this.f73887c.containsKey(Integer.valueOf(i))) {
            C26390a c26390a = this.f73887c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C26391b c26391b = c26390a.f73891d;
                    c26391b.f73937i = -1;
                    c26391b.f73935h = -1;
                    c26391b.f73898D = -1;
                    c26391b.f73904J = -1;
                    return;
                case 2:
                    C26391b c26391b2 = c26390a.f73891d;
                    c26391b2.f73941k = -1;
                    c26391b2.f73939j = -1;
                    c26391b2.f73899E = -1;
                    c26391b2.f73906L = -1;
                    return;
                case 3:
                    C26391b c26391b3 = c26390a.f73891d;
                    c26391b3.f73943m = -1;
                    c26391b3.f73942l = -1;
                    c26391b3.f73900F = -1;
                    c26391b3.f73905K = -1;
                    return;
                case 4:
                    C26391b c26391b4 = c26390a.f73891d;
                    c26391b4.f73944n = -1;
                    c26391b4.f73945o = -1;
                    c26391b4.f73901G = -1;
                    c26391b4.f73907M = -1;
                    return;
                case 5:
                    c26390a.f73891d.f73946p = -1;
                    return;
                case 6:
                    C26391b c26391b5 = c26390a.f73891d;
                    c26391b5.f73947q = -1;
                    c26391b5.f73948r = -1;
                    c26391b5.f73903I = -1;
                    c26391b5.f73909O = -1;
                    return;
                case 7:
                    C26391b c26391b6 = c26390a.f73891d;
                    c26391b6.f73949s = -1;
                    c26391b6.f73950t = -1;
                    c26391b6.f73902H = -1;
                    c26391b6.f73908N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: e */
    public void m1966e(ConstraintLayout constraintLayout) {
        NoSuchMethodException e;
        IllegalAccessException e2;
        InvocationTargetException e3;
        int childCount = constraintLayout.getChildCount();
        this.f73887c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f73886b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f73887c.containsKey(Integer.valueOf(id))) {
                this.f73887c.put(Integer.valueOf(id), new C26390a());
            }
            C26390a c26390a = this.f73887c.get(Integer.valueOf(id));
            HashMap<String, C26383a> hashMap = this.f73885a;
            HashMap<String, C26383a> hashMap2 = new HashMap<>();
            Class<?> cls = childAt.getClass();
            for (String str : hashMap.keySet()) {
                C26383a c26383a = hashMap.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        hashMap2.put(str, new C26383a(c26383a, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        try {
                            hashMap2.put(str, new C26383a(c26383a, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                        } catch (IllegalAccessException e4) {
                            e2 = e4;
                            e2.printStackTrace();
                        } catch (NoSuchMethodException e5) {
                            e = e5;
                            e.printStackTrace();
                        } catch (InvocationTargetException e6) {
                            e3 = e6;
                            e3.printStackTrace();
                        }
                    }
                } catch (IllegalAccessException e7) {
                    e2 = e7;
                } catch (NoSuchMethodException e8) {
                    e = e8;
                } catch (InvocationTargetException e9) {
                    e3 = e9;
                }
            }
            c26390a.f73893f = hashMap2;
            c26390a.m1955b(id, c0111a);
            c26390a.f73889b.f73966b = childAt.getVisibility();
            c26390a.f73889b.f73968d = childAt.getAlpha();
            c26390a.f73892e.f73972b = childAt.getRotation();
            c26390a.f73892e.f73973c = childAt.getRotationX();
            c26390a.f73892e.f73974d = childAt.getRotationY();
            c26390a.f73892e.f73975e = childAt.getScaleX();
            c26390a.f73892e.f73976f = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != PlaceLikelihood.LIKELIHOOD_MIN_VALUE || pivotY != PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                C26394e c26394e = c26390a.f73892e;
                c26394e.f73977g = pivotX;
                c26394e.f73978h = pivotY;
            }
            c26390a.f73892e.f73979i = childAt.getTranslationX();
            c26390a.f73892e.f73980j = childAt.getTranslationY();
            c26390a.f73892e.f73981k = childAt.getTranslationZ();
            C26394e c26394e2 = c26390a.f73892e;
            if (c26394e2.f73982l) {
                c26394e2.f73983m = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                C26391b c26391b = c26390a.f73891d;
                c26391b.f73940j0 = barrier.f577k.K0;
                c26391b.f73930e0 = barrier.getReferencedIds();
                c26390a.f73891d.f73924b0 = barrier.getType();
                c26390a.f73891d.f73926c0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: f */
    public void m1965f(int i, int i2, int i3, int i4) {
        if (!this.f73887c.containsKey(Integer.valueOf(i))) {
            this.f73887c.put(Integer.valueOf(i), new C26390a());
        }
        C26390a c26390a = this.f73887c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    C26391b c26391b = c26390a.f73891d;
                    c26391b.f73935h = i3;
                    c26391b.f73937i = -1;
                    return;
                } else if (i4 == 2) {
                    C26391b c26391b2 = c26390a.f73891d;
                    c26391b2.f73937i = i3;
                    c26391b2.f73935h = -1;
                    return;
                } else {
                    StringBuilder m8728C = C22128a.m8728C("left to ");
                    m8728C.append(m1957n(i4));
                    m8728C.append(" undefined");
                    throw new IllegalArgumentException(m8728C.toString());
                }
            case 2:
                if (i4 == 1) {
                    C26391b c26391b3 = c26390a.f73891d;
                    c26391b3.f73939j = i3;
                    c26391b3.f73941k = -1;
                    return;
                } else if (i4 == 2) {
                    C26391b c26391b4 = c26390a.f73891d;
                    c26391b4.f73941k = i3;
                    c26391b4.f73939j = -1;
                    return;
                } else {
                    StringBuilder m8728C2 = C22128a.m8728C("right to ");
                    m8728C2.append(m1957n(i4));
                    m8728C2.append(" undefined");
                    throw new IllegalArgumentException(m8728C2.toString());
                }
            case 3:
                if (i4 == 3) {
                    C26391b c26391b5 = c26390a.f73891d;
                    c26391b5.f73942l = i3;
                    c26391b5.f73943m = -1;
                    c26391b5.f73946p = -1;
                    return;
                } else if (i4 != 4) {
                    StringBuilder m8728C3 = C22128a.m8728C("right to ");
                    m8728C3.append(m1957n(i4));
                    m8728C3.append(" undefined");
                    throw new IllegalArgumentException(m8728C3.toString());
                } else {
                    C26391b c26391b6 = c26390a.f73891d;
                    c26391b6.f73943m = i3;
                    c26391b6.f73942l = -1;
                    c26391b6.f73946p = -1;
                    return;
                }
            case 4:
                if (i4 == 4) {
                    C26391b c26391b7 = c26390a.f73891d;
                    c26391b7.f73945o = i3;
                    c26391b7.f73944n = -1;
                    c26391b7.f73946p = -1;
                    return;
                } else if (i4 != 3) {
                    StringBuilder m8728C4 = C22128a.m8728C("right to ");
                    m8728C4.append(m1957n(i4));
                    m8728C4.append(" undefined");
                    throw new IllegalArgumentException(m8728C4.toString());
                } else {
                    C26391b c26391b8 = c26390a.f73891d;
                    c26391b8.f73944n = i3;
                    c26391b8.f73945o = -1;
                    c26391b8.f73946p = -1;
                    return;
                }
            case 5:
                if (i4 != 5) {
                    StringBuilder m8728C5 = C22128a.m8728C("right to ");
                    m8728C5.append(m1957n(i4));
                    m8728C5.append(" undefined");
                    throw new IllegalArgumentException(m8728C5.toString());
                }
                C26391b c26391b9 = c26390a.f73891d;
                c26391b9.f73946p = i3;
                c26391b9.f73945o = -1;
                c26391b9.f73944n = -1;
                c26391b9.f73942l = -1;
                c26391b9.f73943m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    C26391b c26391b10 = c26390a.f73891d;
                    c26391b10.f73948r = i3;
                    c26391b10.f73947q = -1;
                    return;
                } else if (i4 == 7) {
                    C26391b c26391b11 = c26390a.f73891d;
                    c26391b11.f73947q = i3;
                    c26391b11.f73948r = -1;
                    return;
                } else {
                    StringBuilder m8728C6 = C22128a.m8728C("right to ");
                    m8728C6.append(m1957n(i4));
                    m8728C6.append(" undefined");
                    throw new IllegalArgumentException(m8728C6.toString());
                }
            case 7:
                if (i4 == 7) {
                    C26391b c26391b12 = c26390a.f73891d;
                    c26391b12.f73950t = i3;
                    c26391b12.f73949s = -1;
                    return;
                } else if (i4 == 6) {
                    C26391b c26391b13 = c26390a.f73891d;
                    c26391b13.f73949s = i3;
                    c26391b13.f73950t = -1;
                    return;
                } else {
                    StringBuilder m8728C7 = C22128a.m8728C("right to ");
                    m8728C7.append(m1957n(i4));
                    m8728C7.append(" undefined");
                    throw new IllegalArgumentException(m8728C7.toString());
                }
            default:
                throw new IllegalArgumentException(m1957n(i2) + " to " + m1957n(i4) + " unknown");
        }
    }

    /* renamed from: g */
    public void m1964g(int i, int i2, int i3, int i4, int i5) {
        if (!this.f73887c.containsKey(Integer.valueOf(i))) {
            this.f73887c.put(Integer.valueOf(i), new C26390a());
        }
        C26390a c26390a = this.f73887c.get(Integer.valueOf(i));
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    C26391b c26391b = c26390a.f73891d;
                    c26391b.f73935h = i3;
                    c26391b.f73937i = -1;
                } else if (i4 != 2) {
                    StringBuilder m8728C = C22128a.m8728C("Left to ");
                    m8728C.append(m1957n(i4));
                    m8728C.append(" undefined");
                    throw new IllegalArgumentException(m8728C.toString());
                } else {
                    C26391b c26391b2 = c26390a.f73891d;
                    c26391b2.f73937i = i3;
                    c26391b2.f73935h = -1;
                }
                c26390a.f73891d.f73898D = i5;
                return;
            case 2:
                if (i4 == 1) {
                    C26391b c26391b3 = c26390a.f73891d;
                    c26391b3.f73939j = i3;
                    c26391b3.f73941k = -1;
                } else if (i4 != 2) {
                    StringBuilder m8728C2 = C22128a.m8728C("right to ");
                    m8728C2.append(m1957n(i4));
                    m8728C2.append(" undefined");
                    throw new IllegalArgumentException(m8728C2.toString());
                } else {
                    C26391b c26391b4 = c26390a.f73891d;
                    c26391b4.f73941k = i3;
                    c26391b4.f73939j = -1;
                }
                c26390a.f73891d.f73899E = i5;
                return;
            case 3:
                if (i4 == 3) {
                    C26391b c26391b5 = c26390a.f73891d;
                    c26391b5.f73942l = i3;
                    c26391b5.f73943m = -1;
                    c26391b5.f73946p = -1;
                } else if (i4 != 4) {
                    StringBuilder m8728C3 = C22128a.m8728C("right to ");
                    m8728C3.append(m1957n(i4));
                    m8728C3.append(" undefined");
                    throw new IllegalArgumentException(m8728C3.toString());
                } else {
                    C26391b c26391b6 = c26390a.f73891d;
                    c26391b6.f73943m = i3;
                    c26391b6.f73942l = -1;
                    c26391b6.f73946p = -1;
                }
                c26390a.f73891d.f73900F = i5;
                return;
            case 4:
                if (i4 == 4) {
                    C26391b c26391b7 = c26390a.f73891d;
                    c26391b7.f73945o = i3;
                    c26391b7.f73944n = -1;
                    c26391b7.f73946p = -1;
                } else if (i4 != 3) {
                    StringBuilder m8728C4 = C22128a.m8728C("right to ");
                    m8728C4.append(m1957n(i4));
                    m8728C4.append(" undefined");
                    throw new IllegalArgumentException(m8728C4.toString());
                } else {
                    C26391b c26391b8 = c26390a.f73891d;
                    c26391b8.f73944n = i3;
                    c26391b8.f73945o = -1;
                    c26391b8.f73946p = -1;
                }
                c26390a.f73891d.f73901G = i5;
                return;
            case 5:
                if (i4 != 5) {
                    StringBuilder m8728C5 = C22128a.m8728C("right to ");
                    m8728C5.append(m1957n(i4));
                    m8728C5.append(" undefined");
                    throw new IllegalArgumentException(m8728C5.toString());
                }
                C26391b c26391b9 = c26390a.f73891d;
                c26391b9.f73946p = i3;
                c26391b9.f73945o = -1;
                c26391b9.f73944n = -1;
                c26391b9.f73942l = -1;
                c26391b9.f73943m = -1;
                return;
            case 6:
                if (i4 == 6) {
                    C26391b c26391b10 = c26390a.f73891d;
                    c26391b10.f73948r = i3;
                    c26391b10.f73947q = -1;
                } else if (i4 != 7) {
                    StringBuilder m8728C6 = C22128a.m8728C("right to ");
                    m8728C6.append(m1957n(i4));
                    m8728C6.append(" undefined");
                    throw new IllegalArgumentException(m8728C6.toString());
                } else {
                    C26391b c26391b11 = c26390a.f73891d;
                    c26391b11.f73947q = i3;
                    c26391b11.f73948r = -1;
                }
                c26390a.f73891d.f73903I = i5;
                return;
            case 7:
                if (i4 == 7) {
                    C26391b c26391b12 = c26390a.f73891d;
                    c26391b12.f73950t = i3;
                    c26391b12.f73949s = -1;
                } else if (i4 != 6) {
                    StringBuilder m8728C7 = C22128a.m8728C("right to ");
                    m8728C7.append(m1957n(i4));
                    m8728C7.append(" undefined");
                    throw new IllegalArgumentException(m8728C7.toString());
                } else {
                    C26391b c26391b13 = c26390a.f73891d;
                    c26391b13.f73949s = i3;
                    c26391b13.f73950t = -1;
                }
                c26390a.f73891d.f73902H = i5;
                return;
            default:
                throw new IllegalArgumentException(m1957n(i2) + " to " + m1957n(i4) + " unknown");
        }
    }

    /* renamed from: h */
    public final int[] m1963h(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0114R.C0116id.class.getField(trim).getInt(null);
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
                        Object m43036P0 = ((ConstraintLayout) view.getParent()).m43036P0(0, trim);
                        i5 = i4;
                        if (m43036P0 != null) {
                            i5 = i4;
                            if (m43036P0 instanceof Integer) {
                                i5 = ((Integer) m43036P0).intValue();
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

    /* renamed from: i */
    public final C26390a m1962i(Context context, AttributeSet attributeSet) {
        C26390a c26390a = new C26390a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.Constraint);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index != C0114R.styleable.Constraint_android_id && C0114R.styleable.Constraint_android_layout_marginStart != index && C0114R.styleable.Constraint_android_layout_marginEnd != index) {
                c26390a.f73890c.f73958a = true;
                c26390a.f73891d.f73923b = true;
                c26390a.f73889b.f73965a = true;
                c26390a.f73892e.f73971a = true;
            }
            switch (f73884e.get(index)) {
                case 1:
                    C26391b c26391b = c26390a.f73891d;
                    int resourceId = obtainStyledAttributes.getResourceId(index, c26391b.f73946p);
                    int i2 = resourceId;
                    if (resourceId == -1) {
                        i2 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b.f73946p = i2;
                    break;
                case 2:
                    C26391b c26391b2 = c26390a.f73891d;
                    c26391b2.f73901G = obtainStyledAttributes.getDimensionPixelSize(index, c26391b2.f73901G);
                    break;
                case 3:
                    C26391b c26391b3 = c26390a.f73891d;
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, c26391b3.f73945o);
                    int i3 = resourceId2;
                    if (resourceId2 == -1) {
                        i3 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b3.f73945o = i3;
                    break;
                case 4:
                    C26391b c26391b4 = c26390a.f73891d;
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, c26391b4.f73944n);
                    int i4 = resourceId3;
                    if (resourceId3 == -1) {
                        i4 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b4.f73944n = i4;
                    break;
                case 5:
                    c26390a.f73891d.f73953w = obtainStyledAttributes.getString(index);
                    break;
                case 6:
                    C26391b c26391b5 = c26390a.f73891d;
                    c26391b5.f73895A = obtainStyledAttributes.getDimensionPixelOffset(index, c26391b5.f73895A);
                    break;
                case 7:
                    C26391b c26391b6 = c26390a.f73891d;
                    c26391b6.f73896B = obtainStyledAttributes.getDimensionPixelOffset(index, c26391b6.f73896B);
                    break;
                case 8:
                    C26391b c26391b7 = c26390a.f73891d;
                    c26391b7.f73902H = obtainStyledAttributes.getDimensionPixelSize(index, c26391b7.f73902H);
                    break;
                case 9:
                    C26391b c26391b8 = c26390a.f73891d;
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, c26391b8.f73950t);
                    int i5 = resourceId4;
                    if (resourceId4 == -1) {
                        i5 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b8.f73950t = i5;
                    break;
                case 10:
                    C26391b c26391b9 = c26390a.f73891d;
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, c26391b9.f73949s);
                    int i6 = resourceId5;
                    if (resourceId5 == -1) {
                        i6 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b9.f73949s = i6;
                    break;
                case 11:
                    C26391b c26391b10 = c26390a.f73891d;
                    c26391b10.f73907M = obtainStyledAttributes.getDimensionPixelSize(index, c26391b10.f73907M);
                    break;
                case 12:
                    C26391b c26391b11 = c26390a.f73891d;
                    c26391b11.f73908N = obtainStyledAttributes.getDimensionPixelSize(index, c26391b11.f73908N);
                    break;
                case 13:
                    C26391b c26391b12 = c26390a.f73891d;
                    c26391b12.f73904J = obtainStyledAttributes.getDimensionPixelSize(index, c26391b12.f73904J);
                    break;
                case 14:
                    C26391b c26391b13 = c26390a.f73891d;
                    c26391b13.f73906L = obtainStyledAttributes.getDimensionPixelSize(index, c26391b13.f73906L);
                    break;
                case 15:
                    C26391b c26391b14 = c26390a.f73891d;
                    c26391b14.f73909O = obtainStyledAttributes.getDimensionPixelSize(index, c26391b14.f73909O);
                    break;
                case 16:
                    C26391b c26391b15 = c26390a.f73891d;
                    c26391b15.f73905K = obtainStyledAttributes.getDimensionPixelSize(index, c26391b15.f73905K);
                    break;
                case 17:
                    C26391b c26391b16 = c26390a.f73891d;
                    c26391b16.f73929e = obtainStyledAttributes.getDimensionPixelOffset(index, c26391b16.f73929e);
                    break;
                case 18:
                    C26391b c26391b17 = c26390a.f73891d;
                    c26391b17.f73931f = obtainStyledAttributes.getDimensionPixelOffset(index, c26391b17.f73931f);
                    break;
                case 19:
                    C26391b c26391b18 = c26390a.f73891d;
                    c26391b18.f73933g = obtainStyledAttributes.getFloat(index, c26391b18.f73933g);
                    break;
                case 20:
                    C26391b c26391b19 = c26390a.f73891d;
                    c26391b19.f73951u = obtainStyledAttributes.getFloat(index, c26391b19.f73951u);
                    break;
                case 21:
                    C26391b c26391b20 = c26390a.f73891d;
                    c26391b20.f73927d = obtainStyledAttributes.getLayoutDimension(index, c26391b20.f73927d);
                    break;
                case 22:
                    C26393d c26393d = c26390a.f73889b;
                    c26393d.f73966b = obtainStyledAttributes.getInt(index, c26393d.f73966b);
                    C26393d c26393d2 = c26390a.f73889b;
                    c26393d2.f73966b = f73883d[c26393d2.f73966b];
                    break;
                case 23:
                    C26391b c26391b21 = c26390a.f73891d;
                    c26391b21.f73925c = obtainStyledAttributes.getLayoutDimension(index, c26391b21.f73925c);
                    break;
                case 24:
                    C26391b c26391b22 = c26390a.f73891d;
                    c26391b22.f73898D = obtainStyledAttributes.getDimensionPixelSize(index, c26391b22.f73898D);
                    break;
                case 25:
                    C26391b c26391b23 = c26390a.f73891d;
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, c26391b23.f73935h);
                    int i7 = resourceId6;
                    if (resourceId6 == -1) {
                        i7 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b23.f73935h = i7;
                    break;
                case 26:
                    C26391b c26391b24 = c26390a.f73891d;
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, c26391b24.f73937i);
                    int i8 = resourceId7;
                    if (resourceId7 == -1) {
                        i8 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b24.f73937i = i8;
                    break;
                case 27:
                    C26391b c26391b25 = c26390a.f73891d;
                    c26391b25.f73897C = obtainStyledAttributes.getInt(index, c26391b25.f73897C);
                    break;
                case 28:
                    C26391b c26391b26 = c26390a.f73891d;
                    c26391b26.f73899E = obtainStyledAttributes.getDimensionPixelSize(index, c26391b26.f73899E);
                    break;
                case 29:
                    C26391b c26391b27 = c26390a.f73891d;
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, c26391b27.f73939j);
                    int i9 = resourceId8;
                    if (resourceId8 == -1) {
                        i9 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b27.f73939j = i9;
                    break;
                case 30:
                    C26391b c26391b28 = c26390a.f73891d;
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, c26391b28.f73941k);
                    int i10 = resourceId9;
                    if (resourceId9 == -1) {
                        i10 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b28.f73941k = i10;
                    break;
                case 31:
                    C26391b c26391b29 = c26390a.f73891d;
                    c26391b29.f73903I = obtainStyledAttributes.getDimensionPixelSize(index, c26391b29.f73903I);
                    break;
                case 32:
                    C26391b c26391b30 = c26390a.f73891d;
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, c26391b30.f73947q);
                    int i11 = resourceId10;
                    if (resourceId10 == -1) {
                        i11 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b30.f73947q = i11;
                    break;
                case 33:
                    C26391b c26391b31 = c26390a.f73891d;
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, c26391b31.f73948r);
                    int i12 = resourceId11;
                    if (resourceId11 == -1) {
                        i12 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b31.f73948r = i12;
                    break;
                case 34:
                    C26391b c26391b32 = c26390a.f73891d;
                    c26391b32.f73900F = obtainStyledAttributes.getDimensionPixelSize(index, c26391b32.f73900F);
                    break;
                case 35:
                    C26391b c26391b33 = c26390a.f73891d;
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, c26391b33.f73943m);
                    int i13 = resourceId12;
                    if (resourceId12 == -1) {
                        i13 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b33.f73943m = i13;
                    break;
                case 36:
                    C26391b c26391b34 = c26390a.f73891d;
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, c26391b34.f73942l);
                    int i14 = resourceId13;
                    if (resourceId13 == -1) {
                        i14 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b34.f73942l = i14;
                    break;
                case 37:
                    C26391b c26391b35 = c26390a.f73891d;
                    c26391b35.f73952v = obtainStyledAttributes.getFloat(index, c26391b35.f73952v);
                    break;
                case 38:
                    c26390a.f73888a = obtainStyledAttributes.getResourceId(index, c26390a.f73888a);
                    break;
                case 39:
                    C26391b c26391b36 = c26390a.f73891d;
                    c26391b36.f73911Q = obtainStyledAttributes.getFloat(index, c26391b36.f73911Q);
                    break;
                case 40:
                    C26391b c26391b37 = c26390a.f73891d;
                    c26391b37.f73910P = obtainStyledAttributes.getFloat(index, c26391b37.f73910P);
                    break;
                case 41:
                    C26391b c26391b38 = c26390a.f73891d;
                    c26391b38.f73912R = obtainStyledAttributes.getInt(index, c26391b38.f73912R);
                    break;
                case 42:
                    C26391b c26391b39 = c26390a.f73891d;
                    c26391b39.f73913S = obtainStyledAttributes.getInt(index, c26391b39.f73913S);
                    break;
                case 43:
                    C26393d c26393d3 = c26390a.f73889b;
                    c26393d3.f73968d = obtainStyledAttributes.getFloat(index, c26393d3.f73968d);
                    break;
                case 44:
                    C26394e c26394e = c26390a.f73892e;
                    c26394e.f73982l = true;
                    c26394e.f73983m = obtainStyledAttributes.getDimension(index, c26394e.f73983m);
                    break;
                case 45:
                    C26394e c26394e2 = c26390a.f73892e;
                    c26394e2.f73973c = obtainStyledAttributes.getFloat(index, c26394e2.f73973c);
                    break;
                case 46:
                    C26394e c26394e3 = c26390a.f73892e;
                    c26394e3.f73974d = obtainStyledAttributes.getFloat(index, c26394e3.f73974d);
                    break;
                case 47:
                    C26394e c26394e4 = c26390a.f73892e;
                    c26394e4.f73975e = obtainStyledAttributes.getFloat(index, c26394e4.f73975e);
                    break;
                case 48:
                    C26394e c26394e5 = c26390a.f73892e;
                    c26394e5.f73976f = obtainStyledAttributes.getFloat(index, c26394e5.f73976f);
                    break;
                case 49:
                    C26394e c26394e6 = c26390a.f73892e;
                    c26394e6.f73977g = obtainStyledAttributes.getDimension(index, c26394e6.f73977g);
                    break;
                case 50:
                    C26394e c26394e7 = c26390a.f73892e;
                    c26394e7.f73978h = obtainStyledAttributes.getDimension(index, c26394e7.f73978h);
                    break;
                case 51:
                    C26394e c26394e8 = c26390a.f73892e;
                    c26394e8.f73979i = obtainStyledAttributes.getDimension(index, c26394e8.f73979i);
                    break;
                case 52:
                    C26394e c26394e9 = c26390a.f73892e;
                    c26394e9.f73980j = obtainStyledAttributes.getDimension(index, c26394e9.f73980j);
                    break;
                case 53:
                    C26394e c26394e10 = c26390a.f73892e;
                    c26394e10.f73981k = obtainStyledAttributes.getDimension(index, c26394e10.f73981k);
                    break;
                case 54:
                    C26391b c26391b40 = c26390a.f73891d;
                    c26391b40.f73914T = obtainStyledAttributes.getInt(index, c26391b40.f73914T);
                    break;
                case 55:
                    C26391b c26391b41 = c26390a.f73891d;
                    c26391b41.f73915U = obtainStyledAttributes.getInt(index, c26391b41.f73915U);
                    break;
                case 56:
                    C26391b c26391b42 = c26390a.f73891d;
                    c26391b42.f73916V = obtainStyledAttributes.getDimensionPixelSize(index, c26391b42.f73916V);
                    break;
                case 57:
                    C26391b c26391b43 = c26390a.f73891d;
                    c26391b43.f73917W = obtainStyledAttributes.getDimensionPixelSize(index, c26391b43.f73917W);
                    break;
                case 58:
                    C26391b c26391b44 = c26390a.f73891d;
                    c26391b44.f73918X = obtainStyledAttributes.getDimensionPixelSize(index, c26391b44.f73918X);
                    break;
                case 59:
                    C26391b c26391b45 = c26390a.f73891d;
                    c26391b45.f73919Y = obtainStyledAttributes.getDimensionPixelSize(index, c26391b45.f73919Y);
                    break;
                case 60:
                    C26394e c26394e11 = c26390a.f73892e;
                    c26394e11.f73972b = obtainStyledAttributes.getFloat(index, c26394e11.f73972b);
                    break;
                case 61:
                    C26391b c26391b46 = c26390a.f73891d;
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, c26391b46.f73954x);
                    int i15 = resourceId14;
                    if (resourceId14 == -1) {
                        i15 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26391b46.f73954x = i15;
                    break;
                case 62:
                    C26391b c26391b47 = c26390a.f73891d;
                    c26391b47.f73955y = obtainStyledAttributes.getDimensionPixelSize(index, c26391b47.f73955y);
                    break;
                case 63:
                    C26391b c26391b48 = c26390a.f73891d;
                    c26391b48.f73956z = obtainStyledAttributes.getFloat(index, c26391b48.f73956z);
                    break;
                case 64:
                    C26392c c26392c = c26390a.f73890c;
                    int resourceId15 = obtainStyledAttributes.getResourceId(index, c26392c.f73959b);
                    int i16 = resourceId15;
                    if (resourceId15 == -1) {
                        i16 = obtainStyledAttributes.getInt(index, -1);
                    }
                    c26392c.f73959b = i16;
                    break;
                case 65:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        c26390a.f73890c.f73960c = obtainStyledAttributes.getString(index);
                        break;
                    } else {
                        c26390a.f73890c.f73960c = C26273c.f73281c[obtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c26390a.f73890c.f73962e = obtainStyledAttributes.getInt(index, 0);
                    break;
                case 67:
                    C26392c c26392c2 = c26390a.f73890c;
                    c26392c2.f73964g = obtainStyledAttributes.getFloat(index, c26392c2.f73964g);
                    break;
                case 68:
                    C26393d c26393d4 = c26390a.f73889b;
                    c26393d4.f73969e = obtainStyledAttributes.getFloat(index, c26393d4.f73969e);
                    break;
                case 69:
                    c26390a.f73891d.f73920Z = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    c26390a.f73891d.f73922a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    break;
                case 72:
                    C26391b c26391b49 = c26390a.f73891d;
                    c26391b49.f73924b0 = obtainStyledAttributes.getInt(index, c26391b49.f73924b0);
                    break;
                case 73:
                    C26391b c26391b50 = c26390a.f73891d;
                    c26391b50.f73926c0 = obtainStyledAttributes.getDimensionPixelSize(index, c26391b50.f73926c0);
                    break;
                case 74:
                    c26390a.f73891d.f73932f0 = obtainStyledAttributes.getString(index);
                    break;
                case 75:
                    C26391b c26391b51 = c26390a.f73891d;
                    c26391b51.f73940j0 = obtainStyledAttributes.getBoolean(index, c26391b51.f73940j0);
                    break;
                case 76:
                    C26392c c26392c3 = c26390a.f73890c;
                    c26392c3.f73961d = obtainStyledAttributes.getInt(index, c26392c3.f73961d);
                    break;
                case 77:
                    c26390a.f73891d.f73934g0 = obtainStyledAttributes.getString(index);
                    break;
                case 78:
                    C26393d c26393d5 = c26390a.f73889b;
                    c26393d5.f73967c = obtainStyledAttributes.getInt(index, c26393d5.f73967c);
                    break;
                case 79:
                    C26392c c26392c4 = c26390a.f73890c;
                    c26392c4.f73963f = obtainStyledAttributes.getFloat(index, c26392c4.f73963f);
                    break;
                case 80:
                    C26391b c26391b52 = c26390a.f73891d;
                    c26391b52.f73936h0 = obtainStyledAttributes.getBoolean(index, c26391b52.f73936h0);
                    break;
                case 81:
                    C26391b c26391b53 = c26390a.f73891d;
                    c26391b53.f73938i0 = obtainStyledAttributes.getBoolean(index, c26391b53.f73938i0);
                    break;
                case 82:
                    Integer.toHexString(index);
                    f73884e.get(index);
                    break;
                default:
                    Integer.toHexString(index);
                    f73884e.get(index);
                    break;
            }
        }
        obtainStyledAttributes.recycle();
        return c26390a;
    }

    /* renamed from: j */
    public final C26390a m1961j(int i) {
        if (!this.f73887c.containsKey(Integer.valueOf(i))) {
            this.f73887c.put(Integer.valueOf(i), new C26390a());
        }
        return this.f73887c.get(Integer.valueOf(i));
    }

    /* renamed from: k */
    public void m1960k(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C26390a m1962i = m1962i(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m1962i.f73891d.f73921a = true;
                    }
                    this.f73887c.put(Integer.valueOf(m1962i.f73888a), m1962i);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: l */
    public void m1959l(Context context, XmlPullParser xmlPullParser) {
        C26390a c26390a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C26390a c26390a2 = null;
            while (true) {
                C26390a c26390a3 = c26390a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c26390a = c26390a3;
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
                            c26390a = m1962i(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c26390a = m1962i(context, Xml.asAttributeSet(xmlPullParser));
                            C26391b c26391b = c26390a.f73891d;
                            c26391b.f73921a = true;
                            c26391b.f73923b = true;
                            break;
                        case true:
                            c26390a = m1962i(context, Xml.asAttributeSet(xmlPullParser));
                            c26390a.f73891d.f73928d0 = 1;
                            break;
                        case true:
                            if (c26390a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c26390a3.f73889b.m1948b(context, Xml.asAttributeSet(xmlPullParser));
                            c26390a = c26390a3;
                            break;
                        case true:
                            if (c26390a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c26390a3.f73892e.m1946b(context, Xml.asAttributeSet(xmlPullParser));
                            c26390a = c26390a3;
                            break;
                        case true:
                            if (c26390a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c26390a3.f73891d.m1952b(context, Xml.asAttributeSet(xmlPullParser));
                            c26390a = c26390a3;
                            break;
                        case true:
                            if (c26390a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c26390a3.f73890c.m1950b(context, Xml.asAttributeSet(xmlPullParser));
                            c26390a = c26390a3;
                            break;
                        case true:
                            if (c26390a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            C26383a.m1993e(context, xmlPullParser, c26390a3.f73893f);
                            c26390a = c26390a3;
                            break;
                        default:
                            c26390a = c26390a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c26390a = c26390a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c26390a = c26390a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f73887c.put(Integer.valueOf(c26390a3.f73888a), c26390a3);
                        c26390a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c26390a2 = c26390a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: m */
    public void m1958m(int i, int i2, int i3) {
        C26390a m1961j = m1961j(i);
        switch (i2) {
            case 1:
                m1961j.f73891d.f73898D = i3;
                return;
            case 2:
                m1961j.f73891d.f73899E = i3;
                return;
            case 3:
                m1961j.f73891d.f73900F = i3;
                return;
            case 4:
                m1961j.f73891d.f73901G = i3;
                return;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                m1961j.f73891d.f73903I = i3;
                return;
            case 7:
                m1961j.f73891d.f73902H = i3;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    /* renamed from: n */
    public final String m1957n(int i) {
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
                return AnalyticsConstants.START;
            case 7:
                return AnalyticsConstants.END;
            default:
                return AdError.UNDEFINED_DOMAIN;
        }
    }
}
