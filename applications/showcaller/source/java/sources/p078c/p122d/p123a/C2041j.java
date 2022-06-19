package p078c.p122d.p123a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import p078c.p122d.p123a.p128i0.C2029b;
/* renamed from: c.d.a.j */
/* loaded from: classes2-dex2jar.jar:c/d/a/j.class */
public class C2041j {

    /* renamed from: a */
    private static final Executor f7167a = C2029b.m28265a(5, "BlockCompleted");

    /* renamed from: b */
    static int f7168b = 10;

    /* renamed from: c */
    static int f7169c = 5;

    /* renamed from: d */
    private final Handler f7170d;

    /* renamed from: e */
    private final LinkedBlockingQueue<AbstractC2062t> f7171e;

    /* renamed from: f */
    private final Object f7172f;

    /* renamed from: g */
    private final ArrayList<AbstractC2062t> f7173g;

    /* renamed from: c.d.a.j$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/j$a.class */
    public static final class RunnableC2042a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC2062t f7174d;

        RunnableC2042a(AbstractC2062t abstractC2062t) {
            this.f7174d = abstractC2062t;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7174d.mo28132m();
        }
    }

    /* renamed from: c.d.a.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/j$b.class */
    public static final class C2043b {

        /* renamed from: a */
        private static final C2041j f7175a = new C2041j(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c.d.a.j$c */
    /* loaded from: classes2-dex2jar.jar:c/d/a/j$c.class */
    public static class C2044c implements Handler.Callback {
        private C2044c() {
        }

        /* synthetic */ C2044c(RunnableC2042a runnableC2042a) {
            this();
        }

        /* renamed from: a */
        private void m28183a(ArrayList<AbstractC2062t> arrayList) {
            Iterator<AbstractC2062t> it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC2062t next = it.next();
                if (!C2041j.m28189f(next)) {
                    next.mo28132m();
                }
            }
            arrayList.clear();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                ((AbstractC2062t) message.obj).mo28132m();
                return true;
            } else if (i != 2) {
                return true;
            } else {
                m28183a((ArrayList) message.obj);
                C2041j.m28191d().m28187h();
                return true;
            }
        }
    }

    private C2041j() {
        this.f7172f = new Object();
        this.f7173g = new ArrayList<>();
        this.f7170d = new Handler(Looper.getMainLooper(), new C2044c(null));
        this.f7171e = new LinkedBlockingQueue<>();
    }

    /* synthetic */ C2041j(RunnableC2042a runnableC2042a) {
        this();
    }

    /* renamed from: c */
    private void m28192c(AbstractC2062t abstractC2062t) {
        synchronized (this.f7172f) {
            this.f7171e.offer(abstractC2062t);
        }
        m28187h();
    }

    /* renamed from: d */
    public static C2041j m28191d() {
        return C2043b.f7175a;
    }

    /* renamed from: e */
    private void m28190e(AbstractC2062t abstractC2062t) {
        Handler handler = this.f7170d;
        handler.sendMessage(handler.obtainMessage(1, abstractC2062t));
    }

    /* renamed from: f */
    public static boolean m28189f(AbstractC2062t abstractC2062t) {
        if (abstractC2062t.mo28135j()) {
            f7167a.execute(new RunnableC2042a(abstractC2062t));
            return true;
        }
        return false;
    }

    /* renamed from: g */
    public static boolean m28188g() {
        return f7168b > 0;
    }

    /* renamed from: h */
    public void m28187h() {
        int i;
        synchronized (this.f7172f) {
            if (!this.f7173g.isEmpty()) {
                return;
            }
            if (this.f7171e.isEmpty()) {
                return;
            }
            if (!m28188g()) {
                this.f7171e.drainTo(this.f7173g);
                i = 0;
            } else {
                int i2 = f7168b;
                int min = Math.min(this.f7171e.size(), f7169c);
                for (int i3 = 0; i3 < min; i3++) {
                    this.f7173g.add(this.f7171e.remove());
                }
                i = i2;
            }
            Handler handler = this.f7170d;
            handler.sendMessageDelayed(handler.obtainMessage(2, this.f7173g), i);
        }
    }

    /* renamed from: i */
    public void m28186i(AbstractC2062t abstractC2062t) {
        m28185j(abstractC2062t, false);
    }

    /* renamed from: j */
    void m28185j(AbstractC2062t abstractC2062t, boolean z) {
        if (abstractC2062t.mo28144a()) {
            abstractC2062t.mo28132m();
        } else if (m28189f(abstractC2062t)) {
        } else {
            if (!m28188g() && !this.f7171e.isEmpty()) {
                synchronized (this.f7172f) {
                    if (!this.f7171e.isEmpty()) {
                        Iterator<AbstractC2062t> it = this.f7171e.iterator();
                        while (it.hasNext()) {
                            m28190e(it.next());
                        }
                    }
                    this.f7171e.clear();
                }
            }
            if (!m28188g() || z) {
                m28190e(abstractC2062t);
            } else {
                m28192c(abstractC2062t);
            }
        }
    }
}
