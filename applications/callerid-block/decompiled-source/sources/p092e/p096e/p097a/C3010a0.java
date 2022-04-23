package p092e.p096e.p097a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import java.io.File;
import p092e.p096e.p097a.p100f0.AbstractC3043b;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: e.e.a.a0 */
/* loaded from: classes2-dex2jar.jar:e/e/a/a0.class */
public class C3010a0 implements Handler.Callback {

    /* renamed from: e */
    private static File f12600e;

    /* renamed from: f */
    private static final Long f12601f = 1000L;

    /* renamed from: b */
    private HandlerThread f12602b;

    /* renamed from: c */
    private Handler f12603c;

    /* renamed from: d */
    private final AbstractC3043b f12604d;

    public C3010a0(AbstractC3043b bVar) {
        this.f12604d = bVar;
    }

    /* renamed from: a */
    public static void m588a() {
        File c = m586c();
        if (c.exists()) {
            C3062d.m414a(C3010a0.class, "delete marker file " + c.delete(), new Object[0]);
        }
    }

    /* renamed from: b */
    private static boolean m587b() {
        return m586c().exists();
    }

    /* renamed from: c */
    private static File m586c() {
        if (f12600e == null) {
            Context a = C3056c.m426a();
            f12600e = new File(a.getCacheDir() + File.separator + ".filedownloader_pause_all_marker.b");
        }
        return f12600e;
    }

    /* renamed from: d */
    public void m585d() {
        HandlerThread handlerThread = new HandlerThread("PauseAllChecker");
        this.f12602b = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.f12602b.getLooper(), this);
        this.f12603c = handler;
        handler.sendEmptyMessageDelayed(0, f12601f.longValue());
    }

    /* renamed from: e */
    public void m584e() {
        this.f12603c.removeMessages(0);
        this.f12602b.quit();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:5:0x000f). Please submit an issue!!! */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (m587b()) {
                try {
                    this.f12604d.mo456f6();
                } catch (RemoteException e) {
                    C3062d.m412c(this, e, "pause all failed", new Object[0]);
                }
                m588a();
            }
            this.f12603c.sendEmptyMessageDelayed(0, f12601f.longValue());
            return true;
        } catch (Throwable th) {
            m588a();
            throw th;
        }
    }
}
