package p000;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p000.hi1;
/* renamed from: qi1 */
/* loaded from: classes3-dex2jar.jar:qi1.class */
public class qi1 extends hi1 {

    /* renamed from: b */
    public long f7847b;

    /* renamed from: j */
    public long f7853j;

    /* renamed from: t */
    public oi1[] f7863t;

    /* renamed from: u */
    public HashMap<String, oi1> f7864u;

    /* renamed from: v */
    public static ThreadLocal<HandlerC1633f> f7842v = new ThreadLocal<>();

    /* renamed from: w */
    public static final ThreadLocal<ArrayList<qi1>> f7843w = new C1628a();

    /* renamed from: x */
    public static final ThreadLocal<ArrayList<qi1>> f7844x = new C1629b();

    /* renamed from: y */
    public static final ThreadLocal<ArrayList<qi1>> f7845y = new C1630c();

    /* renamed from: z */
    public static final ThreadLocal<ArrayList<qi1>> f7846z = new C1631d();

    /* renamed from: A */
    public static final ThreadLocal<ArrayList<qi1>> f7839A = new C1632e();

    /* renamed from: B */
    public static final Interpolator f7840B = new AccelerateDecelerateInterpolator();

    /* renamed from: C */
    public static long f7841C = 10;

    /* renamed from: c */
    public long f7848c = -1;

    /* renamed from: d */
    public boolean f7849d = false;

    /* renamed from: f */
    public int f7850f = 0;

    /* renamed from: g */
    public float f7851g = 0.0f;

    /* renamed from: h */
    public boolean f7852h = false;

    /* renamed from: k */
    public int f7854k = 0;

    /* renamed from: l */
    public boolean f7855l = false;

    /* renamed from: m */
    public boolean f7856m = false;

    /* renamed from: n */
    public long f7857n = 300;

    /* renamed from: o */
    public long f7858o = 0;

    /* renamed from: p */
    public int f7859p = 0;

    /* renamed from: q */
    public int f7860q = 1;

    /* renamed from: r */
    public Interpolator f7861r = f7840B;

    /* renamed from: s */
    public ArrayList<AbstractC1634g> f7862s = null;

    /* renamed from: qi1$a */
    /* loaded from: classes3-dex2jar.jar:qi1$a.class */
    public static final class C1628a extends ThreadLocal<ArrayList<qi1>> {
        /* renamed from: a */
        public ArrayList<qi1> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: qi1$b */
    /* loaded from: classes3-dex2jar.jar:qi1$b.class */
    public static final class C1629b extends ThreadLocal<ArrayList<qi1>> {
        /* renamed from: a */
        public ArrayList<qi1> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: qi1$c */
    /* loaded from: classes3-dex2jar.jar:qi1$c.class */
    public static final class C1630c extends ThreadLocal<ArrayList<qi1>> {
        /* renamed from: a */
        public ArrayList<qi1> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: qi1$d */
    /* loaded from: classes3-dex2jar.jar:qi1$d.class */
    public static final class C1631d extends ThreadLocal<ArrayList<qi1>> {
        /* renamed from: a */
        public ArrayList<qi1> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: qi1$e */
    /* loaded from: classes3-dex2jar.jar:qi1$e.class */
    public static final class C1632e extends ThreadLocal<ArrayList<qi1>> {
        /* renamed from: a */
        public ArrayList<qi1> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: qi1$f */
    /* loaded from: classes3-dex2jar.jar:qi1$f.class */
    public static class HandlerC1633f extends Handler {
        public HandlerC1633f() {
        }

