package com.googlecode.mp4parser.a.b.a;

import com.b.a.a.ag;
import com.b.a.a.s;
import com.b.a.a.z;
import com.googlecode.mp4parser.a.d;
import com.googlecode.mp4parser.b;
import com.googlecode.mp4parser.c.j;
import com.googlecode.mp4parser.e;
import com.googlecode.mp4parser.h;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b/a/a.class */
public final class a {
    public static d a(e eVar) throws IOException {
        com.b.a.d dVar = new com.b.a.d(eVar);
        d dVar2 = new d();
        for (ag agVar : dVar.a().a(ag.class)) {
            z zVar = (z) j.a((b) agVar, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
            if (zVar == null || (!zVar.a().equals("cenc") && !zVar.a().equals("cbc1"))) {
                dVar2.a(new com.googlecode.mp4parser.a.e(String.valueOf(eVar.toString()) + "[" + agVar.a().a() + "]", agVar, new com.b.a.d[0]));
            } else {
                dVar2.a(new com.googlecode.mp4parser.a.b(String.valueOf(eVar.toString()) + "[" + agVar.a().a() + "]", agVar, new com.b.a.d[0]));
            }
        }
        s a2 = dVar.a().a();
        org.mp4parser.aspectj.lang.a a3 = org.mp4parser.aspectj.a.b.b.a(s.g, a2, a2);
        h.a();
        h.a(a3);
        dVar2.f33073a = a2.e;
        return dVar2;
    }
}
