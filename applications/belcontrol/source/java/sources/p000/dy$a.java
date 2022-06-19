package p000;

import android.os.Handler;
import android.os.Message;
import java.util.List;
/* renamed from: dy$a */
/* loaded from: classes-dex2jar.jar:dy$a.class */
public class dy$a extends Handler {

    /* renamed from: a */
    public final /* synthetic */ dy f6149a;

    public dy$a(dy dyVar) {
        this.f6149a = dyVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        this.f6149a.f((List) message.obj);
    }
}
