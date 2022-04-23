package p081h.p203i.p325c.p364t;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p364t.ServiceConnectionC9924x0;
/* renamed from: h.i.c.t.u0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/u0.class */
public class BinderC9910u0 extends Binder {

    /* renamed from: a */
    public final AbstractC9911a f22436a;

    /* renamed from: h.i.c.t.u0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/u0$a.class */
    public interface AbstractC9911a {
        /* renamed from: a */
        AbstractC9143h<Void> mo13969a(Intent intent);
    }

    public BinderC9910u0(AbstractC9911a aVar) {
        this.f22436a = aVar;
    }

    /* renamed from: a */
    public void m13971a(final ServiceConnectionC9924x0.C9925a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            Log.isLoggable("FirebaseInstanceId", 3);
            this.f22436a.mo13969a(aVar.f22464a).mo16018a(C9878h.m14050a(), new AbstractC9132c(aVar) { // from class: h.i.c.t.t0

                /* renamed from: a */
                public final ServiceConnectionC9924x0.C9925a f22434a;

                {
                    this.f22434a = aVar;
                }

                @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
                /* renamed from: a */
                public final void mo3743a(AbstractC9143h hVar) {
                    this.f22434a.m13935a();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
