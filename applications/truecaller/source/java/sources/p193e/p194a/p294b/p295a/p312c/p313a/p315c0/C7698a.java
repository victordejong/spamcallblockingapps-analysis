package p193e.p194a.p294b.p295a.p312c.p313a.p315c0;

import android.os.SystemClock;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b.a.c.a.c0.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/c0/a.class */
public final class C7698a implements l<C8551c, s> {

    /* renamed from: a */
    public final /* synthetic */ C7699b f24093a;

    public C7698a(C7699b c7699b) {
        this.f24093a = c7699b;
    }

    /* renamed from: d */
    public Object m29433d(Object obj) {
        C8551c c8551c = (C8551c) obj;
        s1.z.c.l.e(c8551c, RemoteMessageConst.Notification.TAG);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C7699b c7699b = this.f24093a;
        if (elapsedRealtime - c7699b.f24094a >= 1000) {
            c7699b.f24094a = SystemClock.elapsedRealtime();
            this.f24093a.f24096c.d(c8551c);
        }
        return s.a;
    }
}
