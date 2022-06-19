package p1727n3.p1874y.p1906c;

import androidx.media2.common.SessionPlayer;
import java.util.concurrent.Callable;
/* renamed from: n3.y.c.u */
/* loaded from: classes-dex2jar.jar:n3/y/c/u.class */
public class CallableC27488u implements Callable<SessionPlayer.TrackInfo> {

    /* renamed from: a */
    public final /* synthetic */ int f77399a;

    /* renamed from: b */
    public final /* synthetic */ m f77400b;

    public CallableC27488u(m mVar, int i) {
        this.f77400b = mVar;
        this.f77399a = i;
    }

    @Override // java.util.concurrent.Callable
    public SessionPlayer.TrackInfo call() throws Exception {
        C27477j0 c27477j0 = this.f77400b.a;
        return c27477j0.f77352j.m232a(this.f77399a);
    }
}
