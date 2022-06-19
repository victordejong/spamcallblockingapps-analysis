package p1727n3.p1855p.p1856a;

import android.view.Choreographer;
import java.util.ArrayList;
import p1727n3.p1788g.C26187h;
/* renamed from: n3.p.a.a */
/* loaded from: classes-dex2jar.jar:n3/p/a/a.class */
public class C26886a {

    /* renamed from: g */
    public static final ThreadLocal<C26886a> f75147g = new ThreadLocal<>();

    /* renamed from: d */
    public AbstractC26889c f75151d;

    /* renamed from: a */
    public final C26187h<AbstractC26888b, Long> f75148a = new C26187h<>();

    /* renamed from: b */
    public final ArrayList<AbstractC26888b> f75149b = new ArrayList<>();

    /* renamed from: c */
    public final C26887a f75150c = new C26887a();

    /* renamed from: e */
    public long f75152e = 0;

    /* renamed from: f */
    public boolean f75153f = false;

    /* renamed from: n3.p.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/p/a/a$a.class */
    public class C26887a {
        public C26887a() {
            C26886a.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0081 A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m1241a() {
            /*
                Method dump skipped, instructions count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1855p.p1856a.C26886a.C26887a.m1241a():void");
        }
    }

    /* renamed from: n3.p.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/p/a/a$b.class */
    public interface AbstractC26888b {
        /* renamed from: a */
        boolean mo1240a(long j);
    }

    /* renamed from: n3.p.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/p/a/a$c.class */
    public static abstract class AbstractC26889c {

        /* renamed from: a */
        public final C26887a f75155a;

        public AbstractC26889c(C26887a c26887a) {
            this.f75155a = c26887a;
        }
    }

    /* renamed from: n3.p.a.a$d */
    /* loaded from: classes-dex2jar.jar:n3/p/a/a$d.class */
    public static class C26890d extends AbstractC26889c {

        /* renamed from: b */
        public final Choreographer f75156b = Choreographer.getInstance();

        /* renamed from: c */
        public final Choreographer.FrameCallback f75157c = new Choreographer$FrameCallbackC26891a();

        /* renamed from: n3.p.a.a$d$a */
        /* loaded from: classes-dex2jar.jar:n3/p/a/a$d$a.class */
        public class Choreographer$FrameCallbackC26891a implements Choreographer.FrameCallback {
            public Choreographer$FrameCallbackC26891a() {
                C26890d.this = r4;
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                C26890d.this.f75155a.m1241a();
            }
        }

        public C26890d(C26887a c26887a) {
            super(c26887a);
        }
    }

    /* renamed from: a */
    public static C26886a m1242a() {
        ThreadLocal<C26886a> threadLocal = f75147g;
        if (threadLocal.get() == null) {
            threadLocal.set(new C26886a());
        }
        return threadLocal.get();
    }
}
