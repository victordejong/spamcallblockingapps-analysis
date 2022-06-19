package p068d2;

import android.app.AlertDialog;
/* renamed from: d2.l0 */
/* loaded from: classes-dex2jar.jar:d2/l0.class */
public class RunnableC2358l0 implements Runnable {
    public RunnableC2358l0(C2329k0 c2329k0) {
    }

    @Override // java.lang.Runnable
    public void run() {
        C2204e2 m3720n = C2408t.m3591d().m3720n();
        AlertDialog alertDialog = m3720n.f8032b;
        if (alertDialog != null) {
            alertDialog.dismiss();
            m3720n.f8032b = null;
        }
    }
}
