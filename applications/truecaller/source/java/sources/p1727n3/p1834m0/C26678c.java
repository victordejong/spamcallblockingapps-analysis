package p1727n3.p1834m0;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p1727n3.p1834m0.p1835c0.C26681a;
/* renamed from: n3.m0.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c.class */
public final class C26678c {

    /* renamed from: a */
    public final Executor f74666a = m1450a(false);

    /* renamed from: b */
    public final Executor f74667b = m1450a(true);

    /* renamed from: c */
    public final AbstractC26677b0 f74668c;

    /* renamed from: d */
    public final AbstractC26837m f74669d;

    /* renamed from: e */
    public final C26681a f74670e;

    /* renamed from: f */
    public final int f74671f;

    /* renamed from: g */
    public final int f74672g;

    /* renamed from: h */
    public final int f74673h;

    /* renamed from: i */
    public final int f74674i;

    /* renamed from: n3.m0.c$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c$a.class */
    public static final class C26679a {

        /* renamed from: a */
        public AbstractC26677b0 f74675a;

        /* renamed from: b */
        public int f74676b = 0;

        /* renamed from: c */
        public int f74677c = Integer.MAX_VALUE;

        /* renamed from: d */
        public int f74678d = 20;
    }

    /* renamed from: n3.m0.c$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c$b.class */
    public interface AbstractC26680b {
        /* renamed from: C */
        C26678c mo1449C();
    }

    public C26678c(C26679a c26679a) {
        AbstractC26677b0 abstractC26677b0 = c26679a.f74675a;
        if (abstractC26677b0 == null) {
            String str = AbstractC26677b0.f74665a;
            this.f74668c = new C26675a0();
        } else {
            this.f74668c = abstractC26677b0;
        }
        this.f74669d = new C26836l();
        this.f74670e = new C26681a();
        this.f74671f = 4;
        this.f74672g = c26679a.f74676b;
        this.f74673h = c26679a.f74677c;
        this.f74674i = c26679a.f74678d;
    }

    /* renamed from: a */
    public final Executor m1450a(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC26676b(this, z));
    }
}
