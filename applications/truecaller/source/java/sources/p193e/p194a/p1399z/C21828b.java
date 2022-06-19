package p193e.p194a.p1399z;

import android.content.Context;
import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.p372b0.AbstractC8412c;
/* renamed from: e.a.z.b */
/* loaded from: classes11-dex2jar.jar:e/a/z/b.class */
public final class C21828b implements Provider<Context> {

    /* renamed from: a */
    public final AbstractC8412c f60692a;

    public C21828b(AbstractC8412c abstractC8412c) {
        this.f60692a = abstractC8412c;
    }

    public Object get() {
        Context mo12335j = this.f60692a.mo12335j();
        Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
        return mo12335j;
    }
}
