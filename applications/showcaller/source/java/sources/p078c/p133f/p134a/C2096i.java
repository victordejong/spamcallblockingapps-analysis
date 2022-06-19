package p078c.p133f.p134a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p078c.p133f.p134a.AbstractC2084a;
/* renamed from: c.f.a.i */
/* loaded from: classes2-dex2jar.jar:c/f/a/i.class */
public class C2096i extends AbstractC2084a {

    /* renamed from: e */
    private static ThreadLocal<HandlerC2102f> f7243e = new ThreadLocal<>();

    /* renamed from: f */
    private static final ThreadLocal<ArrayList<C2096i>> f7244f = new C2097a();

    /* renamed from: g */
    private static final ThreadLocal<ArrayList<C2096i>> f7245g = new C2098b();

    /* renamed from: h */
    private static final ThreadLocal<ArrayList<C2096i>> f7246h = new C2099c();

    /* renamed from: i */
    private static final ThreadLocal<ArrayList<C2096i>> f7247i = new C2100d();

    /* renamed from: j */
    private static final ThreadLocal<ArrayList<C2096i>> f7248j = new C2101e();

    /* renamed from: k */
    private static final Interpolator f7249k = new AccelerateDecelerateInterpolator();

    /* renamed from: l */
    private static final AbstractC2095h f7250l = new C2088d();

    /* renamed from: m */
    private static final AbstractC2095h f7251m = new C2086b();

    /* renamed from: n */
    private static long f7252n = 10;

    /* renamed from: F */
    C2092g[] f7258F;

    /* renamed from: G */
    HashMap<String, C2092g> f7259G;

    /* renamed from: o */
    long f7260o;

    /* renamed from: u */
    private long f7266u;

    /* renamed from: p */
    long f7261p = -1;

    /* renamed from: q */
    private boolean f7262q = false;

    /* renamed from: r */
    private int f7263r = 0;

    /* renamed from: s */
    private float f7264s = 0.0f;

    /* renamed from: t */
    private boolean f7265t = false;

    /* renamed from: v */
    int f7267v = 0;

    /* renamed from: w */
    private boolean f7268w = false;

    /* renamed from: x */
    private boolean f7269x = false;

    /* renamed from: y */
    boolean f7270y = false;

    /* renamed from: z */
    private long f7271z = 300;

    /* renamed from: A */
    private long f7253A = 0;

    /* renamed from: B */
    private int f7254B = 0;

    /* renamed from: C */
    private int f7255C = 1;

    /* renamed from: D */
    private Interpolator f7256D = f7249k;

    /* renamed from: E */
    private ArrayList<AbstractC2103g> f7257E = null;

    /* renamed from: c.f.a.i$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$a.class */
    public static final class C2097a extends ThreadLocal<ArrayList<C2096i>> {
        C2097a() {
        }

        /* renamed from: a */
        public ArrayList<C2096i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: c.f.a.i$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$b.class */
    static final class C2098b extends ThreadLocal<ArrayList<C2096i>> {
        C2098b() {
        }

        /* renamed from: a */
        public ArrayList<C2096i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: c.f.a.i$c */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$c.class */
    static final class C2099c extends ThreadLocal<ArrayList<C2096i>> {
        C2099c() {
        }

        /* renamed from: a */
        public ArrayList<C2096i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: c.f.a.i$d */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$d.class */
    static final class C2100d extends ThreadLocal<ArrayList<C2096i>> {
        C2100d() {
        }

        /* renamed from: a */
        public ArrayList<C2096i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: c.f.a.i$e */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$e.class */
    static final class C2101e extends ThreadLocal<ArrayList<C2096i>> {
        C2101e() {
        }

        /* renamed from: a */
        public ArrayList<C2096i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: c.f.a.i$f */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$f.class */
    public static class HandlerC2102f extends Handler {
        private HandlerC2102f() {
        }

