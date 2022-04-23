package androidx.e.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.View;
import androidx.core.view.v;
import androidx.e.a.a;
import androidx.e.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/e/a/b.class */
public abstract class b<T extends b<T>> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    public static final AbstractC0060b f2123a = new AbstractC0060b("translationX") { // from class: androidx.e.a.b.1
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getTranslationX();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setTranslationX(f2);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final AbstractC0060b f2124b = new AbstractC0060b("translationY") { // from class: androidx.e.a.b.8
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getTranslationY();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setTranslationY(f2);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final AbstractC0060b f2125c = new AbstractC0060b("translationZ") { // from class: androidx.e.a.b.9
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return v.o(view);
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            v.b(view, f2);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final AbstractC0060b f2126d = new AbstractC0060b("scaleX") { // from class: androidx.e.a.b.10
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getScaleX();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setScaleX(f2);
        }
    };
    public static final AbstractC0060b e = new AbstractC0060b("scaleY") { // from class: androidx.e.a.b.11
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getScaleY();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setScaleY(f2);
        }
    };
    public static final AbstractC0060b f = new AbstractC0060b("rotation") { // from class: androidx.e.a.b.12
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getRotation();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setRotation(f2);
        }
    };
    public static final AbstractC0060b g = new AbstractC0060b("rotationX") { // from class: androidx.e.a.b.13
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getRotationX();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setRotationX(f2);
        }
    };
    public static final AbstractC0060b h = new AbstractC0060b("rotationY") { // from class: androidx.e.a.b.14
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getRotationY();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setRotationY(f2);
        }
    };
    public static final AbstractC0060b i = new AbstractC0060b("x") { // from class: androidx.e.a.b.15
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getX();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setX(f2);
        }
    };
    public static final AbstractC0060b j = new AbstractC0060b("y") { // from class: androidx.e.a.b.2
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getY();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setY(f2);
        }
    };
    public static final AbstractC0060b k = new AbstractC0060b("z") { // from class: androidx.e.a.b.3
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return v.C(view);
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            v.c(view, f2);
        }
    };
    public static final AbstractC0060b l = new AbstractC0060b("alpha") { // from class: androidx.e.a.b.4
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getAlpha();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setAlpha(f2);
        }
    };
    public static final AbstractC0060b m = new AbstractC0060b("scrollX") { // from class: androidx.e.a.b.5
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getScrollX();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setScrollX((int) f2);
        }
    };
    public static final AbstractC0060b n = new AbstractC0060b("scrollY") { // from class: androidx.e.a.b.6
        @Override // androidx.e.a.c
        public final /* synthetic */ float a(View view) {
            return view.getScrollY();
        }

        @Override // androidx.e.a.c
        public final /* synthetic */ void a(View view, float f2) {
            view.setScrollY((int) f2);
        }
    };
    float o;
    public float p;
    public boolean q;
    final Object r;
    final c s;
    boolean t;
    float u;
    float v;
    private long w;
    private float x;
    private final ArrayList<Object> y;
    private final ArrayList<Object> z;

    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        float f2129a;

        /* renamed from: b  reason: collision with root package name */
        float f2130b;
    }

    /* renamed from: androidx.e.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$b.class */
    public static abstract class AbstractC0060b extends c<View> {
        private AbstractC0060b(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(final d dVar) {
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = Float.MAX_VALUE;
        this.q = false;
        this.t = false;
        this.u = Float.MAX_VALUE;
        this.v = -Float.MAX_VALUE;
        this.w = 0L;
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        this.r = null;
        this.s = new c("FloatValueHolder") { // from class: androidx.e.a.b.7
            @Override // androidx.e.a.c
            public final float a(Object obj) {
                return dVar.f2132a;
            }

            @Override // androidx.e.a.c
            public final void a(Object obj, float f2) {
                dVar.f2132a = f2;
            }
        };
        this.x = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K> b(K k2, c<K> cVar) {
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = Float.MAX_VALUE;
        this.q = false;
        this.t = false;
        this.u = Float.MAX_VALUE;
        this.v = -Float.MAX_VALUE;
        this.w = 0L;
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        this.r = k2;
        this.s = cVar;
        if (cVar == f || cVar == g || cVar == h) {
            this.x = 0.1f;
        } else if (cVar == l) {
            this.x = 0.00390625f;
        } else if (cVar == f2126d || cVar == e) {
            this.x = 0.00390625f;
        } else {
            this.x = 1.0f;
        }
    }

    private void a(float f2) {
        this.s.a(this.r, f2);
        for (int i2 = 0; i2 < this.z.size(); i2++) {
            if (this.z.get(i2) != null) {
                this.z.get(i2);
            }
        }
        a(this.z);
    }

    private static <T> void a(ArrayList<T> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    private void d() {
        this.t = false;
        androidx.e.a.a.a().a(this);
        this.w = 0L;
        this.q = false;
        for (int i2 = 0; i2 < this.y.size(); i2++) {
            if (this.y.get(i2) != null) {
                this.y.get(i2);
            }
        }
        a(this.y);
    }

    public void a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            boolean z = this.t;
            if (!z && !z) {
                this.t = true;
                if (!this.q) {
                    this.p = this.s.a(this.r);
                }
                float f2 = this.p;
                if (f2 > this.u || f2 < this.v) {
                    throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                }
                androidx.e.a.a a2 = androidx.e.a.a.a();
                if (a2.f2112c.size() == 0) {
                    a2.b().a();
                }
                if (!a2.f2112c.contains(this)) {
                    a2.f2112c.add(this);
                    return;
                }
                return;
            }
            return;
        }
        throw new AndroidRuntimeException("Animations may only be started on the main thread");
    }

    @Override // androidx.e.a.a.b
    public final boolean a(long j2) {
        long j3 = this.w;
        if (j3 == 0) {
            this.w = j2;
            a(this.p);
            return false;
        }
        this.w = j2;
        boolean b2 = b(j2 - j3);
        float min = Math.min(this.p, this.u);
        this.p = min;
        float max = Math.max(min, this.v);
        this.p = max;
        a(max);
        if (b2) {
            d();
        }
        return b2;
    }

    public final void b() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new AndroidRuntimeException("Animations may only be canceled on the main thread");
        } else if (this.t) {
            d();
        }
    }

    abstract boolean b(long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float c() {
        return this.x * 0.75f;
    }
}