        public /* synthetic */ HandlerC1633f(C1628a c1628a) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            ArrayList arrayList = (ArrayList) qi1.f7843w.get();
            ArrayList arrayList2 = (ArrayList) qi1.f7845y.get();
            int i = message.what;
            if (i == 0) {
                ArrayList arrayList3 = (ArrayList) qi1.f7844x.get();
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
                        qi1 qi1Var = (qi1) arrayList4.get(i2);
                        if (qi1Var.f7858o == 0) {
                            qi1Var.m775J();
                        } else {
                            arrayList2.add(qi1Var);
                        }
                    }
                }
            } else if (i != 1) {
                return;
            } else {
                z = true;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) qi1.f7839A.get();
            ArrayList arrayList6 = (ArrayList) qi1.f7846z.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                qi1 qi1Var2 = (qi1) arrayList2.get(i3);
                if (qi1Var2.m757u(currentAnimationTimeMillis)) {
                    arrayList5.add(qi1Var2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    qi1 qi1Var3 = (qi1) arrayList5.get(i4);
                    qi1Var3.m775J();
                    qi1Var3.f7855l = true;
                    arrayList2.remove(qi1Var3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                qi1 qi1Var4 = (qi1) arrayList.get(i5);
                if (qi1Var4.m759s(currentAnimationTimeMillis)) {
                    arrayList6.add(qi1Var4);
                }
                if (arrayList.size() == size4) {
                    i5++;
                } else {
                    size4--;
                    arrayList6.remove(qi1Var4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i6 = 0; i6 < arrayList6.size(); i6++) {
                    ((qi1) arrayList6.get(i6)).m756v();
                }
                arrayList6.clear();
            }
            if (z) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, qi1.f7841C - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
            }
        }
    }

    /* renamed from: qi1$g */
    /* loaded from: classes3-dex2jar.jar:qi1$g.class */
    public interface AbstractC1634g {
        /* renamed from: e */
        void mo300e(qi1 qi1Var);
    }

    /* renamed from: A */
    public static qi1 m784A(float... fArr) {
        qi1 qi1Var = new qi1();
        qi1Var.m781D(fArr);
        return qi1Var;
    }

    /* renamed from: B */
    public void m783B(long j) {
        m752z();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f7854k != 1) {
            this.f7848c = j;
            this.f7854k = 2;
        }
        this.f7847b = currentAnimationTimeMillis - j;
        m759s(currentAnimationTimeMillis);
    }

