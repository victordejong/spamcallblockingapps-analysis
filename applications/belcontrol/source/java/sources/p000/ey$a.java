package p000;

import android.os.Handler;
import android.os.Message;
/* renamed from: ey$a */
/* loaded from: classes-dex2jar.jar:ey$a.class */
public class ey$a extends Handler {

    /* renamed from: a */
    public final /* synthetic */ ey f6468a;

    public ey$a(ey eyVar) {
        this.f6468a = eyVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f6468a.o();
        } else if (i != 2) {
        } else {
            ey eyVar = this.f6468a;
            if (eyVar.t == null) {
                return;
            }
            eyVar.t = null;
            eyVar.p();
        }
    }
}
