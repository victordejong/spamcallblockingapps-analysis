package p074d9;

import android.os.Handler;
import android.os.Looper;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
/* renamed from: d9.h */
/* loaded from: classes2-dex2jar.jar:d9/h.class */
public final class C2497h {

    /* renamed from: e */
    public static Handler f8743e;

    /* renamed from: a */
    public final AbstractC2499b f8744a;

    /* renamed from: b */
    public final AbstractC2500c f8745b;

    /* renamed from: c */
    public final AbstractC2490c f8746c;

    /* renamed from: d */
    public final AbstractC2116c f8747d;

    /* renamed from: d9.h$a */
    /* loaded from: classes2-dex2jar.jar:d9/h$a.class */
    public static final class C2498a {

        /* renamed from: a */
        public final AbstractC2490c f8748a;

        /* renamed from: b */
        public final AbstractC2116c f8749b;

        /* renamed from: c */
        public AbstractC2499b f8750c;

        /* renamed from: d */
        public AbstractC2500c f8751d;

        public C2498a(AbstractC2490c abstractC2490c, AbstractC2116c abstractC2116c) {
            this.f8748a = abstractC2490c;
            this.f8749b = abstractC2116c;
        }
    }

    /* renamed from: d9.h$b */
    /* loaded from: classes2-dex2jar.jar:d9/h$b.class */
    public interface AbstractC2499b {
        /* renamed from: f */
        void mo847f(C2497h c2497h, Throwable th);
    }

    /* renamed from: d9.h$c */
    /* loaded from: classes2-dex2jar.jar:d9/h$c.class */
    public interface AbstractC2500c {
        /* renamed from: c */
        void mo105c(C2497h c2497h);
    }

    public C2497h(C2498a c2498a) {
        this.f8747d = c2498a.f8749b;
        this.f8744a = c2498a.f8750c;
        this.f8745b = c2498a.f8751d;
        this.f8746c = c2498a.f8748a;
    }

    /* renamed from: b */
    public static Handler m3512b() {
        if (f8743e == null) {
            f8743e = new Handler(Looper.getMainLooper());
        }
        return f8743e;
    }

    /* renamed from: a */
    public void m3513a() {
        C2489b c2489b = (C2489b) this.f8747d.f7684g.f8734a;
        synchronized (c2489b.f8735a) {
            if (!c2489b.f8735a.contains(this)) {
                c2489b.f8735a.add(this);
            }
        }
    }
}
