package p193e.p194a.p1349x;

import com.truecaller.ghost_call.GhostCallService;
import java.util.TimerTask;
import s1.z.c.l;
/* renamed from: e.a.x.u */
/* loaded from: classes9-dex2jar.jar:e/a/x/u.class */
public final class C21383u extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ GhostCallService f59847a;

    public C21383u(GhostCallService ghostCallService) {
        this.f59847a = ghostCallService;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        AbstractC21373l abstractC21373l = this.f59847a.f12263f;
        if (abstractC21373l == null) {
            l.l("ghostCallManager");
            throw null;
        }
        abstractC21373l.mo9828x();
        this.f59847a.m35314d();
    }
}
