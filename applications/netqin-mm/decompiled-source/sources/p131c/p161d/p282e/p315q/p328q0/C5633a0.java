package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p530d.p541c.p542a0.AbstractC9638a;
/* renamed from: c.d.e.q.q0.a0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/a0.class */
public final /* synthetic */ class C5633a0 implements AbstractC9638a {

    /* renamed from: a */
    public final C5671h0 f18709a;

    /* renamed from: b */
    public final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType f18710b;

    public C5633a0(C5671h0 h0Var, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        this.f18709a = h0Var;
        this.f18710b = inAppMessagingDismissType;
    }

    /* renamed from: a */
    public static AbstractC9638a m23366a(C5671h0 h0Var, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        return new C5633a0(h0Var, inAppMessagingDismissType);
    }

    @Override // p530d.p541c.p542a0.AbstractC9638a
    public void run() {
        r0.f18766f.m23153a(this.f18709a.f18768h, this.f18710b);
    }
}
