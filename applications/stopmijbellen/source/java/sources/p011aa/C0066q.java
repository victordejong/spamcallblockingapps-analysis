package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
/* renamed from: aa.q */
/* loaded from: classes2-dex2jar.jar:aa/q.class */
public final class C0066q extends C0049c {

    /* renamed from: k */
    public final /* synthetic */ Socket f143k;

    public C0066q(Socket socket) {
        this.f143k = socket;
    }

    @Override // p011aa.C0049c
    /* renamed from: l */
    public IOException mo608l(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // p011aa.C0049c
    /* renamed from: m */
    public void mo607m() {
        try {
            this.f143k.close();
        } catch (AssertionError e) {
            if (!C0062o.m8829b(e)) {
                throw e;
            }
            Logger logger = C0062o.f138a;
            Level level = Level.WARNING;
            StringBuilder m8752j = C0082b.m8752j("Failed to close timed out socket ");
            m8752j.append(this.f143k);
            logger.log(level, m8752j.toString(), (Throwable) e);
        } catch (Exception e2) {
            Logger logger2 = C0062o.f138a;
            Level level2 = Level.WARNING;
            StringBuilder m8752j2 = C0082b.m8752j("Failed to close timed out socket ");
            m8752j2.append(this.f143k);
            logger2.log(level2, m8752j2.toString(), (Throwable) e2);
        }
    }
}