        /* synthetic */ HandlerC2102f(C2097a c2097a) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            ArrayList arrayList = (ArrayList) C2096i.f7244f.get();
            ArrayList arrayList2 = (ArrayList) C2096i.f7246h.get();
            int i = message.what;
            if (i == 0) {
                ArrayList arrayList3 = (ArrayList) C2096i.f7245g.get();
                boolean z2 = arrayList.size() <= 0 && arrayList2.size() <= 0;
                while (true) {
                    z = z2;
                    if (arrayList3.size() <= 0) {
                        break;
                    }
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        C2096i c2096i = (C2096i) arrayList4.get(i2);
                        if (c2096i.f7253A == 0) {
                            c2096i.m28037K();
                        } else {
                            arrayList2.add(c2096i);
                        }
                    }
                }
            } else if (i != 1) {
                return;
            } else {
                z = true;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) C2096i.f7248j.get();
            ArrayList arrayList6 = (ArrayList) C2096i.f7247i.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                C2096i c2096i2 = (C2096i) arrayList2.get(i3);
                if (c2096i2.m28017x(currentAnimationTimeMillis)) {
                    arrayList5.add(c2096i2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    C2096i c2096i3 = (C2096i) arrayList5.get(i4);
                    c2096i3.m28037K();
                    c2096i3.f7268w = true;
                    arrayList2.remove(c2096i3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                C2096i c2096i4 = (C2096i) arrayList.get(i5);
                if (c2096i4.m28019v(currentAnimationTimeMillis)) {
                    arrayList6.add(c2096i4);
                }
                if (arrayList.size() == size4) {
                    i5++;
                } else {
                    size4--;
                    arrayList6.remove(c2096i4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i6 = 0; i6 < arrayList6.size(); i6++) {
                    ((C2096i) arrayList6.get(i6)).m28016y();
                }
                arrayList6.clear();
            }
            if (z) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, C2096i.f7252n - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }
    }

    /* renamed from: c.f.a.i$g */
    /* loaded from: classes2-dex2jar.jar:c/f/a/i$g.class */
    public interface AbstractC2103g {
        /* renamed from: a */
        void mo26208a(C2096i c2096i);
    }

    /* renamed from: D */
    public static C2096i m28044D(float... fArr) {
        C2096i c2096i = new C2096i();
        c2096i.m28041G(fArr);
        return c2096i;
    }

    /* renamed from: J */
    private void m28038J(boolean z) {
        if (Looper.myLooper() != null) {
            this.f7262q = z;
            this.f7263r = 0;
            this.f7267v = 0;
            this.f7269x = true;
            this.f7265t = false;
            f7245g.get().add(this);
            if (this.f7253A == 0) {
                m28043E(m28046B());
                this.f7267v = 0;
                this.f7268w = true;
                ArrayList<AbstractC2084a.AbstractC2085a> arrayList = this.f7209d;
                if (arrayList != null) {
                    ArrayList arrayList2 = (ArrayList) arrayList.clone();
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC2084a.AbstractC2085a) arrayList2.get(i)).m28074c(this);
                    }
                }
            }
            HandlerC2102f handlerC2102f = f7243e.get();
            HandlerC2102f handlerC2102f2 = handlerC2102f;
            if (handlerC2102f == null) {
                handlerC2102f2 = new HandlerC2102f(null);
                f7243e.set(handlerC2102f2);
            }
            handlerC2102f2.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    /* renamed from: K */
    public void m28037K() {
        ArrayList<AbstractC2084a.AbstractC2085a> arrayList;
        m28045C();
        f7244f.get().add(this);
        if (this.f7253A <= 0 || (arrayList = this.f7209d) == null) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC2084a.AbstractC2085a) arrayList2.get(i)).m28074c(this);
        }
    }

    /* renamed from: x */
    public boolean m28017x(long j) {
        if (!this.f7265t) {
            this.f7265t = true;
            this.f7266u = j;
            return false;
        }
        long j2 = j - this.f7266u;
        long j3 = this.f7253A;
        if (j2 <= j3) {
            return false;
        }
        this.f7260o = j - (j2 - j3);
        this.f7267v = 1;
        return true;
    }

