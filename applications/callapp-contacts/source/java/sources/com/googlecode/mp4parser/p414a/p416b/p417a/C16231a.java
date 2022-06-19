package com.googlecode.mp4parser.p414a.p416b.p417a;

import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.C16246b;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p414a.C16229b;
import com.googlecode.mp4parser.p414a.C16237d;
import com.googlecode.mp4parser.p414a.C16242e;
import com.googlecode.mp4parser.p425c.C16291j;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.C3502s;
import com.p102b.p103a.p104a.C3511z;
import java.io.IOException;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.a.b.a.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/b/a/a.class */
public final class C16231a {
    /* renamed from: a */
    public static C16237d m7592a(AbstractC16294e abstractC16294e) throws IOException {
        C3514d c3514d = new C3514d(abstractC16294e);
        C16237d c16237d = new C16237d();
        for (C3473ag c3473ag : c3514d.m37854a().mo7494a(C3473ag.class)) {
            C3511z c3511z = (C3511z) C16291j.m7500a((C16246b) c3473ag, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schm[0]");
            if (c3511z == null || (!c3511z.m37859a().equals("cenc") && !c3511z.m37859a().equals("cbc1"))) {
                c16237d.m7584a(new C16242e(String.valueOf(abstractC16294e.toString()) + "[" + c3473ag.m37908a().m37905a() + "]", c3473ag, new C3514d[0]));
            } else {
                c16237d.m7584a(new C16229b(String.valueOf(abstractC16294e.toString()) + "[" + c3473ag.m37908a().m37905a() + "]", c3473ag, new C3514d[0]));
            }
        }
        C3502s m37877a = c3514d.m37854a().m37877a();
        AbstractC20997a m163a = C20987b.m163a(C3502s.f13318g, m37877a, m37877a);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        c16237d.f57292a = m37877a.f13334e;
        return c16237d;
    }
}
