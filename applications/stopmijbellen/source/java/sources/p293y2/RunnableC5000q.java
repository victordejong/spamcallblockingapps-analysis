package p293y2;

import com.mglab.scm.telephony.ForegroundService;
import java.sql.Date;
import p095f8.C2779g;
import p117h8.C3030g;
import p117h8.C3043q;
import p148k7.C3357k;
/* renamed from: y2.q */
/* loaded from: classes2-dex2jar.jar:y2/q.class */
public final /* synthetic */ class RunnableC5000q implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f15236a;

    /* renamed from: b */
    public final /* synthetic */ Object f15237b;

    public /* synthetic */ RunnableC5000q(Object obj, int i) {
        this.f15236a = i;
        this.f15237b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15236a) {
            case 0:
                C5001r c5001r = (C5001r) this.f15237b;
                c5001r.f15241d.mo90d(new C4999p(c5001r));
                return;
            case 1:
                ((C3357k) this.f15237b).mo1267j();
                return;
            default:
                String str = (String) this.f15237b;
                String str2 = ForegroundService.f7319h;
                try {
                    C3030g c3030g = new C3030g();
                    c3030g.f10185d = C2779g.m3098q(String.valueOf(C3043q.m2702t(str)), "g^y$j", false);
                    c3030g.f10184c = str;
                    c3030g.f10186e = new Date(System.currentTimeMillis());
                    c3030g.mo7416a();
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
        }
    }
}
