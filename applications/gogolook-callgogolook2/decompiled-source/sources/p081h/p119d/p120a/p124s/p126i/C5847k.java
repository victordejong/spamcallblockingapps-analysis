package p081h.p119d.p120a.p124s.p126i;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import p081h.p119d.p120a.p124s.AbstractC5806c;
/* renamed from: h.d.a.s.i.k */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/k.class */
public class C5847k implements AbstractC5806c {

    /* renamed from: a */
    public final String f14757a;

    /* renamed from: b */
    public final AbstractC5806c f14758b;

    public C5847k(String str, AbstractC5806c cVar) {
        this.f14757a = str;
        this.f14758b = cVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    /* renamed from: a */
    public void mo23889a(MessageDigest messageDigest) throws UnsupportedEncodingException {
        messageDigest.update(this.f14757a.getBytes("UTF-8"));
        this.f14758b.mo23889a(messageDigest);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5847k.class != obj.getClass()) {
            return false;
        }
        C5847k kVar = (C5847k) obj;
        return this.f14757a.equals(kVar.f14757a) && this.f14758b.equals(kVar.f14758b);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5806c
    public int hashCode() {
        return (this.f14757a.hashCode() * 31) + this.f14758b.hashCode();
    }
}
