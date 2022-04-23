package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: androidx.work.a */
/* loaded from: classes-dex2jar.jar:androidx/work/a.class */
public final class C0545a {

    /* renamed from: a */
    private final Executor f2948a;

    /* renamed from: b */
    private final Executor f2949b;

    /* renamed from: c */
    private final AbstractC0612m f2950c;

    /* renamed from: d */
    private final int f2951d;

    /* renamed from: e */
    private final int f2952e;

    /* renamed from: f */
    private final int f2953f;

    /* renamed from: g */
    private final int f2954g;

    /* renamed from: androidx.work.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$a.class */
    public static final class C0546a {

        /* renamed from: a */
        Executor f2955a;

        /* renamed from: b */
        AbstractC0612m f2956b;

        /* renamed from: c */
        Executor f2957c;

        /* renamed from: d */
        int f2958d = 4;

        /* renamed from: e */
        int f2959e = 0;

        /* renamed from: f */
        int f2960f = Integer.MAX_VALUE;

        /* renamed from: g */
        int f2961g = 20;

        /* renamed from: a */
        public C0545a m11787a() {
            return new C0545a(this);
        }
    }

    /* renamed from: androidx.work.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$b.class */
    public interface AbstractC0547b {
        /* renamed from: a */
        C0545a m11786a();
    }

    C0545a(C0546a aVar) {
        Executor executor = aVar.f2955a;
        this.f2948a = executor == null ? m11795a() : executor;
        Executor executor2 = aVar.f2957c;
        this.f2949b = executor2 == null ? m11795a() : executor2;
        AbstractC0612m mVar = aVar.f2956b;
        this.f2950c = mVar == null ? AbstractC0612m.m11576c() : mVar;
        this.f2951d = aVar.f2958d;
        this.f2952e = aVar.f2959e;
        this.f2953f = aVar.f2960f;
        this.f2954g = aVar.f2961g;
    }

    /* renamed from: a */
    private Executor m11795a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    /* renamed from: b */
    public Executor m11794b() {
        return this.f2948a;
    }

    /* renamed from: c */
    public int m11793c() {
        return this.f2953f;
    }

    /* renamed from: d */
    public int m11792d() {
        return Build.VERSION.SDK_INT == 23 ? this.f2954g / 2 : this.f2954g;
    }

    /* renamed from: e */
    public int m11791e() {
        return this.f2952e;
    }

    /* renamed from: f */
    public int m11790f() {
        return this.f2951d;
    }

    /* renamed from: g */
    public Executor m11789g() {
        return this.f2949b;
    }

    /* renamed from: h */
    public AbstractC0612m m11788h() {
        return this.f2950c;
    }
}
