package p081h.p119d.p120a.p124s.p126i.p128o;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p149y.C6093e;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.o.j */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/j.class */
public class C5889j {

    /* renamed from: a */
    public final C6093e<AbstractC5806c, String> f14815a = new C6093e<>(1000);

    /* renamed from: a */
    public String m24167a(AbstractC5806c cVar) {
        String a;
        synchronized (this.f14815a) {
            a = this.f14815a.m23876a(cVar);
        }
        String str = a;
        if (a == null) {
            try {
                MessageDigest instance = MessageDigest.getInstance("SHA-256");
                cVar.mo23889a(instance);
                a = C6096h.m23858a(instance.digest());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
            }
            synchronized (this.f14815a) {
                this.f14815a.m23871b(cVar, a);
            }
            str = a;
        }
        return str;
    }
}
