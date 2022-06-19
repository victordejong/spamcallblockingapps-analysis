package p193e.p194a.p1365y.p1366a.p1374h;

import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
/* renamed from: e.a.y.a.h.f */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/h/f.class */
public final class C21524f implements Provider<FirebaseMessaging> {

    /* renamed from: a */
    public final AbstractC21666a f60074a;

    public C21524f(AbstractC21666a abstractC21666a) {
        this.f60074a = abstractC21666a;
    }

    public Object get() {
        FirebaseMessaging mo9197r = this.f60074a.mo9197r();
        Objects.requireNonNull(mo9197r, "Cannot return null from a non-@Nullable component method");
        return mo9197r;
    }
}
