package p107g9;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: g9.c0 */
/* loaded from: classes2-dex2jar.jar:g9/c0.class */
public final class HandlerC2927c0 extends Handler {
    public HandlerC2927c0(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        sendMessageDelayed(obtainMessage(), 1000L);
    }
}
