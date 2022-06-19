package androidx.p031e.p032a;

import androidx.p031e.p032a.AbstractC0670b;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.e.a.c */
/* loaded from: classes-dex2jar.jar:androidx/e/a/c.class */
public final class C0689c extends AbstractC0670b<C0689c> {

    /* renamed from: w */
    private final C0690a f2233w = new C0690a();

    /* renamed from: androidx.e.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/c$a.class */
    public static final class C0690a {

        /* renamed from: b */
        private float f2235b;

        /* renamed from: a */
        private float f2234a = -4.2f;

        /* renamed from: c */
        private final AbstractC0670b.C0685a f2236c = new AbstractC0670b.C0685a();

        C0690a() {
        }

        /* renamed from: a */
        AbstractC0670b.C0685a m5718a(float f, float f2, long j) {
            float f3 = (float) j;
            this.f2236c.f2232b = (float) (f2 * Math.exp((f3 / 1000.0f) * this.f2234a));
            AbstractC0670b.C0685a c0685a = this.f2236c;
            float f4 = this.f2234a;
            c0685a.f2231a = (float) ((f - (f2 / f4)) + ((f2 / f4) * Math.exp((f4 * f3) / 1000.0f)));
            if (m5719a(this.f2236c.f2231a, this.f2236c.f2232b)) {
                this.f2236c.f2232b = FlexItem.FLEX_GROW_DEFAULT;
            }
            return this.f2236c;
        }

        /* renamed from: a */
        void m5720a(float f) {
            this.f2234a = f * (-4.2f);
        }

        /* renamed from: a */
        public boolean m5719a(float f, float f2) {
            return Math.abs(f2) < this.f2235b;
        }

        /* renamed from: b */
        void m5717b(float f) {
            this.f2235b = f * 62.5f;
        }
    }

    public <K> C0689c(K k, AbstractC0691d<K> abstractC0691d) {
        super(k, abstractC0691d);
        this.f2233w.m5717b(m5761b());
    }

    @Override // androidx.p031e.p032a.AbstractC0670b
    /* renamed from: a */
    boolean mo5713a(float f, float f2) {
        return f >= this.f2225u || f <= this.f2226v || this.f2233w.m5719a(f, f2);
    }

    @Override // androidx.p031e.p032a.AbstractC0670b
    /* renamed from: b */
    boolean mo5712b(long j) {
        AbstractC0670b.C0685a m5718a = this.f2233w.m5718a(this.f2220p, this.f2219o, j);
        this.f2220p = m5718a.f2231a;
        this.f2219o = m5718a.f2232b;
        if (this.f2220p < this.f2226v) {
            this.f2220p = this.f2226v;
            return true;
        } else if (this.f2220p <= this.f2225u) {
            return mo5713a(this.f2220p, this.f2219o);
        } else {
            this.f2220p = this.f2225u;
            return true;
        }
    }

    /* renamed from: e */
    public C0689c m5724e(float f) {
        if (f > FlexItem.FLEX_GROW_DEFAULT) {
            this.f2233w.m5720a(f);
            return this;
        }
        throw new IllegalArgumentException("Friction must be positive");
    }

    /* renamed from: f */
    public C0689c mo5725c(float f) {
        super.mo5725c(f);
        return this;
    }

    /* renamed from: g */
    public C0689c mo5726b(float f) {
        super.mo5726b(f);
        return this;
    }

    /* renamed from: h */
    public C0689c mo5727a(float f) {
        super.mo5727a(f);
        return this;
    }
}
