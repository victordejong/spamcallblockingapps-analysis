package p193e.p1485h.p1486a.p1493c.p1502r0;

import com.clevertap.android.sdk.inbox.CTInboxMessage;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.C22768o;
/* renamed from: e.h.a.c.r0.g */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/g.class */
public class CallableC22819g implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ CTInboxMessage f63312a;

    /* renamed from: b */
    public final /* synthetic */ C22820h f63313b;

    public CallableC22819g(C22820h c22820h, CTInboxMessage cTInboxMessage) {
        this.f63313b = c22820h;
        this.f63312a = cTInboxMessage;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        synchronized (this.f63313b.f63319f.f63016a) {
            if (this.f63313b.m7738b(this.f63312a.f2382l)) {
                Objects.requireNonNull((C22768o) this.f63313b.f63320g);
            }
        }
        return null;
    }
}
