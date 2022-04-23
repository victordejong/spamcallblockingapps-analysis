package com.criteo.publisher.l;

import com.criteo.publisher.j0.g;
import com.criteo.publisher.m0.r;
import com.criteo.publisher.m0.s;
import com.criteo.publisher.model.a0;
import com.criteo.publisher.model.u;
import com.criteo.publisher.o;
import com.criteo.publisher.v;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/e.class */
public final class e extends v {

    /* renamed from: a  reason: collision with root package name */
    private final String f17431a;

    /* renamed from: b  reason: collision with root package name */
    private final a0 f17432b;

    /* renamed from: c  reason: collision with root package name */
    private final u f17433c;

    /* renamed from: d  reason: collision with root package name */
    private final d f17434d;
    private final g e;

    public e(String str, a0 a0Var, u uVar, d dVar, g gVar) {
        this.f17431a = str;
        this.f17432b = a0Var;
        this.f17433c = uVar;
        this.f17434d = dVar;
        this.e = gVar;
    }

    private void a(String str) {
        this.f17432b.a(str);
        this.f17432b.c();
        this.f17434d.a(o.VALID);
    }

    private String b() throws Exception {
        InputStream a2 = this.e.a(new URL(this.f17431a), this.f17433c.b().get());
        try {
            String a3 = r.a(a2);
            if (a2 != null) {
                a2.close();
            }
            return a3;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void c() {
        this.f17432b.a();
        this.f17434d.a(o.INVALID_CREATIVE);
    }

    @Override // com.criteo.publisher.v
    public final void a() throws Exception {
        try {
            String b2 = b();
            if (s.a((CharSequence) b2)) {
                c();
            } else {
                a(b2);
            }
        } catch (Throwable th) {
            if (s.a((CharSequence) null)) {
                c();
            } else {
                a((String) null);
            }
            throw th;
        }
    }
}
