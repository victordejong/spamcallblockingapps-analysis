package p203p8;

import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.C0608b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p203p8.AbstractC4046a;
/* renamed from: p8.i */
/* loaded from: classes2-dex2jar.jar:p8/i.class */
public class C4072i extends AbstractC4046a {

    /* renamed from: p */
    public static ThreadLocal<HandlerC4078f> f12763p = new ThreadLocal<>();

    /* renamed from: q */
    public static final ThreadLocal<ArrayList<C4072i>> f12764q = new C4073a();

    /* renamed from: r */
    public static final ThreadLocal<ArrayList<C4072i>> f12765r = new C4074b();

    /* renamed from: s */
    public static final ThreadLocal<ArrayList<C4072i>> f12766s = new C4075c();

    /* renamed from: t */
    public static final ThreadLocal<ArrayList<C4072i>> f12767t = new C4076d();

    /* renamed from: u */
    public static final ThreadLocal<ArrayList<C4072i>> f12768u = new C4077e();

    /* renamed from: v */
    public static final Interpolator f12769v = new AccelerateDecelerateInterpolator();

    /* renamed from: w */
    public static long f12770w = 10;

    /* renamed from: b */
    public long f12771b;

    /* renamed from: g */
    public long f12776g;

    /* renamed from: n */
    public C4068g[] f12783n;

    /* renamed from: o */
    public HashMap<String, C4068g> f12784o;

    /* renamed from: c */
    public long f12772c = -1;

    /* renamed from: d */
    public boolean f12773d = false;

    /* renamed from: e */
    public int f12774e = 0;

    /* renamed from: f */
    public boolean f12775f = false;

    /* renamed from: h */
    public int f12777h = 0;

    /* renamed from: i */
    public boolean f12778i = false;

    /* renamed from: j */
    public boolean f12779j = false;

    /* renamed from: k */
    public long f12780k = 300;

    /* renamed from: l */
    public Interpolator f12781l = f12769v;

    /* renamed from: m */
    public ArrayList<AbstractC4079g> f12782m = null;

    /* renamed from: p8.i$a */
    /* loaded from: classes2-dex2jar.jar:p8/i$a.class */
    public static final class C4073a extends ThreadLocal<ArrayList<C4072i>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C4072i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: p8.i$b */
    /* loaded from: classes2-dex2jar.jar:p8/i$b.class */
    public static final class C4074b extends ThreadLocal<ArrayList<C4072i>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C4072i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: p8.i$c */
    /* loaded from: classes2-dex2jar.jar:p8/i$c.class */
    public static final class C4075c extends ThreadLocal<ArrayList<C4072i>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C4072i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: p8.i$d */
    /* loaded from: classes2-dex2jar.jar:p8/i$d.class */
    public static final class C4076d extends ThreadLocal<ArrayList<C4072i>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C4072i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: p8.i$e */
    /* loaded from: classes2-dex2jar.jar:p8/i$e.class */
    public static final class C4077e extends ThreadLocal<ArrayList<C4072i>> {
        @Override // java.lang.ThreadLocal
        public ArrayList<C4072i> initialValue() {
            return new ArrayList<>();
        }
    }

    /* renamed from: p8.i$f */
    /* loaded from: classes2-dex2jar.jar:p8/i$f.class */
    public static class HandlerC4078f extends Handler {
        public HandlerC4078f() {
        }

