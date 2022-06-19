package p182n8;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import ba.C0748b;
import java.util.Timer;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3389e;
/* renamed from: n8.b */
/* loaded from: classes2-dex2jar.jar:n8/b.class */
public class C3793b extends ContentObserver {

    /* renamed from: a */
    public final Context f12269a;

    public C3793b(Handler handler, Context context) {
        super(handler);
        this.f12269a = context;
        C2779g.m3093v(context);
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        if (System.currentTimeMillis() <= C2780h.m3026s(this.f12269a) + 2000 || C2780h.m3052f(this.f12269a, "contactssyncschedulestarted", false)) {
            return;
        }
        C2780h.m3049g0(this.f12269a, "contactssyncschedulestarted", true);
        C0748b.m7409b().m7404g(new C3389e("GPref.setContactsSyncScheduleStarted", 2));
        new Timer().schedule(new C3792a(this, ".syncContactsIfNeed"), 5000L);
    }
}
