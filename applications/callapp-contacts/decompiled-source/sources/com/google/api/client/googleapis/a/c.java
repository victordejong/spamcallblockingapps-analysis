package com.google.api.client.googleapis.a;

import com.google.api.client.a.aa;
import com.google.api.client.http.o;
import com.google.api.client.http.q;
import com.google.api.client.http.t;
import com.google.api.client.http.x;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/c.class */
public class c implements o, x {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f31726a = Logger.getLogger(c.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final b f31727b;

    /* renamed from: c  reason: collision with root package name */
    private final o f31728c;

    /* renamed from: d  reason: collision with root package name */
    private final x f31729d;

    public c(b bVar, q qVar) {
        this.f31727b = (b) aa.a(bVar);
        this.f31728c = qVar.j();
        this.f31729d = qVar.i();
        qVar.a((o) this);
        qVar.a((x) this);
    }

    @Override // com.google.api.client.http.x
    public final boolean a(q qVar, t tVar, boolean z) throws IOException {
        x xVar = this.f31729d;
        boolean z2 = xVar != null && xVar.a(qVar, tVar, z);
        if (z2 && z && tVar.e() / 100 == 5) {
            try {
                this.f31727b.a();
            } catch (IOException e) {
                f31726a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }

    @Override // com.google.api.client.http.o
    public final boolean a(q qVar, boolean z) throws IOException {
        o oVar = this.f31728c;
        boolean z2 = oVar != null && oVar.a(qVar, z);
        if (z2) {
            try {
                this.f31727b.a();
            } catch (IOException e) {
                f31726a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }
}
