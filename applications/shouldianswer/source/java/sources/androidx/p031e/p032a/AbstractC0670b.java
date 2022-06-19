package androidx.p031e.p032a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.p023g.C0552u;
import androidx.p031e.p032a.AbstractC0670b;
import androidx.p031e.p032a.C0662a;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
/* renamed from: androidx.e.a.b */
/* loaded from: classes-dex2jar.jar:androidx/e/a/b.class */
public abstract class AbstractC0670b<T extends AbstractC0670b<T>> implements C0662a.AbstractC0664b {

    /* renamed from: a */
    public static final AbstractC0688d f2205a = new AbstractC0688d("translationX") { // from class: androidx.e.a.b.1
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getTranslationX();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setTranslationX(f);
        }
    };

    /* renamed from: b */
    public static final AbstractC0688d f2206b = new AbstractC0688d("translationY") { // from class: androidx.e.a.b.7
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getTranslationY();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setTranslationY(f);
        }
    };

    /* renamed from: c */
    public static final AbstractC0688d f2207c = new AbstractC0688d("translationZ") { // from class: androidx.e.a.b.8
        /* renamed from: a */
        public float mo5716a(View view) {
            return C0552u.m6231p(view);
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            C0552u.m6259b(view, f);
        }
    };

    /* renamed from: d */
    public static final AbstractC0688d f2208d = new AbstractC0688d("scaleX") { // from class: androidx.e.a.b.9
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getScaleX();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setScaleX(f);
        }
    };

    /* renamed from: e */
    public static final AbstractC0688d f2209e = new AbstractC0688d("scaleY") { // from class: androidx.e.a.b.10
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getScaleY();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setScaleY(f);
        }
    };

    /* renamed from: f */
    public static final AbstractC0688d f2210f = new AbstractC0688d("rotation") { // from class: androidx.e.a.b.11
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getRotation();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setRotation(f);
        }
    };

    /* renamed from: g */
    public static final AbstractC0688d f2211g = new AbstractC0688d("rotationX") { // from class: androidx.e.a.b.12
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getRotationX();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setRotationX(f);
        }
    };

    /* renamed from: h */
    public static final AbstractC0688d f2212h = new AbstractC0688d("rotationY") { // from class: androidx.e.a.b.13
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getRotationY();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setRotationY(f);
        }
    };

    /* renamed from: i */
    public static final AbstractC0688d f2213i = new AbstractC0688d("x") { // from class: androidx.e.a.b.14
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getX();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setX(f);
        }
    };

    /* renamed from: j */
    public static final AbstractC0688d f2214j = new AbstractC0688d("y") { // from class: androidx.e.a.b.2
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getY();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setY(f);
        }
    };

    /* renamed from: k */
    public static final AbstractC0688d f2215k = new AbstractC0688d("z") { // from class: androidx.e.a.b.3
        /* renamed from: a */
        public float mo5716a(View view) {
            return C0552u.m6294B(view);
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            C0552u.m6252c(view, f);
        }
    };

    /* renamed from: l */
    public static final AbstractC0688d f2216l = new AbstractC0688d("alpha") { // from class: androidx.e.a.b.4
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getAlpha();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setAlpha(f);
        }
    };

    /* renamed from: m */
    public static final AbstractC0688d f2217m = new AbstractC0688d("scrollX") { // from class: androidx.e.a.b.5
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getScrollX();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setScrollX((int) f);
        }
    };

    /* renamed from: n */
    public static final AbstractC0688d f2218n = new AbstractC0688d("scrollY") { // from class: androidx.e.a.b.6
        /* renamed from: a */
        public float mo5716a(View view) {
            return view.getScrollY();
        }

        /* renamed from: a */
        public void mo5715a(View view, float f) {
            view.setScrollY((int) f);
        }
    };

    /* renamed from: r */
    final Object f2222r;

    /* renamed from: s */
    final AbstractC0691d f2223s;

    /* renamed from: x */
    private float f2228x;

    /* renamed from: o */
    float f2219o = FlexItem.FLEX_GROW_DEFAULT;

    /* renamed from: p */
    float f2220p = Float.MAX_VALUE;

    /* renamed from: q */
    boolean f2221q = false;

    /* renamed from: t */
    boolean f2224t = false;

    /* renamed from: u */
    float f2225u = Float.MAX_VALUE;

    /* renamed from: v */
    float f2226v = -this.f2225u;

    /* renamed from: w */
    private long f2227w = 0;

    /* renamed from: y */
    private final ArrayList<AbstractC0686b> f2229y = new ArrayList<>();

    /* renamed from: z */
    private final ArrayList<AbstractC0687c> f2230z = new ArrayList<>();

    /* renamed from: androidx.e.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$a.class */
    static class C0685a {

        /* renamed from: a */
        float f2231a;

        /* renamed from: b */
        float f2232b;
    }

    /* renamed from: androidx.e.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$b.class */
    public interface AbstractC0686b {
        /* renamed from: a */
        void m5729a(AbstractC0670b abstractC0670b, boolean z, float f, float f2);
    }

    /* renamed from: androidx.e.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$c.class */
    public interface AbstractC0687c {
        /* renamed from: a */
        void m5728a(AbstractC0670b abstractC0670b, float f, float f2);
    }

    /* renamed from: androidx.e.a.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$d.class */
    public static abstract class AbstractC0688d extends AbstractC0691d<View> {
        private AbstractC0688d(String str) {
            super(str);
        }
    }

    public <K> AbstractC0670b(K k, AbstractC0691d<K> abstractC0691d) {
        this.f2222r = k;
        this.f2223s = abstractC0691d;
        AbstractC0691d abstractC0691d2 = this.f2223s;
        if (abstractC0691d2 == f2210f || abstractC0691d2 == f2211g || abstractC0691d2 == f2212h) {
            this.f2228x = 0.1f;
        } else if (abstractC0691d2 == f2216l) {
            this.f2228x = 0.00390625f;
        } else if (abstractC0691d2 == f2208d || abstractC0691d2 == f2209e) {
            this.f2228x = 0.00390625f;
        } else {
            this.f2228x = 1.0f;
        }
    }

    /* renamed from: a */
    private static <T> void m5763a(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* renamed from: a */
    private void m5762a(boolean z) {
        this.f2224t = false;
        C0662a.m5773a().m5771a(this);
        this.f2227w = 0L;
        this.f2221q = false;
        for (int i = 0; i < this.f2229y.size(); i++) {
            if (this.f2229y.get(i) != null) {
                this.f2229y.get(i).m5729a(this, z, this.f2220p, this.f2219o);
            }
        }
        m5763a(this.f2229y);
    }

    /* renamed from: c */
    private void m5760c() {
        if (!this.f2224t) {
            this.f2224t = true;
            if (!this.f2221q) {
                this.f2220p = m5759d();
            }
            float f = this.f2220p;
            if (f > this.f2225u || f < this.f2226v) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            C0662a.m5773a().m5770a(this, 0L);
        }
    }

    /* renamed from: d */
    private float m5759d() {
        return this.f2223s.mo5716a(this.f2222r);
    }

    /* renamed from: a */
    public T mo5727a(float f) {
        this.f2219o = f;
        return this;
    }

    /* renamed from: a */
    public void mo5714a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (this.f2224t) {
                return;
            }
            m5760c();
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    /* renamed from: a */
    abstract boolean mo5713a(float f, float f2);

    @Override // androidx.p031e.p032a.C0662a.AbstractC0664b
    /* renamed from: a */
    public boolean mo5764a(long j) {
        long j2 = this.f2227w;
        if (j2 == 0) {
            this.f2227w = j;
            m5758d(this.f2220p);
            return false;
        }
        this.f2227w = j;
        boolean mo5712b = mo5712b(j - j2);
        this.f2220p = Math.min(this.f2220p, this.f2225u);
        this.f2220p = Math.max(this.f2220p, this.f2226v);
        m5758d(this.f2220p);
        if (mo5712b) {
            m5762a(false);
        }
        return mo5712b;
    }

    /* renamed from: b */
    public float m5761b() {
        return this.f2228x * 0.75f;
    }

    /* renamed from: b */
    public T mo5726b(float f) {
        this.f2225u = f;
        return this;
    }

    /* renamed from: b */
    abstract boolean mo5712b(long j);

    /* renamed from: c */
    public T mo5725c(float f) {
        this.f2226v = f;
        return this;
    }

    /* renamed from: d */
    void m5758d(float f) {
        this.f2223s.mo5715a(this.f2222r, f);
        for (int i = 0; i < this.f2230z.size(); i++) {
            if (this.f2230z.get(i) != null) {
                this.f2230z.get(i).m5728a(this, this.f2220p, this.f2219o);
            }
        }
        m5763a(this.f2230z);
    }
}
