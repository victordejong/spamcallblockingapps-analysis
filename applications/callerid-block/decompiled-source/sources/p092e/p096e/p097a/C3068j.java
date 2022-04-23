package p092e.p096e.p097a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import p092e.p096e.p097a.p102h0.C3054b;
/* renamed from: e.e.a.j */
/* loaded from: classes2-dex2jar.jar:e/e/a/j.class */
public class C3068j {

    /* renamed from: e */
    private static final Executor f12698e = C3054b.m429a(5, "BlockCompleted");

    /* renamed from: f */
    static int f12699f = 10;

    /* renamed from: g */
    static int f12700g = 5;

    /* renamed from: a */
    private final Handler f12701a;

    /* renamed from: b */
    private final LinkedBlockingQueue<AbstractC3088s> f12702b;

    /* renamed from: c */
    private final Object f12703c;

    /* renamed from: d */
    private final ArrayList<AbstractC3088s> f12704d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e.e.a.j$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/j$a.class */
    public static final class RunnableC3069a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC3088s f12705b;

        RunnableC3069a(AbstractC3088s sVar) {
            this.f12705b = sVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12705b.mo278l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e.e.a.j$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/j$b.class */
    public static final class C3070b {

        /* renamed from: a */
        private static final C3068j f12706a = new C3068j(null);
    }

    /* renamed from: e.e.a.j$c */
    /* loaded from: classes2-dex2jar.jar:e/e/a/j$c.class */
    private static class C3071c implements Handler.Callback {
        private C3071c() {
        }

        /* synthetic */ C3071c(RunnableC3069a aVar) {
            this();
        }

        /* renamed from: a */
        private void m333a(ArrayList<AbstractC3088s> arrayList) {
            Iterator<AbstractC3088s> it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC3088s next = it.next();
                if (!C3068j.m339f(next)) {
                    next.mo278l();
                }
            }
            arrayList.clear();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                ((AbstractC3088s) message.obj).mo278l();
                return true;
            } else if (i != 2) {
                return true;
            } else {
                m333a((ArrayList) message.obj);
                C3068j.m341d().m337h();
                return true;
            }
        }
    }

    private C3068j() {
        this.f12703c = new Object();
        this.f12704d = new ArrayList<>();
        this.f12701a = new Handler(Looper.getMainLooper(), new C3071c(null));
        this.f12702b = new LinkedBlockingQueue<>();
    }

    /* synthetic */ C3068j(RunnableC3069a aVar) {
        this();
    }

    /* renamed from: c */
    private void m342c(AbstractC3088s sVar) {
        synchronized (this.f12703c) {
            this.f12702b.offer(sVar);
        }
        m337h();
    }

    /* renamed from: d */
    public static C3068j m341d() {
        return C3070b.f12706a;
    }

    /* renamed from: e */
    private void m340e(AbstractC3088s sVar) {
        Handler handler = this.f12701a;
        handler.sendMessage(handler.obtainMessage(1, sVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static boolean m339f(AbstractC3088s sVar) {
        if (!sVar.mo287c()) {
            return false;
        }
        f12698e.execute(new RunnableC3069a(sVar));
        return true;
    }

    /* renamed from: g */
    public static boolean m338g() {
        return f12699f > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m337h() {
        synchronized (this.f12703c) {
            try {
                if (this.f12704d.isEmpty()) {
                    if (!this.f12702b.isEmpty()) {
                        int i = 0;
                        if (!m338g()) {
                            this.f12702b.drainTo(this.f12704d);
                        } else {
                            i = f12699f;
                            int min = Math.min(this.f12702b.size(), f12700g);
                            for (int i2 = 0; i2 < min; i2++) {
                                this.f12704d.add(this.f12702b.remove());
                            }
                        }
                        Handler handler = this.f12701a;
                        handler.sendMessageDelayed(handler.obtainMessage(2, this.f12704d), i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m336i(AbstractC3088s sVar) {
        m335j(sVar, false);
    }

    /* renamed from: j */
    void m335j(AbstractC3088s sVar, boolean z) {
        if (sVar.mo284f()) {
            sVar.mo278l();
        } else if (!m339f(sVar)) {
            if (!m338g() && !this.f12702b.isEmpty()) {
                synchronized (this.f12703c) {
                    if (!this.f12702b.isEmpty()) {
                        Iterator<AbstractC3088s> it = this.f12702b.iterator();
                        while (it.hasNext()) {
                            m340e(it.next());
                        }
                    }
                    this.f12702b.clear();
                }
            }
            if (!m338g() || z) {
                m340e(sVar);
            } else {
                m342c(sVar);
            }
        }
    }
}
