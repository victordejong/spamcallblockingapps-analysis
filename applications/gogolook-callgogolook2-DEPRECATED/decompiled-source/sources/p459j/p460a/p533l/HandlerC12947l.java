package p459j.p460a.p533l;

import android.os.Handler;
import android.os.Message;
@Deprecated
/* renamed from: j.a.l.l */
/* loaded from: classes2-dex2jar.jar:j/a/l/l.class */
public class HandlerC12947l extends Handler {
    /* renamed from: a */
    public static Message m4943a(String str) {
        return Message.obtain(null, 0, str);
    }

    /* renamed from: c */
    public static Message m4941c() {
        return Message.obtain((Handler) null, 1);
    }

    /* renamed from: d */
    public static Message m4940d() {
        return Message.obtain((Handler) null, 0);
    }

    /* renamed from: a */
    public void mo4945a() {
    }

    /* renamed from: a */
    public void mo4944a(Object obj) {
        throw null;
    }

    /* renamed from: b */
    public void mo4942b() {
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            mo4944a(message.obj);
        } else if (i == 1) {
            mo4945a();
        } else if (i == 2) {
            mo4942b();
        }
    }
}
