package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.AbstractC3974g;
import com.bytedance.sdk.p127a.p128a.AbstractC3989r;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4008c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import java.io.IOException;
import java.net.ProtocolException;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.bytedance.sdk.a.b.a.c.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/b.class */
public final class C4019b implements AbstractC4137t {

    /* renamed from: a */
    private final boolean f14595a;

    /* renamed from: com.bytedance.sdk.a.b.a.c.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/b$a.class */
    static final class C4020a extends AbstractC3974g {

        /* renamed from: a */
        long f14596a;

        C4020a(AbstractC3989r abstractC3989r) {
            super(abstractC3989r);
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3974g, com.bytedance.sdk.p127a.p128a.AbstractC3989r
        /* renamed from: a_ */
        public final void mo36721a_(C3969c c3969c, long j) throws IOException {
            super.mo36721a_(c3969c, j);
            this.f14596a += j;
        }
    }

    public C4019b(boolean z) {
        this.f14595a = z;
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t
    /* renamed from: a */
    public final C4098aa mo36406a(AbstractC4137t.AbstractC4138a abstractC4138a) throws IOException {
        C4026g c4026g = (C4026g) abstractC4138a;
        AbstractC4021c m36866g = c4026g.m36866g();
        C4013g m36867f = c4026g.m36867f();
        C4008c c4008c = (C4008c) c4026g.m36868e();
        C4146y mo36405a = c4026g.mo36405a();
        long currentTimeMillis = System.currentTimeMillis();
        c4026g.m36864i().m36480c(c4026g.m36865h());
        m36866g.mo36805a(mo36405a);
        c4026g.m36864i().m36491a(c4026g.m36865h(), mo36405a);
        C4098aa.C4099a c4099a = null;
        C4098aa.C4099a c4099a2 = null;
        if (C4025f.m36872c(mo36405a.m36339b())) {
            c4099a2 = null;
            if (mo36405a.m36337d() != null) {
                if ("100-continue".equalsIgnoreCase(mo36405a.m36340a("Expect"))) {
                    m36866g.mo36807a();
                    c4026g.m36864i().m36478e(c4026g.m36865h());
                    c4099a = m36866g.mo36802a(true);
                }
                if (c4099a == null) {
                    c4026g.m36864i().m36479d(c4026g.m36865h());
                    C4020a c4020a = new C4020a(m36866g.mo36804a(mo36405a, mo36405a.m36337d().mo36312b()));
                    AbstractC3971d m37086a = C3979l.m37086a(c4020a);
                    mo36405a.m36337d().mo36313a(m37086a);
                    m37086a.close();
                    c4026g.m36864i().m36495a(c4026g.m36865h(), c4020a.f14596a);
                    c4099a2 = c4099a;
                } else {
                    c4099a2 = c4099a;
                    if (!c4008c.m36954d()) {
                        m36867f.m36923d();
                        c4099a2 = c4099a;
                    }
                }
            }
        }
        m36866g.mo36801b();
        C4098aa.C4099a c4099a3 = c4099a2;
        if (c4099a2 == null) {
            c4026g.m36864i().m36478e(c4026g.m36865h());
            c4099a3 = m36866g.mo36802a(false);
        }
        C4098aa m36599a = c4099a3.m36591a(mo36405a).m36594a(m36867f.m36926b().m36955c()).m36597a(currentTimeMillis).m36587b(System.currentTimeMillis()).m36599a();
        c4026g.m36864i().m36494a(c4026g.m36865h(), m36599a);
        int m36610c = m36599a.m36610c();
        C4098aa m36599a2 = (!this.f14595a || m36610c != 101) ? m36599a.m36604i().m36595a(m36866g.mo36806a(m36599a)).m36599a() : m36599a.m36604i().m36595a(C4015c.f14576c).m36599a();
        if (EventConstants.CLOSE.equalsIgnoreCase(m36599a2.m36614a().m36340a("Connection")) || EventConstants.CLOSE.equalsIgnoreCase(m36599a2.m36613a("Connection"))) {
            m36867f.m36923d();
        }
        if ((m36610c == 204 || m36610c == 205) && m36599a2.m36605h().mo36577b() > 0) {
            throw new ProtocolException("HTTP " + m36610c + " had non-zero Content-Length: " + m36599a2.m36605h().mo36577b());
        }
        return m36599a2;
    }
}
