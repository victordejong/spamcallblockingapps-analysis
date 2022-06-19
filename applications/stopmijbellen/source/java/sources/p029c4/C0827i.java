package p029c4;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import java.util.Objects;
import p124i4.C3102d;
import p134j4.C3260w0;
/* renamed from: c4.i */
/* loaded from: classes-dex2jar.jar:c4/i.class */
public class C0827i {

    /* renamed from: m */
    public static final AbstractC0819c f3057m = new C0825g(0.5f);

    /* renamed from: a */
    public C3102d f3058a;

    /* renamed from: b */
    public C3102d f3059b;

    /* renamed from: c */
    public C3102d f3060c;

    /* renamed from: d */
    public C3102d f3061d;

    /* renamed from: e */
    public AbstractC0819c f3062e;

    /* renamed from: f */
    public AbstractC0819c f3063f;

    /* renamed from: g */
    public AbstractC0819c f3064g;

    /* renamed from: h */
    public AbstractC0819c f3065h;

    /* renamed from: i */
    public C0821e f3066i;

    /* renamed from: j */
    public C0821e f3067j;

    /* renamed from: k */
    public C0821e f3068k;

    /* renamed from: l */
    public C0821e f3069l;

    /* renamed from: c4.i$b */
    /* loaded from: classes-dex2jar.jar:c4/i$b.class */
    public static final class C0829b {

        /* renamed from: a */
        public C3102d f3070a;

        /* renamed from: b */
        public C3102d f3071b;

        /* renamed from: c */
        public C3102d f3072c;

        /* renamed from: d */
        public C3102d f3073d;

        /* renamed from: e */
        public AbstractC0819c f3074e;

        /* renamed from: f */
        public AbstractC0819c f3075f;

        /* renamed from: g */
        public AbstractC0819c f3076g;

        /* renamed from: h */
        public AbstractC0819c f3077h;

        /* renamed from: i */
        public C0821e f3078i;

        /* renamed from: j */
        public C0821e f3079j;

        /* renamed from: k */
        public C0821e f3080k;

        /* renamed from: l */
        public C0821e f3081l;

        public C0829b() {
            this.f3070a = new C0826h();
            this.f3071b = new C0826h();
            this.f3072c = new C0826h();
            this.f3073d = new C0826h();
            this.f3074e = new C0817a(0.0f);
            this.f3075f = new C0817a(0.0f);
            this.f3076g = new C0817a(0.0f);
            this.f3077h = new C0817a(0.0f);
            this.f3078i = new C0821e();
            this.f3079j = new C0821e();
            this.f3080k = new C0821e();
            this.f3081l = new C0821e();
        }

        public C0829b(C0827i c0827i) {
            this.f3070a = new C0826h();
            this.f3071b = new C0826h();
            this.f3072c = new C0826h();
            this.f3073d = new C0826h();
            this.f3074e = new C0817a(0.0f);
            this.f3075f = new C0817a(0.0f);
            this.f3076g = new C0817a(0.0f);
            this.f3077h = new C0817a(0.0f);
            this.f3078i = new C0821e();
            this.f3079j = new C0821e();
            this.f3080k = new C0821e();
            this.f3081l = new C0821e();
            this.f3070a = c0827i.f3058a;
            this.f3071b = c0827i.f3059b;
            this.f3072c = c0827i.f3060c;
            this.f3073d = c0827i.f3061d;
            this.f3074e = c0827i.f3062e;
            this.f3075f = c0827i.f3063f;
            this.f3076g = c0827i.f3064g;
            this.f3077h = c0827i.f3065h;
            this.f3078i = c0827i.f3066i;
            this.f3079j = c0827i.f3067j;
            this.f3080k = c0827i.f3068k;
            this.f3081l = c0827i.f3069l;
        }

        /* renamed from: b */
        public static float m7298b(C3102d c3102d) {
            if (c3102d instanceof C0826h) {
                Objects.requireNonNull((C0826h) c3102d);
                return -1.0f;
            } else if (!(c3102d instanceof C0820d)) {
                return -1.0f;
            } else {
                Objects.requireNonNull((C0820d) c3102d);
                return -1.0f;
            }
        }

        /* renamed from: a */
        public C0827i m7299a() {
            return new C0827i(this, null);
        }

        /* renamed from: c */
        public C0829b m7297c(float f) {
            this.f3077h = new C0817a(f);
            return this;
        }

        /* renamed from: d */
        public C0829b m7296d(float f) {
            this.f3076g = new C0817a(f);
            return this;
        }

        /* renamed from: e */
        public C0829b m7295e(float f) {
            this.f3074e = new C0817a(f);
            return this;
        }

        /* renamed from: f */
        public C0829b m7294f(float f) {
            this.f3075f = new C0817a(f);
            return this;
        }
    }

