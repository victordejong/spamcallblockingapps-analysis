package p193e.p194a.p1365y.p1366a.p1377j;

import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.j.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/j/e.class */
public final class C21556e implements Provider<FirebaseMessaging> {

    /* renamed from: a */
    public final AbstractC21666a f60154a;

    public C21556e(AbstractC21666a abstractC21666a) {
        this.f60154a = abstractC21666a;
    }

    public Object get() {
        FirebaseMessaging mo9197r = this.f60154a.mo9197r();
        Objects.requireNonNull(mo9197r, "Cannot return null from a non-@Nullable component method");
        return mo9197r;
    }
}
