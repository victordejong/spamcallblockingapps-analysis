package p1727n3.p1855p.p1856a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import java.util.ArrayList;
import p1727n3.p1855p.p1856a.AbstractC26892b;
import p1727n3.p1855p.p1856a.C26886a;
/* renamed from: n3.p.a.b */
/* loaded from: classes-dex2jar.jar:n3/p/a/b.class */
public abstract class AbstractC26892b<T extends AbstractC26892b<T>> implements C26886a.AbstractC26888b {

    /* renamed from: m */
    public static final AbstractC26897n f75159m = new d("translationX");

    /* renamed from: n */
    public static final AbstractC26897n f75160n = new e("scaleX");

    /* renamed from: o */
    public static final AbstractC26897n f75161o = new f("scaleY");

    /* renamed from: p */
    public static final AbstractC26897n f75162p = new g("rotation");

    /* renamed from: q */
    public static final AbstractC26897n f75163q = new h("rotationX");

    /* renamed from: r */
    public static final AbstractC26897n f75164r = new i("rotationY");

    /* renamed from: s */
    public static final AbstractC26897n f75165s = new j("x");

    /* renamed from: t */
    public static final AbstractC26897n f75166t = new a("y");

    /* renamed from: u */
    public static final AbstractC26897n f75167u = new b("alpha");

    /* renamed from: a */
    public float f75168a;

    /* renamed from: b */
    public float f75169b;

    /* renamed from: c */
    public boolean f75170c;

    /* renamed from: d */
    public final Object f75171d;

    /* renamed from: e */
    public final AbstractC26898d f75172e;

    /* renamed from: f */
    public boolean f75173f;

    /* renamed from: g */
    public float f75174g;

    /* renamed from: h */
    public float f75175h;

    /* renamed from: i */
    public long f75176i;

    /* renamed from: j */
    public float f75177j;

    /* renamed from: k */
    public final ArrayList<AbstractC26895l> f75178k;

    /* renamed from: l */
    public final ArrayList<AbstractC26896m> f75179l;

    /* renamed from: n3.p.a.b$c */
    /* loaded from: classes-dex2jar.jar:n3/p/a/b$c.class */
    public class C26893c extends AbstractC26898d {

        /* renamed from: a */
        public final /* synthetic */ C26899e f75180a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C26893c(AbstractC26892b abstractC26892b, String str, C26899e c26899e) {
            super(str);
            this.f75180a = c26899e;
        }

        @Override // p1727n3.p1855p.p1856a.AbstractC26898d
        /* renamed from: a */
        public float mo1228a(Object obj) {
            return this.f75180a.f75186a;
        }

        @Override // p1727n3.p1855p.p1856a.AbstractC26898d
        /* renamed from: b */
        public void mo1227b(Object obj, float f) {
            this.f75180a.f75186a = f;
        }
    }

    /* renamed from: n3.p.a.b$k */
    /* loaded from: classes-dex2jar.jar:n3/p/a/b$k.class */
    public static class C26894k {

        /* renamed from: a */
        public float f75181a;

        /* renamed from: b */
        public float f75182b;
    }

    /* renamed from: n3.p.a.b$l */
    /* loaded from: classes-dex2jar.jar:n3/p/a/b$l.class */
    public interface AbstractC26895l {
        /* renamed from: a */
        void mo1230a(AbstractC26892b abstractC26892b, boolean z, float f, float f2);
    }

    /* renamed from: n3.p.a.b$m */
    /* loaded from: classes-dex2jar.jar:n3/p/a/b$m.class */
    public interface AbstractC26896m {
        /* renamed from: a */
        void mo1229a(AbstractC26892b abstractC26892b, float f, float f2);
    }

    /* renamed from: n3.p.a.b$n */
    /* loaded from: classes-dex2jar.jar:n3/p/a/b$n.class */
    public static abstract class AbstractC26897n extends AbstractC26898d<View> {
        public AbstractC26897n(String str, d dVar) {
            super(str);
        }
    }

    public <K> AbstractC26892b(K k, AbstractC26898d<K> abstractC26898d) {
        this.f75168a = 0.0f;
        this.f75169b = Float.MAX_VALUE;
        this.f75170c = false;
        this.f75173f = false;
        this.f75174g = Float.MAX_VALUE;
        this.f75175h = -Float.MAX_VALUE;
        this.f75176i = 0L;
        this.f75178k = new ArrayList<>();
        this.f75179l = new ArrayList<>();
        this.f75171d = k;
        this.f75172e = abstractC26898d;
        if (abstractC26898d == f75162p || abstractC26898d == f75163q || abstractC26898d == f75164r) {
            this.f75177j = 0.1f;
        } else if (abstractC26898d == f75167u) {
            this.f75177j = 0.00390625f;
        } else if (abstractC26898d == f75160n || abstractC26898d == f75161o) {
            this.f75177j = 0.00390625f;
        } else {
            this.f75177j = 1.0f;
        }
    }

