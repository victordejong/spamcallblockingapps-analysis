package p246t9;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import p011aa.C0060m;
import p011aa.C0062o;
import p011aa.C0069t;
import p204p9.AbstractC4081a0;
import p204p9.AbstractC4111l;
import p204p9.AbstractC4125t;
import p204p9.C4084b0;
import p204p9.C4110k;
import p204p9.C4121r;
import p204p9.C4127u;
import p204p9.C4135y;
import p204p9.C4137z;
import p214q9.C4171c;
/* renamed from: t9.a */
/* loaded from: classes2-dex2jar.jar:t9/a.class */
public final class C4430a implements AbstractC4125t {

    /* renamed from: a */
    public final AbstractC4111l f13781a;

    public C4430a(AbstractC4111l abstractC4111l) {
        this.f13781a = abstractC4111l;
    }

    @Override // p204p9.AbstractC4125t
    /* renamed from: a */
    public C4084b0 mo921a(AbstractC4125t.AbstractC4126a abstractC4126a) throws IOException {
        boolean z;
        C4437f c4437f = (C4437f) abstractC4126a;
        C4135y c4135y = c4437f.f13793f;
        Objects.requireNonNull(c4135y);
        C4135y.C4136a c4136a = new C4135y.C4136a(c4135y);
        AbstractC4081a0 abstractC4081a0 = c4135y.f13044d;
        if (abstractC4081a0 != null) {
            C4137z c4137z = (C4137z) abstractC4081a0;
            C4127u c4127u = c4137z.f13052a;
            if (c4127u != null) {
                c4136a.m1360b("Content-Type", c4127u.f12974a);
            }
            long j = c4137z.f13053b;
            if (j != -1) {
                c4136a.m1360b("Content-Length", Long.toString(j));
                c4136a.f13049c.m1392d("Transfer-Encoding");
            } else {
                c4136a.m1360b("Transfer-Encoding", "chunked");
                c4136a.f13049c.m1392d("Content-Length");
            }
        }
        if (c4135y.f13043c.m1401c("Host") == null) {
            c4136a.m1360b("Host", C4171c.m1323m(c4135y.f13041a, false));
        }
        if (c4135y.f13043c.m1401c("Connection") == null) {
            c4136a.m1360b("Connection", "Keep-Alive");
        }
        if (c4135y.f13043c.m1401c("Accept-Encoding") == null && c4135y.f13043c.m1401c("Range") == null) {
            c4136a.m1360b("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        Objects.requireNonNull((AbstractC4111l.C4112a) this.f13781a);
        List emptyList = Collections.emptyList();
        if (!emptyList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            int size = emptyList.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    sb.append("; ");
                }
                C4110k c4110k = (C4110k) emptyList.get(i);
                sb.append(c4110k.f12931a);
                sb.append('=');
                sb.append(c4110k.f12932b);
            }
            c4136a.m1360b("Cookie", sb.toString());
        }
        if (c4135y.f13043c.m1401c("User-Agent") == null) {
            c4136a.m1360b("User-Agent", "okhttp/3.12.1");
        }
        C4084b0 m926b = c4437f.m926b(c4136a.m1361a(), c4437f.f13789b, c4437f.f13790c, c4437f.f13791d);
        C4436e.m930d(this.f13781a, c4135y.f13041a, m926b.f12802f);
        C4084b0.C4085a c4085a = new C4084b0.C4085a(m926b);
        c4085a.f12810a = c4135y;
        if (z) {
            String m1401c = m926b.f12802f.m1401c("Content-Encoding");
            if (m1401c == null) {
                m1401c = null;
            }
            if ("gzip".equalsIgnoreCase(m1401c) && C4436e.m932b(m926b)) {
                C0060m c0060m = new C0060m(m926b.f12803g.mo923l());
                C4121r.C4122a m1399e = m926b.f12802f.m1399e();
                m1399e.m1392d("Content-Encoding");
                m1399e.m1392d("Content-Length");
                List<String> list = m1399e.f12953a;
                String[] strArr = (String[]) list.toArray(new String[list.size()]);
                C4121r.C4122a c4122a = new C4121r.C4122a();
                Collections.addAll(c4122a.f12953a, strArr);
                c4085a.f12815f = c4122a;
                String m1401c2 = m926b.f12802f.m1401c("Content-Type");
                String str = null;
                if (m1401c2 != null) {
                    str = m1401c2;
                }
                Logger logger = C0062o.f138a;
                c4085a.f12816g = new C4438g(str, -1L, new C0069t(c0060m));
            }
        }
        return c4085a.m1434b();
    }
}
