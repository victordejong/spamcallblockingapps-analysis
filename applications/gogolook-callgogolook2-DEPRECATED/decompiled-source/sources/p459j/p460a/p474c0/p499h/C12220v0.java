package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.Intent;
import android.os.Debug;
import android.os.PowerManager;
import android.os.Process;
import com.appsflyer.share.Constants;
/* renamed from: j.a.c0.h.v0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/v0.class */
public class C12220v0 {

    /* renamed from: b */
    public final String f27389b;

    /* renamed from: d */
    public PowerManager.WakeLock f27391d;

    /* renamed from: a */
    public final Object f27388a = new Object();

    /* renamed from: c */
    public final int f27390c = Process.myPid();

    public C12220v0(String str) {
        this.f27389b = str;
    }

    /* renamed from: a */
    public void m6728a(Context context, Intent intent, int i) {
        synchronized (this.f27388a) {
            if (this.f27391d == null) {
                this.f27391d = ((PowerManager) context.getSystemService("power")).newWakeLock(1, this.f27389b);
            }
        }
        this.f27391d.acquire();
        intent.putExtra(Constants.URL_MEDIA_SOURCE, this.f27390c);
    }

    /* renamed from: a */
    public void m6727a(Intent intent, int i) {
        if (this.f27390c == intent.getIntExtra(Constants.URL_MEDIA_SOURCE, -1)) {
            try {
                this.f27391d.release();
            } catch (RuntimeException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("KeepAliveService.onHandleIntent exit crash ");
                sb.append(intent);
                sb.append(" ");
                sb.append(intent.getAction());
                sb.append(" opcode: ");
                sb.append(i);
                sb.append(" sWakeLock: ");
                sb.append(this.f27391d);
                sb.append(" isHeld: ");
                PowerManager.WakeLock wakeLock = this.f27391d;
                sb.append(wakeLock == null ? "(null)" : Boolean.valueOf(wakeLock.isHeld()));
                C12153d0.m6987b("MessagingAppDataModel", sb.toString());
                if (!Debug.isDebuggerConnected()) {
                    C12151d.m7005a("WakeLock no longer held at end of handler");
                }
            }
        }
    }
}
