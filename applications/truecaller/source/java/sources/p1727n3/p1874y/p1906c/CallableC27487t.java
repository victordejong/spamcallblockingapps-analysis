package p1727n3.p1874y.p1906c;

import androidx.media2.common.SessionPlayer;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: n3.y.c.t */
/* loaded from: classes-dex2jar.jar:n3/y/c/t.class */
public class CallableC27487t implements Callable<List<SessionPlayer.TrackInfo>> {

    /* renamed from: a */
    public final /* synthetic */ m f77398a;

    public CallableC27487t(m mVar) {
        this.f77398a = mVar;
    }

    @Override // java.util.concurrent.Callable
    public List<SessionPlayer.TrackInfo> call() throws Exception {
        return this.f77398a.a.m226e();
    }
}