    /* renamed from: C */
    public qi1 m782C(long j) {
        if (j >= 0) {
            this.f7857n = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    /* renamed from: D */
    public void m781D(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        oi1[] oi1VarArr = this.f7863t;
        if (oi1VarArr == null || oi1VarArr.length == 0) {
            m778G(oi1.m1023h("", fArr));
        } else {
            oi1VarArr[0].mo1019i(fArr);
        }
        this.f7856m = false;
    }

    /* renamed from: E */
    public void m780E(Interpolator interpolator) {
        if (interpolator == null) {
            interpolator = new LinearInterpolator();
        }
        this.f7861r = interpolator;
    }

    /* renamed from: F */
    public void m779F(long j) {
        this.f7858o = j;
    }

    /* renamed from: G */
    public void m778G(oi1... oi1VarArr) {
        int length = oi1VarArr.length;
        this.f7863t = oi1VarArr;
        this.f7864u = new HashMap<>(length);
        for (oi1 oi1Var : oi1VarArr) {
            this.f7864u.put(oi1Var.m1025f(), oi1Var);
        }
        this.f7856m = false;
    }

    /* renamed from: H */
    public void m777H() {
        m776I(false);
    }

    /* renamed from: I */
    public final void m776I(boolean z) {
        if (Looper.myLooper() != null) {
            this.f7849d = z;
            this.f7850f = 0;
            this.f7854k = 0;
            this.f7852h = false;
            f7844x.get().add(this);
            if (this.f7858o == 0) {
                m783B(m753y());
                this.f7854k = 0;
                this.f7855l = true;
                ArrayList<hi1.AbstractC1443a> arrayList = this.f6736a;
                if (arrayList != null) {
                    ArrayList arrayList2 = (ArrayList) arrayList.clone();
                    int size = arrayList2.size();
                    for (int i = 0; i < size; i++) {
                        ((hi1.AbstractC1443a) arrayList2.get(i)).mo302c(this);
                    }
                }
            }
            HandlerC1633f handlerC1633f = f7842v.get();
            HandlerC1633f handlerC1633f2 = handlerC1633f;
            if (handlerC1633f == null) {
                handlerC1633f2 = new HandlerC1633f(null);
                f7842v.set(handlerC1633f2);
            }
            handlerC1633f2.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    /* renamed from: J */
    public final void m775J() {
        ArrayList<hi1.AbstractC1443a> arrayList;
        m752z();
        f7843w.get().add(this);
        if (this.f7858o <= 0 || (arrayList = this.f6736a) == null) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            ((hi1.AbstractC1443a) arrayList2.get(i)).mo302c(this);
        }
    }

    @Override // p000.hi1
    /* renamed from: c */
    public void mo774c() {
        ArrayList<hi1.AbstractC1443a> arrayList;
        if (this.f7854k != 0 || f7844x.get().contains(this) || f7845y.get().contains(this)) {
            if (this.f7855l && (arrayList = this.f6736a) != null) {
                Iterator it = ((ArrayList) arrayList.clone()).iterator();
                while (it.hasNext()) {
                    ((hi1.AbstractC1443a) it.next()).mo304a(this);
                }
            }
            m756v();
        }
    }

    /* renamed from: q */
    public void m761q(AbstractC1634g abstractC1634g) {
        if (this.f7862s == null) {
            this.f7862s = new ArrayList<>();
        }
        this.f7862s.add(abstractC1634g);
    }

    /* renamed from: r */
    public void m760r(float f) {
        float interpolation = this.f7861r.getInterpolation(f);
        this.f7851g = interpolation;
        int length = this.f7863t.length;
        for (int i = 0; i < length; i++) {
            this.f7863t[i].mo1022b(interpolation);
        }
        ArrayList<AbstractC1634g> arrayList = this.f7862s;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7862s.get(i2).mo300e(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x010e  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m759s(long r7) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.qi1.m759s(long):boolean");
    }

    /* renamed from: t */
    public qi1 mo773d() {
        qi1 qi1Var = (qi1) super.clone();
        ArrayList<AbstractC1634g> arrayList = this.f7862s;
        if (arrayList != null) {
            qi1Var.f7862s = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                qi1Var.f7862s.add(arrayList.get(i));
            }
        }
        qi1Var.f7848c = -1L;
        qi1Var.f7849d = false;
        qi1Var.f7850f = 0;
        qi1Var.f7856m = false;
        qi1Var.f7854k = 0;
        qi1Var.f7852h = false;
        oi1[] oi1VarArr = this.f7863t;
        if (oi1VarArr != null) {
            int length = oi1VarArr.length;
            qi1Var.f7863t = new oi1[length];
            qi1Var.f7864u = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                oi1 clone = oi1VarArr[i2].clone();
                qi1Var.f7863t[i2] = clone;
                qi1Var.f7864u.put(clone.m1025f(), clone);
            }
        }
        return qi1Var;
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        String str2 = str;
        if (this.f7863t != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= this.f7863t.length) {
                    break;
                }
                str = str + "\n    " + this.f7863t[i].toString();
                i++;
            }
        }
        return str2;
    }

    /* renamed from: u */
    public final boolean m757u(long j) {
        if (!this.f7852h) {
            this.f7852h = true;
            this.f7853j = j;
            return false;
        }
        long j2 = j - this.f7853j;
        long j3 = this.f7858o;
        if (j2 <= j3) {
            return false;
        }
        this.f7847b = j - (j2 - j3);
        this.f7854k = 1;
        return true;
    }

    /* renamed from: v */
    public final void m756v() {
        ArrayList<hi1.AbstractC1443a> arrayList;
        f7843w.get().remove(this);
        f7844x.get().remove(this);
        f7845y.get().remove(this);
        this.f7854k = 0;
        if (this.f7855l && (arrayList = this.f6736a) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((hi1.AbstractC1443a) arrayList2.get(i)).mo301d(this);
            }
        }
        this.f7855l = false;
    }

    /* renamed from: w */
    public float m755w() {
        return this.f7851g;
    }

    /* renamed from: x */
    public Object m754x() {
        oi1[] oi1VarArr = this.f7863t;
        if (oi1VarArr == null || oi1VarArr.length <= 0) {
            return null;
        }
        return oi1VarArr[0].mo1020d();
    }

    /* renamed from: y */
    public long m753y() {
        if (!this.f7856m || this.f7854k == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f7847b;
    }

    /* renamed from: z */
    public void m752z() {
        if (!this.f7856m) {
            int length = this.f7863t.length;
            for (int i = 0; i < length; i++) {
                this.f7863t[i].m1024g();
            }
            this.f7856m = true;
        }
    }
}
