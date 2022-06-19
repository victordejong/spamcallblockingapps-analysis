package p193e.p194a.p1146q2.p1157z0;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.heartbeat.HeartBeatType;
import e.m.d.y.n;
import java.util.HashMap;
import javax.inject.Inject;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.p1394q.C21782c;
import s1.k;
import s1.l;
import s1.z.c.l;
/* renamed from: e.a.q2.z0.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/z0/a.class */
public final class C19604a extends AbstractC21765k {

    /* renamed from: b */
    public final String f54474b = "AppHeartBeatWorkAction";

    /* renamed from: c */
    public final AbstractC19605b f54475c;

    @Inject
    public C19604a(AbstractC19605b abstractC19605b) {
        l.e(abstractC19605b, "delegate");
        this.f54475c = abstractC19605b;
    }

    /* renamed from: d */
    public static final void m13108d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        HeartBeatType heartBeatType = HeartBeatType.Active;
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(this)");
        k G0 = n.G0(5L);
        HashMap hashMap = new HashMap();
        hashMap.put("beatType", heartBeatType.name());
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder().putString…_TYPE, type.name).build()");
        C21782c.m9084b(m1431n, "AppHeartBeatWorkAction", context, G0, c26829f);
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Object obj;
        try {
            String m1301f = this.f60609a.m1301f("beatType");
            if (m1301f != null) {
                l.d(m1301f, "it");
                obj = HeartBeatType.valueOf(m1301f);
            } else {
                obj = null;
            }
        } catch (Throwable th) {
            obj = C25225a.m3935a0(th);
        }
        if (obj instanceof l.a) {
            obj = null;
        }
        HeartBeatType heartBeatType = (HeartBeatType) obj;
        if (heartBeatType == null) {
            heartBeatType = HeartBeatType.Active;
        }
        return this.f54475c.mo13105c(heartBeatType);
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54474b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f54475c.mo13107a();
    }
}
