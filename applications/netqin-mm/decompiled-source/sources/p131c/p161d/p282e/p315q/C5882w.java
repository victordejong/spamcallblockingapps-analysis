package p131c.p161d.p282e.p315q;

import com.google.firebase.inappmessaging.FirebaseInAppMessagingRegistrar;
import p131c.p161d.p282e.p288k.AbstractC5165e;
import p131c.p161d.p282e.p288k.AbstractC5170g;
/* renamed from: c.d.e.q.w */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/w.class */
public final /* synthetic */ class C5882w implements AbstractC5170g {

    /* renamed from: a */
    public final FirebaseInAppMessagingRegistrar f19181a;

    public C5882w(FirebaseInAppMessagingRegistrar firebaseInAppMessagingRegistrar) {
        this.f19181a = firebaseInAppMessagingRegistrar;
    }

    /* renamed from: a */
    public static AbstractC5170g m22818a(FirebaseInAppMessagingRegistrar firebaseInAppMessagingRegistrar) {
        return new C5882w(firebaseInAppMessagingRegistrar);
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5170g
    /* renamed from: a */
    public Object mo22110a(AbstractC5165e eVar) {
        C5841r providesFirebaseInAppMessaging;
        providesFirebaseInAppMessaging = this.f19181a.providesFirebaseInAppMessaging(eVar);
        return providesFirebaseInAppMessaging;
    }
}
