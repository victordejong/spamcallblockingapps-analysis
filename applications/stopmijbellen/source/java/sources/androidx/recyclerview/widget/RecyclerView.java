package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.recyclerview.widget.C0604a;
import androidx.recyclerview.widget.C0611c;
import androidx.recyclerview.widget.C0614c0;
import androidx.recyclerview.widget.C0618d0;
import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.C0651y;
import androidx.recyclerview.widget.RunnableC0636n;
import com.facebook.ads.AdError;
import com.google.android.gms.common.api.Api;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import p120i0.C3062g;
import p134j4.C3260w0;
import p163m0.AbstractC3575h;
import p163m0.C3576i;
import p163m0.C3589v;
import p163m0.C3610x;
import p163m0.C3611y;
import p174n0.C3694b;
import p216r0.AbstractC4178a;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC3575h {

    /* renamed from: A0 */
    public static final boolean f2145A0;

    /* renamed from: B0 */
    public static final Class<?>[] f2146B0;

    /* renamed from: C0 */
    public static final Interpolator f2147C0;

    /* renamed from: x0 */
    public static final int[] f2148x0 = {16843830};

    /* renamed from: y0 */
    public static final boolean f2149y0;

    /* renamed from: z0 */
    public static final boolean f2150z0;

    /* renamed from: A */
    public final AccessibilityManager f2151A;

    /* renamed from: B */
    public boolean f2152B;

    /* renamed from: C */
    public boolean f2153C;

    /* renamed from: D */
    public int f2154D;

    /* renamed from: E */
    public int f2155E;

    /* renamed from: F */
    public C0566i f2156F;

    /* renamed from: G */
    public EdgeEffect f2157G;

    /* renamed from: H */
    public EdgeEffect f2158H;

    /* renamed from: I */
    public EdgeEffect f2159I;

    /* renamed from: J */
    public EdgeEffect f2160J;

    /* renamed from: K */
    public AbstractC0567j f2161K;

    /* renamed from: L */
    public int f2162L;

    /* renamed from: M */
    public int f2163M;

    /* renamed from: N */
    public VelocityTracker f2164N;

    /* renamed from: O */
    public int f2165O;

    /* renamed from: P */
    public int f2166P;

    /* renamed from: R */
    public int f2167R;

    /* renamed from: S */
    public int f2168S;

    /* renamed from: T */
    public int f2169T;

    /* renamed from: U */
    public AbstractC0579o f2170U;

    /* renamed from: V */
    public final int f2171V;

    /* renamed from: W */
    public final int f2172W;

    /* renamed from: a */
    public final C0586u f2173a;

    /* renamed from: a0 */
    public float f2174a0;

    /* renamed from: b */
    public final C0584s f2175b;

    /* renamed from: b0 */
    public float f2176b0;

    /* renamed from: c */
    public C0587v f2177c;

    /* renamed from: c0 */
    public boolean f2178c0;

    /* renamed from: d */
    public C0604a f2179d;

    /* renamed from: d0 */
    public final RunnableC0594z f2180d0;

    /* renamed from: e */
    public C0611c f2181e;

    /* renamed from: e0 */
    public RunnableC0636n f2182e0;

    /* renamed from: f */
    public final C0618d0 f2183f;

    /* renamed from: f0 */
    public RunnableC0636n.C0638b f2184f0;

    /* renamed from: g */
    public boolean f2185g;

    /* renamed from: g0 */
    public final C0592x f2186g0;

    /* renamed from: h */
    public final Runnable f2187h;

    /* renamed from: h0 */
    public AbstractC0581q f2188h0;

    /* renamed from: i */
    public final Rect f2189i;

    /* renamed from: i0 */
    public List<AbstractC0581q> f2190i0;

    /* renamed from: j */
    public final Rect f2191j;

    /* renamed from: j0 */
    public boolean f2192j0;

    /* renamed from: k */
    public final RectF f2193k;

    /* renamed from: k0 */
    public boolean f2194k0;

    /* renamed from: l */
    public AbstractC0562e f2195l;

    /* renamed from: l0 */
    public AbstractC0567j.AbstractC0569b f2196l0;

    /* renamed from: m */
    public AbstractC0573m f2197m;

    /* renamed from: m0 */
    public boolean f2198m0;

    /* renamed from: n */
    public AbstractC0585t f2199n;

    /* renamed from: n0 */
    public C0651y f2200n0;

    /* renamed from: o */
    public final ArrayList<AbstractC0572l> f2201o;

    /* renamed from: o0 */
    public AbstractC0565h f2202o0;

    /* renamed from: p */
    public final ArrayList<AbstractC0580p> f2203p;

    /* renamed from: p0 */
    public final int[] f2204p0;

    /* renamed from: q */
    public AbstractC0580p f2205q;

    /* renamed from: q0 */
    public C3576i f2206q0;

    /* renamed from: r */
    public boolean f2207r;

    /* renamed from: r0 */
    public final int[] f2208r0;

    /* renamed from: s */
    public boolean f2209s;

    /* renamed from: s0 */
    public final int[] f2210s0;

    /* renamed from: t */
    public boolean f2211t;

    /* renamed from: t0 */
    public final int[] f2212t0;

    /* renamed from: u */
    public int f2213u;

    /* renamed from: u0 */
    public final List<AbstractC0558a0> f2214u0;

    /* renamed from: v */
    public boolean f2215v;

    /* renamed from: v0 */
    public Runnable f2216v0;

    /* renamed from: w */
    public boolean f2217w;

    /* renamed from: w0 */
    public final C0618d0.AbstractC0620b f2218w0;

    /* renamed from: x */
    public boolean f2219x;

    /* renamed from: y */
    public int f2220y;

    /* renamed from: z */
    public boolean f2221z;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public class RunnableC0557a implements Runnable {
        public RunnableC0557a() {
            RecyclerView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.f2211t || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.f2207r) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.f2217w) {
                recyclerView2.f2215v = true;
            } else {
                recyclerView2.m7867n();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a0 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
    public static abstract class AbstractC0558a0 {

        /* renamed from: s */
        public static final List<Object> f2223s = Collections.emptyList();

        /* renamed from: a */
        public final View f2224a;

        /* renamed from: b */
        public WeakReference<RecyclerView> f2225b;

        /* renamed from: j */
        public int f2233j;

        /* renamed from: r */
        public RecyclerView f2241r;

        /* renamed from: c */
        public int f2226c = -1;

        /* renamed from: d */
        public int f2227d = -1;

        /* renamed from: e */
        public long f2228e = -1;

        /* renamed from: f */
        public int f2229f = -1;

        /* renamed from: g */
        public int f2230g = -1;

        /* renamed from: h */
        public AbstractC0558a0 f2231h = null;

        /* renamed from: i */
        public AbstractC0558a0 f2232i = null;

        /* renamed from: k */
        public List<Object> f2234k = null;

        /* renamed from: l */
        public List<Object> f2235l = null;

        /* renamed from: m */
        public int f2236m = 0;

        /* renamed from: n */
        public C0584s f2237n = null;

        /* renamed from: o */
        public boolean f2238o = false;

        /* renamed from: p */
        public int f2239p = 0;

        /* renamed from: q */
        public int f2240q = -1;

        public AbstractC0558a0(View view) {
            if (view != null) {
                this.f2224a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        /* renamed from: a */
        public void m7854a(Object obj) {
            if (obj == null) {
                m7853b(1024);
            } else if ((1024 & this.f2233j) != 0) {
            } else {
                if (this.f2234k == null) {
                    ArrayList arrayList = new ArrayList();
                    this.f2234k = arrayList;
                    this.f2235l = Collections.unmodifiableList(arrayList);
                }
                this.f2234k.add(obj);
            }
        }

        /* renamed from: b */
        public void m7853b(int i) {
            this.f2233j = i | this.f2233j;
        }

        /* renamed from: c */
        public void m7852c() {
            this.f2227d = -1;
            this.f2230g = -1;
        }

        /* renamed from: d */
        public void m7851d() {
            this.f2233j &= -33;
        }

        /* renamed from: e */
        public final int m7850e() {
            RecyclerView recyclerView = this.f2241r;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m7910H(this);
        }

        /* renamed from: f */
        public final int m7849f() {
            int i = this.f2230g;
            int i2 = i;
            if (i == -1) {
                i2 = this.f2226c;
            }
            return i2;
        }

        /* renamed from: g */
        public List<Object> m7848g() {
            if ((this.f2233j & 1024) == 0) {
                List<Object> list = this.f2234k;
                return (list == null || list.size() == 0) ? f2223s : this.f2235l;
            }
            return f2223s;
        }

        /* renamed from: h */
        public boolean m7847h(int i) {
            return (i & this.f2233j) != 0;
        }

        /* renamed from: i */
        public boolean m7846i() {
            return (this.f2224a.getParent() == null || this.f2224a.getParent() == this.f2241r) ? false : true;
        }

        /* renamed from: j */
        public boolean m7845j() {
            boolean z = true;
            if ((this.f2233j & 1) == 0) {
                z = false;
            }
            return z;
        }

        /* renamed from: k */
        public boolean m7844k() {
            return (this.f2233j & 4) != 0;
        }

        /* renamed from: l */
        public final boolean m7843l() {
            boolean z;
            if ((this.f2233j & 16) == 0) {
                View view = this.f2224a;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                if (!C3589v.C3593d.m2085i(view)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        /* renamed from: m */
        public boolean m7842m() {
            return (this.f2233j & 8) != 0;
        }

        /* renamed from: n */
        public boolean m7841n() {
            return this.f2237n != null;
        }

        /* renamed from: o */
        public boolean m7840o() {
            return (this.f2233j & 256) != 0;
        }

        /* renamed from: p */
        public boolean m7839p() {
            return (this.f2233j & 2) != 0;
        }

        /* renamed from: q */
        public void m7838q(int i, boolean z) {
            if (this.f2227d == -1) {
                this.f2227d = this.f2226c;
            }
            if (this.f2230g == -1) {
                this.f2230g = this.f2226c;
            }
            if (z) {
                this.f2230g += i;
            }
            this.f2226c += i;
            if (this.f2224a.getLayoutParams() != null) {
                ((C0578n) this.f2224a.getLayoutParams()).f2278c = true;
            }
        }

        /* renamed from: r */
        public void m7837r() {
            this.f2233j = 0;
            this.f2226c = -1;
            this.f2227d = -1;
            this.f2228e = -1L;
            this.f2230g = -1;
            this.f2236m = 0;
            this.f2231h = null;
            this.f2232i = null;
            List<Object> list = this.f2234k;
            if (list != null) {
                list.clear();
            }
            this.f2233j &= -1025;
            this.f2239p = 0;
            this.f2240q = -1;
            RecyclerView.m7872k(this);
        }

        /* renamed from: s */
        public void m7836s(int i, int i2) {
            this.f2233j = (i & i2) | (this.f2233j & (i2 ^ (-1)));
        }

        /* renamed from: t */
        public final void m7835t(boolean z) {
            int i = this.f2236m;
            int i2 = z ? i - 1 : i + 1;
            this.f2236m = i2;
            if (i2 < 0) {
                this.f2236m = 0;
                toString();
            } else if (!z && i2 == 1) {
                this.f2233j |= 16;
            } else if (!z || i2 != 0) {
            } else {
                this.f2233j &= -17;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0139, code lost:
            if (m7844k() != false) goto L42;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 361
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0558a0.toString():java.lang.String");
        }

        /* renamed from: u */
        public boolean m7834u() {
            return (this.f2233j & 128) != 0;
        }

        /* renamed from: v */
        public boolean m7833v() {
            return (this.f2233j & 32) != 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public class RunnableC0559b implements Runnable {
        public RunnableC0559b() {
            RecyclerView.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v49 */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        /* JADX WARN: Type inference failed for: r0v61, types: [long] */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v2 */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v1 */
        /* JADX WARN: Type inference failed for: r20v2 */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r3v1 */
        @Override // java.lang.Runnable
        public void run() {
            AbstractC0567j abstractC0567j = RecyclerView.this.f2161K;
            if (abstractC0567j != null) {
                C0628l c0628l = (C0628l) abstractC0567j;
                boolean z = !c0628l.f2447h.isEmpty();
                boolean z2 = !c0628l.f2449j.isEmpty();
                boolean z3 = !c0628l.f2450k.isEmpty();
                boolean z4 = !c0628l.f2448i.isEmpty();
                if (z || z2 || z4 || z3) {
                    Iterator<AbstractC0558a0> it2 = c0628l.f2447h.iterator();
                    while (it2.hasNext()) {
                        AbstractC0558a0 next = it2.next();
                        View view = next.f2224a;
                        ViewPropertyAnimator animate = view.animate();
                        c0628l.f2456q.add(next);
                        animate.setDuration(c0628l.f2249d).alpha(0.0f).setListener(new C0623g(c0628l, next, animate, view)).start();
                    }
                    c0628l.f2447h.clear();
                    if (z2) {
                        ArrayList<C0628l.C0630b> arrayList = new ArrayList<>();
                        arrayList.addAll(c0628l.f2449j);
                        c0628l.f2452m.add(arrayList);
                        c0628l.f2449j.clear();
                        RunnableC0617d runnableC0617d = new RunnableC0617d(c0628l, arrayList);
                        if (z) {
                            View view2 = arrayList.get(0).f2464a.f2224a;
                            long j = c0628l.f2249d;
                            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                            C3589v.C3593d.m2080n(view2, runnableC0617d, j);
                        } else {
                            runnableC0617d.run();
                        }
                    }
                    if (z3) {
                        ArrayList<C0628l.C0629a> arrayList2 = new ArrayList<>();
                        arrayList2.addAll(c0628l.f2450k);
                        c0628l.f2453n.add(arrayList2);
                        c0628l.f2450k.clear();
                        RunnableC0621e runnableC0621e = new RunnableC0621e(c0628l, arrayList2);
                        if (z) {
                            View view3 = arrayList2.get(0).f2458a.f2224a;
                            long j2 = c0628l.f2249d;
                            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                            C3589v.C3593d.m2080n(view3, runnableC0621e, j2);
                        } else {
                            runnableC0621e.run();
                        }
                    }
                    if (z4) {
                        ArrayList<AbstractC0558a0> arrayList3 = new ArrayList<>();
                        arrayList3.addAll(c0628l.f2448i);
                        c0628l.f2451l.add(arrayList3);
                        c0628l.f2448i.clear();
                        RunnableC0622f runnableC0622f = new RunnableC0622f(c0628l, arrayList3);
                        if (z || z2 || z3) {
                            ?? r20 = false;
                            ?? r18 = z ? c0628l.f2249d : false;
                            ?? r22 = z2 ? c0628l.f2250e : false;
                            if (z3) {
                                r20 = c0628l.f2251f;
                            }
                            long max = Math.max(r22 == true ? 1L : 0L, r20 == true ? 1L : 0L);
                            View view4 = arrayList3.get(0).f2224a;
                            WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
                            C3589v.C3593d.m2080n(view4, runnableC0622f, max + (r18 == true ? 1L : 0L));
                        } else {
                            runnableC0622f.run();
                        }
                    }
                }
            }
            RecyclerView.this.f2198m0 = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static final class animationInterpolatorC0560c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public class C0561d implements C0618d0.AbstractC0620b {
        public C0561d() {
            RecyclerView.this = r4;
        }

        /* renamed from: a */
        public void m7832a(AbstractC0558a0 abstractC0558a0, AbstractC0567j.C0570c c0570c, AbstractC0567j.C0570c c0570c2) {
            boolean z;
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            Objects.requireNonNull(recyclerView);
            abstractC0558a0.m7835t(false);
            AbstractC0607a0 abstractC0607a0 = (AbstractC0607a0) recyclerView.f2161K;
            Objects.requireNonNull(abstractC0607a0);
            if (c0570c == null || ((i = c0570c.f2252a) == (i2 = c0570c2.f2252a) && c0570c.f2253b == c0570c2.f2253b)) {
                C0628l c0628l = (C0628l) abstractC0607a0;
                c0628l.m7571n(abstractC0558a0);
                abstractC0558a0.f2224a.setAlpha(0.0f);
                c0628l.f2448i.add(abstractC0558a0);
                z = true;
            } else {
                z = abstractC0607a0.mo7576i(abstractC0558a0, i, c0570c.f2253b, i2, c0570c2.f2253b);
            }
            if (z) {
                recyclerView.m7896V();
            }
        }

        /* renamed from: b */
        public void m7831b(AbstractC0558a0 abstractC0558a0, AbstractC0567j.C0570c c0570c, AbstractC0567j.C0570c c0570c2) {
            boolean z;
            RecyclerView.this.f2175b.m7757k(abstractC0558a0);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.m7882f(abstractC0558a0);
            abstractC0558a0.m7835t(false);
            AbstractC0607a0 abstractC0607a0 = (AbstractC0607a0) recyclerView.f2161K;
            Objects.requireNonNull(abstractC0607a0);
            int i = c0570c.f2252a;
            int i2 = c0570c.f2253b;
            View view = abstractC0558a0.f2224a;
            int left = c0570c2 == null ? view.getLeft() : c0570c2.f2252a;
            int top = c0570c2 == null ? view.getTop() : c0570c2.f2253b;
            if (abstractC0558a0.m7842m() || (i == left && i2 == top)) {
                C0628l c0628l = (C0628l) abstractC0607a0;
                c0628l.m7571n(abstractC0558a0);
                c0628l.f2447h.add(abstractC0558a0);
                z = true;
            } else {
                view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                z = abstractC0607a0.mo7576i(abstractC0558a0, i, i2, left, top);
            }
            if (z) {
                recyclerView.m7896V();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static abstract class AbstractC0562e<VH extends AbstractC0558a0> {

        /* renamed from: a */
        public final C0563f f2244a = new C0563f();

        /* renamed from: b */
        public boolean f2245b = false;

        /* renamed from: a */
        public abstract int mo705a();

        /* renamed from: b */
        public long mo704b(int i) {
            return -1L;
        }

        /* renamed from: c */
        public int mo703c(int i) {
            return 0;
        }

        /* renamed from: d */
        public abstract void mo702d(VH vh, int i);

        /* renamed from: e */
        public abstract VH mo701e(ViewGroup viewGroup, int i);

        /* renamed from: f */
        public void mo700f(VH vh) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static class C0563f extends Observable<AbstractC0564g> {
        /* renamed from: a */
        public boolean m7830a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m7829b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0564g) ((Observable) this).mObservers.get(size)).mo7754a();
            }
        }

        /* renamed from: c */
        public void m7828c(int i, int i2) {
            int size = ((Observable) this).mObservers.size();
            while (true) {
                size--;
                if (size >= 0) {
                    ((AbstractC0564g) ((Observable) this).mObservers.get(size)).mo7753b(i, i2, null);
                } else {
                    return;
                }
            }
        }

        /* renamed from: d */
        public void m7827d(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC0564g) ((Observable) this).mObservers.get(size)).mo7752c(i, i2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public static abstract class AbstractC0564g {
        /* renamed from: a */
        public void mo7754a() {
        }

        /* renamed from: b */
        public void mo7753b(int i, int i2, Object obj) {
        }

        /* renamed from: c */
        public void mo7752c(int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public interface AbstractC0565h {
        /* renamed from: a */
        int m7826a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static class C0566i {
        /* renamed from: a */
        public EdgeEffect m7825a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public static abstract class AbstractC0567j {

        /* renamed from: a */
        public AbstractC0569b f2246a = null;

        /* renamed from: b */
        public ArrayList<AbstractC0568a> f2247b = new ArrayList<>();

        /* renamed from: c */
        public long f2248c = 120;

        /* renamed from: d */
        public long f2249d = 120;

        /* renamed from: e */
        public long f2250e = 250;

        /* renamed from: f */
        public long f2251f = 250;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$j$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j$a.class */
        public interface AbstractC0568a {
            /* renamed from: a */
            void m7820a();
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$j$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j$b.class */
        public interface AbstractC0569b {
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$j$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j$c.class */
        public static class C0570c {

            /* renamed from: a */
            public int f2252a;

            /* renamed from: b */
            public int f2253b;
        }

        /* renamed from: b */
        public static int m7824b(AbstractC0558a0 abstractC0558a0) {
            int i = abstractC0558a0.f2233j & 14;
            if (abstractC0558a0.m7844k()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int i3 = abstractC0558a0.f2227d;
                int m7850e = abstractC0558a0.m7850e();
                i2 = i;
                if (i3 != -1) {
                    i2 = i;
                    if (m7850e != -1) {
                        i2 = i;
                        if (i3 != m7850e) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        /* renamed from: a */
        public abstract boolean mo7635a(AbstractC0558a0 abstractC0558a0, AbstractC0558a0 abstractC0558a02, C0570c c0570c, C0570c c0570c2);

        /* renamed from: c */
        public final void m7823c(AbstractC0558a0 abstractC0558a0) {
            boolean z;
            AbstractC0569b abstractC0569b = this.f2246a;
            if (abstractC0569b != null) {
                C0571k c0571k = (C0571k) abstractC0569b;
                Objects.requireNonNull(c0571k);
                abstractC0558a0.m7835t(true);
                if (abstractC0558a0.f2231h != null && abstractC0558a0.f2232i == null) {
                    abstractC0558a0.f2231h = null;
                }
                abstractC0558a0.f2232i = null;
                if ((abstractC0558a0.f2233j & 16) != 0) {
                    return;
                }
                RecyclerView recyclerView = RecyclerView.this;
                View view = abstractC0558a0.f2224a;
                recyclerView.m7877h0();
                C0611c c0611c = recyclerView.f2181e;
                int indexOfChild = ((C0649w) c0611c.f2400a).f2544a.indexOfChild(view);
                if (indexOfChild == -1) {
                    c0611c.m7606l(view);
                    z = true;
                } else if (c0611c.f2401b.m7602d(indexOfChild)) {
                    c0611c.f2401b.m7600f(indexOfChild);
                    c0611c.m7606l(view);
                    ((C0649w) c0611c.f2400a).m7528c(indexOfChild);
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
                    recyclerView.f2175b.m7757k(m7907K);
                    recyclerView.f2175b.m7760h(m7907K);
                }
                recyclerView.m7873j0(!z);
                if (z || !abstractC0558a0.m7840o()) {
                    return;
                }
                RecyclerView.this.removeDetachedView(abstractC0558a0.f2224a, false);
            }
        }

        /* renamed from: d */
        public final void m7822d() {
            int size = this.f2247b.size();
            for (int i = 0; i < size; i++) {
                this.f2247b.get(i).m7820a();
            }
            this.f2247b.clear();
        }

        /* renamed from: e */
        public abstract void mo7579e(AbstractC0558a0 abstractC0558a0);

        /* renamed from: f */
        public abstract void mo7578f();

        /* renamed from: g */
        public abstract boolean mo7577g();

        /* renamed from: h */
        public C0570c m7821h(AbstractC0558a0 abstractC0558a0) {
            C0570c c0570c = new C0570c();
            View view = abstractC0558a0.f2224a;
            c0570c.f2252a = view.getLeft();
            c0570c.f2253b = view.getTop();
            view.getRight();
            view.getBottom();
            return c0570c;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public class C0571k implements AbstractC0567j.AbstractC0569b {
        public C0571k() {
            RecyclerView.this = r4;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public static abstract class AbstractC0572l {
        /* renamed from: d */
        public void mo4619d(Canvas canvas, RecyclerView recyclerView, C0592x c0592x) {
        }

        /* renamed from: e */
        public void mo7567e(Canvas canvas, RecyclerView recyclerView, C0592x c0592x) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public static abstract class AbstractC0573m {

        /* renamed from: a */
        public C0611c f2255a;

        /* renamed from: b */
        public RecyclerView f2256b;

        /* renamed from: c */
        public C0614c0 f2257c;

        /* renamed from: d */
        public C0614c0 f2258d;

        /* renamed from: e */
        public AbstractC0589w f2259e;

        /* renamed from: f */
        public boolean f2260f = false;

        /* renamed from: g */
        public boolean f2261g = false;

        /* renamed from: h */
        public boolean f2262h = true;

        /* renamed from: i */
        public boolean f2263i = true;

        /* renamed from: j */
        public int f2264j;

        /* renamed from: k */
        public boolean f2265k;

        /* renamed from: l */
        public int f2266l;

        /* renamed from: m */
        public int f2267m;

        /* renamed from: n */
        public int f2268n;

        /* renamed from: o */
        public int f2269o;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$m$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m$a.class */
        public class C0574a implements C0614c0.AbstractC0616b {
            public C0574a() {
                AbstractC0573m.this = r4;
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: a */
            public int mo7593a() {
                AbstractC0573m abstractC0573m = AbstractC0573m.this;
                return abstractC0573m.f2268n - abstractC0573m.m7799O();
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: b */
            public int mo7592b(View view) {
                return AbstractC0573m.this.m7816C(view) - ((ViewGroup.MarginLayoutParams) ((C0578n) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: c */
            public View mo7591c(int i) {
                return AbstractC0573m.this.m7777w(i);
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: d */
            public int mo7590d() {
                return AbstractC0573m.this.m7800N();
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: e */
            public int mo7589e(View view) {
                return AbstractC0573m.this.m7810F(view) + ((ViewGroup.MarginLayoutParams) ((C0578n) view.getLayoutParams())).rightMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$m$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m$b.class */
        public class C0575b implements C0614c0.AbstractC0616b {
            public C0575b() {
                AbstractC0573m.this = r4;
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: a */
            public int mo7593a() {
                AbstractC0573m abstractC0573m = AbstractC0573m.this;
                return abstractC0573m.f2269o - abstractC0573m.m7801M();
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: b */
            public int mo7592b(View view) {
                return AbstractC0573m.this.m7808G(view) - ((ViewGroup.MarginLayoutParams) ((C0578n) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: c */
            public View mo7591c(int i) {
                return AbstractC0573m.this.m7777w(i);
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: d */
            public int mo7590d() {
                return AbstractC0573m.this.m7798P();
            }

            @Override // androidx.recyclerview.widget.C0614c0.AbstractC0616b
            /* renamed from: e */
            public int mo7589e(View view) {
                return AbstractC0573m.this.m7819A(view) + ((ViewGroup.MarginLayoutParams) ((C0578n) view.getLayoutParams())).bottomMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$m$c */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m$c.class */
        public interface AbstractC0576c {
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$m$d */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m$d.class */
        public static class C0577d {

            /* renamed from: a */
            public int f2272a;

            /* renamed from: b */
            public int f2273b;

            /* renamed from: c */
            public boolean f2274c;

            /* renamed from: d */
            public boolean f2275d;
        }

        public AbstractC0573m() {
            C0574a c0574a = new C0574a();
            C0575b c0575b = new C0575b();
            this.f2257c = new C0614c0(c0574a);
            this.f2258d = new C0614c0(c0575b);
        }

        /* renamed from: R */
        public static C0577d m7796R(Context context, AttributeSet attributeSet, int i, int i2) {
            C0577d c0577d = new C0577d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11021b, i, i2);
            c0577d.f2272a = obtainStyledAttributes.getInt(0, 1);
            c0577d.f2273b = obtainStyledAttributes.getInt(10, 1);
            c0577d.f2274c = obtainStyledAttributes.getBoolean(9, false);
            c0577d.f2275d = obtainStyledAttributes.getBoolean(11, false);
            obtainStyledAttributes.recycle();
            return c0577d;
        }

        /* renamed from: V */
        public static boolean m7794V(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            boolean z = false;
            if (i3 <= 0 || i == i3) {
                if (mode == Integer.MIN_VALUE) {
                    boolean z2 = false;
                    if (size >= i) {
                        z2 = true;
                    }
                    return z2;
                } else if (mode == 0) {
                    return true;
                } else {
                    if (mode != 1073741824) {
                        return false;
                    }
                    if (size == i) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        /* renamed from: h */
        public static int m7789h(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    size = Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
            if (r5 != 1073741824) goto L29;
         */
        /* renamed from: y */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m7775y(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L30
                r0 = r7
                if (r0 < 0) goto L14
                goto L34
            L14:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L66
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L41
                r0 = r5
                if (r0 == 0) goto L66
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L41
                goto L66
            L30:
                r0 = r7
                if (r0 < 0) goto L3a
            L34:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L6a
            L3a:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L46
                r0 = r5
                r4 = r0
            L41:
                r0 = r6
                r7 = r0
                goto L6a
            L46:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L66
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L60
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L5b
                goto L60
            L5b:
                r0 = 0
                r4 = r0
                goto L41
            L60:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L41
            L66:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L6a:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0573m.m7775y(int, int, int, int, boolean):int");
        }

        /* renamed from: A */
        public int m7819A(View view) {
            return view.getBottom() + ((C0578n) view.getLayoutParams()).f2277b.bottom;
        }

        /* renamed from: A0 */
        public void mo7740A0(Rect rect, int i, int i2) {
            int width = rect.width();
            int m7800N = m7800N();
            int m7799O = m7799O();
            int height = rect.height();
            int m7798P = m7798P();
            int m7801M = m7801M();
            this.f2256b.setMeasuredDimension(m7789h(i, m7799O + m7800N + width, m7802L()), m7789h(i2, m7801M + m7798P + height, m7803K()));
        }

        /* renamed from: B */
        public void m7818B(View view, Rect rect) {
            int[] iArr = RecyclerView.f2148x0;
            C0578n c0578n = (C0578n) view.getLayoutParams();
            Rect rect2 = c0578n.f2277b;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c0578n).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c0578n).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c0578n).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0578n).bottomMargin);
        }

        /* renamed from: B0 */
        public void m7817B0(int i, int i2) {
            int m7776x = m7776x();
            if (m7776x == 0) {
                this.f2256b.m7866o(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            while (true) {
                int i8 = i7;
                if (i3 >= m7776x) {
                    this.f2256b.f2189i.set(i6, i8, i4, i5);
                    mo7740A0(this.f2256b.f2189i, i, i2);
                    return;
                }
                View m7777w = m7777w(i3);
                Rect rect = this.f2256b.f2189i;
                m7818B(m7777w, rect);
                int i9 = rect.left;
                int i10 = i6;
                if (i9 < i6) {
                    i10 = i9;
                }
                int i11 = rect.right;
                int i12 = i4;
                if (i11 > i4) {
                    i12 = i11;
                }
                int i13 = rect.top;
                int i14 = i8;
                if (i13 < i8) {
                    i14 = i13;
                }
                int i15 = rect.bottom;
                int i16 = i5;
                if (i15 > i5) {
                    i16 = i15;
                }
                i3++;
                i4 = i12;
                i5 = i16;
                i6 = i10;
                i7 = i14;
            }
        }

        /* renamed from: C */
        public int m7816C(View view) {
            return view.getLeft() - ((C0578n) view.getLayoutParams()).f2277b.left;
        }

        /* renamed from: C0 */
        public void m7815C0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f2256b = null;
                this.f2255a = null;
                this.f2268n = 0;
                this.f2269o = 0;
            } else {
                this.f2256b = recyclerView;
                this.f2255a = recyclerView.f2181e;
                this.f2268n = recyclerView.getWidth();
                this.f2269o = recyclerView.getHeight();
            }
            this.f2266l = 1073741824;
            this.f2267m = 1073741824;
        }

        /* renamed from: D */
        public int m7814D(View view) {
            Rect rect = ((C0578n) view.getLayoutParams()).f2277b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: D0 */
        public boolean m7813D0(View view, int i, int i2, C0578n c0578n) {
            return view.isLayoutRequested() || !this.f2262h || !m7794V(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c0578n).width) || !m7794V(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c0578n).height);
        }

        /* renamed from: E */
        public int m7812E(View view) {
            Rect rect = ((C0578n) view.getLayoutParams()).f2277b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: E0 */
        public boolean mo7811E0() {
            return false;
        }

        /* renamed from: F */
        public int m7810F(View view) {
            return view.getRight() + ((C0578n) view.getLayoutParams()).f2277b.right;
        }

        /* renamed from: F0 */
        public boolean m7809F0(View view, int i, int i2, C0578n c0578n) {
            return !this.f2262h || !m7794V(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c0578n).width) || !m7794V(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c0578n).height);
        }

        /* renamed from: G */
        public int m7808G(View view) {
            return view.getTop() - ((C0578n) view.getLayoutParams()).f2277b.top;
        }

        /* renamed from: G0 */
        public void mo4591G0(RecyclerView recyclerView, C0592x c0592x, int i) {
        }

        /* renamed from: H */
        public View m7807H() {
            View focusedChild;
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f2255a.f2402c.contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        /* renamed from: H0 */
        public void m7806H0(AbstractC0589w abstractC0589w) {
            AbstractC0589w abstractC0589w2 = this.f2259e;
            if (abstractC0589w2 != null && abstractC0589w != abstractC0589w2 && abstractC0589w2.f2300e) {
                abstractC0589w2.m7748d();
            }
            this.f2259e = abstractC0589w;
            RecyclerView recyclerView = this.f2256b;
            recyclerView.f2180d0.m7741d();
            if (abstractC0589w.f2303h) {
                StringBuilder m8752j = C0082b.m8752j("An instance of ");
                m8752j.append(abstractC0589w.getClass().getSimpleName());
                m8752j.append(" was started more than once. Each instance of");
                m8752j.append(abstractC0589w.getClass().getSimpleName());
                m8752j.append(" is intended to only be used once. You should create a new instance for each use.");
                Log.w("RecyclerView", m8752j.toString());
            }
            abstractC0589w.f2297b = recyclerView;
            abstractC0589w.f2298c = this;
            int i = abstractC0589w.f2296a;
            if (i != -1) {
                recyclerView.f2186g0.f2311a = i;
                abstractC0589w.f2300e = true;
                abstractC0589w.f2299d = true;
                abstractC0589w.f2301f = recyclerView.f2197m.mo7781s(i);
                abstractC0589w.f2297b.f2180d0.m7743b();
                abstractC0589w.f2303h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* renamed from: I */
        public int m7805I() {
            RecyclerView recyclerView = this.f2256b;
            AbstractC0562e adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            return adapter != null ? adapter.mo705a() : 0;
        }

        /* renamed from: I0 */
        public boolean mo7739I0() {
            return false;
        }

        /* renamed from: J */
        public int m7804J() {
            RecyclerView recyclerView = this.f2256b;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return C3589v.C3594e.m2071d(recyclerView);
        }

        /* renamed from: K */
        public int m7803K() {
            RecyclerView recyclerView = this.f2256b;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return C3589v.C3593d.m2090d(recyclerView);
        }

        /* renamed from: L */
        public int m7802L() {
            RecyclerView recyclerView = this.f2256b;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return C3589v.C3593d.m2089e(recyclerView);
        }

        /* renamed from: M */
        public int m7801M() {
            RecyclerView recyclerView = this.f2256b;
            return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
        }

        /* renamed from: N */
        public int m7800N() {
            RecyclerView recyclerView = this.f2256b;
            return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
        }

        /* renamed from: O */
        public int m7799O() {
            RecyclerView recyclerView = this.f2256b;
            return recyclerView != null ? recyclerView.getPaddingRight() : 0;
        }

        /* renamed from: P */
        public int m7798P() {
            RecyclerView recyclerView = this.f2256b;
            return recyclerView != null ? recyclerView.getPaddingTop() : 0;
        }

        /* renamed from: Q */
        public int m7797Q(View view) {
            return ((C0578n) view.getLayoutParams()).m7772a();
        }

        /* renamed from: S */
        public int mo7729S(C0584s c0584s, C0592x c0592x) {
            RecyclerView recyclerView = this.f2256b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.f2195l == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo7704f()) {
                        i = this.f2256b.f2195l.mo705a();
                    }
                }
            }
            return i;
        }

        /* renamed from: T */
        public void m7795T(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((C0578n) view.getLayoutParams()).f2277b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f2256b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f2256b.f2193k;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: U */
        public boolean mo7726U() {
            return false;
        }

        /* renamed from: W */
        public void m7793W(View view, int i, int i2, int i3, int i4) {
            C0578n c0578n = (C0578n) view.getLayoutParams();
            Rect rect = c0578n.f2277b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c0578n).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c0578n).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c0578n).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0578n).bottomMargin);
        }

        /* renamed from: X */
        public void mo7722X(int i) {
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView != null) {
                int m7613e = recyclerView.f2181e.m7613e();
                for (int i2 = 0; i2 < m7613e; i2++) {
                    recyclerView.f2181e.m7614d(i2).offsetLeftAndRight(i);
                }
            }
        }

        /* renamed from: Y */
        public void mo7720Y(int i) {
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView != null) {
                int m7613e = recyclerView.f2181e.m7613e();
                for (int i2 = 0; i2 < m7613e; i2++) {
                    recyclerView.f2181e.m7614d(i2).offsetTopAndBottom(i);
                }
            }
        }

        /* renamed from: Z */
        public void mo7718Z(RecyclerView recyclerView, C0584s c0584s) {
        }

        /* renamed from: a0 */
        public View mo7715a0(View view, int i, C0584s c0584s, C0592x c0592x) {
            return null;
        }

        /* renamed from: b */
        public void m7792b(View view) {
            m7791c(view, -1, false);
        }

        /* renamed from: b0 */
        public void mo7713b0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f2256b;
            C0584s c0584s = recyclerView.f2175b;
            C0592x c0592x = recyclerView.f2186g0;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1)) {
                z = true;
                if (!this.f2256b.canScrollVertically(-1)) {
                    z = true;
                    if (!this.f2256b.canScrollHorizontally(-1)) {
                        z = this.f2256b.canScrollHorizontally(1);
                    }
                }
            }
            accessibilityEvent.setScrollable(z);
            AbstractC0562e abstractC0562e = this.f2256b.f2195l;
            if (abstractC0562e == null) {
                return;
            }
            accessibilityEvent.setItemCount(abstractC0562e.mo705a());
        }

        /* renamed from: c */
        public final void m7791c(View view, int i, boolean z) {
            AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
            if (z || m7907K.m7842m()) {
                this.f2256b.f2183f.m7588a(m7907K);
            } else {
                this.f2256b.f2183f.m7583f(m7907K);
            }
            C0578n c0578n = (C0578n) view.getLayoutParams();
            if (m7907K.m7833v() || m7907K.m7841n()) {
                if (m7907K.m7841n()) {
                    m7907K.f2237n.m7757k(m7907K);
                } else {
                    m7907K.m7851d();
                }
                this.f2255a.m7616b(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f2256b) {
                int m7608j = this.f2255a.m7608j(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f2255a.m7613e();
                }
                if (m7608j == -1) {
                    StringBuilder m8752j = C0082b.m8752j("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    m8752j.append(this.f2256b.indexOfChild(view));
                    throw new IllegalStateException(C0608b.m7627h(this.f2256b, m8752j));
                } else if (m7608j != i2) {
                    AbstractC0573m abstractC0573m = this.f2256b.f2197m;
                    View m7777w = abstractC0573m.m7777w(m7608j);
                    if (m7777w == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + m7608j + abstractC0573m.f2256b.toString());
                    }
                    abstractC0573m.m7777w(m7608j);
                    abstractC0573m.f2255a.m7615c(m7608j);
                    C0578n c0578n2 = (C0578n) m7777w.getLayoutParams();
                    AbstractC0558a0 m7907K2 = RecyclerView.m7907K(m7777w);
                    if (m7907K2.m7842m()) {
                        abstractC0573m.f2256b.f2183f.m7588a(m7907K2);
                    } else {
                        abstractC0573m.f2256b.f2183f.m7583f(m7907K2);
                    }
                    abstractC0573m.f2255a.m7616b(m7777w, i2, c0578n2, m7907K2.m7842m());
                }
            } else {
                this.f2255a.m7617a(view, i, false);
                c0578n.f2278c = true;
                AbstractC0589w abstractC0589w = this.f2259e;
                if (abstractC0589w != null && abstractC0589w.f2300e) {
                    Objects.requireNonNull(abstractC0589w.f2297b);
                    AbstractC0558a0 m7907K3 = RecyclerView.m7907K(view);
                    int i3 = -1;
                    if (m7907K3 != null) {
                        i3 = m7907K3.m7849f();
                    }
                    if (i3 == abstractC0589w.f2296a) {
                        abstractC0589w.f2301f = view;
                    }
                }
            }
            if (c0578n.f2279d) {
                m7907K.f2224a.invalidate();
                c0578n.f2279d = false;
            }
        }

        /* renamed from: c0 */
        public void m7790c0(View view, C3694b c3694b) {
            AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
            if (m7907K == null || m7907K.m7842m() || this.f2255a.m7607k(m7907K.f2224a)) {
                return;
            }
            RecyclerView recyclerView = this.f2256b;
            mo7709d0(recyclerView.f2175b, recyclerView.f2186g0, view, c3694b);
        }

        /* renamed from: d */
        public void mo7710d(String str) {
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView != null) {
                recyclerView.m7876i(str);
            }
        }

        /* renamed from: d0 */
        public void mo7709d0(C0584s c0584s, C0592x c0592x, View view, C3694b c3694b) {
            c3694b.m1871m(C3694b.C3697c.m1865a(mo7704f() ? m7797Q(view) : 0, 1, mo7707e() ? m7797Q(view) : 0, 1, false, false));
        }

        /* renamed from: e */
        public boolean mo7707e() {
            return false;
        }

        /* renamed from: e0 */
        public void mo7706e0(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: f */
        public boolean mo7704f() {
            return false;
        }

        /* renamed from: f0 */
        public void mo7703f0(RecyclerView recyclerView) {
        }

        /* renamed from: g */
        public boolean mo7701g(C0578n c0578n) {
            return c0578n != null;
        }

        /* renamed from: g0 */
        public void mo7700g0(RecyclerView recyclerView, int i, int i2, int i3) {
        }

        /* renamed from: h0 */
        public void mo7698h0(RecyclerView recyclerView, int i, int i2) {
        }

        /* renamed from: i */
        public void mo7696i(int i, int i2, C0592x c0592x, AbstractC0576c abstractC0576c) {
        }

        /* renamed from: i0 */
        public void mo7695i0(RecyclerView recyclerView, int i, int i2, Object obj) {
        }

        /* renamed from: j */
        public void mo7788j(int i, AbstractC0576c abstractC0576c) {
        }

        /* renamed from: j0 */
        public void mo7693j0(C0584s c0584s, C0592x c0592x) {
        }

        /* renamed from: k */
        public int mo7691k(C0592x c0592x) {
            return 0;
        }

        /* renamed from: k0 */
        public void mo7690k0(C0592x c0592x) {
        }

        /* renamed from: l */
        public int mo7688l(C0592x c0592x) {
            return 0;
        }

        /* renamed from: l0 */
        public void mo7687l0(Parcelable parcelable) {
        }

        /* renamed from: m */
        public int mo7685m(C0592x c0592x) {
            return 0;
        }

        /* renamed from: m0 */
        public Parcelable mo7684m0() {
            return null;
        }

        /* renamed from: n */
        public int mo7682n(C0592x c0592x) {
            return 0;
        }

        /* renamed from: n0 */
        public void mo7681n0(int i) {
        }

        /* renamed from: o */
        public int mo7679o(C0592x c0592x) {
            return 0;
        }

        /* renamed from: o0 */
        public void m7787o0(C0584s c0584s) {
            for (int m7776x = m7776x() - 1; m7776x >= 0; m7776x--) {
                if (!RecyclerView.m7907K(m7777w(m7776x)).m7834u()) {
                    m7782r0(m7776x, c0584s);
                }
            }
        }

        /* renamed from: p */
        public int mo7678p(C0592x c0592x) {
            return 0;
        }

        /* renamed from: p0 */
        public void m7786p0(C0584s c0584s) {
            int size = c0584s.f2286a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = c0584s.f2286a.get(i).f2224a;
                AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
                if (!m7907K.m7834u()) {
                    m7907K.m7835t(false);
                    if (m7907K.m7840o()) {
                        this.f2256b.removeDetachedView(view, false);
                    }
                    AbstractC0567j abstractC0567j = this.f2256b.f2161K;
                    if (abstractC0567j != null) {
                        abstractC0567j.mo7579e(m7907K);
                    }
                    m7907K.m7835t(true);
                    AbstractC0558a0 m7907K2 = RecyclerView.m7907K(view);
                    m7907K2.f2237n = null;
                    m7907K2.f2238o = false;
                    m7907K2.m7851d();
                    c0584s.m7760h(m7907K2);
                }
            }
            c0584s.f2286a.clear();
            ArrayList<AbstractC0558a0> arrayList = c0584s.f2287b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.f2256b.invalidate();
            }
        }

        /* renamed from: q */
        public void m7785q(C0584s c0584s) {
            int m7776x = m7776x();
            while (true) {
                m7776x--;
                if (m7776x >= 0) {
                    View m7777w = m7777w(m7776x);
                    AbstractC0558a0 m7907K = RecyclerView.m7907K(m7777w);
                    if (!m7907K.m7834u()) {
                        if (!m7907K.m7844k() || m7907K.m7842m() || this.f2256b.f2195l.f2245b) {
                            m7777w(m7776x);
                            this.f2255a.m7615c(m7776x);
                            c0584s.m7759i(m7777w);
                            this.f2256b.f2183f.m7583f(m7907K);
                        } else {
                            m7780s0(m7776x);
                            c0584s.m7760h(m7907K);
                        }
                    }
                } else {
                    return;
                }
            }
        }

        /* renamed from: q0 */
        public void m7784q0(View view, C0584s c0584s) {
            C0611c c0611c = this.f2255a;
            int indexOfChild = ((C0649w) c0611c.f2400a).f2544a.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (c0611c.f2401b.m7600f(indexOfChild)) {
                    c0611c.m7606l(view);
                }
                ((C0649w) c0611c.f2400a).m7528c(indexOfChild);
            }
            c0584s.m7761g(view);
        }

        /* renamed from: r */
        public View m7783r(View view) {
            View m7915C;
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView == null || (m7915C = recyclerView.m7915C(view)) == null || this.f2255a.f2402c.contains(m7915C)) {
                return null;
            }
            return m7915C;
        }

        /* renamed from: r0 */
        public void m7782r0(int i, C0584s c0584s) {
            View m7777w = m7777w(i);
            m7780s0(i);
            c0584s.m7761g(m7777w);
        }

        /* renamed from: s */
        public View mo7781s(int i) {
            int m7776x = m7776x();
            for (int i2 = 0; i2 < m7776x; i2++) {
                View m7777w = m7777w(i2);
                AbstractC0558a0 m7907K = RecyclerView.m7907K(m7777w);
                if (m7907K != null && m7907K.m7849f() == i && !m7907K.m7834u() && (this.f2256b.f2186g0.f2317g || !m7907K.m7842m())) {
                    return m7777w;
                }
            }
            return null;
        }

        /* renamed from: s0 */
        public void m7780s0(int i) {
            C0611c c0611c;
            int m7612f;
            View m7530a;
            if (m7777w(i) == null || (m7530a = ((C0649w) c0611c.f2400a).m7530a((m7612f = (c0611c = this.f2255a).m7612f(i)))) == null) {
                return;
            }
            if (c0611c.f2401b.m7600f(m7612f)) {
                c0611c.m7606l(m7530a);
            }
            ((C0649w) c0611c.f2400a).m7528c(m7612f);
        }

        /* renamed from: t */
        public abstract C0578n mo7677t();

        /* JADX WARN: Removed duplicated region for block: B:34:0x018a A[ORIG_RETURN, RETURN] */
        /* renamed from: t0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m7779t0(androidx.recyclerview.widget.RecyclerView r8, android.view.View r9, android.graphics.Rect r10, boolean r11, boolean r12) {
            /*
                Method dump skipped, instructions count: 426
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC0573m.m7779t0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        /* renamed from: u */
        public C0578n mo7676u(Context context, AttributeSet attributeSet) {
            return new C0578n(context, attributeSet);
        }

        /* renamed from: u0 */
        public void m7778u0() {
            RecyclerView recyclerView = this.f2256b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: v */
        public C0578n mo7675v(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof C0578n ? new C0578n((C0578n) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0578n((ViewGroup.MarginLayoutParams) layoutParams) : new C0578n(layoutParams);
        }

        /* renamed from: v0 */
        public int mo7674v0(int i, C0584s c0584s, C0592x c0592x) {
            return 0;
        }

        /* renamed from: w */
        public View m7777w(int i) {
            View view;
            C0611c c0611c = this.f2255a;
            if (c0611c != null) {
                view = ((C0649w) c0611c.f2400a).m7530a(c0611c.m7612f(i));
            } else {
                view = null;
            }
            return view;
        }

        /* renamed from: w0 */
        public void mo7673w0(int i) {
        }

        /* renamed from: x */
        public int m7776x() {
            C0611c c0611c = this.f2255a;
            return c0611c != null ? c0611c.m7613e() : 0;
        }

        /* renamed from: x0 */
        public int mo7672x0(int i, C0584s c0584s, C0592x c0592x) {
            return 0;
        }

        /* renamed from: y0 */
        public void m7774y0(RecyclerView recyclerView) {
            m7773z0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        /* renamed from: z */
        public int mo7671z(C0584s c0584s, C0592x c0592x) {
            RecyclerView recyclerView = this.f2256b;
            int i = 1;
            if (recyclerView != null) {
                if (recyclerView.f2195l == null) {
                    i = 1;
                } else {
                    i = 1;
                    if (mo7707e()) {
                        i = this.f2256b.f2195l.mo705a();
                    }
                }
            }
            return i;
        }

        /* renamed from: z0 */
        public void m7773z0(int i, int i2) {
            this.f2268n = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f2266l = mode;
            if (mode == 0 && !RecyclerView.f2149y0) {
                this.f2268n = 0;
            }
            this.f2269o = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2267m = mode2;
            if (mode2 != 0 || RecyclerView.f2149y0) {
                return;
            }
            this.f2269o = 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static class C0578n extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public AbstractC0558a0 f2276a;

        /* renamed from: b */
        public final Rect f2277b = new Rect();

        /* renamed from: c */
        public boolean f2278c = true;

        /* renamed from: d */
        public boolean f2279d = false;

        public C0578n(int i, int i2) {
            super(i, i2);
        }

        public C0578n(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0578n(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0578n(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public C0578n(C0578n c0578n) {
            super((ViewGroup.LayoutParams) c0578n);
        }

        /* renamed from: a */
        public int m7772a() {
            return this.f2276a.m7849f();
        }

        /* renamed from: b */
        public boolean m7771b() {
            return this.f2276a.m7839p();
        }

        /* renamed from: c */
        public boolean m7770c() {
            return this.f2276a.m7842m();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public static abstract class AbstractC0579o {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public interface AbstractC0580p {
        /* renamed from: a */
        boolean mo7570a(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: b */
        void mo7569b(RecyclerView recyclerView, MotionEvent motionEvent);

        /* renamed from: c */
        void mo7568c(boolean z);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public static abstract class AbstractC0581q {
        /* renamed from: a */
        public void mo4618a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: b */
        public void mo4617b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public static class C0582r {

        /* renamed from: a */
        public SparseArray<C0583a> f2280a = new SparseArray<>();

        /* renamed from: b */
        public int f2281b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$r$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r$a.class */
        public static class C0583a {

            /* renamed from: a */
            public final ArrayList<AbstractC0558a0> f2282a = new ArrayList<>();

            /* renamed from: b */
            public int f2283b = 5;

            /* renamed from: c */
            public long f2284c = 0;

            /* renamed from: d */
            public long f2285d = 0;
        }

        /* renamed from: a */
        public final C0583a m7769a(int i) {
            C0583a c0583a = this.f2280a.get(i);
            C0583a c0583a2 = c0583a;
            if (c0583a == null) {
                c0583a2 = new C0583a();
                this.f2280a.put(i, c0583a2);
            }
            return c0583a2;
        }

        /* renamed from: b */
        public long m7768b(long j, long j2) {
            return j == 0 ? j2 : (j2 / 4) + ((j / 4) * 3);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public final class C0584s {

        /* renamed from: a */
        public final ArrayList<AbstractC0558a0> f2286a;

        /* renamed from: d */
        public final List<AbstractC0558a0> f2289d;

        /* renamed from: g */
        public C0582r f2292g;

        /* renamed from: b */
        public ArrayList<AbstractC0558a0> f2287b = null;

        /* renamed from: c */
        public final ArrayList<AbstractC0558a0> f2288c = new ArrayList<>();

        /* renamed from: e */
        public int f2290e = 2;

        /* renamed from: f */
        public int f2291f = 2;

        public C0584s() {
            RecyclerView.this = r5;
            ArrayList<AbstractC0558a0> arrayList = new ArrayList<>();
            this.f2286a = arrayList;
            this.f2289d = Collections.unmodifiableList(arrayList);
        }

        /* renamed from: a */
        public void m7767a(AbstractC0558a0 abstractC0558a0, boolean z) {
            RecyclerView.m7872k(abstractC0558a0);
            View view = abstractC0558a0.f2224a;
            C0651y c0651y = RecyclerView.this.f2200n0;
            if (c0651y != null) {
                C0651y.C0652a c0652a = c0651y.f2547e;
                C3589v.m2103u(view, c0652a instanceof C0651y.C0652a ? c0652a.f2549e.remove(view) : null);
            }
            if (z) {
                AbstractC0585t abstractC0585t = RecyclerView.this.f2199n;
                if (abstractC0585t != null) {
                    abstractC0585t.m7755a(abstractC0558a0);
                }
                AbstractC0562e abstractC0562e = RecyclerView.this.f2195l;
                if (abstractC0562e != null) {
                    abstractC0562e.mo700f(abstractC0558a0);
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f2186g0 != null) {
                    recyclerView.f2183f.m7582g(abstractC0558a0);
                }
            }
            abstractC0558a0.f2241r = null;
            C0582r m7764d = m7764d();
            Objects.requireNonNull(m7764d);
            int i = abstractC0558a0.f2229f;
            ArrayList<AbstractC0558a0> arrayList = m7764d.m7769a(i).f2282a;
            if (m7764d.f2280a.get(i).f2283b <= arrayList.size()) {
                return;
            }
            abstractC0558a0.m7837r();
            arrayList.add(abstractC0558a0);
        }

        /* renamed from: b */
        public void m7766b() {
            this.f2286a.clear();
            m7763e();
        }

        /* renamed from: c */
        public int m7765c(int i) {
            if (i >= 0 && i < RecyclerView.this.f2186g0.m7744b()) {
                RecyclerView recyclerView = RecyclerView.this;
                return !recyclerView.f2186g0.f2317g ? i : recyclerView.f2179d.m7643f(i, 0);
            }
            StringBuilder m8751k = C0082b.m8751k("invalid position ", i, ". State item count is ");
            m8751k.append(RecyclerView.this.f2186g0.m7744b());
            throw new IndexOutOfBoundsException(C0608b.m7627h(RecyclerView.this, m8751k));
        }

        /* renamed from: d */
        public C0582r m7764d() {
            if (this.f2292g == null) {
                this.f2292g = new C0582r();
            }
            return this.f2292g;
        }

        /* renamed from: e */
        public void m7763e() {
            for (int size = this.f2288c.size() - 1; size >= 0; size--) {
                m7762f(size);
            }
            this.f2288c.clear();
            if (RecyclerView.f2145A0) {
                RunnableC0636n.C0638b c0638b = RecyclerView.this.f2184f0;
                int[] iArr = c0638b.f2513c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                c0638b.f2514d = 0;
            }
        }

        /* renamed from: f */
        public void m7762f(int i) {
            m7767a(this.f2288c.get(i), true);
            this.f2288c.remove(i);
        }

        /* renamed from: g */
        public void m7761g(View view) {
            AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
            if (m7907K.m7840o()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (m7907K.m7841n()) {
                m7907K.f2237n.m7757k(m7907K);
            } else if (m7907K.m7833v()) {
                m7907K.m7851d();
            }
            m7760h(m7907K);
            if (RecyclerView.this.f2161K == null || m7907K.m7843l()) {
                return;
            }
            RecyclerView.this.f2161K.mo7579e(m7907K);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x013b  */
        /* JADX WARN: Removed duplicated region for block: B:64:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m7760h(androidx.recyclerview.widget.RecyclerView.AbstractC0558a0 r6) {
            /*
                Method dump skipped, instructions count: 462
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0584s.m7760h(androidx.recyclerview.widget.RecyclerView$a0):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m7759i(android.view.View r6) {
            /*
                Method dump skipped, instructions count: 233
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0584s.m7759i(android.view.View):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:178:0x05c1, code lost:
            r16 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:252:0x0848, code lost:
            if (r21.m7844k() == false) goto L263;
         */
        /* JADX WARN: Code restructure failed: missing block: B:262:0x08a9, code lost:
            if ((r0 == 0 || r0 + r0 < r12) == false) goto L263;
         */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0349  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0464  */
        /* JADX WARN: Removed duplicated region for block: B:237:0x07dc  */
        /* JADX WARN: Removed duplicated region for block: B:245:0x082b  */
        /* JADX WARN: Removed duplicated region for block: B:255:0x087c  */
        /* JADX WARN: Removed duplicated region for block: B:266:0x08cf  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x090a  */
        /* JADX WARN: Removed duplicated region for block: B:272:0x0931  */
        /* JADX WARN: Removed duplicated region for block: B:281:0x098e  */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0a04  */
        /* JADX WARN: Removed duplicated region for block: B:300:0x0a1b  */
        /* JADX WARN: Removed duplicated region for block: B:301:0x0a34  */
        /* JADX WARN: Removed duplicated region for block: B:307:0x0a71  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x011c  */
        /* renamed from: j */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.AbstractC0558a0 m7758j(int r10, boolean r11, long r12) {
            /*
                Method dump skipped, instructions count: 2774
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C0584s.m7758j(int, boolean, long):androidx.recyclerview.widget.RecyclerView$a0");
        }

        /* renamed from: k */
        public void m7757k(AbstractC0558a0 abstractC0558a0) {
            if (abstractC0558a0.f2238o) {
                this.f2287b.remove(abstractC0558a0);
            } else {
                this.f2286a.remove(abstractC0558a0);
            }
            abstractC0558a0.f2237n = null;
            abstractC0558a0.f2238o = false;
            abstractC0558a0.m7851d();
        }

        /* renamed from: l */
        public void m7756l() {
            AbstractC0573m abstractC0573m = RecyclerView.this.f2197m;
            this.f2291f = this.f2290e + (abstractC0573m != null ? abstractC0573m.f2264j : 0);
            for (int size = this.f2288c.size() - 1; size >= 0 && this.f2288c.size() > this.f2291f; size--) {
                m7762f(size);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public interface AbstractC0585t {
        /* renamed from: a */
        void m7755a(AbstractC0558a0 abstractC0558a0);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public class C0586u extends AbstractC0564g {
        public C0586u() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0564g
        /* renamed from: a */
        public void mo7754a() {
            RecyclerView.this.m7876i(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f2186g0.f2316f = true;
            recyclerView.m7894X(true);
            if (!RecyclerView.this.f2179d.m7642g()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0564g
        /* renamed from: b */
        public void mo7753b(int i, int i2, Object obj) {
            boolean z;
            RecyclerView.this.m7876i(null);
            C0604a c0604a = RecyclerView.this.f2179d;
            Objects.requireNonNull(c0604a);
            if (i2 < 1) {
                z = false;
            } else {
                c0604a.f2386b.add(c0604a.m7641h(4, i, i2, obj));
                c0604a.f2390f |= 4;
                z = false;
                if (c0604a.f2386b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m7751d();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0564g
        /* renamed from: c */
        public void mo7752c(int i, int i2) {
            boolean z;
            RecyclerView.this.m7876i(null);
            C0604a c0604a = RecyclerView.this.f2179d;
            Objects.requireNonNull(c0604a);
            if (i2 < 1) {
                z = false;
            } else {
                c0604a.f2386b.add(c0604a.m7641h(1, i, i2, null));
                c0604a.f2390f |= 1;
                z = false;
                if (c0604a.f2386b.size() == 1) {
                    z = true;
                }
            }
            if (z) {
                m7751d();
            }
        }

        /* renamed from: d */
        public void m7751d() {
            if (RecyclerView.f2150z0) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f2209s && recyclerView.f2207r) {
                    Runnable runnable = recyclerView.f2187h;
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    C3589v.C3593d.m2081m(recyclerView, runnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.f2221z = true;
            recyclerView2.requestLayout();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public static class C0587v extends AbstractC4178a {
        public static final Parcelable.Creator<C0587v> CREATOR = new C0588a();

        /* renamed from: c */
        public Parcelable f2295c;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$v$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v$a.class */
        public static final class C0588a implements Parcelable.ClassLoaderCreator<C0587v> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0587v(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0587v createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0587v(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0587v[i];
            }
        }

        public C0587v(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2295c = parcel.readParcelable(classLoader == null ? AbstractC0573m.class.getClassLoader() : classLoader);
        }

        public C0587v(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeParcelable(this.f2295c, 0);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$w */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w.class */
    public static abstract class AbstractC0589w {

        /* renamed from: b */
        public RecyclerView f2297b;

        /* renamed from: c */
        public AbstractC0573m f2298c;

        /* renamed from: d */
        public boolean f2299d;

        /* renamed from: e */
        public boolean f2300e;

        /* renamed from: f */
        public View f2301f;

        /* renamed from: h */
        public boolean f2303h;

        /* renamed from: a */
        public int f2296a = -1;

        /* renamed from: g */
        public final C0590a f2302g = new C0590a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$w$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w$a.class */
        public static class C0590a {

            /* renamed from: a */
            public int f2304a;

            /* renamed from: b */
            public int f2305b;

            /* renamed from: d */
            public int f2307d = -1;

            /* renamed from: f */
            public boolean f2309f = false;

            /* renamed from: g */
            public int f2310g = 0;

            /* renamed from: c */
            public int f2306c = Integer.MIN_VALUE;

            /* renamed from: e */
            public Interpolator f2308e = null;

            public C0590a(int i, int i2) {
                this.f2304a = i;
                this.f2305b = i2;
            }

            /* renamed from: a */
            public void m7747a(RecyclerView recyclerView) {
                int i = this.f2307d;
                if (i >= 0) {
                    this.f2307d = -1;
                    recyclerView.m7902P(i);
                    this.f2309f = false;
                } else if (!this.f2309f) {
                    this.f2310g = 0;
                } else {
                    Interpolator interpolator = this.f2308e;
                    if (interpolator != null && this.f2306c < 1) {
                        throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                    }
                    int i2 = this.f2306c;
                    if (i2 < 1) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    recyclerView.f2180d0.m7742c(this.f2304a, this.f2305b, i2, interpolator);
                    this.f2310g++;
                    this.f2309f = false;
                }
            }

            /* renamed from: b */
            public void m7746b(int i, int i2, int i3, Interpolator interpolator) {
                this.f2304a = i;
                this.f2305b = i2;
                this.f2306c = i3;
                this.f2308e = interpolator;
                this.f2309f = true;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$w$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$w$b.class */
        public interface AbstractC0591b {
            /* renamed from: a */
            PointF mo7716a(int i);
        }

        /* renamed from: a */
        public PointF m7750a(int i) {
            AbstractC0573m abstractC0573m = this.f2298c;
            if (abstractC0573m instanceof AbstractC0591b) {
                return ((AbstractC0591b) abstractC0573m).mo7716a(i);
            }
            StringBuilder m8752j = C0082b.m8752j("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            m8752j.append(AbstractC0591b.class.getCanonicalName());
            Log.w("RecyclerView", m8752j.toString());
            return null;
        }

        /* renamed from: b */
        public void m7749b(int i, int i2) {
            float f;
            PointF m7750a;
            RecyclerView recyclerView = this.f2297b;
            int i3 = -1;
            if (this.f2296a == -1 || recyclerView == null) {
                m7748d();
            }
            if (this.f2299d && this.f2301f == null && this.f2298c != null && (m7750a = m7750a(this.f2296a)) != null) {
                float f2 = m7750a.x;
                if (f2 != 0.0f || m7750a.y != 0.0f) {
                    recyclerView.m7885d0((int) Math.signum(f2), (int) Math.signum(m7750a.y), null);
                }
            }
            this.f2299d = false;
            View view = this.f2301f;
            if (view != null) {
                Objects.requireNonNull(this.f2297b);
                AbstractC0558a0 m7907K = RecyclerView.m7907K(view);
                if (m7907K != null) {
                    i3 = m7907K.m7849f();
                }
                if (i3 == this.f2296a) {
                    mo7537c(this.f2301f, recyclerView.f2186g0, this.f2302g);
                    this.f2302g.m7747a(recyclerView);
                    m7748d();
                } else {
                    this.f2301f = null;
                }
            }
            if (this.f2300e) {
                C0592x c0592x = recyclerView.f2186g0;
                C0590a c0590a = this.f2302g;
                C0641p c0641p = (C0641p) this;
                if (c0641p.f2297b.f2197m.m7776x() == 0) {
                    c0641p.m7748d();
                } else {
                    int i4 = c0641p.f2535o;
                    int i5 = i4 - i;
                    int i6 = i5;
                    if (i4 * i5 <= 0) {
                        i6 = 0;
                    }
                    c0641p.f2535o = i6;
                    int i7 = c0641p.f2536p;
                    int i8 = i7 - i2;
                    int i9 = i8;
                    if (i7 * i8 <= 0) {
                        i9 = 0;
                    }
                    c0641p.f2536p = i9;
                    if (i6 == 0 && i9 == 0) {
                        PointF m7750a2 = c0641p.m7750a(c0641p.f2296a);
                        if (m7750a2 != null) {
                            if (m7750a2.x != 0.0f || m7750a2.y != 0.0f) {
                                float f3 = m7750a2.y;
                                float sqrt = (float) Math.sqrt((f3 * f3) + (f * f));
                                float f4 = m7750a2.x / sqrt;
                                m7750a2.x = f4;
                                float f5 = m7750a2.y / sqrt;
                                m7750a2.y = f5;
                                c0641p.f2531k = m7750a2;
                                c0641p.f2535o = (int) (f4 * 10000.0f);
                                c0641p.f2536p = (int) (f5 * 10000.0f);
                                c0590a.m7746b((int) (c0641p.f2535o * 1.2f), (int) (c0641p.f2536p * 1.2f), (int) (c0641p.mo7536g(10000) * 1.2f), c0641p.f2529i);
                            }
                        }
                        c0590a.f2307d = c0641p.f2296a;
                        c0641p.m7748d();
                    }
                }
                C0590a c0590a2 = this.f2302g;
                boolean z = false;
                if (c0590a2.f2307d >= 0) {
                    z = true;
                }
                c0590a2.m7747a(recyclerView);
                if (!z || !this.f2300e) {
                    return;
                }
                this.f2299d = true;
                recyclerView.f2180d0.m7743b();
            }
        }

        /* renamed from: c */
        public abstract void mo7537c(View view, C0592x c0592x, C0590a c0590a);

        /* renamed from: d */
        public final void m7748d() {
            if (!this.f2300e) {
                return;
            }
            this.f2300e = false;
            C0641p c0641p = (C0641p) this;
            c0641p.f2536p = 0;
            c0641p.f2535o = 0;
            c0641p.f2531k = null;
            this.f2297b.f2186g0.f2311a = -1;
            this.f2301f = null;
            this.f2296a = -1;
            this.f2299d = false;
            AbstractC0573m abstractC0573m = this.f2298c;
            if (abstractC0573m.f2259e == this) {
                abstractC0573m.f2259e = null;
            }
            this.f2298c = null;
            this.f2297b = null;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$x */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
    public static class C0592x {

        /* renamed from: a */
        public int f2311a = -1;

        /* renamed from: b */
        public int f2312b = 0;

        /* renamed from: c */
        public int f2313c = 0;

        /* renamed from: d */
        public int f2314d = 1;

        /* renamed from: e */
        public int f2315e = 0;

        /* renamed from: f */
        public boolean f2316f = false;

        /* renamed from: g */
        public boolean f2317g = false;

        /* renamed from: h */
        public boolean f2318h = false;

        /* renamed from: i */
        public boolean f2319i = false;

        /* renamed from: j */
        public boolean f2320j = false;

        /* renamed from: k */
        public boolean f2321k = false;

        /* renamed from: l */
        public int f2322l;

        /* renamed from: m */
        public long f2323m;

        /* renamed from: n */
        public int f2324n;

        /* renamed from: a */
        public void m7745a(int i) {
            if ((this.f2314d & i) != 0) {
                return;
            }
            StringBuilder m8752j = C0082b.m8752j("Layout state should be one of ");
            m8752j.append(Integer.toBinaryString(i));
            m8752j.append(" but it is ");
            m8752j.append(Integer.toBinaryString(this.f2314d));
            throw new IllegalStateException(m8752j.toString());
        }

        /* renamed from: b */
        public int m7744b() {
            return this.f2317g ? this.f2312b - this.f2313c : this.f2315e;
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("State{mTargetPosition=");
            m8752j.append(this.f2311a);
            m8752j.append(", mData=");
            m8752j.append((Object) null);
            m8752j.append(", mItemCount=");
            m8752j.append(this.f2315e);
            m8752j.append(", mIsMeasuring=");
            m8752j.append(this.f2319i);
            m8752j.append(", mPreviousLayoutItemCount=");
            m8752j.append(this.f2312b);
            m8752j.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            m8752j.append(this.f2313c);
            m8752j.append(", mStructureChanged=");
            m8752j.append(this.f2316f);
            m8752j.append(", mInPreLayout=");
            m8752j.append(this.f2317g);
            m8752j.append(", mRunSimpleAnimations=");
            m8752j.append(this.f2320j);
            m8752j.append(", mRunPredictiveAnimations=");
            m8752j.append(this.f2321k);
            m8752j.append('}');
            return m8752j.toString();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$y */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y.class */
    public static abstract class AbstractC0593y {
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$z */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$z.class */
    public class RunnableC0594z implements Runnable {

        /* renamed from: a */
        public int f2325a;

        /* renamed from: b */
        public int f2326b;

        /* renamed from: c */
        public OverScroller f2327c;

        /* renamed from: d */
        public Interpolator f2328d;

        /* renamed from: e */
        public boolean f2329e = false;

        /* renamed from: f */
        public boolean f2330f = false;

        public RunnableC0594z() {
            RecyclerView.this = r7;
            Interpolator interpolator = RecyclerView.f2147C0;
            this.f2328d = interpolator;
            this.f2327c = new OverScroller(r7.getContext(), interpolator);
        }

        /* renamed from: b */
        public void m7743b() {
            if (this.f2329e) {
                this.f2330f = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2081m(recyclerView, this);
        }

        /* renamed from: c */
        public void m7742c(int i, int i2, int i3, Interpolator interpolator) {
            int abs;
            int abs2;
            int i4;
            int i5 = i3;
            if (i3 == Integer.MIN_VALUE) {
                boolean z = Math.abs(i) > Math.abs(i2);
                int sqrt = (int) Math.sqrt(0);
                int sqrt2 = (int) Math.sqrt((i2 * i2) + (i * i));
                RecyclerView recyclerView = RecyclerView.this;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                float f = sqrt2;
                float f2 = width;
                float f3 = width / 2;
                float sin = (float) Math.sin((Math.min(1.0f, (f * 1.0f) / f2) - 0.5f) * 0.47123894f);
                if (sqrt > 0) {
                    i4 = Math.round(Math.abs(((sin * f3) + f3) / sqrt) * 1000.0f) * 4;
                } else {
                    i4 = (int) ((((z ? abs : abs2) / f2) + 1.0f) * 300.0f);
                }
                i5 = Math.min(i4, (int) AdError.SERVER_ERROR_CODE);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.f2147C0;
            }
            if (this.f2328d != interpolator2) {
                this.f2328d = interpolator2;
                this.f2327c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f2326b = 0;
            this.f2325a = 0;
            RecyclerView.this.setScrollState(2);
            this.f2327c.startScroll(0, 0, i, i2, i5);
            if (Build.VERSION.SDK_INT < 23) {
                this.f2327c.computeScrollOffset();
            }
            m7743b();
        }

        /* renamed from: d */
        public void m7741d() {
            RecyclerView.this.removeCallbacks(this);
            this.f2327c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            int i3;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f2197m == null) {
                m7741d();
                return;
            }
            this.f2330f = false;
            this.f2329e = true;
            recyclerView.m7867n();
            OverScroller overScroller = this.f2327c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i4 = currX - this.f2325a;
                int i5 = currY - this.f2326b;
                this.f2325a = currX;
                this.f2326b = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.f2212t0;
                iArr[0] = 0;
                iArr[1] = 0;
                int i6 = i4;
                int i7 = i5;
                if (recyclerView2.m7861t(i4, i5, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.f2212t0;
                    i6 = i4 - iArr2[0];
                    i7 = i5 - iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m7868m(i6, i7);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f2195l != null) {
                    int[] iArr3 = recyclerView3.f2212t0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.m7885d0(i6, i7, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.f2212t0;
                    int i8 = iArr4[0];
                    int i9 = iArr4[1];
                    int i10 = i6 - i8;
                    int i11 = i7 - i9;
                    AbstractC0589w abstractC0589w = recyclerView4.f2197m.f2259e;
                    i6 = i10;
                    i = i9;
                    i3 = i8;
                    i2 = i11;
                    if (abstractC0589w != null) {
                        i6 = i10;
                        i = i9;
                        i3 = i8;
                        i2 = i11;
                        if (!abstractC0589w.f2299d) {
                            i6 = i10;
                            i = i9;
                            i3 = i8;
                            i2 = i11;
                            if (abstractC0589w.f2300e) {
                                int m7744b = recyclerView4.f2186g0.m7744b();
                                if (m7744b == 0) {
                                    abstractC0589w.m7748d();
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else if (abstractC0589w.f2296a >= m7744b) {
                                    abstractC0589w.f2296a = m7744b - 1;
                                    abstractC0589w.m7749b(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                } else {
                                    abstractC0589w.m7749b(i8, i9);
                                    i6 = i10;
                                    i = i9;
                                    i3 = i8;
                                    i2 = i11;
                                }
                            }
                        }
                    }
                } else {
                    i = 0;
                    i2 = i7;
                    i3 = 0;
                }
                if (!RecyclerView.this.f2201o.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.f2212t0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.m7860u(i3, i, i6, i2, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.f2212t0;
                int i12 = i6 - iArr6[0];
                int i13 = i2 - iArr6[1];
                if (i3 != 0 || i != 0) {
                    recyclerView6.m7859v(i3, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i12 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i13 != 0));
                RecyclerView recyclerView7 = RecyclerView.this;
                AbstractC0589w abstractC0589w2 = recyclerView7.f2197m.f2259e;
                if ((abstractC0589w2 != null && abstractC0589w2.f2299d) || !z) {
                    m7743b();
                    RecyclerView recyclerView8 = RecyclerView.this;
                    RunnableC0636n runnableC0636n = recyclerView8.f2182e0;
                    if (runnableC0636n != null) {
                        runnableC0636n.m7560a(recyclerView8, i3, i);
                    }
                } else {
                    if (recyclerView7.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i14 = i12 < 0 ? -currVelocity : i12 > 0 ? currVelocity : 0;
                        if (i13 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i13 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView recyclerView9 = RecyclerView.this;
                        Objects.requireNonNull(recyclerView9);
                        if (i14 < 0) {
                            recyclerView9.m7857x();
                            if (recyclerView9.f2157G.isFinished()) {
                                recyclerView9.f2157G.onAbsorb(-i14);
                            }
                        } else if (i14 > 0) {
                            recyclerView9.m7856y();
                            if (recyclerView9.f2159I.isFinished()) {
                                recyclerView9.f2159I.onAbsorb(i14);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView9.m7855z();
                            if (recyclerView9.f2158H.isFinished()) {
                                recyclerView9.f2158H.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView9.m7858w();
                            if (recyclerView9.f2160J.isFinished()) {
                                recyclerView9.f2160J.onAbsorb(currVelocity);
                            }
                        }
                        if (i14 != 0 || currVelocity != 0) {
                            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                            C3589v.C3593d.m2083k(recyclerView9);
                        }
                    }
                    if (RecyclerView.f2145A0) {
                        RunnableC0636n.C0638b c0638b = RecyclerView.this.f2184f0;
                        int[] iArr7 = c0638b.f2513c;
                        if (iArr7 != null) {
                            Arrays.fill(iArr7, -1);
                        }
                        c0638b.f2514d = 0;
                    }
                }
            }
            AbstractC0589w abstractC0589w3 = RecyclerView.this.f2197m.f2259e;
            if (abstractC0589w3 != null && abstractC0589w3.f2299d) {
                abstractC0589w3.m7749b(0, 0);
            }
            this.f2329e = false;
            if (!this.f2330f) {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.m7871k0(1);
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView10 = RecyclerView.this;
            WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
            C3589v.C3593d.m2081m(recyclerView10, this);
        }
    }

    static {
        f2149y0 = Build.VERSION.SDK_INT >= 23;
        f2150z0 = true;
        f2145A0 = true;
        Class<?> cls = Integer.TYPE;
        f2146B0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f2147C0 = new animationInterpolatorC0560c();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130969551);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Constructor constructor;
        Object[] objArr;
        this.f2173a = new C0586u();
        this.f2175b = new C0584s();
        this.f2183f = new C0618d0();
        this.f2187h = new RunnableC0557a();
        this.f2189i = new Rect();
        this.f2191j = new Rect();
        this.f2193k = new RectF();
        this.f2201o = new ArrayList<>();
        this.f2203p = new ArrayList<>();
        this.f2213u = 0;
        this.f2152B = false;
        this.f2153C = false;
        this.f2154D = 0;
        this.f2155E = 0;
        this.f2156F = new C0566i();
        this.f2161K = new C0628l();
        this.f2162L = 0;
        this.f2163M = -1;
        this.f2174a0 = Float.MIN_VALUE;
        this.f2176b0 = Float.MIN_VALUE;
        this.f2178c0 = true;
        this.f2180d0 = new RunnableC0594z();
        this.f2184f0 = f2145A0 ? new RunnableC0636n.C0638b() : null;
        this.f2186g0 = new C0592x();
        this.f2192j0 = false;
        this.f2194k0 = false;
        this.f2196l0 = new C0571k();
        this.f2198m0 = false;
        this.f2204p0 = new int[2];
        this.f2208r0 = new int[2];
        this.f2210s0 = new int[2];
        this.f2212t0 = new int[2];
        this.f2214u0 = new ArrayList();
        this.f2216v0 = new RunnableC0559b();
        this.f2218w0 = new C0561d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2169T = viewConfiguration.getScaledTouchSlop();
        Method method = C3610x.f11801a;
        int i2 = Build.VERSION.SDK_INT;
        this.f2174a0 = i2 >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : C3610x.m1985a(viewConfiguration, context);
        this.f2176b0 = i2 >= 26 ? viewConfiguration.getScaledVerticalScrollFactor() : C3610x.m1985a(viewConfiguration, context);
        this.f2171V = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2172W = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2161K.f2246a = this.f2196l0;
        this.f2179d = new C0604a(new C0650x(this));
        this.f2181e = new C0611c(new C0649w(this));
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if ((i2 >= 26 ? C3589v.C3601k.m2019b(this) : 0) == 0 && i2 >= 26) {
            C3589v.C3601k.m2009l(this, 8);
        }
        if (C3589v.C3593d.m2091c(this) == 0) {
            C3589v.C3593d.m2075s(this, 1);
        }
        this.f2151A = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C0651y(this));
        int[] iArr = C3260w0.f11021b;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        if (i2 >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        }
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f2185g = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(C0608b.m7627h(this, C0082b.m8752j("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            new C0631m(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(2131165364), resources.getDimensionPixelSize(2131165366), resources.getDimensionPixelOffset(2131165365));
        }
        obtainStyledAttributes.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                try {
                    Class<? extends U> asSubclass = Class.forName(trim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC0573m.class);
                    try {
                        constructor = asSubclass.getConstructor(f2146B0);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i), 0};
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + trim, e2);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((AbstractC0573m) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + trim, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + trim, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + trim, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e7);
                }
            }
        }
        int i3 = Build.VERSION.SDK_INT;
        int[] iArr2 = f2148x0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        if (i3 >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet, obtainStyledAttributes2, i, 0);
        }
        boolean z = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z);
    }

    /* renamed from: F */
    public static RecyclerView m7912F(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m7912F = m7912F(viewGroup.getChildAt(i));
            if (m7912F != null) {
                return m7912F;
            }
        }
        return null;
    }

    /* renamed from: K */
    public static AbstractC0558a0 m7907K(View view) {
        if (view == null) {
            return null;
        }
        return ((C0578n) view.getLayoutParams()).f2276a;
    }

    private C3576i getScrollingChildHelper() {
        if (this.f2206q0 == null) {
            this.f2206q0 = new C3576i(this);
        }
        return this.f2206q0;
    }

    /* renamed from: k */
    public static void m7872k(AbstractC0558a0 abstractC0558a0) {
        WeakReference<RecyclerView> weakReference = abstractC0558a0.f2225b;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC0558a0.f2225b = null;
                    return;
                } else if (view == abstractC0558a0.f2224a) {
                    return;
                } else {
                    ViewParent parent = view.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                }
            }
        }
    }

    /* renamed from: A */
    public String m7917A() {
        StringBuilder m8752j = C0082b.m8752j(" ");
        m8752j.append(super.toString());
        m8752j.append(", adapter:");
        m8752j.append(this.f2195l);
        m8752j.append(", layout:");
        m8752j.append(this.f2197m);
        m8752j.append(", context:");
        m8752j.append(getContext());
        return m8752j.toString();
    }

    /* renamed from: B */
    public final void m7916B(C0592x c0592x) {
        if (getScrollState() != 2) {
            Objects.requireNonNull(c0592x);
            return;
        }
        OverScroller overScroller = this.f2180d0.f2327c;
        overScroller.getFinalX();
        overScroller.getCurrX();
        Objects.requireNonNull(c0592x);
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    /* renamed from: C */
    public View m7915C(View view) {
        ViewParent viewParent;
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || viewParent == this || !(viewParent instanceof View)) {
                break;
            }
            view = (View) viewParent;
            parent = view.getParent();
        }
        if (viewParent != this) {
            view = null;
        }
        return view;
    }

    /* renamed from: D */
    public final boolean m7914D(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f2203p.size();
        for (int i = 0; i < size; i++) {
            AbstractC0580p abstractC0580p = this.f2203p.get(i);
            if (abstractC0580p.mo7570a(this, motionEvent) && action != 3) {
                this.f2205q = abstractC0580p;
                return true;
            }
        }
        return false;
    }

    /* renamed from: E */
    public final void m7913E(int[] iArr) {
        int i;
        int m7613e = this.f2181e.m7613e();
        if (m7613e == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int i4 = 0;
        while (i4 < m7613e) {
            AbstractC0558a0 m7907K = m7907K(this.f2181e.m7614d(i4));
            if (m7907K.m7834u()) {
                i = i3;
            } else {
                int m7849f = m7907K.m7849f();
                int i5 = i2;
                if (m7849f < i2) {
                    i5 = m7849f;
                }
                i2 = i5;
                i = i3;
                if (m7849f > i3) {
                    i = m7849f;
                    i2 = i5;
                }
            }
            i4++;
            i3 = i;
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    /* renamed from: G */
    public AbstractC0558a0 m7911G(int i) {
        AbstractC0558a0 abstractC0558a0 = null;
        if (this.f2152B) {
            return null;
        }
        int m7610h = this.f2181e.m7610h();
        int i2 = 0;
        while (i2 < m7610h) {
            AbstractC0558a0 m7907K = m7907K(this.f2181e.m7611g(i2));
            AbstractC0558a0 abstractC0558a02 = abstractC0558a0;
            if (m7907K != null) {
                abstractC0558a02 = abstractC0558a0;
                if (!m7907K.m7842m()) {
                    abstractC0558a02 = abstractC0558a0;
                    if (m7910H(m7907K) != i) {
                        continue;
                    } else if (!this.f2181e.m7607k(m7907K.f2224a)) {
                        return m7907K;
                    } else {
                        abstractC0558a02 = m7907K;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC0558a0 = abstractC0558a02;
        }
        return abstractC0558a0;
    }

    /* renamed from: H */
    public int m7910H(AbstractC0558a0 abstractC0558a0) {
        int i;
        int i2;
        if (!abstractC0558a0.m7847h(524) && abstractC0558a0.m7845j()) {
            C0604a c0604a = this.f2179d;
            int i3 = abstractC0558a0.f2226c;
            int size = c0604a.f2386b.size();
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                C0604a.C0606b c0606b = c0604a.f2386b.get(i4);
                int i5 = c0606b.f2391a;
                if (i5 == 1) {
                    i2 = i3;
                    if (c0606b.f2392b <= i3) {
                        i2 = i3 + c0606b.f2394d;
                    }
                } else if (i5 == 2) {
                    int i6 = c0606b.f2392b;
                    i2 = i3;
                    if (i6 <= i3) {
                        int i7 = c0606b.f2394d;
                        if (i6 + i7 > i3) {
                            break;
                        }
                        i2 = i3 - i7;
                    } else {
                        continue;
                    }
                } else if (i5 != 8) {
                    i2 = i3;
                } else {
                    int i8 = c0606b.f2392b;
                    if (i8 == i3) {
                        i2 = c0606b.f2394d;
                    } else {
                        int i9 = i3;
                        if (i8 < i3) {
                            i9 = i3 - 1;
                        }
                        i2 = i9;
                        if (c0606b.f2394d <= i9) {
                            i2 = i9 + 1;
                        }
                    }
                }
                i4++;
                i3 = i2;
            }
        }
        i = -1;
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: I */
    public long m7909I(AbstractC0558a0 abstractC0558a0) {
        return this.f2195l.f2245b ? abstractC0558a0.f2228e : abstractC0558a0.f2226c;
    }

    /* renamed from: J */
    public AbstractC0558a0 m7908J(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m7907K(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* renamed from: L */
    public Rect m7906L(View view) {
        C0578n c0578n = (C0578n) view.getLayoutParams();
        if (!c0578n.f2278c) {
            return c0578n.f2277b;
        }
        if (this.f2186g0.f2317g && (c0578n.m7771b() || c0578n.f2276a.m7844k())) {
            return c0578n.f2277b;
        }
        Rect rect = c0578n.f2277b;
        rect.set(0, 0, 0, 0);
        int size = this.f2201o.size();
        for (int i = 0; i < size; i++) {
            this.f2189i.set(0, 0, 0, 0);
            AbstractC0572l abstractC0572l = this.f2201o.get(i);
            Rect rect2 = this.f2189i;
            Objects.requireNonNull(abstractC0572l);
            ((C0578n) view.getLayoutParams()).m7772a();
            rect2.set(0, 0, 0, 0);
            int i2 = rect.left;
            Rect rect3 = this.f2189i;
            rect.left = i2 + rect3.left;
            rect.top += rect3.top;
            rect.right += rect3.right;
            rect.bottom += rect3.bottom;
        }
        c0578n.f2278c = false;
        return rect;
    }

    /* renamed from: M */
    public boolean m7905M() {
        return !this.f2211t || this.f2152B || this.f2179d.m7642g();
    }

    /* renamed from: N */
    public void m7904N() {
        this.f2160J = null;
        this.f2158H = null;
        this.f2159I = null;
        this.f2157G = null;
    }

    /* renamed from: O */
    public boolean m7903O() {
        return this.f2154D > 0;
    }

    /* renamed from: P */
    public void m7902P(int i) {
        if (this.f2197m == null) {
            return;
        }
        setScrollState(2);
        this.f2197m.mo7673w0(i);
        awakenScrollBars();
    }

    /* renamed from: Q */
    public void m7901Q() {
        int m7610h = this.f2181e.m7610h();
        for (int i = 0; i < m7610h; i++) {
            ((C0578n) this.f2181e.m7611g(i).getLayoutParams()).f2278c = true;
        }
        C0584s c0584s = this.f2175b;
        int size = c0584s.f2288c.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0578n c0578n = (C0578n) c0584s.f2288c.get(i2).f2224a.getLayoutParams();
            if (c0578n != null) {
                c0578n.f2278c = true;
            }
        }
    }

    /* renamed from: R */
    public void m7900R(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m7610h = this.f2181e.m7610h();
        for (int i4 = 0; i4 < m7610h; i4++) {
            AbstractC0558a0 m7907K = m7907K(this.f2181e.m7611g(i4));
            if (m7907K != null && !m7907K.m7834u()) {
                int i5 = m7907K.f2226c;
                if (i5 >= i3) {
                    m7907K.m7838q(-i2, z);
                    this.f2186g0.f2316f = true;
                } else if (i5 >= i) {
                    m7907K.m7853b(8);
                    m7907K.m7838q(-i2, z);
                    m7907K.f2226c = i - 1;
                    this.f2186g0.f2316f = true;
                }
            }
        }
        C0584s c0584s = this.f2175b;
        int size = c0584s.f2288c.size();
        while (true) {
            int i6 = size - 1;
            if (i6 < 0) {
                requestLayout();
                return;
            }
            AbstractC0558a0 abstractC0558a0 = c0584s.f2288c.get(i6);
            size = i6;
            if (abstractC0558a0 != null) {
                int i7 = abstractC0558a0.f2226c;
                if (i7 >= i3) {
                    abstractC0558a0.m7838q(-i2, z);
                    size = i6;
                } else {
                    size = i6;
                    if (i7 >= i) {
                        abstractC0558a0.m7853b(8);
                        c0584s.m7762f(i6);
                        size = i6;
                    }
                }
            }
        }
    }

    /* renamed from: S */
    public void m7899S() {
        this.f2154D++;
    }

    /* renamed from: T */
    public void m7898T(boolean z) {
        int i;
        boolean z2 = true;
        int i2 = this.f2154D - 1;
        this.f2154D = i2;
        if (i2 < 1) {
            this.f2154D = 0;
            if (!z) {
                return;
            }
            int i3 = this.f2220y;
            this.f2220y = 0;
            if (i3 != 0) {
                AccessibilityManager accessibilityManager = this.f2151A;
                if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
                    z2 = false;
                }
                if (z2) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
            }
            for (int size = this.f2214u0.size() - 1; size >= 0; size--) {
                AbstractC0558a0 abstractC0558a0 = this.f2214u0.get(size);
                if (abstractC0558a0.f2224a.getParent() == this && !abstractC0558a0.m7834u() && (i = abstractC0558a0.f2240q) != -1) {
                    View view = abstractC0558a0.f2224a;
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    C3589v.C3593d.m2075s(view, i);
                    abstractC0558a0.f2240q = -1;
                }
            }
            this.f2214u0.clear();
        }
    }

    /* renamed from: U */
    public final void m7897U(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2163M) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2163M = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f2167R = x;
            this.f2165O = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f2168S = y;
            this.f2166P = y;
        }
    }

    /* renamed from: V */
    public void m7896V() {
        if (this.f2198m0 || !this.f2207r) {
            return;
        }
        Runnable runnable = this.f2216v0;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2081m(this, runnable);
        this.f2198m0 = true;
    }

    /* renamed from: W */
    public final void m7895W() {
        boolean z;
        if (this.f2152B) {
            C0604a c0604a = this.f2179d;
            c0604a.m7637l(c0604a.f2386b);
            c0604a.m7637l(c0604a.f2387c);
            c0604a.f2390f = 0;
            if (this.f2153C) {
                this.f2197m.mo7703f0(this);
            }
        }
        if (this.f2161K != null && this.f2197m.mo7739I0()) {
            this.f2179d.m7639j();
        } else {
            this.f2179d.m7646c();
        }
        boolean z2 = this.f2192j0 || this.f2194k0;
        C0592x c0592x = this.f2186g0;
        boolean z3 = this.f2211t && this.f2161K != null && ((z = this.f2152B) || z2 || this.f2197m.f2260f) && (!z || this.f2195l.f2245b);
        c0592x.f2320j = z3;
        boolean z4 = false;
        if (z3) {
            z4 = false;
            if (z2) {
                z4 = false;
                if (!this.f2152B) {
                    z4 = false;
                    if (this.f2161K != null && this.f2197m.mo7739I0()) {
                        z4 = true;
                    }
                }
            }
        }
        c0592x.f2321k = z4;
    }

    /* renamed from: X */
    public void m7894X(boolean z) {
        this.f2153C = z | this.f2153C;
        this.f2152B = true;
        int m7610h = this.f2181e.m7610h();
        for (int i = 0; i < m7610h; i++) {
            AbstractC0558a0 m7907K = m7907K(this.f2181e.m7611g(i));
            if (m7907K != null && !m7907K.m7834u()) {
                m7907K.m7853b(6);
            }
        }
        m7901Q();
        C0584s c0584s = this.f2175b;
        int size = c0584s.f2288c.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0558a0 abstractC0558a0 = c0584s.f2288c.get(i2);
            if (abstractC0558a0 != null) {
                abstractC0558a0.m7853b(6);
                abstractC0558a0.m7854a(null);
            }
        }
        AbstractC0562e abstractC0562e = RecyclerView.this.f2195l;
        if (abstractC0562e == null || !abstractC0562e.f2245b) {
            c0584s.m7763e();
        }
    }

    /* renamed from: Y */
    public void m7893Y(AbstractC0558a0 abstractC0558a0, AbstractC0567j.C0570c c0570c) {
        abstractC0558a0.m7836s(0, 8192);
        if (this.f2186g0.f2318h && abstractC0558a0.m7839p() && !abstractC0558a0.m7842m() && !abstractC0558a0.m7834u()) {
            this.f2183f.f2415b.m1218g(m7909I(abstractC0558a0), abstractC0558a0);
        }
        this.f2183f.m7586c(abstractC0558a0, c0570c);
    }

    /* renamed from: Z */
    public void m7892Z() {
        AbstractC0567j abstractC0567j = this.f2161K;
        if (abstractC0567j != null) {
            abstractC0567j.mo7578f();
        }
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            abstractC0573m.m7787o0(this.f2175b);
            this.f2197m.m7786p0(this.f2175b);
        }
        this.f2175b.m7766b();
    }

    /* renamed from: a0 */
    public final void m7890a0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f2189i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C0578n) {
            C0578n c0578n = (C0578n) layoutParams;
            if (!c0578n.f2278c) {
                Rect rect = c0578n.f2277b;
                Rect rect2 = this.f2189i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f2189i);
            offsetRectIntoDescendantCoords(view, this.f2189i);
        }
        this.f2197m.m7779t0(this, view, this.f2189i, !this.f2211t, view2 == null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            Objects.requireNonNull(abstractC0573m);
        }
        super.addFocusables(arrayList, i, i2);
    }

    /* renamed from: b0 */
    public final void m7889b0() {
        VelocityTracker velocityTracker = this.f2164N;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        m7871k0(0);
        EdgeEffect edgeEffect = this.f2157G;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f2157G.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2158H;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f2158H.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f2159I;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.f2159I.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f2160J;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.f2160J.isFinished();
        }
        if (z4) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01e2  */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7887c0(int r10, int r11, android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m7887c0(int, int, android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0578n) && this.f2197m.mo7701g((C0578n) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7707e()) {
            i = this.f2197m.mo7691k(this.f2186g0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7707e()) {
            i = this.f2197m.mo7688l(this.f2186g0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7707e()) {
            i = this.f2197m.mo7685m(this.f2186g0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7704f()) {
            i = this.f2197m.mo7682n(this.f2186g0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7704f()) {
            i = this.f2197m.mo7679o(this.f2186g0);
        }
        return i;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC0573m abstractC0573m = this.f2197m;
        int i = 0;
        if (abstractC0573m == null) {
            return 0;
        }
        if (abstractC0573m.mo7704f()) {
            i = this.f2197m.mo7678p(this.f2186g0);
        }
        return i;
    }

    /* renamed from: d0 */
    public void m7885d0(int i, int i2, int[] iArr) {
        AbstractC0558a0 abstractC0558a0;
        m7877h0();
        m7899S();
        int i3 = C3062g.f10396a;
        Trace.beginSection("RV Scroll");
        m7916B(this.f2186g0);
        int mo7674v0 = i != 0 ? this.f2197m.mo7674v0(i, this.f2175b, this.f2186g0) : 0;
        int mo7672x0 = i2 != 0 ? this.f2197m.mo7672x0(i2, this.f2175b, this.f2186g0) : 0;
        Trace.endSection();
        int m7613e = this.f2181e.m7613e();
        for (int i4 = 0; i4 < m7613e; i4++) {
            View m7614d = this.f2181e.m7614d(i4);
            AbstractC0558a0 m7908J = m7908J(m7614d);
            if (m7908J != null && (abstractC0558a0 = m7908J.f2232i) != null) {
                View view = abstractC0558a0.f2224a;
                int left = m7614d.getLeft();
                int top = m7614d.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        m7898T(true);
        m7873j0(false);
        if (iArr != null) {
            iArr[0] = mo7674v0;
            iArr[1] = mo7672x0;
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m2138a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m2137b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m2136c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m2134e(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.f2201o.size();
        for (int i = 0; i < size; i++) {
            this.f2201o.get(i).mo7567e(canvas, this, this.f2186g0);
        }
        EdgeEffect edgeEffect = this.f2157G;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f2185g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f2157G;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f2158H;
        boolean z2 = z;
        if (edgeEffect3 != null) {
            z2 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.f2185g) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.f2158H;
                z2 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.f2159I;
        boolean z3 = z2;
        if (edgeEffect5 != null) {
            z3 = z2;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.f2185g ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(-paddingTop, -width);
                EdgeEffect edgeEffect6 = this.f2159I;
                z3 = z2 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.f2160J;
        boolean z4 = z3;
        if (edgeEffect7 != null) {
            z4 = z3;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.f2185g) {
                    canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.f2160J;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z4 = z3 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (!z4 && this.f2161K != null && this.f2201o.size() > 0 && this.f2161K.mo7577g()) {
            z4 = true;
        }
        if (z4) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: e0 */
    public void m7883e0(int i) {
        if (this.f2217w) {
            return;
        }
        m7869l0();
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m == null) {
            return;
        }
        abstractC0573m.mo7673w0(i);
        awakenScrollBars();
    }

    /* renamed from: f */
    public final void m7882f(AbstractC0558a0 abstractC0558a0) {
        View view = abstractC0558a0.f2224a;
        boolean z = view.getParent() == this;
        this.f2175b.m7757k(m7908J(view));
        if (abstractC0558a0.m7840o()) {
            this.f2181e.m7616b(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.f2181e.m7617a(view, -1, true);
        } else {
            C0611c c0611c = this.f2181e;
            int indexOfChild = ((C0649w) c0611c.f2400a).f2544a.indexOfChild(view);
            if (indexOfChild >= 0) {
                c0611c.f2401b.m7598h(indexOfChild);
                c0611c.m7609i(view);
                return;
            }
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* renamed from: f0 */
    public boolean m7881f0(AbstractC0558a0 abstractC0558a0, int i) {
        if (m7903O()) {
            abstractC0558a0.f2240q = i;
            this.f2214u0.add(abstractC0558a0);
            return false;
        }
        View view = abstractC0558a0.f2224a;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2075s(view, i);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x02cd, code lost:
        if (r12 > 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02f8, code lost:
        if (r11 > 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0300, code lost:
        if (r12 < 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0308, code lost:
        if (r11 < 0) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x031d, code lost:
        if ((r11 * r10) < 0) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0332, code lost:
        if ((r11 * r10) > 0) goto L153;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r7, int r8) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    /* renamed from: g */
    public void m7880g(AbstractC0572l abstractC0572l) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            abstractC0573m.mo7710d("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f2201o.isEmpty()) {
            setWillNotDraw(false);
        }
        this.f2201o.add(abstractC0572l);
        m7901Q();
        requestLayout();
    }

    /* renamed from: g0 */
    public void m7879g0(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null && !this.f2217w) {
            int i4 = i;
            if (!abstractC0573m.mo7707e()) {
                i4 = 0;
            }
            if (!this.f2197m.mo7704f()) {
                i2 = 0;
            }
            if (i4 == 0 && i2 == 0) {
                return;
            }
            if (!(i3 == Integer.MIN_VALUE || i3 > 0)) {
                scrollBy(i4, i2);
                return;
            }
            if (z) {
                int i5 = 0;
                if (i4 != 0) {
                    i5 = 1;
                }
                int i6 = i5;
                if (i2 != 0) {
                    i6 = i5 | 2;
                }
                m7875i0(i6, 1);
            }
            this.f2180d0.m7742c(i4, i2, i3, interpolator);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            return abstractC0573m.mo7677t();
        }
        throw new IllegalStateException(C0608b.m7627h(this, C0082b.m8752j("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            return abstractC0573m.mo7676u(getContext(), attributeSet);
        }
        throw new IllegalStateException(C0608b.m7627h(this, C0082b.m8752j("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            return abstractC0573m.mo7675v(layoutParams);
        }
        throw new IllegalStateException(C0608b.m7627h(this, C0082b.m8752j("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC0562e getAdapter() {
        return this.f2195l;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            Objects.requireNonNull(abstractC0573m);
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        AbstractC0565h abstractC0565h = this.f2202o0;
        return abstractC0565h == null ? super.getChildDrawingOrder(i, i2) : abstractC0565h.m7826a(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f2185g;
    }

    public C0651y getCompatAccessibilityDelegate() {
        return this.f2200n0;
    }

    public C0566i getEdgeEffectFactory() {
        return this.f2156F;
    }

    public AbstractC0567j getItemAnimator() {
        return this.f2161K;
    }

    public int getItemDecorationCount() {
        return this.f2201o.size();
    }

    public AbstractC0573m getLayoutManager() {
        return this.f2197m;
    }

    public int getMaxFlingVelocity() {
        return this.f2172W;
    }

    public int getMinFlingVelocity() {
        return this.f2171V;
    }

    public long getNanoTime() {
        if (f2145A0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC0579o getOnFlingListener() {
        return this.f2170U;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f2178c0;
    }

    public C0582r getRecycledViewPool() {
        return this.f2175b.m7764d();
    }

    public int getScrollState() {
        return this.f2162L;
    }

    /* renamed from: h */
    public void m7878h(AbstractC0581q abstractC0581q) {
        if (this.f2190i0 == null) {
            this.f2190i0 = new ArrayList();
        }
        this.f2190i0.add(abstractC0581q);
    }

    /* renamed from: h0 */
    public void m7877h0() {
        int i = this.f2213u + 1;
        this.f2213u = i;
        if (i != 1 || this.f2217w) {
            return;
        }
        this.f2215v = false;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m2131h(0);
    }

    /* renamed from: i */
    public void m7876i(String str) {
        if (m7903O()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(C0608b.m7627h(this, C0082b.m8752j("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        } else if (this.f2155E <= 0) {
        } else {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(C0608b.m7627h(this, C0082b.m8752j(""))));
        }
    }

    /* renamed from: i0 */
    public boolean m7875i0(int i, int i2) {
        return getScrollingChildHelper().m2130i(i, i2);
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f2207r;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f2217w;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f11772d;
    }

    /* renamed from: j */
    public final void m7874j() {
        m7889b0();
        setScrollState(0);
    }

    /* renamed from: j0 */
    public void m7873j0(boolean z) {
        if (this.f2213u < 1) {
            this.f2213u = 1;
        }
        if (!z && !this.f2217w) {
            this.f2215v = false;
        }
        if (this.f2213u == 1) {
            if (z && this.f2215v && !this.f2217w && this.f2197m != null && this.f2195l != null) {
                m7864q();
            }
            if (!this.f2217w) {
                this.f2215v = false;
            }
        }
        this.f2213u--;
    }

    /* renamed from: k0 */
    public void m7871k0(int i) {
        getScrollingChildHelper().m2129j(i);
    }

    /* renamed from: l */
    public void m7870l() {
        int m7610h = this.f2181e.m7610h();
        for (int i = 0; i < m7610h; i++) {
            AbstractC0558a0 m7907K = m7907K(this.f2181e.m7611g(i));
            if (!m7907K.m7834u()) {
                m7907K.m7852c();
            }
        }
        C0584s c0584s = this.f2175b;
        int size = c0584s.f2288c.size();
        for (int i2 = 0; i2 < size; i2++) {
            c0584s.f2288c.get(i2).m7852c();
        }
        int size2 = c0584s.f2286a.size();
        for (int i3 = 0; i3 < size2; i3++) {
            c0584s.f2286a.get(i3).m7852c();
        }
        ArrayList<AbstractC0558a0> arrayList = c0584s.f2287b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i4 = 0; i4 < size3; i4++) {
                c0584s.f2287b.get(i4).m7852c();
            }
        }
    }

    /* renamed from: l0 */
    public void m7869l0() {
        AbstractC0589w abstractC0589w;
        setScrollState(0);
        this.f2180d0.m7741d();
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m == null || (abstractC0589w = abstractC0573m.f2259e) == null) {
            return;
        }
        abstractC0589w.m7748d();
    }

    /* renamed from: m */
    public void m7868m(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f2157G;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f2157G.onRelease();
            z = this.f2157G.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f2159I;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.f2159I.onRelease();
                    z2 = z | this.f2159I.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.f2158H;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.f2158H.onRelease();
                    z3 = z2 | this.f2158H.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.f2160J;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.f2160J.onRelease();
                    z4 = z3 | this.f2160J.isFinished();
                }
            }
        }
        if (z4) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    /* renamed from: n */
    public void m7867n() {
        boolean z;
        if (!this.f2211t || this.f2152B) {
            int i = C3062g.f10396a;
            Trace.beginSection("RV FullInvalidate");
            m7864q();
            Trace.endSection();
        } else if (!this.f2179d.m7642g()) {
        } else {
            C0604a c0604a = this.f2179d;
            int i2 = c0604a.f2390f;
            if ((i2 & 4) != 0) {
                if (!((i2 & 11) != 0)) {
                    int i3 = C3062g.f10396a;
                    Trace.beginSection("RV PartialInvalidate");
                    m7877h0();
                    m7899S();
                    this.f2179d.m7639j();
                    if (!this.f2215v) {
                        int m7613e = this.f2181e.m7613e();
                        int i4 = 0;
                        while (true) {
                            z = false;
                            if (i4 < m7613e) {
                                AbstractC0558a0 m7907K = m7907K(this.f2181e.m7614d(i4));
                                if (m7907K != null && !m7907K.m7834u() && m7907K.m7839p()) {
                                    z = true;
                                    break;
                                }
                                i4++;
                            } else {
                                break;
                            }
                        }
                        if (z) {
                            m7864q();
                        } else {
                            this.f2179d.m7647b();
                        }
                    }
                    m7873j0(true);
                    m7898T(true);
                    Trace.endSection();
                    return;
                }
            }
            if (!c0604a.m7642g()) {
                return;
            }
            int i5 = C3062g.f10396a;
            Trace.beginSection("RV FullInvalidate");
            m7864q();
            Trace.endSection();
        }
    }

    /* renamed from: o */
    public void m7866o(int i, int i2) {
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        setMeasuredDimension(AbstractC0573m.m7789h(i, paddingRight + paddingLeft, C3589v.C3593d.m2089e(this)), AbstractC0573m.m7789h(i2, getPaddingBottom() + getPaddingTop(), C3589v.C3593d.m2090d(this)));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2154D = 0;
        this.f2207r = true;
        this.f2211t = this.f2211t && !isLayoutRequested();
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            abstractC0573m.f2261g = true;
        }
        this.f2198m0 = false;
        if (f2145A0) {
            ThreadLocal<RunnableC0636n> threadLocal = RunnableC0636n.f2505e;
            RunnableC0636n runnableC0636n = threadLocal.get();
            this.f2182e0 = runnableC0636n;
            if (runnableC0636n == null) {
                this.f2182e0 = new RunnableC0636n();
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                Display m2073b = C3589v.C3594e.m2073b(this);
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (m2073b != null) {
                        float refreshRate = m2073b.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                RunnableC0636n runnableC0636n2 = this.f2182e0;
                runnableC0636n2.f2509c = 1.0E9f / f;
                threadLocal.set(runnableC0636n2);
            }
            this.f2182e0.f2507a.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC0636n runnableC0636n;
        super.onDetachedFromWindow();
        AbstractC0567j abstractC0567j = this.f2161K;
        if (abstractC0567j != null) {
            abstractC0567j.mo7578f();
        }
        m7869l0();
        this.f2207r = false;
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null) {
            C0584s c0584s = this.f2175b;
            abstractC0573m.f2261g = false;
            abstractC0573m.mo7718Z(this, c0584s);
        }
        this.f2214u0.clear();
        removeCallbacks(this.f2216v0);
        Objects.requireNonNull(this.f2183f);
        do {
        } while (C0618d0.C0619a.f2416d.mo2303a() != null);
        if (!f2145A0 || (runnableC0636n = this.f2182e0) == null) {
            return;
        }
        runnableC0636n.f2507a.remove(this);
        this.f2182e0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f2201o.size();
        for (int i = 0; i < size; i++) {
            this.f2201o.get(i).mo4619d(canvas, this, this.f2186g0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.f2197m
            if (r0 != 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r5
            boolean r0 = r0.f2217w
            if (r0 == 0) goto L12
            r0 = 0
            return r0
        L12:
            r0 = r6
            int r0 = r0.getAction()
            r1 = 8
            if (r0 != r1) goto Lac
            r0 = r6
            int r0 = r0.getSource()
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L57
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.f2197m
            boolean r0 = r0.mo7704f()
            if (r0 == 0) goto L39
            r0 = r6
            r1 = 9
            float r0 = r0.getAxisValue(r1)
            float r0 = -r0
            r7 = r0
            goto L3b
        L39:
            r0 = 0
            r7 = r0
        L3b:
            r0 = r7
            r8 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.f2197m
            boolean r0 = r0.mo7707e()
            if (r0 == 0) goto L8a
            r0 = r6
            r1 = 10
            float r0 = r0.getAxisValue(r1)
            r9 = r0
            r0 = r7
            r8 = r0
            r0 = r9
            r7 = r0
            goto L8c
        L57:
            r0 = r6
            int r0 = r0.getSource()
            r1 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r1
            if (r0 == 0) goto L88
            r0 = r6
            r1 = 26
            float r0 = r0.getAxisValue(r1)
            r7 = r0
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.f2197m
            boolean r0 = r0.mo7704f()
            if (r0 == 0) goto L79
            r0 = r7
            float r0 = -r0
            r8 = r0
            goto L8a
        L79:
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$m r0 = r0.f2197m
            boolean r0 = r0.mo7707e()
            if (r0 == 0) goto L88
            r0 = 0
            r8 = r0
            goto L8c
        L88:
            r0 = 0
            r8 = r0
        L8a:
            r0 = 0
            r7 = r0
        L8c:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L98
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Lac
        L98:
            r0 = r5
            r1 = r7
            r2 = r5
            float r2 = r2.f2174a0
            float r1 = r1 * r2
            int r1 = (int) r1
            r2 = r8
            r3 = r5
            float r3 = r3.f2176b0
            float r2 = r2 * r3
            int r2 = (int) r2
            r3 = r6
            boolean r0 = r0.m7887c0(r1, r2, r3)
        Lac:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2 = false;
        if (this.f2217w) {
            return false;
        }
        this.f2205q = null;
        if (m7914D(motionEvent)) {
            m7874j();
            return true;
        }
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m == null) {
            return false;
        }
        boolean mo7707e = abstractC0573m.mo7707e();
        boolean mo7704f = this.f2197m.mo7704f();
        if (this.f2164N == null) {
            this.f2164N = VelocityTracker.obtain();
        }
        this.f2164N.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f2219x) {
                this.f2219x = false;
            }
            this.f2163M = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f2167R = x;
            this.f2165O = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f2168S = y;
            this.f2166P = y;
            if (this.f2162L == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                m7871k0(1);
            }
            int[] iArr = this.f2210s0;
            iArr[1] = 0;
            iArr[0] = 0;
            boolean z3 = mo7707e;
            if (mo7704f) {
                z3 = mo7707e | 2;
            }
            m7875i0(z3, 0);
        } else if (actionMasked == 1) {
            this.f2164N.clear();
            m7871k0(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f2163M);
            if (findPointerIndex < 0) {
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f2162L != 1) {
                int i = this.f2165O;
                int i2 = this.f2166P;
                if (!mo7707e || Math.abs(x2 - i) <= this.f2169T) {
                    z = false;
                } else {
                    this.f2167R = x2;
                    z = true;
                }
                boolean z4 = z;
                if (mo7704f) {
                    z4 = z;
                    if (Math.abs(y2 - i2) > this.f2169T) {
                        this.f2168S = y2;
                        z4 = true;
                    }
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m7874j();
        } else if (actionMasked == 5) {
            this.f2163M = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f2167R = x3;
            this.f2165O = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f2168S = y3;
            this.f2166P = y3;
        } else if (actionMasked == 6) {
            m7897U(motionEvent);
        }
        if (this.f2162L == 1) {
            z2 = true;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = C3062g.f10396a;
        Trace.beginSection("RV OnLayout");
        m7864q();
        Trace.endSection();
        this.f2211t = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m == null) {
            m7866o(i, i2);
        } else if (abstractC0573m.mo7726U()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f2197m.f2256b.m7866o(i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            if (z || this.f2195l == null) {
                return;
            }
            if (this.f2186g0.f2314d == 1) {
                m7863r();
            }
            this.f2197m.m7773z0(i, i2);
            this.f2186g0.f2319i = true;
            m7862s();
            this.f2197m.m7817B0(i, i2);
            if (!this.f2197m.mo7811E0()) {
                return;
            }
            this.f2197m.m7773z0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            this.f2186g0.f2319i = true;
            m7862s();
            this.f2197m.m7817B0(i, i2);
        } else if (this.f2209s) {
            this.f2197m.f2256b.m7866o(i, i2);
        } else {
            if (this.f2221z) {
                m7877h0();
                m7899S();
                m7895W();
                m7898T(true);
                C0592x c0592x = this.f2186g0;
                if (c0592x.f2321k) {
                    c0592x.f2317g = true;
                } else {
                    this.f2179d.m7646c();
                    this.f2186g0.f2317g = false;
                }
                this.f2221z = false;
                m7873j0(false);
            } else if (this.f2186g0.f2321k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC0562e abstractC0562e = this.f2195l;
            if (abstractC0562e != null) {
                this.f2186g0.f2315e = abstractC0562e.mo705a();
            } else {
                this.f2186g0.f2315e = 0;
            }
            m7877h0();
            this.f2197m.f2256b.m7866o(i, i2);
            m7873j0(false);
            this.f2186g0.f2317g = false;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m7903O()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0587v)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0587v c0587v = (C0587v) parcelable;
        this.f2177c = c0587v;
        super.onRestoreInstanceState(c0587v.f13167a);
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m == null || (parcelable2 = this.f2177c.f2295c) == null) {
            return;
        }
        abstractC0573m.mo7687l0(parcelable2);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0587v c0587v = new C0587v(super.onSaveInstanceState());
        C0587v c0587v2 = this.f2177c;
        if (c0587v2 != null) {
            c0587v.f2295c = c0587v2.f2295c;
        } else {
            AbstractC0573m abstractC0573m = this.f2197m;
            if (abstractC0573m != null) {
                c0587v.f2295c = abstractC0573m.mo7684m0();
            } else {
                c0587v.f2295c = null;
            }
        }
        return c0587v;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m7904N();
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x03e1, code lost:
        if (java.lang.Math.abs(r0) < r10.f2171V) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x03f8, code lost:
        if (java.lang.Math.abs(r0) < r10.f2171V) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0780, code lost:
        if (r15 != false) goto L260;
     */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x06a0  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0223  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 2044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public void m7865p(View view) {
        AbstractC0558a0 m7907K = m7907K(view);
        AbstractC0562e abstractC0562e = this.f2195l;
        if (abstractC0562e == null || m7907K == null) {
            return;
        }
        Objects.requireNonNull(abstractC0562e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x05ac, code lost:
        if (r7.f2181e.m7607k(getFocusedChild()) == false) goto L205;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7864q() {
        /*
            Method dump skipped, instructions count: 1867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m7864q():void");
    }

    /* JADX WARN: Type inference failed for: r0v195, types: [long] */
    /* renamed from: r */
    public final void m7863r() {
        View m7915C;
        this.f2186g0.m7745a(1);
        m7916B(this.f2186g0);
        this.f2186g0.f2319i = false;
        m7877h0();
        C0618d0 c0618d0 = this.f2183f;
        c0618d0.f2414a.clear();
        c0618d0.f2415b.m1223b();
        m7899S();
        m7895W();
        View focusedChild = (!this.f2178c0 || !hasFocus() || this.f2195l == null) ? null : getFocusedChild();
        AbstractC0558a0 m7908J = (focusedChild == null || (m7915C = m7915C(focusedChild)) == null) ? null : m7908J(m7915C);
        char c = 65535;
        if (m7908J == null) {
            C0592x c0592x = this.f2186g0;
            c0592x.f2323m = -1L;
            c0592x.f2322l = -1;
            c0592x.f2324n = -1;
        } else {
            C0592x c0592x2 = this.f2186g0;
            if (this.f2195l.f2245b) {
                c = m7908J.f2228e;
            }
            c0592x2.f2323m = c;
            c0592x2.f2322l = this.f2152B ? -1 : m7908J.m7842m() ? m7908J.f2227d : m7908J.m7850e();
            C0592x c0592x3 = this.f2186g0;
            View view = m7908J.f2224a;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                View focusedChild2 = ((ViewGroup) view).getFocusedChild();
                view = focusedChild2;
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                    view = focusedChild2;
                }
            }
            c0592x3.f2324n = id;
        }
        C0592x c0592x4 = this.f2186g0;
        c0592x4.f2318h = c0592x4.f2320j && this.f2194k0;
        this.f2194k0 = false;
        this.f2192j0 = false;
        c0592x4.f2317g = c0592x4.f2321k;
        c0592x4.f2315e = this.f2195l.mo705a();
        m7913E(this.f2204p0);
        if (this.f2186g0.f2320j) {
            int m7613e = this.f2181e.m7613e();
            for (int i = 0; i < m7613e; i++) {
                AbstractC0558a0 m7907K = m7907K(this.f2181e.m7614d(i));
                if (!m7907K.m7834u() && (!m7907K.m7844k() || this.f2195l.f2245b)) {
                    AbstractC0567j abstractC0567j = this.f2161K;
                    AbstractC0567j.m7824b(m7907K);
                    m7907K.m7848g();
                    this.f2183f.m7586c(m7907K, abstractC0567j.m7821h(m7907K));
                    if (this.f2186g0.f2318h && m7907K.m7839p() && !m7907K.m7842m() && !m7907K.m7834u() && !m7907K.m7844k()) {
                        this.f2183f.f2415b.m1218g(m7909I(m7907K), m7907K);
                    }
                }
            }
        }
        if (this.f2186g0.f2321k) {
            int m7610h = this.f2181e.m7610h();
            for (int i2 = 0; i2 < m7610h; i2++) {
                AbstractC0558a0 m7907K2 = m7907K(this.f2181e.m7611g(i2));
                if (!m7907K2.m7834u() && m7907K2.f2227d == -1) {
                    m7907K2.f2227d = m7907K2.f2226c;
                }
            }
            C0592x c0592x5 = this.f2186g0;
            boolean z = c0592x5.f2316f;
            c0592x5.f2316f = false;
            this.f2197m.mo7693j0(this.f2175b, c0592x5);
            this.f2186g0.f2316f = z;
            for (int i3 = 0; i3 < this.f2181e.m7613e(); i3++) {
                AbstractC0558a0 m7907K3 = m7907K(this.f2181e.m7614d(i3));
                if (!m7907K3.m7834u()) {
                    C0618d0.C0619a orDefault = this.f2183f.f2414a.getOrDefault(m7907K3, null);
                    if (!((orDefault == null || (orDefault.f2417a & 4) == 0) ? false : true)) {
                        AbstractC0567j.m7824b(m7907K3);
                        boolean m7847h = m7907K3.m7847h(8192);
                        AbstractC0567j abstractC0567j2 = this.f2161K;
                        m7907K3.m7848g();
                        AbstractC0567j.C0570c m7821h = abstractC0567j2.m7821h(m7907K3);
                        if (m7847h) {
                            m7893Y(m7907K3, m7821h);
                        } else {
                            C0618d0 c0618d02 = this.f2183f;
                            C0618d0.C0619a orDefault2 = c0618d02.f2414a.getOrDefault(m7907K3, null);
                            C0618d0.C0619a c0619a = orDefault2;
                            if (orDefault2 == null) {
                                c0619a = C0618d0.C0619a.m7581a();
                                c0618d02.f2414a.put(m7907K3, c0619a);
                            }
                            c0619a.f2417a |= 2;
                            c0619a.f2418b = m7821h;
                        }
                    }
                }
            }
            m7870l();
        } else {
            m7870l();
        }
        m7898T(true);
        m7873j0(false);
        this.f2186g0.f2314d = 2;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        AbstractC0558a0 m7907K = m7907K(view);
        if (m7907K != null) {
            if (m7907K.m7840o()) {
                m7907K.f2233j &= -257;
            } else if (!m7907K.m7834u()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(m7907K);
                throw new IllegalArgumentException(C0608b.m7627h(this, sb));
            }
        }
        view.clearAnimation();
        m7865p(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        AbstractC0589w abstractC0589w = this.f2197m.f2259e;
        boolean z = true;
        if (!(abstractC0589w != null && abstractC0589w.f2300e)) {
            z = m7903O();
        }
        if (!z && view2 != null) {
            m7890a0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f2197m.m7779t0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f2203p.size();
        for (int i = 0; i < size; i++) {
            this.f2203p.get(i).mo7568c(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f2213u != 0 || this.f2217w) {
            this.f2215v = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    public final void m7862s() {
        m7877h0();
        m7899S();
        this.f2186g0.m7745a(6);
        this.f2179d.m7646c();
        this.f2186g0.f2315e = this.f2195l.mo705a();
        C0592x c0592x = this.f2186g0;
        c0592x.f2313c = 0;
        c0592x.f2317g = false;
        this.f2197m.mo7693j0(this.f2175b, c0592x);
        C0592x c0592x2 = this.f2186g0;
        c0592x2.f2316f = false;
        this.f2177c = null;
        c0592x2.f2320j = c0592x2.f2320j && this.f2161K != null;
        c0592x2.f2314d = 4;
        m7898T(true);
        m7873j0(false);
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC0573m abstractC0573m = this.f2197m;
        if (abstractC0573m != null && !this.f2217w) {
            boolean mo7707e = abstractC0573m.mo7707e();
            boolean mo7704f = this.f2197m.mo7704f();
            if (!mo7707e && !mo7704f) {
                return;
            }
            if (!mo7707e) {
                i = 0;
            }
            if (!mo7704f) {
                i2 = 0;
            }
            m7887c0(i, i2, null);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        boolean z = false;
        if (m7903O()) {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            if (contentChangeTypes == 0) {
                contentChangeTypes = 0;
            }
            this.f2220y |= contentChangeTypes;
            z = true;
        }
        if (z) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C0651y c0651y) {
        this.f2200n0 = c0651y;
        C3589v.m2103u(this, c0651y);
    }

    public void setAdapter(AbstractC0562e abstractC0562e) {
        setLayoutFrozen(false);
        AbstractC0562e abstractC0562e2 = this.f2195l;
        if (abstractC0562e2 != null) {
            abstractC0562e2.f2244a.unregisterObserver(this.f2173a);
            Objects.requireNonNull(this.f2195l);
        }
        m7892Z();
        C0604a c0604a = this.f2179d;
        c0604a.m7637l(c0604a.f2386b);
        c0604a.m7637l(c0604a.f2387c);
        c0604a.f2390f = 0;
        AbstractC0562e abstractC0562e3 = this.f2195l;
        this.f2195l = abstractC0562e;
        if (abstractC0562e != null) {
            abstractC0562e.f2244a.registerObserver(this.f2173a);
        }
        C0584s c0584s = this.f2175b;
        AbstractC0562e abstractC0562e4 = this.f2195l;
        c0584s.m7766b();
        C0582r m7764d = c0584s.m7764d();
        Objects.requireNonNull(m7764d);
        if (abstractC0562e3 != null) {
            m7764d.f2281b--;
        }
        if (m7764d.f2281b == 0) {
            for (int i = 0; i < m7764d.f2280a.size(); i++) {
                m7764d.f2280a.valueAt(i).f2282a.clear();
            }
        }
        if (abstractC0562e4 != null) {
            m7764d.f2281b++;
        }
        this.f2186g0.f2316f = true;
        m7894X(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC0565h abstractC0565h) {
        if (abstractC0565h == this.f2202o0) {
            return;
        }
        this.f2202o0 = abstractC0565h;
        setChildrenDrawingOrderEnabled(abstractC0565h != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f2185g) {
            m7904N();
        }
        this.f2185g = z;
        super.setClipToPadding(z);
        if (this.f2211t) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C0566i c0566i) {
        Objects.requireNonNull(c0566i);
        this.f2156F = c0566i;
        m7904N();
    }

    public void setHasFixedSize(boolean z) {
        this.f2209s = z;
    }

    public void setItemAnimator(AbstractC0567j abstractC0567j) {
        AbstractC0567j abstractC0567j2 = this.f2161K;
        if (abstractC0567j2 != null) {
            abstractC0567j2.mo7578f();
            this.f2161K.f2246a = null;
        }
        this.f2161K = abstractC0567j;
        if (abstractC0567j != null) {
            abstractC0567j.f2246a = this.f2196l0;
        }
    }

    public void setItemViewCacheSize(int i) {
        C0584s c0584s = this.f2175b;
        c0584s.f2290e = i;
        c0584s.m7756l();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC0573m abstractC0573m) {
        if (abstractC0573m == this.f2197m) {
            return;
        }
        m7869l0();
        if (this.f2197m != null) {
            AbstractC0567j abstractC0567j = this.f2161K;
            if (abstractC0567j != null) {
                abstractC0567j.mo7578f();
            }
            this.f2197m.m7787o0(this.f2175b);
            this.f2197m.m7786p0(this.f2175b);
            this.f2175b.m7766b();
            if (this.f2207r) {
                AbstractC0573m abstractC0573m2 = this.f2197m;
                C0584s c0584s = this.f2175b;
                abstractC0573m2.f2261g = false;
                abstractC0573m2.mo7718Z(this, c0584s);
            }
            this.f2197m.m7815C0(null);
            this.f2197m = null;
        } else {
            this.f2175b.m7766b();
        }
        C0611c c0611c = this.f2181e;
        C0611c.C0612a c0612a = c0611c.f2401b;
        c0612a.f2403a = 0L;
        C0611c.C0612a c0612a2 = c0612a.f2404b;
        if (c0612a2 != null) {
            c0612a2.m7599g();
        }
        int size = c0611c.f2402c.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0611c.AbstractC0613b abstractC0613b = c0611c.f2400a;
            View view = c0611c.f2402c.get(size);
            C0649w c0649w = (C0649w) abstractC0613b;
            Objects.requireNonNull(c0649w);
            AbstractC0558a0 m7907K = m7907K(view);
            if (m7907K != null) {
                c0649w.f2544a.m7881f0(m7907K, m7907K.f2239p);
                m7907K.f2239p = 0;
            }
            c0611c.f2402c.remove(size);
        }
        C0649w c0649w2 = (C0649w) c0611c.f2400a;
        int m7529b = c0649w2.m7529b();
        for (int i = 0; i < m7529b; i++) {
            View m7530a = c0649w2.m7530a(i);
            c0649w2.f2544a.m7865p(m7530a);
            m7530a.clearAnimation();
        }
        c0649w2.f2544a.removeAllViews();
        this.f2197m = abstractC0573m;
        if (abstractC0573m != null) {
            if (abstractC0573m.f2256b != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("LayoutManager ");
                sb.append(abstractC0573m);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(C0608b.m7627h(abstractC0573m.f2256b, sb));
            }
            abstractC0573m.m7815C0(this);
            if (this.f2207r) {
                this.f2197m.f2261g = true;
            }
        }
        this.f2175b.m7756l();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C3576i scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f11772d) {
            View view = scrollingChildHelper.f11771c;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3598i.m2025z(view);
        }
        scrollingChildHelper.f11772d = z;
    }

    public void setOnFlingListener(AbstractC0579o abstractC0579o) {
        this.f2170U = abstractC0579o;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC0581q abstractC0581q) {
        this.f2188h0 = abstractC0581q;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f2178c0 = z;
    }

    public void setRecycledViewPool(C0582r c0582r) {
        C0584s c0584s = this.f2175b;
        C0582r c0582r2 = c0584s.f2292g;
        if (c0582r2 != null) {
            c0582r2.f2281b--;
        }
        c0584s.f2292g = c0582r;
        if (c0582r == null || RecyclerView.this.getAdapter() == null) {
            return;
        }
        c0584s.f2292g.f2281b++;
    }

    public void setRecyclerListener(AbstractC0585t abstractC0585t) {
        this.f2199n = abstractC0585t;
    }

    public void setScrollState(int i) {
        AbstractC0589w abstractC0589w;
        if (i == this.f2162L) {
            return;
        }
        this.f2162L = i;
        if (i != 2) {
            this.f2180d0.m7741d();
            AbstractC0573m abstractC0573m = this.f2197m;
            if (abstractC0573m != null && (abstractC0589w = abstractC0573m.f2259e) != null) {
                abstractC0589w.m7748d();
            }
        }
        AbstractC0573m abstractC0573m2 = this.f2197m;
        if (abstractC0573m2 != null) {
            abstractC0573m2.mo7681n0(i);
        }
        AbstractC0581q abstractC0581q = this.f2188h0;
        if (abstractC0581q != null) {
            abstractC0581q.mo4618a(this, i);
        }
        List<AbstractC0581q> list = this.f2190i0;
        if (list == null) {
            return;
        }
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            this.f2190i0.get(size).mo4618a(this, i);
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f2169T = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.f2169T = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC0593y abstractC0593y) {
        Objects.requireNonNull(this.f2175b);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m2130i(i, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().m2129j(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f2217w) {
            m7876i("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f2217w = true;
                this.f2219x = true;
                m7869l0();
                return;
            }
            this.f2217w = false;
            if (this.f2215v && this.f2197m != null && this.f2195l != null) {
                requestLayout();
            }
            this.f2215v = false;
        }
    }

    /* renamed from: t */
    public boolean m7861t(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m2136c(i, i2, iArr, null, i3);
    }

    /* renamed from: u */
    public final void m7860u(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m2133f(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: v */
    public void m7859v(int i, int i2) {
        this.f2155E++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        AbstractC0581q abstractC0581q = this.f2188h0;
        if (abstractC0581q != null) {
            abstractC0581q.mo4617b(this, i, i2);
        }
        List<AbstractC0581q> list = this.f2190i0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f2190i0.get(size).mo4617b(this, i, i2);
            }
        }
        this.f2155E--;
    }

    /* renamed from: w */
    public void m7858w() {
        if (this.f2160J != null) {
            return;
        }
        EdgeEffect m7825a = this.f2156F.m7825a(this);
        this.f2160J = m7825a;
        if (this.f2185g) {
            m7825a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m7825a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: x */
    public void m7857x() {
        if (this.f2157G != null) {
            return;
        }
        EdgeEffect m7825a = this.f2156F.m7825a(this);
        this.f2157G = m7825a;
        if (this.f2185g) {
            m7825a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m7825a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: y */
    public void m7856y() {
        if (this.f2159I != null) {
            return;
        }
        EdgeEffect m7825a = this.f2156F.m7825a(this);
        this.f2159I = m7825a;
        if (this.f2185g) {
            m7825a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m7825a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: z */
    public void m7855z() {
        if (this.f2158H != null) {
            return;
        }
        EdgeEffect m7825a = this.f2156F.m7825a(this);
        this.f2158H = m7825a;
        if (this.f2185g) {
            m7825a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m7825a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }
}
