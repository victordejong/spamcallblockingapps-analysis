package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.o */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/o.class */
public final class C9694o extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d {

    /* renamed from: a */
    public final String f22102a;

    /* renamed from: b */
    public final String f22103b;

    /* renamed from: c */
    public final long f22104c;

    /* renamed from: h.i.c.n.d.j.o$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/o$b.class */
    public static final class C9696b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a {

        /* renamed from: a */
        public String f22105a;

        /* renamed from: b */
        public String f22106b;

        /* renamed from: c */
        public Long f22107c;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a mo14452a(long j) {
            this.f22107c = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a mo14451a(String str) {
            if (str != null) {
                this.f22106b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d mo14453a() {
            String str = "";
            if (this.f22105a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f22106b == null) {
                str2 = str + " code";
            }
            String str3 = str2;
            if (this.f22107c == null) {
                str3 = str2 + " address";
            }
            if (str3.isEmpty()) {
                return new C9694o(this.f22105a, this.f22106b, this.f22107c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d.AbstractC9740a mo14450b(String str) {
            if (str != null) {
                this.f22105a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    public C9694o(String str, String str2, long j) {
        this.f22102a = str;
        this.f22103b = str2;
        this.f22104c = j;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d
    @NonNull
    /* renamed from: a */
    public long mo14457a() {
        return this.f22104c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d
    @NonNull
    /* renamed from: b */
    public String mo14456b() {
        return this.f22103b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d
    @NonNull
    /* renamed from: c */
    public String mo14455c() {
        return this.f22102a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d dVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d) obj;
        if (!this.f22102a.equals(dVar.mo14455c()) || !this.f22103b.equals(dVar.mo14456b()) || this.f22104c != dVar.mo14457a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22102a.hashCode();
        int hashCode2 = this.f22103b.hashCode();
        long j = this.f22104c;
        return ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f22102a + ", code=" + this.f22103b + ", address=" + this.f22104c + CssParser.BLOCK_END;
    }
}
