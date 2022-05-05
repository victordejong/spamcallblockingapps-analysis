package p081h.p451q.p454c;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import p081h.p451q.p455d.C10862d;
import p655o.C15299r;
/* renamed from: h.q.c.c */
/* loaded from: classes2-dex2jar.jar:h/q/c/c.class */
public class C10853c implements AbstractC10851a {

    /* renamed from: a */
    public Throwable f24815a;

    /* renamed from: b */
    public C15299r f24816b;

    public C10853c(Throwable th) {
        this.f24815a = th;
    }

    public C10853c(C15299r rVar) {
        this.f24816b = rVar;
    }

    /* renamed from: a */
    public static C10853c m10409a(Throwable th) {
        return new C10853c(th);
    }

    /* renamed from: a */
    public static C10853c m10408a(C15299r rVar) {
        return new C10853c(rVar);
    }

    @Override // p081h.p451q.p454c.AbstractC10851a
    /* renamed from: a */
    public String mo10410a() {
        Throwable th = this.f24815a;
        if (th != null) {
            return th.getMessage();
        }
        StringBuilder sb = new StringBuilder();
        C15299r rVar = this.f24816b;
        if (rVar != null) {
            if (C10862d.m10390b(rVar.m89e())) {
                sb.append(this.f24816b.m89e());
            } else {
                sb.append(this.f24816b.m92b());
            }
        }
        return sb.toString();
    }

    @Override // p081h.p451q.p454c.AbstractC10851a
    /* renamed from: b */
    public int mo10407b() {
        C15299r rVar = this.f24816b;
        if (rVar != null) {
            return rVar.m92b();
        }
        return -1;
    }

    @Override // p081h.p451q.p454c.AbstractC10851a
    /* renamed from: c */
    public String mo10406c() {
        String str;
        C15299r rVar = this.f24816b;
        if (!(rVar == null || rVar.m91c() == null)) {
            try {
                str = new String(this.f24816b.m91c().bytes(), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError("UTF-8 must be supported");
            } catch (IOException e2) {
            }
            return str;
        }
        str = "";
        return str;
    }
}
