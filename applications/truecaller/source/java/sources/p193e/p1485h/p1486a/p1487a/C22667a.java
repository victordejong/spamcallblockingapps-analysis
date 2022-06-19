package p193e.p1485h.p1486a.p1487a;

import android.content.Context;
import android.os.Bundle;
import com.huawei.hms.push.RemoteMessage;
import p193e.p1485h.p1486a.p1493c.p1503s0.AbstractC22829b;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1507w0.h$b;
/* renamed from: e.h.a.a.a */
/* loaded from: classes-dex2jar.jar:e/h/a/a/a.class */
public class C22667a implements AbstractC22671e {

    /* renamed from: a */
    public final AbstractC22829b<RemoteMessage> f62732a;

    public C22667a() {
        this.f62732a = new C22669c();
    }

    public C22667a(AbstractC22829b<RemoteMessage> abstractC22829b) {
        this.f62732a = abstractC22829b;
    }

    /* renamed from: a */
    public boolean m7982a(Context context, RemoteMessage remoteMessage) {
        boolean a;
        Bundle mo7726a = this.f62732a.mo7726a(remoteMessage);
        if (mo7726a != null) {
            try {
                a = h$b.f63486a.a(context, mo7726a, AbstractC22865g.EnumC22866a.HPS.toString());
            } catch (Throwable th) {
                th.printStackTrace();
                String str = AbstractC22668b.f62733a;
            }
            return a;
        }
        a = false;
        return a;
    }
}
