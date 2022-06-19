package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C1126b {

    /* renamed from: a */
    final Executor f3878a;

    /* renamed from: b */
    final Executor f3879b;

    /* renamed from: c */
    final AbstractC1313v f3880c;

    /* renamed from: d */
    final AbstractC1291k f3881d;

    /* renamed from: e */
    final int f3882e;

    /* renamed from: f */
    final int f3883f;

    /* renamed from: g */
    final int f3884g;

    /* renamed from: h */
    final int f3885h;

    /* renamed from: i */
    private final boolean f3886i;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C1127a {

        /* renamed from: a */
        Executor f3887a;

        /* renamed from: b */
        AbstractC1313v f3888b;

        /* renamed from: c */
        AbstractC1291k f3889c;

        /* renamed from: d */
        Executor f3890d;

        /* renamed from: e */
        int f3891e = 4;

        /* renamed from: f */
        int f3892f = 0;

        /* renamed from: g */
        int f3893g = Integer.MAX_VALUE;

        /* renamed from: h */
        int f3894h = 20;

        /* renamed from: a */
        public C1126b m17948a() {
            return new C1126b(this);
        }
    }

    /* renamed from: androidx.work.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$b.class */
    public interface AbstractC1128b {
        /* renamed from: a */
        C1126b m17947a();
    }

    C1126b(C1127a c1127a) {
        if (c1127a.f3887a == null) {
            this.f3878a = m17949i();
        } else {
            this.f3878a = c1127a.f3887a;
        }
        if (c1127a.f3890d == null) {
            this.f3886i = true;
            this.f3879b = m17949i();
        } else {
            this.f3886i = false;
            this.f3879b = c1127a.f3890d;
        }
        if (c1127a.f3888b == null) {
            this.f3880c = AbstractC1313v.m17521a();
        } else {
            this.f3880c = c1127a.f3888b;
        }
        if (c1127a.f3889c == null) {
            this.f3881d = AbstractC1291k.m17546a();
        } else {
            this.f3881d = c1127a.f3889c;
        }
        this.f3882e = c1127a.f3891e;
        this.f3883f = c1127a.f3892f;
        this.f3884g = c1127a.f3893g;
        this.f3885h = c1127a.f3894h;
    }

    /* renamed from: i */
    private Executor m17949i() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    /* renamed from: a */
    public Executor m17957a() {
        return this.f3878a;
    }

    /* renamed from: b */
    public Executor m17956b() {
        return this.f3879b;
    }

    /* renamed from: c */
    public AbstractC1313v m17955c() {
        return this.f3880c;
    }

    /* renamed from: d */
    public AbstractC1291k m17954d() {
        return this.f3881d;
    }

    /* renamed from: e */
    public int m17953e() {
        return this.f3882e;
    }

    /* renamed from: f */
    public int m17952f() {
        return this.f3883f;
    }

    /* renamed from: g */
    public int m17951g() {
        return this.f3884g;
    }

    /* renamed from: h */
    public int m17950h() {
        return Build.VERSION.SDK_INT == 23 ? this.f3885h / 2 : this.f3885h;
    }
}
