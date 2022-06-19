package com.nineoldandroids.p064a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.flexbox.FlexItem;
import com.nineoldandroids.p064a.AbstractC1403a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: com.nineoldandroids.a.l */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/l.class */
public class C1432l extends AbstractC1403a {

    /* renamed from: h */
    private static ThreadLocal<HandlerC1438a> f3944h = new ThreadLocal<>();

    /* renamed from: i */
    private static final ThreadLocal<ArrayList<C1432l>> f3945i = new ThreadLocal<ArrayList<C1432l>>() { // from class: com.nineoldandroids.a.l.1
        /* renamed from: a */
        public ArrayList<C1432l> initialValue() {
            return new ArrayList<>();
        }
    };

    /* renamed from: j */
    private static final ThreadLocal<ArrayList<C1432l>> f3946j = new ThreadLocal<ArrayList<C1432l>>() { // from class: com.nineoldandroids.a.l.2
        /* renamed from: a */
        public ArrayList<C1432l> initialValue() {
            return new ArrayList<>();
        }
    };

    /* renamed from: k */
    private static final ThreadLocal<ArrayList<C1432l>> f3947k = new ThreadLocal<ArrayList<C1432l>>() { // from class: com.nineoldandroids.a.l.3
        /* renamed from: a */
        public ArrayList<C1432l> initialValue() {
            return new ArrayList<>();
        }
    };

    /* renamed from: l */
    private static final ThreadLocal<ArrayList<C1432l>> f3948l = new ThreadLocal<ArrayList<C1432l>>() { // from class: com.nineoldandroids.a.l.4
        /* renamed from: a */
        public ArrayList<C1432l> initialValue() {
            return new ArrayList<>();
        }
    };

    /* renamed from: m */
    private static final ThreadLocal<ArrayList<C1432l>> f3949m = new ThreadLocal<ArrayList<C1432l>>() { // from class: com.nineoldandroids.a.l.5
        /* renamed from: a */
        public ArrayList<C1432l> initialValue() {
            return new ArrayList<>();
        }
    };

    /* renamed from: n */
    private static final Interpolator f3950n = new AccelerateDecelerateInterpolator();

    /* renamed from: o */
    private static final AbstractC1431k f3951o = new C1408e();

    /* renamed from: p */
    private static final AbstractC1431k f3952p = new C1406c();

    /* renamed from: z */
    private static long f3953z = 10;

    /* renamed from: b */
    long f3958b;

    /* renamed from: f */
    C1428j[] f3962f;

    /* renamed from: g */
    HashMap<String, C1428j> f3963g;

    /* renamed from: u */
    private long f3968u;

    /* renamed from: c */
    long f3959c = -1;

    /* renamed from: q */
    private boolean f3964q = false;

    /* renamed from: r */
    private int f3965r = 0;

    /* renamed from: s */
    private float f3966s = FlexItem.FLEX_GROW_DEFAULT;

    /* renamed from: t */
    private boolean f3967t = false;

    /* renamed from: d */
    int f3960d = 0;

    /* renamed from: v */
    private boolean f3969v = false;

    /* renamed from: w */
    private boolean f3970w = false;

    /* renamed from: e */
    boolean f3961e = false;

    /* renamed from: x */
    private long f3971x = 300;

    /* renamed from: y */
    private long f3972y = 0;

    /* renamed from: A */
    private int f3954A = 0;

    /* renamed from: B */
    private int f3955B = 1;

    /* renamed from: C */
    private Interpolator f3956C = f3950n;

    /* renamed from: D */
    private ArrayList<AbstractC1439b> f3957D = null;