    public C0827i() {
        this.f3058a = new C0826h();
        this.f3059b = new C0826h();
        this.f3060c = new C0826h();
        this.f3061d = new C0826h();
        this.f3062e = new C0817a(0.0f);
        this.f3063f = new C0817a(0.0f);
        this.f3064g = new C0817a(0.0f);
        this.f3065h = new C0817a(0.0f);
        this.f3066i = new C0821e();
        this.f3067j = new C0821e();
        this.f3068k = new C0821e();
        this.f3069l = new C0821e();
    }

    public C0827i(C0829b c0829b, C0828a c0828a) {
        this.f3058a = c0829b.f3070a;
        this.f3059b = c0829b.f3071b;
        this.f3060c = c0829b.f3072c;
        this.f3061d = c0829b.f3073d;
        this.f3062e = c0829b.f3074e;
        this.f3063f = c0829b.f3075f;
        this.f3064g = c0829b.f3076g;
        this.f3065h = c0829b.f3077h;
        this.f3066i = c0829b.f3078i;
        this.f3067j = c0829b.f3079j;
        this.f3068k = c0829b.f3080k;
        this.f3069l = c0829b.f3081l;
    }

    /* renamed from: a */
    public static C0829b m7305a(Context context, int i, int i2, AbstractC0819c abstractC0819c) {
        ContextThemeWrapper contextThemeWrapper = context;
        int i3 = i;
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(context, i);
            i3 = i2;
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(i3, C3260w0.f11011E);
        try {
            int i4 = obtainStyledAttributes.getInt(0, 0);
            int i5 = obtainStyledAttributes.getInt(3, i4);
            int i6 = obtainStyledAttributes.getInt(4, i4);
            int i7 = obtainStyledAttributes.getInt(2, i4);
            int i8 = obtainStyledAttributes.getInt(1, i4);
            AbstractC0819c m7302d = m7302d(obtainStyledAttributes, 5, abstractC0819c);
            AbstractC0819c m7302d2 = m7302d(obtainStyledAttributes, 8, m7302d);
            AbstractC0819c m7302d3 = m7302d(obtainStyledAttributes, 9, m7302d);
            AbstractC0819c m7302d4 = m7302d(obtainStyledAttributes, 7, m7302d);
            AbstractC0819c m7302d5 = m7302d(obtainStyledAttributes, 6, m7302d);
            C0829b c0829b = new C0829b();
            C3102d m2625n = C3102d.m2625n(i5);
            c0829b.f3070a = m2625n;
            C0829b.m7298b(m2625n);
            c0829b.f3074e = m7302d2;
            C3102d m2625n2 = C3102d.m2625n(i6);
            c0829b.f3071b = m2625n2;
            C0829b.m7298b(m2625n2);
            c0829b.f3075f = m7302d3;
            C3102d m2625n3 = C3102d.m2625n(i7);
            c0829b.f3072c = m2625n3;
            C0829b.m7298b(m2625n3);
            c0829b.f3076g = m7302d4;
            C3102d m2625n4 = C3102d.m2625n(i8);
            c0829b.f3073d = m2625n4;
            C0829b.m7298b(m2625n4);
            c0829b.f3077h = m7302d5;
            return c0829b;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public static C0829b m7304b(Context context, AttributeSet attributeSet, int i, int i2) {
        return m7303c(context, attributeSet, i, i2, new C0817a(0));
    }

    /* renamed from: c */
    public static C0829b m7303c(Context context, AttributeSet attributeSet, int i, int i2, AbstractC0819c abstractC0819c) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11042w, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return m7305a(context, resourceId, resourceId2, abstractC0819c);
    }

    /* renamed from: d */
    public static AbstractC0819c m7302d(TypedArray typedArray, int i, AbstractC0819c abstractC0819c) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return abstractC0819c;
        }
        int i2 = peekValue.type;
        return i2 == 5 ? new C0817a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new C0825g(peekValue.getFraction(1.0f, 1.0f)) : abstractC0819c;
    }

    /* renamed from: e */
    public boolean m7301e(RectF rectF) {
        boolean z = true;
        boolean z2 = this.f3069l.getClass().equals(C0821e.class) && this.f3067j.getClass().equals(C0821e.class) && this.f3066i.getClass().equals(C0821e.class) && this.f3068k.getClass().equals(C0821e.class);
        float mo7306a = this.f3062e.mo7306a(rectF);
        boolean z3 = this.f3063f.mo7306a(rectF) == mo7306a && this.f3065h.mo7306a(rectF) == mo7306a && this.f3064g.mo7306a(rectF) == mo7306a;
        boolean z4 = (this.f3059b instanceof C0826h) && (this.f3058a instanceof C0826h) && (this.f3060c instanceof C0826h) && (this.f3061d instanceof C0826h);
        if (!z2 || !z3 || !z4) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public C0827i m7300f(float f) {
        C0829b c0829b = new C0829b(this);
        c0829b.m7295e(f);
        c0829b.m7294f(f);
        c0829b.m7296d(f);
        c0829b.m7297c(f);
        return c0829b.m7299a();
    }
}
