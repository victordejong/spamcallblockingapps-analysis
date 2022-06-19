package p193e.p194a.p1399z;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p430q.C8601l0;
/* renamed from: e.a.z.d */
/* loaded from: classes11-dex2jar.jar:e/a/z/d.class */
public final class C21830d implements Provider<C8601l0> {

    /* renamed from: a */
    public final AbstractC8412c f60694a;

    public C21830d(AbstractC8412c abstractC8412c) {
        this.f60694a = abstractC8412c;
    }

    public Object get() {
        C8601l0 mo12754E = this.f60694a.mo12754E();
        Objects.requireNonNull(mo12754E, "Cannot return null from a non-@Nullable component method");
        return mo12754E;
    }
}