    public AbstractC26892b(C26899e c26899e) {
        this.f75168a = 0.0f;
        this.f75169b = Float.MAX_VALUE;
        this.f75170c = false;
        this.f75173f = false;
        this.f75174g = Float.MAX_VALUE;
        this.f75175h = -3.4028235E38f;
        this.f75176i = 0L;
        this.f75178k = new ArrayList<>();
        this.f75179l = new ArrayList<>();
        this.f75171d = null;
        this.f75172e = new C26893c(this, "FloatValueHolder", c26899e);
        this.f75177j = 1.0f;
    }

    /* renamed from: f */
    public static <T> void m1235f(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    @Override // p1727n3.p1855p.p1856a.C26886a.AbstractC26888b
    /* renamed from: a */
    public boolean mo1240a(long j) {
        long j2 = this.f75176i;
        if (j2 == 0) {
            this.f75176i = j;
            m1234g(this.f75169b);
            return false;
        }
        this.f75176i = j;
        boolean m1231j = m1231j(j - j2);
        float min = Math.min(this.f75169b, this.f75174g);
        this.f75169b = min;
        float max = Math.max(min, this.f75175h);
        this.f75169b = max;
        m1234g(max);
        if (m1231j) {
            m1237d(false);
        }
        return m1231j;
    }

    /* renamed from: b */
    public T m1239b(AbstractC26896m abstractC26896m) {
        if (!this.f75173f) {
            if (!this.f75179l.contains(abstractC26896m)) {
                this.f75179l.add(abstractC26896m);
            }
            return this;
        }
        throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
    }

    /* renamed from: c */
    public void m1238c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (!this.f75173f) {
                return;
            }
            m1237d(true);
            return;
        }
        throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
    }

    /* renamed from: d */
    public final void m1237d(boolean z) {
        this.f75173f = false;
        C26886a m1242a = C26886a.m1242a();
        m1242a.f75148a.remove(this);
        int indexOf = m1242a.f75149b.indexOf(this);
        if (indexOf >= 0) {
            m1242a.f75149b.set(indexOf, null);
            m1242a.f75153f = true;
        }
        this.f75176i = 0L;
        this.f75170c = false;
        for (int i = 0; i < this.f75178k.size(); i++) {
            if (this.f75178k.get(i) != null) {
                this.f75178k.get(i).mo1230a(this, z, this.f75169b, this.f75168a);
            }
        }
        m1235f(this.f75178k);
    }

    /* renamed from: e */
    public float m1236e() {
        return this.f75177j * 0.75f;
    }

    /* renamed from: g */
    public void m1234g(float f) {
        this.f75172e.mo1227b(this.f75171d, f);
        for (int i = 0; i < this.f75179l.size(); i++) {
            if (this.f75179l.get(i) != null) {
                this.f75179l.get(i).mo1229a(this, this.f75169b, this.f75168a);
            }
        }
        m1235f(this.f75179l);
    }

    /* renamed from: h */
    public T m1233h(float f) {
        this.f75169b = f;
        this.f75170c = true;
        return this;
    }

    /* renamed from: i */
    public void m1232i() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            boolean z = this.f75173f;
            if (z || z) {
                return;
            }
            this.f75173f = true;
            if (!this.f75170c) {
                this.f75169b = this.f75172e.mo1228a(this.f75171d);
            }
            float f = this.f75169b;
            if (f > this.f75174g || f < this.f75175h) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            C26886a m1242a = C26886a.m1242a();
            if (m1242a.f75149b.size() == 0) {
                if (m1242a.f75151d == null) {
                    m1242a.f75151d = new C26886a.C26890d(m1242a.f75150c);
                }
                C26886a.C26890d c26890d = (C26886a.C26890d) m1242a.f75151d;
                c26890d.f75156b.postFrameCallback(c26890d.f75157c);
            }
            if (m1242a.f75149b.contains(this)) {
                return;
            }
            m1242a.f75149b.add(this);
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    /* renamed from: j */
    public abstract boolean m1231j(long j);
}
