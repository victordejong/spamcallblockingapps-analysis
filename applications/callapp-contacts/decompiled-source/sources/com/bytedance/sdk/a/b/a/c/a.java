package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.a.j;
import com.bytedance.sdk.a.b.a.c;
import com.bytedance.sdk.a.b.a.d;
import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.l;
import com.bytedance.sdk.a.b.m;
import com.bytedance.sdk.a.b.t;
import com.bytedance.sdk.a.b.u;
import com.bytedance.sdk.a.b.y;
import com.bytedance.sdk.a.b.z;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/a.class */
public final class a implements t {

    /* renamed from: a  reason: collision with root package name */
    private final m f7884a;

    public a(m mVar) {
        this.f7884a = mVar;
    }

    private String a(List<l> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            l lVar = list.get(i);
            sb.append(lVar.a());
            sb.append('=');
            sb.append(lVar.b());
        }
        return sb.toString();
    }

    @Override // com.bytedance.sdk.a.b.t
    public final aa a(t.a aVar) throws IOException {
        y a2 = aVar.a();
        y.a e = a2.e();
        z d2 = a2.d();
        if (d2 != null) {
            u a3 = d2.a();
            if (a3 != null) {
                e.a("Content-Type", a3.toString());
            }
            long b2 = d2.b();
            if (b2 != -1) {
                e.a("Content-Length", Long.toString(b2));
                e.b("Transfer-Encoding");
            } else {
                e.a("Transfer-Encoding", "chunked");
                e.b("Content-Length");
            }
        }
        if (a2.a("Host") == null) {
            e.a("Host", c.a(a2.a(), false));
        }
        if (a2.a("Connection") == null) {
            e.a("Connection", "Keep-Alive");
        }
        boolean z = false;
        if (a2.a("Accept-Encoding") == null) {
            z = false;
            if (a2.a("Range") == null) {
                z = true;
                e.a("Accept-Encoding", "gzip");
            }
        }
        List<l> a4 = this.f7884a.a(a2.a());
        if (!a4.isEmpty()) {
            e.a("Cookie", a(a4));
        }
        if (a2.a("User-Agent") == null) {
            e.a("User-Agent", d.a());
        }
        aa a5 = aVar.a(e.d());
        e.a(this.f7884a, a2.a(), a5.g());
        aa.a a6 = a5.i().a(a2);
        if (z && "gzip".equalsIgnoreCase(a5.a("Content-Encoding")) && e.b(a5)) {
            j jVar = new j(a5.h().d());
            a6.a(a5.g().c().b("Content-Encoding").b("Content-Length").a());
            a6.a(new h(a5.a("Content-Type"), -1L, com.bytedance.sdk.a.a.l.a(jVar)));
        }
        return a6.a();
    }
}
