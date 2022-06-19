package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p128a.C3977j;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.AbstractC4122m;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.AbstractC4148z;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4121l;
import com.bytedance.sdk.p127a.p129b.C4139u;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.C4032d;
import java.io.IOException;
import java.util.List;
/* renamed from: com.bytedance.sdk.a.b.a.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/a.class */
public final class C4018a implements AbstractC4137t {

    /* renamed from: a */
    private final AbstractC4122m f14594a;

    public C4018a(AbstractC4122m abstractC4122m) {
        this.f14594a = abstractC4122m;
    }

    /* renamed from: a */
    private String m36886a(List<C4121l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            C4121l c4121l = list.get(i);
            sb.append(c4121l.m36518a());
            sb.append('=');
            sb.append(c4121l.m36509b());
        }
        return sb.toString();
    }

    @Override // com.bytedance.sdk.p127a.p129b.AbstractC4137t
    /* renamed from: a */
    public final C4098aa mo36406a(AbstractC4137t.AbstractC4138a abstractC4138a) throws IOException {
        C4146y mo36405a = abstractC4138a.mo36405a();
        C4146y.C4147a m36336e = mo36405a.m36336e();
        AbstractC4148z m36337d = mo36405a.m36337d();
        if (m36337d != null) {
            C4139u mo36314a = m36337d.mo36314a();
            if (mo36314a != null) {
                m36336e.m36327a("Content-Type", mo36314a.toString());
            }
            long mo36312b = m36337d.mo36312b();
            if (mo36312b != -1) {
                m36336e.m36327a("Content-Length", Long.toString(mo36312b));
                m36336e.m36323b("Transfer-Encoding");
            } else {
                m36336e.m36327a("Transfer-Encoding", "chunked");
                m36336e.m36323b("Content-Length");
            }
        }
        if (mo36405a.m36340a("Host") == null) {
            m36336e.m36327a("Host", C4015c.m36915a(mo36405a.m36341a(), false));
        }
        if (mo36405a.m36340a("Connection") == null) {
            m36336e.m36327a("Connection", "Keep-Alive");
        }
        boolean z = false;
        if (mo36405a.m36340a("Accept-Encoding") == null) {
            z = false;
            if (mo36405a.m36340a("Range") == null) {
                z = true;
                m36336e.m36327a("Accept-Encoding", "gzip");
            }
        }
        List<C4121l> mo36507a = this.f14594a.mo36507a(mo36405a.m36341a());
        if (!mo36507a.isEmpty()) {
            m36336e.m36327a("Cookie", m36886a(mo36507a));
        }
        if (mo36405a.m36340a("User-Agent") == null) {
            m36336e.m36327a("User-Agent", C4032d.m36851a());
        }
        C4098aa mo36404a = abstractC4138a.mo36404a(m36336e.m36319d());
        C4024e.m36881a(this.f14594a, mo36405a.m36341a(), mo36404a.m36606g());
        C4098aa.C4099a m36591a = mo36404a.m36604i().m36591a(mo36405a);
        if (z && "gzip".equalsIgnoreCase(mo36404a.m36613a("Content-Encoding")) && C4024e.m36876b(mo36404a)) {
            C3977j c3977j = new C3977j(mo36404a.m36605h().mo36576d());
            m36591a.m36593a(mo36404a.m36606g().m36464c().m36460b("Content-Encoding").m36460b("Content-Length").m36463a());
            m36591a.m36595a(new C4027h(mo36404a.m36613a("Content-Type"), -1L, C3979l.m37085a(c3977j)));
        }
        return m36591a.m36599a();
    }
}
