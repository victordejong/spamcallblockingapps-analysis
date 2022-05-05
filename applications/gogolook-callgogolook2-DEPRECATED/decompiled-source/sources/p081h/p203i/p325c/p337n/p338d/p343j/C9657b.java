package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/b.class */
public final class C9657b extends AbstractC9715v {

    /* renamed from: b */
    public final String f21975b;

    /* renamed from: c */
    public final String f21976c;

    /* renamed from: d */
    public final int f21977d;

    /* renamed from: e */
    public final String f21978e;

    /* renamed from: f */
    public final String f21979f;

    /* renamed from: g */
    public final String f21980g;

    /* renamed from: h */
    public final AbstractC9715v.AbstractC9723d f21981h;

    /* renamed from: i */
    public final AbstractC9715v.AbstractC9719c f21982i;

    /* renamed from: h.i.c.n.d.j.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/b$b.class */
    public static final class C9659b extends AbstractC9715v.AbstractC9716a {

        /* renamed from: a */
        public String f21983a;

        /* renamed from: b */
        public String f21984b;

        /* renamed from: c */
        public Integer f21985c;

        /* renamed from: d */
        public String f21986d;

        /* renamed from: e */
        public String f21987e;

        /* renamed from: f */
        public String f21988f;

        /* renamed from: g */
        public AbstractC9715v.AbstractC9723d f21989g;

        /* renamed from: h */
        public AbstractC9715v.AbstractC9719c f21990h;

        public C9659b() {
        }

        public C9659b(AbstractC9715v vVar) {
            this.f21983a = vVar.mo14607g();
            this.f21984b = vVar.mo14611c();
            this.f21985c = Integer.valueOf(vVar.mo14608f());
            this.f21986d = vVar.mo14610d();
            this.f21987e = vVar.mo14616a();
            this.f21988f = vVar.mo14612b();
            this.f21989g = vVar.mo14606h();
            this.f21990h = vVar.mo14609e();
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9716a mo14600a(int i) {
            this.f21985c = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9716a mo14599a(AbstractC9715v.AbstractC9719c cVar) {
            this.f21990h = cVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9716a mo14598a(AbstractC9715v.AbstractC9723d dVar) {
            this.f21989g = dVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9716a mo14597a(String str) {
            if (str != null) {
                this.f21987e = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: a */
        public AbstractC9715v mo14601a() {
            String str = "";
            if (this.f21983a == null) {
                str = " sdkVersion";
            }
            String str2 = str;
            if (this.f21984b == null) {
                str2 = str + " gmpAppId";
            }
            String str3 = str2;
            if (this.f21985c == null) {
                str3 = str2 + " platform";
            }
            String str4 = str3;
            if (this.f21986d == null) {
                str4 = str3 + " installationUuid";
            }
            String str5 = str4;
            if (this.f21987e == null) {
                str5 = str4 + " buildVersion";
            }
            String str6 = str5;
            if (this.f21988f == null) {
                str6 = str5 + " displayVersion";
            }
            if (str6.isEmpty()) {
                return new C9657b(this.f21983a, this.f21984b, this.f21985c.intValue(), this.f21986d, this.f21987e, this.f21988f, this.f21989g, this.f21990h);
            }
            throw new IllegalStateException("Missing required properties:" + str6);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9716a mo14596b(String str) {
            if (str != null) {
                this.f21988f = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: c */
        public AbstractC9715v.AbstractC9716a mo14595c(String str) {
            if (str != null) {
                this.f21984b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: d */
        public AbstractC9715v.AbstractC9716a mo14594d(String str) {
            if (str != null) {
                this.f21986d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9716a
        /* renamed from: e */
        public AbstractC9715v.AbstractC9716a mo14593e(String str) {
            if (str != null) {
                this.f21983a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }
    }

    public C9657b(String str, String str2, int i, String str3, String str4, String str5, @Nullable AbstractC9715v.AbstractC9723d dVar, @Nullable AbstractC9715v.AbstractC9719c cVar) {
        this.f21975b = str;
        this.f21976c = str2;
        this.f21977d = i;
        this.f21978e = str3;
        this.f21979f = str4;
        this.f21980g = str5;
        this.f21981h = dVar;
        this.f21982i = cVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @NonNull
    /* renamed from: a */
    public String mo14616a() {
        return this.f21979f;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @NonNull
    /* renamed from: b */
    public String mo14612b() {
        return this.f21980g;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @NonNull
    /* renamed from: c */
    public String mo14611c() {
        return this.f21976c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @NonNull
    /* renamed from: d */
    public String mo14610d() {
        return this.f21978e;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @Nullable
    /* renamed from: e */
    public AbstractC9715v.AbstractC9719c mo14609e() {
        return this.f21982i;
    }

    public boolean equals(Object obj) {
        AbstractC9715v.AbstractC9723d dVar;
        AbstractC9715v.AbstractC9719c cVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v)) {
            return false;
        }
        AbstractC9715v vVar = (AbstractC9715v) obj;
        if (!this.f21975b.equals(vVar.mo14607g()) || !this.f21976c.equals(vVar.mo14611c()) || this.f21977d != vVar.mo14608f() || !this.f21978e.equals(vVar.mo14610d()) || !this.f21979f.equals(vVar.mo14616a()) || !this.f21980g.equals(vVar.mo14612b()) || ((dVar = this.f21981h) != null ? !dVar.equals(vVar.mo14606h()) : vVar.mo14606h() != null) || ((cVar = this.f21982i) != null ? !cVar.equals(vVar.mo14609e()) : vVar.mo14609e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    /* renamed from: f */
    public int mo14608f() {
        return this.f21977d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @NonNull
    /* renamed from: g */
    public String mo14607g() {
        return this.f21975b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    @Nullable
    /* renamed from: h */
    public AbstractC9715v.AbstractC9723d mo14606h() {
        return this.f21981h;
    }

    public int hashCode() {
        int hashCode = this.f21975b.hashCode();
        int hashCode2 = this.f21976c.hashCode();
        int i = this.f21977d;
        int hashCode3 = this.f21978e.hashCode();
        int hashCode4 = this.f21979f.hashCode();
        int hashCode5 = this.f21980g.hashCode();
        AbstractC9715v.AbstractC9723d dVar = this.f21981h;
        int i2 = 0;
        int hashCode6 = dVar == null ? 0 : dVar.hashCode();
        AbstractC9715v.AbstractC9719c cVar = this.f21982i;
        if (cVar != null) {
            i2 = cVar.hashCode();
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i2;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v
    /* renamed from: j */
    public AbstractC9715v.AbstractC9716a mo14604j() {
        return new C9659b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f21975b + ", gmpAppId=" + this.f21976c + ", platform=" + this.f21977d + ", installationUuid=" + this.f21978e + ", buildVersion=" + this.f21979f + ", displayVersion=" + this.f21980g + ", session=" + this.f21981h + ", ndkPayload=" + this.f21982i + CssParser.BLOCK_END;
    }
}