        public HandlerC4078f(C4073a c4073a) {
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0130 A[SYNTHETIC] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r12) {
            /*
                Method dump skipped, instructions count: 542
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p203p8.C4072i.HandlerC4078f.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: p8.i$g */
    /* loaded from: classes2-dex2jar.jar:p8/i$g.class */
    public interface AbstractC4079g {
        /* renamed from: a */
        void m1438a(C4072i c4072i);
    }

    /* renamed from: b */
    public void mo1447b(float f) {
        float interpolation = this.f12781l.getInterpolation(f);
        int length = this.f12783n.length;
        for (int i = 0; i < length; i++) {
            this.f12783n[i].mo1454a(interpolation);
        }
        ArrayList<AbstractC4079g> arrayList = this.f12782m;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f12782m.get(i2).m1438a(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e9  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1446c(long r7) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p203p8.C4072i.m1446c(long):boolean");
    }

    /* renamed from: d */
    public void m1445d() {
        ArrayList<AbstractC4046a.AbstractC4047a> arrayList;
        if (this.f12777h != 0 || f12765r.get().contains(this) || f12766s.get().contains(this)) {
            if (this.f12778i && (arrayList = this.f12712a) != null) {
                Iterator it2 = ((ArrayList) arrayList.clone()).iterator();
                while (it2.hasNext()) {
                    ((AbstractC4046a.AbstractC4047a) it2.next()).m1468b(this);
                }
            }
            m1443f();
        }
    }

    /* renamed from: e */
    public C4072i clone() {
        C4072i c4072i = (C4072i) super.clone();
        ArrayList<AbstractC4079g> arrayList = this.f12782m;
        if (arrayList != null) {
            c4072i.f12782m = new ArrayList<>();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                c4072i.f12782m.add(arrayList.get(i));
            }
        }
        c4072i.f12772c = -1L;
        c4072i.f12773d = false;
        c4072i.f12774e = 0;
        c4072i.f12779j = false;
        c4072i.f12777h = 0;
        c4072i.f12775f = false;
        C4068g[] c4068gArr = this.f12783n;
        if (c4068gArr != null) {
            int length = c4068gArr.length;
            c4072i.f12783n = new C4068g[length];
            c4072i.f12784o = new HashMap<>(length);
            for (int i2 = 0; i2 < length; i2++) {
                C4068g clone = c4068gArr[i2].clone();
                c4072i.f12783n[i2] = clone;
                c4072i.f12784o.put(clone.f12750a, clone);
            }
        }
        return c4072i;
    }

    /* renamed from: f */
    public final void m1443f() {
        ArrayList<AbstractC4046a.AbstractC4047a> arrayList;
        f12764q.get().remove(this);
        f12765r.get().remove(this);
        f12766s.get().remove(this);
        this.f12777h = 0;
        if (this.f12778i && (arrayList = this.f12712a) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC4046a.AbstractC4047a) arrayList2.get(i)).m1469a(this);
            }
        }
        this.f12778i = false;
    }

    /* renamed from: g */
    public void mo1442g() {
        if (!this.f12779j) {
            int length = this.f12783n.length;
            for (int i = 0; i < length; i++) {
                C4068g c4068g = this.f12783n[i];
                if (c4068g.f12758i == null) {
                    Class cls = c4068g.f12754e;
                    c4068g.f12758i = cls == Integer.class ? C4068g.f12743k : cls == Float.class ? C4068g.f12744l : null;
                }
                AbstractC4071h abstractC4071h = c4068g.f12758i;
                if (abstractC4071h != null) {
                    c4068g.f12755f.f12724d = abstractC4071h;
                }
            }
            this.f12779j = true;
        }
    }

    /* renamed from: h */
    public void m1441h() {
        this.f12773d = !this.f12773d;
        if (this.f12777h != 1) {
            m1439j(true);
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f12771b = currentAnimationTimeMillis - (this.f12780k - (currentAnimationTimeMillis - this.f12771b));
    }

    /* renamed from: i */
    public void m1440i(C4068g... c4068gArr) {
        int length = c4068gArr.length;
        this.f12783n = c4068gArr;
        this.f12784o = new HashMap<>(length);
        for (C4068g c4068g : c4068gArr) {
            this.f12784o.put(c4068g.f12750a, c4068g);
        }
        this.f12779j = false;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* renamed from: j */
    public final void m1439j(boolean z) {
        if (Looper.myLooper() != null) {
            this.f12773d = z;
            this.f12774e = 0;
            this.f12777h = 0;
            this.f12775f = false;
            f12765r.get().add(this);
            char currentAnimationTimeMillis = (!this.f12779j || this.f12777h == 0) ? (char) 0 : AnimationUtils.currentAnimationTimeMillis() - this.f12771b;
            mo1442g();
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            if (this.f12777h != 1) {
                this.f12772c = currentAnimationTimeMillis;
                this.f12777h = 2;
            }
            this.f12771b = currentAnimationTimeMillis2 - currentAnimationTimeMillis;
            m1446c(currentAnimationTimeMillis2);
            this.f12777h = 0;
            this.f12778i = true;
            ArrayList<AbstractC4046a.AbstractC4047a> arrayList = this.f12712a;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC4046a.AbstractC4047a) arrayList2.get(i)).m1467c(this);
                }
            }
            HandlerC4078f handlerC4078f = f12763p.get();
            HandlerC4078f handlerC4078f2 = handlerC4078f;
            if (handlerC4078f == null) {
                handlerC4078f2 = new HandlerC4078f(null);
                f12763p.set(handlerC4078f2);
            }
            handlerC4078f2.sendEmptyMessage(0);
            return;
        }
        throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ValueAnimator@");
        m8752j.append(Integer.toHexString(hashCode()));
        String sb = m8752j.toString();
        String str = sb;
        if (this.f12783n != null) {
            int i = 0;
            while (true) {
                str = sb;
                if (i >= this.f12783n.length) {
                    break;
                }
                StringBuilder m7624k = C0608b.m7624k(sb, "\n    ");
                m7624k.append(this.f12783n[i].toString());
                sb = m7624k.toString();
                i++;
            }
        }
        return str;
    }
}