    /* renamed from: com.nineoldandroids.a.l$a */
    /* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/l$a.class */
    public static class HandlerC1438a extends Handler {
        private HandlerC1438a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            ArrayList arrayList = (ArrayList) C1432l.f3945i.get();
            ArrayList arrayList2 = (ArrayList) C1432l.f3947k.get();
            int i = message.what;
            if (i == 0) {
                ArrayList arrayList3 = (ArrayList) C1432l.f3946j.get();
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
                        C1432l c1432l = (C1432l) arrayList4.get(i2);
                        if (c1432l.f3972y == 0) {
                            c1432l.m3645o();
                        } else {
                            arrayList2.add(c1432l);
                        }
                    }
                }
            } else if (i != 1) {
                return;
            } else {
                z = true;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) C1432l.f3949m.get();
            ArrayList arrayList6 = (ArrayList) C1432l.f3948l.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                C1432l c1432l2 = (C1432l) arrayList2.get(i3);
                if (c1432l2.m3670a(currentAnimationTimeMillis)) {
                    arrayList5.add(c1432l2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    C1432l c1432l3 = (C1432l) arrayList5.get(i4);
                    c1432l3.m3645o();
                    c1432l3.f3969v = true;
                    arrayList2.remove(c1432l3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                C1432l c1432l4 = (C1432l) arrayList.get(i5);
                if (c1432l4.m3656d(currentAnimationTimeMillis)) {
                    arrayList6.add(c1432l4);
                }
                if (arrayList.size() == size4) {
                    i5++;
                } else {
                    size4--;
                    arrayList6.remove(c1432l4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i6 = 0; i6 < arrayList6.size(); i6++) {
                    ((C1432l) arrayList6.get(i6)).m3655e();
                }
                arrayList6.clear();
            }
            if (z) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, C1432l.f3953z - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }
    }

    /* renamed from: com.nineoldandroids.a.l$b */
    /* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/l$b.class */
    public interface AbstractC1439b {
        /* renamed from: a */
        void m3639a(C1432l c1432l);
    }

    /* renamed from: a */
    private void m3666a(boolean z) {
        if (Looper.myLooper() != null) {
            this.f3964q = z;
            this.f3965r = 0;
            this.f3960d = 0;
            this.f3970w = true;
            this.f3967t = false;
            f3946j.get().add(this);
            if (this.f3972y == 0) {
                m3659c(m3653g());
                this.f3960d = 0;
                this.f3969v = true;
                if (this.f3890a != null) {
                    ArrayList arrayList = (ArrayList) this.f3890a.clone();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1403a.AbstractC1404a) arrayList.get(i)).m3745a(this);
                    }
                }
            }
            HandlerC1438a handlerC1438a = f3944h.get();
            HandlerC1438a handlerC1438a2 = handlerC1438a;
            if (handlerC1438a == null) {
                handlerC1438a2 = new HandlerC1438a();
                f3944h.set(handlerC1438a2);
            }
            handlerC1438a2.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    /* renamed from: a */
    public boolean m3670a(long j) {
        if (!this.f3967t) {
            this.f3967t = true;
            this.f3968u = j;
            return false;
        }
        long j2 = j - this.f3968u;
        long j3 = this.f3972y;
        if (j2 <= j3) {
            return false;
        }
        this.f3958b = j - (j2 - j3);
        this.f3960d = 1;
        return true;
    }

    /* renamed from: e */
    public void m3655e() {
        f3945i.get().remove(this);
        f3946j.get().remove(this);
        f3947k.get().remove(this);
        this.f3960d = 0;
        if (this.f3969v && this.f3890a != null) {
            ArrayList arrayList = (ArrayList) this.f3890a.clone();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC1403a.AbstractC1404a) arrayList.get(i)).m3744b(this);
            }
        }
        this.f3969v = false;
        this.f3970w = false;
    }

    /* renamed from: o */
    public void m3645o() {
        mo3657d();
        f3945i.get().add(this);
        if (this.f3972y <= 0 || this.f3890a == null) {
            return;
        }
        ArrayList arrayList = (ArrayList) this.f3890a.clone();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC1403a.AbstractC1404a) arrayList.get(i)).m3745a(this);
        }
    }

    @Override // com.nineoldandroids.p064a.AbstractC1403a
    /* renamed from: a */
    public void mo3672a() {
        m3666a(false);
    }

    /* renamed from: a */
    public void mo3671a(float f) {
        float interpolation = this.f3956C.getInterpolation(f);
        this.f3966s = interpolation;
        int length = this.f3962f.length;
        for (int i = 0; i < length; i++) {
            this.f3962f[i].mo3679a(interpolation);
        }
        ArrayList<AbstractC1439b> arrayList = this.f3957D;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f3957D.get(i2).m3639a(this);
            }
        }
    }

    /* renamed from: a */
    public void mo3665a(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        C1428j[] c1428jArr = this.f3962f;
        if (c1428jArr == null || c1428jArr.length == 0) {
            m3664a(C1428j.m3684a("", fArr));
        } else {
            c1428jArr[0].mo3677a(fArr);
        }
        this.f3961e = false;
    }

    /* renamed from: a */
    public void m3664a(C1428j... c1428jArr) {
        int length = c1428jArr.length;
        this.f3962f = c1428jArr;
        this.f3963g = new HashMap<>(length);
        for (C1428j c1428j : c1428jArr) {
            this.f3963g.put(c1428j.m3681c(), c1428j);
        }
        this.f3961e = false;
    }

    /* renamed from: b */
    public C1432l mo3662b(long j) {
        if (j >= 0) {
            this.f3971x = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    @Override // com.nineoldandroids.p064a.AbstractC1403a
    /* renamed from: b */
    public void mo3663b() {
        if (this.f3960d != 0 || f3946j.get().contains(this) || f3947k.get().contains(this)) {
            if (this.f3969v && this.f3890a != null) {
                Iterator it = ((ArrayList) this.f3890a.clone()).iterator();
                while (it.hasNext()) {
                    ((AbstractC1403a.AbstractC1404a) it.next()).m3743c(this);
                }
            }
            m3655e();
        }
    }

    /* renamed from: c */
    public void m3659c(long j) {
        mo3657d();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f3960d != 1) {
            this.f3959c = j;
            this.f3960d = 2;
        }
        this.f3958b = currentAnimationTimeMillis - j;
        m3656d(currentAnimationTimeMillis);
    }

    /* renamed from: d */
    public void mo3657d() {
        if (!this.f3961e) {
            int length = this.f3962f.length;
            for (int i = 0; i < length; i++) {
                this.f3962f[i].m3683b();
            }
            this.f3961e = true;
        }
    }

    /* renamed from: d */
    boolean m3656d(long j) {
        if (this.f3960d == 0) {
            this.f3960d = 1;
            long j2 = this.f3959c;
            if (j2 < 0) {
                this.f3958b = j;
            } else {
                this.f3958b = j - j2;
                this.f3959c = -1L;
            }
        }
        int i = this.f3960d;
        boolean z = false;
        if (i == 1 || i == 2) {
            long j3 = this.f3971x;
            float f = j3 > 0 ? ((float) (j - this.f3958b)) / ((float) j3) : 1.0f;
            z = false;
            float f2 = f;
            if (f >= 1.0f) {
                int i2 = this.f3965r;
                int i3 = this.f3954A;
                if (i2 < i3 || i3 == -1) {
                    if (this.f3890a != null) {
                        int size = this.f3890a.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            this.f3890a.get(i4).m3742d(this);
                        }
                    }
                    if (this.f3955B == 2) {
                        this.f3964q = !this.f3964q;
                    }
                    this.f3965r += (int) f;
                    f2 = f % 1.0f;
                    this.f3958b += this.f3971x;
                    z = false;
                } else {
                    f2 = Math.min(f, 1.0f);
                    z = true;
                }
            }
            float f3 = f2;
            if (this.f3964q) {
                f3 = 1.0f - f2;
            }
            mo3671a(f3);
        }
        return z;
    }

    /* renamed from: f */
    public C1432l clone() {
        C1432l c1432l = (C1432l) super.clone();
        ArrayList<AbstractC1439b> arrayList = this.f3957D;
        if (arrayList != null) {
            c1432l.f3957D = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                c1432l.f3957D.add(arrayList.get(i));
            }
        }
        c1432l.f3959c = -1L;
        c1432l.f3964q = false;
        c1432l.f3965r = 0;
        c1432l.f3961e = false;
        c1432l.f3960d = 0;
        c1432l.f3967t = false;
        C1428j[] c1428jArr = this.f3962f;
        if (c1428jArr != null) {
            int length = c1428jArr.length;
            c1432l.f3962f = new C1428j[length];
            c1432l.f3963g = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                C1428j clone = c1428jArr[i2].clone();
                c1432l.f3962f[i2] = clone;
                c1432l.f3963g.put(clone.m3681c(), clone);
            }
        }
        return c1432l;
    }

    /* renamed from: g */
    public long m3653g() {
        if (!this.f3961e || this.f3960d == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f3958b;
    }

    /* renamed from: h */
    public void m3652h() {
        this.f3964q = !this.f3964q;
        if (this.f3960d != 1) {
            m3666a(true);
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f3958b = currentAnimationTimeMillis - (this.f3971x - (currentAnimationTimeMillis - this.f3958b));
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        String str2 = str;
        if (this.f3962f != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= this.f3962f.length) {
                    break;
                }
                str = str + "\n    " + this.f3962f[i].toString();
                i++;
            }
        }
        return str2;
    }
}
