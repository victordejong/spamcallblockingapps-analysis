package androidx.p042e.p043a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.C0926v;
import androidx.p042e.p043a.AbstractC1000b;
import androidx.p042e.p043a.C0992a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.e.a.b */
/* loaded from: classes-dex2jar.jar:androidx/e/a/b.class */
public abstract class AbstractC1000b<T extends AbstractC1000b<T>> implements C0992a.AbstractC0994b {

    /* renamed from: a */
    public static final AbstractC1017b f4004a = new AbstractC1017b("translationX") { // from class: androidx.e.a.b.1
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setTranslationX(f);
        }
    };

    /* renamed from: b */
    public static final AbstractC1017b f4005b = new AbstractC1017b("translationY") { // from class: androidx.e.a.b.8
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setTranslationY(f);
        }
    };

    /* renamed from: c */
    public static final AbstractC1017b f4006c = new AbstractC1017b("translationZ") { // from class: androidx.e.a.b.9
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return C0926v.m44084o(view);
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            C0926v.m44111b(view, f);
        }
    };

    /* renamed from: d */
    public static final AbstractC1017b f4007d = new AbstractC1017b("scaleX") { // from class: androidx.e.a.b.10
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getScaleX();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setScaleX(f);
        }
    };

    /* renamed from: e */
    public static final AbstractC1017b f4008e = new AbstractC1017b("scaleY") { // from class: androidx.e.a.b.11
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getScaleY();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setScaleY(f);
        }
    };

    /* renamed from: f */
    public static final AbstractC1017b f4009f = new AbstractC1017b("rotation") { // from class: androidx.e.a.b.12
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getRotation();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setRotation(f);
        }
    };

    /* renamed from: g */
    public static final AbstractC1017b f4010g = new AbstractC1017b("rotationX") { // from class: androidx.e.a.b.13
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getRotationX();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setRotationX(f);
        }
    };

    /* renamed from: h */
    public static final AbstractC1017b f4011h = new AbstractC1017b("rotationY") { // from class: androidx.e.a.b.14
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getRotationY();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setRotationY(f);
        }
    };

    /* renamed from: i */
    public static final AbstractC1017b f4012i = new AbstractC1017b("x") { // from class: androidx.e.a.b.15
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getX();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setX(f);
        }
    };

    /* renamed from: j */
    public static final AbstractC1017b f4013j = new AbstractC1017b("y") { // from class: androidx.e.a.b.2
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getY();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setY(f);
        }
    };

    /* renamed from: k */
    public static final AbstractC1017b f4014k = new AbstractC1017b("z") { // from class: androidx.e.a.b.3
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return C0926v.m44156C(view);
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            C0926v.m44103c(view, f);
        }
    };

    /* renamed from: l */
    public static final AbstractC1017b f4015l = new AbstractC1017b("alpha") { // from class: androidx.e.a.b.4
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getAlpha();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setAlpha(f);
        }
    };

    /* renamed from: m */
    public static final AbstractC1017b f4016m = new AbstractC1017b("scrollX") { // from class: androidx.e.a.b.5
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getScrollX();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setScrollX((int) f);
        }
    };

    /* renamed from: n */
    public static final AbstractC1017b f4017n = new AbstractC1017b("scrollY") { // from class: androidx.e.a.b.6
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ float mo10325a(View view) {
            return view.getScrollY();
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* synthetic */ void mo10324a(View view, float f) {
            view.setScrollY((int) f);
        }
    };

    /* renamed from: o */
    float f4018o;

    /* renamed from: p */
    public float f4019p;

    /* renamed from: q */
    public boolean f4020q;

    /* renamed from: r */
    final Object f4021r;

    /* renamed from: s */
    final AbstractC1018c f4022s;

    /* renamed from: t */
    boolean f4023t;

    /* renamed from: u */
    float f4024u;

    /* renamed from: v */
    float f4025v;

    /* renamed from: w */
    private long f4026w;

    /* renamed from: x */
    private float f4027x;

    /* renamed from: y */
    private final ArrayList<Object> f4028y;

    /* renamed from: z */
    private final ArrayList<Object> f4029z;

    /* renamed from: androidx.e.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$a.class */
    static final class C1016a {

        /* renamed from: a */
        float f4032a;

        /* renamed from: b */
        float f4033b;
    }

    /* renamed from: androidx.e.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$b.class */
    public static abstract class AbstractC1017b extends AbstractC1018c<View> {
        private AbstractC1017b(String str) {
            super(str);
        }
    }

    public AbstractC1000b(final C1019d c1019d) {
        this.f4018o = BitmapDescriptorFactory.HUE_RED;
        this.f4019p = Float.MAX_VALUE;
        this.f4020q = false;
        this.f4023t = false;
        this.f4024u = Float.MAX_VALUE;
        this.f4025v = -Float.MAX_VALUE;
        this.f4026w = 0L;
        this.f4028y = new ArrayList<>();
        this.f4029z = new ArrayList<>();
        this.f4021r = null;
        this.f4022s = new AbstractC1018c("FloatValueHolder") { // from class: androidx.e.a.b.7
            @Override // androidx.p042e.p043a.AbstractC1018c
            /* renamed from: a */
            public final float mo10325a(Object obj) {
                return c1019d.f4035a;
            }

            @Override // androidx.p042e.p043a.AbstractC1018c
            /* renamed from: a */
            public final void mo10324a(Object obj, float f) {
                c1019d.f4035a = f;
            }
        };
        this.f4027x = 1.0f;
    }

    public <K> AbstractC1000b(K k, AbstractC1018c<K> abstractC1018c) {
        this.f4018o = BitmapDescriptorFactory.HUE_RED;
        this.f4019p = Float.MAX_VALUE;
        this.f4020q = false;
        this.f4023t = false;
        this.f4024u = Float.MAX_VALUE;
        this.f4025v = -Float.MAX_VALUE;
        this.f4026w = 0L;
        this.f4028y = new ArrayList<>();
        this.f4029z = new ArrayList<>();
        this.f4021r = k;
        this.f4022s = abstractC1018c;
        if (abstractC1018c == f4009f || abstractC1018c == f4010g || abstractC1018c == f4011h) {
            this.f4027x = 0.1f;
        } else if (abstractC1018c == f4015l) {
            this.f4027x = 0.00390625f;
        } else if (abstractC1018c == f4007d || abstractC1018c == f4008e) {
            this.f4027x = 0.00390625f;
        } else {
            this.f4027x = 1.0f;
        }
    }

    /* renamed from: a */
    private void m43833a(float f) {
        this.f4022s.mo10324a(this.f4021r, f);
        for (int i = 0; i < this.f4029z.size(); i++) {
            if (this.f4029z.get(i) != null) {
                this.f4029z.get(i);
            }
        }
        m43831a(this.f4029z);
    }

    /* renamed from: a */
    private static <T> void m43831a(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    /* renamed from: d */
    private void m43828d() {
        this.f4023t = false;
        C0992a.m43838a().m43837a(this);
        this.f4026w = 0L;
        this.f4020q = false;
        for (int i = 0; i < this.f4028y.size(); i++) {
            if (this.f4028y.get(i) != null) {
                this.f4028y.get(i);
            }
        }
        m43831a(this.f4028y);
    }

    /* renamed from: a */
    public void mo43827a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            boolean z = this.f4023t;
            if (z || z) {
                return;
            }
            this.f4023t = true;
            if (!this.f4020q) {
                this.f4019p = this.f4022s.mo10325a(this.f4021r);
            }
            float f = this.f4019p;
            if (f > this.f4024u || f < this.f4025v) {
                throw new IllegalArgumentException("Starting value need to be in between min value and max value");
            }
            C0992a m43838a = C0992a.m43838a();
            if (m43838a.f3990c.size() == 0) {
                m43838a.m43836b().mo43834a();
            }
            if (m43838a.f3990c.contains(this)) {
                return;
            }
            m43838a.f3990c.add(this);
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    @Override // androidx.p042e.p043a.C0992a.AbstractC0994b
    /* renamed from: a */
    public final boolean mo43832a(long j) {
        long j2 = this.f4026w;
        if (j2 == 0) {
            this.f4026w = j;
            m43833a(this.f4019p);
            return false;
        }
        this.f4026w = j;
        boolean mo43825b = mo43825b(j - j2);
        float min = Math.min(this.f4019p, this.f4024u);
        this.f4019p = min;
        float max = Math.max(min, this.f4025v);
        this.f4019p = max;
        m43833a(max);
        if (mo43825b) {
            m43828d();
        }
        return mo43825b;
    }

    /* renamed from: b */
    public final void m43830b() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            if (!this.f4023t) {
                return;
            }
            m43828d();
            return;
        }
        throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
    }

    /* renamed from: b */
    abstract boolean mo43825b(long j);

    /* renamed from: c */
    public final float m43829c() {
        return this.f4027x * 0.75f;
    }
}
