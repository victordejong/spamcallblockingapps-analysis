package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p328q0.C5730s;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.q0.p */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/p.class */
public final /* synthetic */ class RunnableC5711p implements Runnable {

    /* renamed from: a */
    public final C5730s.C5733c f18866a;

    /* renamed from: b */
    public final AbstractC5863i f18867b;

    /* renamed from: c */
    public final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason f18868c;

    public RunnableC5711p(C5730s.C5733c cVar, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        this.f18866a = cVar;
        this.f18867b = iVar;
        this.f18868c = inAppMessagingErrorReason;
    }

    /* renamed from: a */
    public static Runnable m23172a(C5730s.C5733c cVar, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        return new RunnableC5711p(cVar, iVar, inAppMessagingErrorReason);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18866a.m23111a().m22820a(this.f18867b, this.f18868c);
    }
}
