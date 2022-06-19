package androidx.work;

import android.os.Build;
import androidx.work.impl.C1249a;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.work.a */
/* loaded from: classes-dex2jar.jar:androidx/work/a.class */
public final class C1230a {

    /* renamed from: a */
    final Executor f5250a;

    /* renamed from: b */
    final Executor f5251b;

    /* renamed from: c */
    final AbstractC1421s f5252c;

    /* renamed from: d */
    final AbstractC1244i f5253d;

    /* renamed from: e */
    final AbstractC1416o f5254e;

    /* renamed from: f */
    final AbstractC1242g f5255f;

    /* renamed from: g */
    final String f5256g;

    /* renamed from: h */
    final int f5257h;

    /* renamed from: i */
    final int f5258i;

    /* renamed from: j */
    final int f5259j;

    /* renamed from: k */
    final int f5260k;

    /* renamed from: l */
    private final boolean f5261l;

    /* renamed from: androidx.work.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$a.class */
    public class ThreadFactoryC1231a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f5262a = new AtomicInteger(0);

        /* renamed from: b */
        final /* synthetic */ boolean f5263b;

        ThreadFactoryC1231a(boolean z) {
            C1230a.this = r6;
            this.f5263b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            String str = this.f5263b ? "WM.task-" : "androidx.work-";
            return new Thread(runnable, str + this.f5262a.incrementAndGet());
        }
    }

    /* renamed from: androidx.work.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$b.class */
    public static final class C1232b {

        /* renamed from: a */
        Executor f5265a;

        /* renamed from: b */
        AbstractC1421s f5266b;

        /* renamed from: c */
        AbstractC1244i f5267c;

        /* renamed from: d */
        Executor f5268d;

        /* renamed from: e */
        AbstractC1416o f5269e;

        /* renamed from: f */
        AbstractC1242g f5270f;

        /* renamed from: g */
        String f5271g;

        /* renamed from: h */
        int f5272h = 4;

        /* renamed from: i */
        int f5273i = 0;

        /* renamed from: j */
        int f5274j = Integer.MAX_VALUE;

        /* renamed from: k */
        int f5275k = 20;

        /* renamed from: a */
        public C1230a m30584a() {
            return new C1230a(this);
        }
    }

    /* renamed from: androidx.work.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$c.class */
    public interface AbstractC1233c {
        /* renamed from: a */
        C1230a m30583a();
    }

    C1230a(C1232b c1232b) {
        Executor executor = c1232b.f5265a;
        if (executor == null) {
            this.f5250a = m30597a(false);
        } else {
            this.f5250a = executor;
        }
        Executor executor2 = c1232b.f5268d;
        if (executor2 == null) {
            this.f5261l = true;
            this.f5251b = m30597a(true);
        } else {
            this.f5261l = false;
            this.f5251b = executor2;
        }
        AbstractC1421s abstractC1421s = c1232b.f5266b;
        if (abstractC1421s == null) {
            this.f5252c = AbstractC1421s.m30131c();
        } else {
            this.f5252c = abstractC1421s;
        }
        AbstractC1244i abstractC1244i = c1232b.f5267c;
        if (abstractC1244i == null) {
            this.f5253d = AbstractC1244i.m30535c();
        } else {
            this.f5253d = abstractC1244i;
        }
        AbstractC1416o abstractC1416o = c1232b.f5269e;
        if (abstractC1416o == null) {
            this.f5254e = new C1249a();
        } else {
            this.f5254e = abstractC1416o;
        }
        this.f5257h = c1232b.f5272h;
        this.f5258i = c1232b.f5273i;
        this.f5259j = c1232b.f5274j;
        this.f5260k = c1232b.f5275k;
        this.f5255f = c1232b.f5270f;
        this.f5256g = c1232b.f5271g;
    }

    /* renamed from: a */
    private Executor m30597a(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), m30596b(z));
    }

    /* renamed from: b */
    private ThreadFactory m30596b(boolean z) {
        return new ThreadFactoryC1231a(z);
    }

    /* renamed from: c */
    public String m30595c() {
        return this.f5256g;
    }

    /* renamed from: d */
    public AbstractC1242g m30594d() {
        return this.f5255f;
    }

    /* renamed from: e */
    public Executor m30593e() {
        return this.f5250a;
    }

    /* renamed from: f */
    public AbstractC1244i m30592f() {
        return this.f5253d;
    }

    /* renamed from: g */
    public int m30591g() {
        return this.f5259j;
    }

    /* renamed from: h */
    public int m30590h() {
        return Build.VERSION.SDK_INT == 23 ? this.f5260k / 2 : this.f5260k;
    }

    /* renamed from: i */
    public int m30589i() {
        return this.f5258i;
    }

    /* renamed from: j */
    public int m30588j() {
        return this.f5257h;
    }

    /* renamed from: k */
    public AbstractC1416o m30587k() {
        return this.f5254e;
    }

    /* renamed from: l */
    public Executor m30586l() {
        return this.f5251b;
    }

    /* renamed from: m */
    public AbstractC1421s m30585m() {
        return this.f5252c;
    }
}
