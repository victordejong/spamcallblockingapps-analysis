package com.criteo.publisher.p254l;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.EnumC8518o;
import com.criteo.publisher.model.C8452a0;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p256m0.C8447r;
import com.criteo.publisher.p256m0.C8448s;
import java.io.InputStream;
import java.net.URL;
/* renamed from: com.criteo.publisher.l.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/e.class */
public final class C8389e extends AbstractRunnableC8529v {

    /* renamed from: a */
    private final String f30101a;

    /* renamed from: b */
    private final C8452a0 f30102b;

    /* renamed from: c */
    private final C8509u f30103c;

    /* renamed from: d */
    private final C8387d f30104d;

    /* renamed from: e */
    private final C8364g f30105e;

    public C8389e(String str, C8452a0 c8452a0, C8509u c8509u, C8387d c8387d, C8364g c8364g) {
        this.f30101a = str;
        this.f30102b = c8452a0;
        this.f30103c = c8509u;
        this.f30104d = c8387d;
        this.f30105e = c8364g;
    }

    /* renamed from: a */
    private void m25750a(String str) {
        this.f30102b.m25665a(str);
        this.f30102b.m25662c();
        this.f30104d.m25751a(EnumC8518o.VALID);
    }

    /* renamed from: b */
    private String m25749b() throws Exception {
        InputStream m25782a = this.f30105e.m25782a(new URL(this.f30101a), this.f30103c.mo25380b().get());
        try {
            String m25670a = C8447r.m25670a(m25782a);
            if (m25782a != null) {
                m25782a.close();
            }
            return m25670a;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (m25782a != null) {
                    try {
                        m25782a.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: c */
    private void m25748c() {
        this.f30102b.m25666a();
        this.f30104d.m25751a(EnumC8518o.INVALID_CREATIVE);
    }

    @Override // com.criteo.publisher.AbstractRunnableC8529v
    /* renamed from: a */
    public final void mo25368a() throws Exception {
        try {
            String m25749b = m25749b();
            if (C8448s.m25669a((CharSequence) m25749b)) {
                m25748c();
            } else {
                m25750a(m25749b);
            }
        } catch (Throwable th) {
            if (C8448s.m25669a((CharSequence) null)) {
                m25748c();
            } else {
                m25750a((String) null);
            }
            throw th;
        }
    }
}