    /* renamed from: y */
    public void m28016y() {
        ArrayList<AbstractC2084a.AbstractC2085a> arrayList;
        f7244f.get().remove(this);
        f7245g.get().remove(this);
        f7246h.get().remove(this);
        this.f7267v = 0;
        if (this.f7268w && (arrayList = this.f7209d) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC2084a.AbstractC2085a) arrayList2.get(i)).m28073d(this);
            }
        }
        this.f7268w = false;
        this.f7269x = false;
    }

    /* renamed from: A */
    public Object m28047A() {
        C2092g[] c2092gArr = this.f7258F;
        if (c2092gArr == null || c2092gArr.length <= 0) {
            return null;
        }
        return c2092gArr[0].mo28050c();
    }

    /* renamed from: B */
    public long m28046B() {
        if (!this.f7270y || this.f7267v == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f7260o;
    }

    /* renamed from: C */
    void m28045C() {
        if (!this.f7270y) {
            int length = this.f7258F.length;
            for (int i = 0; i < length; i++) {
                this.f7258F[i].m28054g();
            }
            this.f7270y = true;
        }
    }

    /* renamed from: E */
    public void m28043E(long j) {
        m28045C();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f7267v != 1) {
            this.f7261p = j;
            this.f7267v = 2;
        }
        this.f7260o = currentAnimationTimeMillis - j;
        m28019v(currentAnimationTimeMillis);
    }

    /* renamed from: F */
    public C2096i m28042F(long j) {
        if (j >= 0) {
            this.f7271z = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    /* renamed from: G */
    public void m28041G(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        C2092g[] c2092gArr = this.f7258F;
        if (c2092gArr == null || c2092gArr.length == 0) {
            m28039I(C2092g.m28053h("", fArr));
        } else {
            c2092gArr[0].mo28049i(fArr);
        }
        this.f7270y = false;
    }

    /* renamed from: H */
    public void m28040H(int i) {
        this.f7254B = i;
    }

    /* renamed from: I */
    public void m28039I(C2092g... c2092gArr) {
        int length = c2092gArr.length;
        this.f7258F = c2092gArr;
        this.f7259G = new HashMap<>(length);
        for (C2092g c2092g : c2092gArr) {
            this.f7259G.put(c2092g.m28055d(), c2092g);
        }
        this.f7270y = false;
    }

    @Override // p078c.p133f.p134a.AbstractC2084a
    /* renamed from: b */
    public void mo28035b() {
        if (!f7244f.get().contains(this) && !f7245g.get().contains(this)) {
            this.f7265t = false;
            m28037K();
        } else if (!this.f7270y) {
            m28045C();
        }
        int i = this.f7254B;
        if (i <= 0 || (i & 1) != 1) {
            m28020t(1.0f);
        } else {
            m28020t(0.0f);
        }
        m28016y();
    }

    @Override // p078c.p133f.p134a.AbstractC2084a
    /* renamed from: c */
    public boolean mo28034c() {
        boolean z = true;
        if (this.f7267v != 1) {
            z = this.f7268w;
        }
        return z;
    }

    @Override // p078c.p133f.p134a.AbstractC2084a
    public void cancel() {
        ArrayList<AbstractC2084a.AbstractC2085a> arrayList;
        if (this.f7267v != 0 || f7245g.get().contains(this) || f7246h.get().contains(this)) {
            if (this.f7268w && (arrayList = this.f7209d) != null) {
                Iterator it = ((ArrayList) arrayList.clone()).iterator();
                while (it.hasNext()) {
                    ((AbstractC2084a.AbstractC2085a) it.next()).m28076a(this);
                }
            }
            m28016y();
        }
    }

    @Override // p078c.p133f.p134a.AbstractC2084a
    /* renamed from: d */
    public void mo28033d() {
        m28038J(false);
    }

    /* renamed from: s */
    public void m28021s(AbstractC2103g abstractC2103g) {
        if (this.f7257E == null) {
            this.f7257E = new ArrayList<>();
        }
        this.f7257E.add(abstractC2103g);
    }

    /* renamed from: t */
    void m28020t(float f) {
        float interpolation = this.f7256D.getInterpolation(f);
        this.f7264s = interpolation;
        int length = this.f7258F.length;
        for (int i = 0; i < length; i++) {
            this.f7258F[i].mo28052a(interpolation);
        }
        ArrayList<AbstractC2103g> arrayList = this.f7257E;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7257E.get(i2).mo26208a(this);
            }
        }
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        String str2 = str;
        if (this.f7258F != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= this.f7258F.length) {
                    break;
                }
                str = str + "\n    " + this.f7258F[i].toString();
                i++;
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0111  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean m28019v(long r7) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p078c.p133f.p134a.C2096i.m28019v(long):boolean");
    }

    /* renamed from: w */
    public C2096i clone() {
        C2096i c2096i = (C2096i) super.clone();
        ArrayList<AbstractC2103g> arrayList = this.f7257E;
        if (arrayList != null) {
            c2096i.f7257E = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                c2096i.f7257E.add(arrayList.get(i));
            }
        }
        c2096i.f7261p = -1L;
        c2096i.f7262q = false;
        c2096i.f7263r = 0;
        c2096i.f7270y = false;
        c2096i.f7267v = 0;
        c2096i.f7265t = false;
        C2092g[] c2092gArr = this.f7258F;
        if (c2092gArr != null) {
            int length = c2092gArr.length;
            c2096i.f7258F = new C2092g[length];
            c2096i.f7259G = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                C2092g clone = c2092gArr[i2].clone();
                c2096i.f7258F[i2] = clone;
                c2096i.f7259G.put(clone.m28055d(), clone);
            }
        }
        return c2096i;
    }
}
