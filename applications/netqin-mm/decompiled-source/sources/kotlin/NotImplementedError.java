package kotlin;

import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/NotImplementedError.class */
public final class NotImplementedError extends Error {
    public NotImplementedError() {
        this(null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotImplementedError(String str) {
        super(str);
        C10059q.m1637b(str, AvidVideoPlaybackListenerImpl.MESSAGE);
    }

    public /* synthetic */ NotImplementedError(String str, int i, C10057o oVar) {
        this((i & 1) != 0 ? "An operation is not implemented." : str);
    }
}
