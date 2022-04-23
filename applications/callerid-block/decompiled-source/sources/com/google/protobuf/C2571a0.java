package com.google.protobuf;
/* renamed from: com.google.protobuf.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/a0.class */
public class C2571a0 {

    /* renamed from: a */
    private ByteString f11038a;

    /* renamed from: b */
    private C2643o f11039b;

    /* renamed from: c */
    protected volatile AbstractC2639m0 f11040c;

    /* renamed from: d */
    private volatile ByteString f11041d;

    static {
        C2643o.m2411b();
    }

    /* renamed from: a */
    protected void m2909a(AbstractC2639m0 m0Var) {
        ByteString byteString;
        if (this.f11040c == null) {
            synchronized (this) {
                try {
                    if (this.f11040c == null) {
                        try {
                            if (this.f11038a != null) {
                                this.f11040c = (AbstractC2639m0) m0Var.mo2421l().mo2271a(this.f11038a, this.f11039b);
                                byteString = this.f11038a;
                            } else {
                                this.f11040c = m0Var;
                                byteString = ByteString.f10869b;
                            }
                            this.f11041d = byteString;
                        } catch (InvalidProtocolBufferException e) {
                            this.f11040c = m0Var;
                            this.f11041d = ByteString.f10869b;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: b */
    public int m2908b() {
        if (this.f11041d != null) {
            return this.f11041d.size();
        }
        ByteString byteString = this.f11038a;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f11040c != null) {
            return this.f11040c.mo2426c();
        }
        return 0;
    }

    /* renamed from: c */
    public AbstractC2639m0 m2907c(AbstractC2639m0 m0Var) {
        m2909a(m0Var);
        return this.f11040c;
    }

    /* renamed from: d */
    public AbstractC2639m0 m2906d(AbstractC2639m0 m0Var) {
        AbstractC2639m0 m0Var2 = this.f11040c;
        this.f11038a = null;
        this.f11041d = null;
        this.f11040c = m0Var;
        return m0Var2;
    }

    /* renamed from: e */
    public ByteString m2905e() {
        if (this.f11041d != null) {
            return this.f11041d;
        }
        ByteString byteString = this.f11038a;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            try {
                if (this.f11041d != null) {
                    return this.f11041d;
                }
                this.f11041d = this.f11040c == null ? ByteString.f10869b : this.f11040c.mo2422k();
                return this.f11041d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2571a0)) {
            return false;
        }
        C2571a0 a0Var = (C2571a0) obj;
        AbstractC2639m0 m0Var = this.f11040c;
        AbstractC2639m0 m0Var2 = a0Var.f11040c;
        return (m0Var == null && m0Var2 == null) ? m2905e().equals(a0Var.m2905e()) : (m0Var == null || m0Var2 == null) ? m0Var != null ? m0Var.equals(a0Var.m2907c(m0Var.mo2414d())) : m2907c(m0Var2.mo2414d()).equals(m0Var2) : m0Var.equals(m0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
