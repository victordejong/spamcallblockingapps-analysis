package p007a6;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p007a6.AbstractC0031g;
import p237t.C4350g;
/* renamed from: a6.b */
/* loaded from: classes-dex2jar.jar:a6/b.class */
public final class C0024b extends AbstractC0031g {

    /* renamed from: a */
    public final String f31a;

    /* renamed from: b */
    public final long f32b;

    /* renamed from: c */
    public final int f33c;

    /* renamed from: a6.b$b */
    /* loaded from: classes-dex2jar.jar:a6/b$b.class */
    public static final class C0026b extends AbstractC0031g.AbstractC0032a {

        /* renamed from: a */
        public String f34a;

        /* renamed from: b */
        public Long f35b;

        /* renamed from: c */
        public int f36c;

        @Override // p007a6.AbstractC0031g.AbstractC0032a
        /* renamed from: a */
        public AbstractC0031g mo8898a() {
            String str = this.f35b == null ? " tokenExpirationTimestamp" : "";
            if (str.isEmpty()) {
                return new C0024b(this.f34a, this.f35b.longValue(), this.f36c, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str));
        }

        @Override // p007a6.AbstractC0031g.AbstractC0032a
        /* renamed from: b */
        public AbstractC0031g.AbstractC0032a mo8897b(long j) {
            this.f35b = Long.valueOf(j);
            return this;
        }
    }

    public C0024b(String str, long j, int i, C0025a c0025a) {
        this.f31a = str;
        this.f32b = j;
        this.f33c = i;
    }

    @Override // p007a6.AbstractC0031g
    /* renamed from: b */
    public int mo8901b() {
        return this.f33c;
    }

    @Override // p007a6.AbstractC0031g
    /* renamed from: c */
    public String mo8900c() {
        return this.f31a;
    }

    @Override // p007a6.AbstractC0031g
    /* renamed from: d */
    public long mo8899d() {
        return this.f32b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0031g)) {
            return false;
        }
        AbstractC0031g abstractC0031g = (AbstractC0031g) obj;
        String str = this.f31a;
        if (str != null ? str.equals(abstractC0031g.mo8900c()) : abstractC0031g.mo8900c() == null) {
            if (this.f32b == abstractC0031g.mo8899d()) {
                if ((r0 = this.f33c) == 0) {
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f31a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f32b;
        int i2 = (int) (j ^ (j >>> 32));
        int i3 = this.f33c;
        if (i3 != 0) {
            i = C4350g.m1021c(i3);
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("TokenResult{token=");
        m8752j.append(this.f31a);
        m8752j.append(", tokenExpirationTimestamp=");
        m8752j.append(this.f32b);
        m8752j.append(", responseCode=");
        m8752j.append(C0033h.m8881p(this.f33c));
        m8752j.append("}");
        return m8752j.toString();
    }
}
