package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
/* renamed from: c.d.h.b0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/b0.class */
public class C6283b0 {

    /* renamed from: a */
    public ByteString f19859a;

    /* renamed from: b */
    public C6358p f19860b;

    /* renamed from: c */
    public volatile AbstractC6354n0 f19861c;

    /* renamed from: d */
    public volatile ByteString f19862d;

    static {
        C6358p.m21173a();
    }

    /* renamed from: a */
    public int m21680a() {
        if (this.f19862d != null) {
            return this.f19862d.size();
        }
        ByteString byteString = this.f19859a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f19861c != null) {
            return this.f19861c.mo6944o();
        }
        return 0;
    }

    /* renamed from: a */
    public void m21679a(AbstractC6354n0 n0Var) {
        if (this.f19861c == null) {
            synchronized (this) {
                if (this.f19861c == null) {
                    try {
                        if (this.f19859a != null) {
                            this.f19861c = (AbstractC6354n0) n0Var.mo6943r().mo21029a(this.f19859a, this.f19860b);
                            this.f19862d = this.f19859a;
                        } else {
                            this.f19861c = n0Var;
                            this.f19862d = ByteString.EMPTY;
                        }
                    } catch (InvalidProtocolBufferException e) {
                        this.f19861c = n0Var;
                        this.f19862d = ByteString.EMPTY;
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public AbstractC6354n0 m21677b(AbstractC6354n0 n0Var) {
        m21679a(n0Var);
        return this.f19861c;
    }

    /* renamed from: b */
    public ByteString m21678b() {
        if (this.f19862d != null) {
            return this.f19862d;
        }
        ByteString byteString = this.f19859a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            if (this.f19862d != null) {
                return this.f19862d;
            }
            if (this.f19861c == null) {
                this.f19862d = ByteString.EMPTY;
            } else {
                this.f19862d = this.f19861c.mo21179l();
            }
            return this.f19862d;
        }
    }

    /* renamed from: c */
    public AbstractC6354n0 m21676c(AbstractC6354n0 n0Var) {
        AbstractC6354n0 n0Var2 = this.f19861c;
        this.f19859a = null;
        this.f19862d = null;
        this.f19861c = n0Var;
        return n0Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6283b0)) {
            return false;
        }
        C6283b0 b0Var = (C6283b0) obj;
        AbstractC6354n0 n0Var = this.f19861c;
        AbstractC6354n0 n0Var2 = b0Var.f19861c;
        return (n0Var == null && n0Var2 == null) ? m21678b().equals(b0Var.m21678b()) : (n0Var == null || n0Var2 == null) ? n0Var != null ? n0Var.equals(b0Var.m21677b(n0Var.mo6927g())) : m21677b(n0Var2.mo6927g()).equals(n0Var2) : n0Var.equals(n0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
