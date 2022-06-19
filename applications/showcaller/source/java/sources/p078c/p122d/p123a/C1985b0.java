package p078c.p122d.p123a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import java.io.File;
import p078c.p122d.p123a.p126g0.AbstractC2018b;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: c.d.a.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/a/b0.class */
public class C1985b0 implements Handler.Callback {

    /* renamed from: d */
    private static File f7069d;

    /* renamed from: e */
    private static final Long f7070e = 1000L;

    /* renamed from: f */
    private HandlerThread f7071f;

    /* renamed from: g */
    private Handler f7072g;

    /* renamed from: h */
    private final AbstractC2018b f7073h;

    public C1985b0(AbstractC2018b abstractC2018b) {
        this.f7073h = abstractC2018b;
    }

    /* renamed from: a */
    public static void m28411a() {
        File m28409c = m28409c();
        if (m28409c.exists()) {
            C2036d.m28253a(C1985b0.class, "delete marker file " + m28409c.delete(), new Object[0]);
        }
    }

    /* renamed from: b */
    private static boolean m28410b() {
        return m28409c().exists();
    }

    /* renamed from: c */
    private static File m28409c() {
        if (f7069d == null) {
            Context m28262a = C2031c.m28262a();
            f7069d = new File(m28262a.getCacheDir() + File.separator + ".filedownloader_pause_all_marker.b");
        }
        return f7069d;
    }

    /* renamed from: d */
    public void m28408d() {
        HandlerThread handlerThread = new HandlerThread("PauseAllChecker");
        this.f7071f = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.f7071f.getLooper(), this);
        this.f7072g = handler;
        handler.sendEmptyMessageDelayed(0, f7070e.longValue());
    }

    /* renamed from: e */
    public void m28407e() {
        this.f7072g.removeMessages(0);
        this.f7071f.quit();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:5:0x000f). Please submit an issue!!! */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            if (m28410b()) {
                try {
                    this.f7073h.mo779t6();
                } catch (RemoteException e) {
                    C2036d.m28251c(this, e, "pause all failed", new Object[0]);
                }
                m28411a();
            }
            this.f7072g.sendEmptyMessageDelayed(0, f7070e.longValue());
            return true;
        } catch (Throwable th) {
            m28411a();
            throw th;
        }
    }
}
