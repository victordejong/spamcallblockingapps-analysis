package p000;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: oi1 */
/* loaded from: classes3-dex2jar.jar:oi1.class */
public class oi1 implements Cloneable {

    /* renamed from: j */
    public static final pi1 f7207j = new li1();

    /* renamed from: k */
    public static final pi1 f7208k = new ji1();

    /* renamed from: a */
    public String f7209a;

    /* renamed from: b */
    public ri1 f7210b;

    /* renamed from: c */
    public Class f7211c;

    /* renamed from: d */
    public ni1 f7212d;

    /* renamed from: f */
    public final Object[] f7213f;

    /* renamed from: g */
    public pi1 f7214g;

    /* renamed from: h */
    public Object f7215h;

    /* renamed from: oi1$b */
    /* loaded from: classes3-dex2jar.jar:oi1$b.class */
    public static class C1519b extends oi1 {

        /* renamed from: l */
        public ki1 f7216l;

        /* renamed from: m */
        public float f7217m;

        public C1519b(String str, float... fArr) {
            super(str);
            mo1019i(fArr);
        }

        @Override // p000.oi1
        /* renamed from: b */
        public void mo1022b(float f) {
            this.f7217m = this.f7216l.m1390f(f);
        }

        @Override // p000.oi1
        /* renamed from: d */
        public Object mo1020d() {
            return Float.valueOf(this.f7217m);
        }

        @Override // p000.oi1
        /* renamed from: i */
        public void mo1019i(float... fArr) {
            oi1.super.mo1019i(fArr);
            this.f7216l = (ki1) this.f7212d;
        }

        /* renamed from: j */
        public C1519b clone() {
            C1519b c1519b = (C1519b) oi1.super.clone();
            c1519b.f7216l = (ki1) c1519b.f7212d;
            return c1519b;
        }
    }

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        Class cls4 = Double.TYPE;
        new HashMap();
        new HashMap();
    }

    public oi1(String str) {
        this.f7212d = null;
        new ReentrantReadWriteLock();
        this.f7213f = new Object[1];
        this.f7209a = str;
    }

    /* renamed from: h */
    public static oi1 m1023h(String str, float... fArr) {
        return new C1519b(str, fArr);
    }

    /* renamed from: b */
    public void mo1022b(float f) {
        this.f7215h = this.f7212d.mo1164b(f);
    }

    /* renamed from: c */
    public oi1 clone() {
        try {
            oi1 oi1Var = (oi1) super.clone();
            oi1Var.f7209a = this.f7209a;
            oi1Var.f7210b = this.f7210b;
            oi1Var.f7212d = this.f7212d.mo1165a();
            oi1Var.f7214g = this.f7214g;
            return oi1Var;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: d */
    public Object mo1020d() {
        return this.f7215h;
    }

    /* renamed from: f */
    public String m1025f() {
        return this.f7209a;
    }

    /* renamed from: g */
    public void m1024g() {
        if (this.f7214g == null) {
            Class cls = this.f7211c;
            this.f7214g = cls == Integer.class ? f7207j : cls == Float.class ? f7208k : null;
        }
        pi1 pi1Var = this.f7214g;
        if (pi1Var != null) {
            this.f7212d.m1162d(pi1Var);
        }
    }

    /* renamed from: i */
    public void mo1019i(float... fArr) {
        this.f7211c = Float.TYPE;
        this.f7212d = ni1.m1163c(fArr);
    }

    public String toString() {
        return this.f7209a + ": " + this.f7212d.toString();
    }
}
