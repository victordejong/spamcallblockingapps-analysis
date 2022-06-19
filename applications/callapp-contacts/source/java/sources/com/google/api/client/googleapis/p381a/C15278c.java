package com.google.api.client.googleapis.p381a;

import com.google.api.client.http.AbstractC15338o;
import com.google.api.client.http.AbstractC15347x;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.googleapis.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/c.class */
public class C15278c implements AbstractC15338o, AbstractC15347x {

    /* renamed from: a */
    static final Logger f55231a = Logger.getLogger(C15278c.class.getName());

    /* renamed from: b */
    private final C15276b f55232b;

    /* renamed from: c */
    private final AbstractC15338o f55233c;

    /* renamed from: d */
    private final AbstractC15347x f55234d;

    public C15278c(C15276b c15276b, C15340q c15340q) {
        this.f55232b = (C15276b) C15207aa.m9283a(c15276b);
        this.f55233c = c15340q.m9036j();
        this.f55234d = c15340q.m9037i();
        c15340q.m9050a((AbstractC15338o) this);
        c15340q.m9048a((AbstractC15347x) this);
    }

    @Override // com.google.api.client.http.AbstractC15347x
    /* renamed from: a */
    public final boolean mo9003a(C15340q c15340q, C15343t c15343t, boolean z) throws IOException {
        AbstractC15347x abstractC15347x = this.f55234d;
        boolean z2 = abstractC15347x != null && abstractC15347x.mo9003a(c15340q, c15343t, z);
        if (z2 && z && c15343t.m9015e() / 100 == 5) {
            try {
                this.f55232b.m9179a();
            } catch (IOException e) {
                f55231a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }

    @Override // com.google.api.client.http.AbstractC15338o
    /* renamed from: a */
    public final boolean mo9070a(C15340q c15340q, boolean z) throws IOException {
        AbstractC15338o abstractC15338o = this.f55233c;
        boolean z2 = abstractC15338o != null && abstractC15338o.mo9070a(c15340q, z);
        if (z2) {
            try {
                this.f55232b.m9179a();
            } catch (IOException e) {
                f55231a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }
}
