package a.a.c;

import a.a.a.d;
import a.a.b.a;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:a/a/c/b.class */
public final class b extends c {
    @Override // a.a.c.c
    public final String a() {
        return "HMAC-SHA1";
    }

    @Override // a.a.c.c
    public final String a(a.a.b.b bVar, a aVar) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec((a.a.b.a(this.f5a) + '&' + a.a.b.a(this.f6b)).getBytes("UTF-8"), "HmacSHA1");
            Mac instance = Mac.getInstance("HmacSHA1");
            instance.init(secretKeySpec);
            String a2 = new d(bVar, aVar).a();
            a.a.b.a("SBS", a2);
            return new String(org.apache.a.a.a.a.a(instance.doFinal(a2.getBytes("UTF-8")))).trim();
        } catch (UnsupportedEncodingException e) {
            throw new d(e);
        } catch (GeneralSecurityException e2) {
            throw new d(e2);
        }
    }
}
