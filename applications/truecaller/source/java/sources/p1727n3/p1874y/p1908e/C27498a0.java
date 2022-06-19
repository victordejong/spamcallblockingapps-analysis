package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.Locale;
/* renamed from: n3.y.e.a0 */
/* loaded from: classes-dex2jar.jar:n3/y/e/a0.class */
public class C27498a0 {

    /* renamed from: f */
    public b0 f77423f;

    /* renamed from: g */
    public CaptioningManager f77424g;

    /* renamed from: i */
    public Handler f77426i;

    /* renamed from: m */
    public AbstractC27501c f77430m;

    /* renamed from: n */
    public AbstractC27502d f77431n;

    /* renamed from: d */
    public final Object f77421d = new Object();

    /* renamed from: e */
    public final Object f77422e = new Object();

    /* renamed from: j */
    public final Handler.Callback f77427j = new C27499a();

    /* renamed from: k */
    public boolean f77428k = false;

    /* renamed from: l */
    public boolean f77429l = false;

    /* renamed from: a */
    public AbstractC27539u f77418a = null;

    /* renamed from: b */
    public ArrayList<AbstractC27503e> f77419b = new ArrayList<>();

    /* renamed from: c */
    public ArrayList<b0> f77420c = new ArrayList<>();

    /* renamed from: h */
    public CaptioningManager.CaptioningChangeListener f77425h = new C27500b();

    /* renamed from: n3.y.e.a0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/e/a0$a.class */
    public class C27499a implements Handler.Callback {
        public C27499a() {
            C27498a0.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:158:0x0206 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0178  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x017e  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x019a  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x01a0  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x01db  */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean handleMessage(android.os.Message r5) {
            /*
                Method dump skipped, instructions count: 894
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1908e.C27498a0.C27499a.handleMessage(android.os.Message):boolean");
        }
    }

    /* renamed from: n3.y.e.a0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/e/a0$b.class */
    public class C27500b extends CaptioningManager.CaptioningChangeListener {
        public C27500b() {
            C27498a0.this = r4;
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onEnabledChanged(boolean z) {
            C27498a0 c27498a0 = C27498a0.this;
            c27498a0.m196a(c27498a0.f77426i.obtainMessage(4));
        }

        @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
        public void onLocaleChanged(Locale locale) {
            C27498a0 c27498a0 = C27498a0.this;
            c27498a0.m196a(c27498a0.f77426i.obtainMessage(4));
        }
    }

    /* renamed from: n3.y.e.a0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/e/a0$c.class */
    public interface AbstractC27501c {
    }

    /* renamed from: n3.y.e.a0$d */
    /* loaded from: classes-dex2jar.jar:n3/y/e/a0$d.class */
    public interface AbstractC27502d {
    }

    /* renamed from: n3.y.e.a0$e */
    /* loaded from: classes-dex2jar.jar:n3/y/e/a0$e.class */
    public static abstract class AbstractC27503e {
        /* renamed from: a */
        public abstract b0 m193a(MediaFormat mediaFormat);

        /* renamed from: b */
        public abstract boolean m192b(MediaFormat mediaFormat);
    }

    public C27498a0(Context context, AbstractC27539u abstractC27539u, AbstractC27502d abstractC27502d) {
        this.f77431n = abstractC27502d;
        this.f77424g = (CaptioningManager) context.getSystemService("captioning");
    }

    /* renamed from: a */
    public final void m196a(Message message) {
        if (Looper.myLooper() == this.f77426i.getLooper()) {
            this.f77426i.dispatchMessage(message);
        } else {
            this.f77426i.sendMessage(message);
        }
    }

    /* renamed from: b */
    public void m195b(AbstractC27503e abstractC27503e) {
        synchronized (this.f77421d) {
            if (!this.f77419b.contains(abstractC27503e)) {
                this.f77419b.add(abstractC27503e);
            }
        }
    }

    /* renamed from: c */
    public boolean m194c(b0 b0Var) {
        if (b0Var == null || this.f77420c.contains(b0Var)) {
            m196a(this.f77426i.obtainMessage(3, b0Var));
            return true;
        }
        return false;
    }

    public void finalize() throws Throwable {
        this.f77424g.removeCaptioningChangeListener(this.f77425h);
        super.finalize();
    }
}
