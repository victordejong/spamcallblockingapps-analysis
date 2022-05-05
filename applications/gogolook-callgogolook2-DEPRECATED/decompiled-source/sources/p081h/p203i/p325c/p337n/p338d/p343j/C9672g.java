package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.g */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/g.class */
public final class C9672g extends AbstractC9715v.AbstractC9723d.AbstractC9724a {

    /* renamed from: a */
    public final String f22025a;

    /* renamed from: b */
    public final String f22026b;

    /* renamed from: c */
    public final String f22027c;

    /* renamed from: d */
    public final AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b f22028d;

    /* renamed from: e */
    public final String f22029e;

    /* renamed from: f */
    public final String f22030f;

    /* renamed from: g */
    public final String f22031g;

    /* renamed from: h.i.c.n.d.j.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/g$b.class */
    public static final class C9674b extends AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a {

        /* renamed from: a */
        public String f22032a;

        /* renamed from: b */
        public String f22033b;

        /* renamed from: c */
        public String f22034c;

        /* renamed from: d */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b f22035d;

        /* renamed from: e */
        public String f22036e;

        /* renamed from: f */
        public String f22037f;

        /* renamed from: g */
        public String f22038g;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14549a(@Nullable String str) {
            this.f22037f = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a mo14550a() {
            String str = "";
            if (this.f22032a == null) {
                str = " identifier";
            }
            String str2 = str;
            if (this.f22033b == null) {
                str2 = str + " version";
            }
            if (str2.isEmpty()) {
                return new C9672g(this.f22032a, this.f22033b, this.f22034c, this.f22035d, this.f22036e, this.f22037f, this.f22038g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14548b(@Nullable String str) {
            this.f22038g = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: c */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14547c(String str) {
            this.f22034c = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: d */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14546d(String str) {
            if (str != null) {
                this.f22032a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: e */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14545e(String str) {
            this.f22036e = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a
        /* renamed from: f */
        public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9725a mo14544f(String str) {
            if (str != null) {
                this.f22033b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    public C9672g(String str, String str2, @Nullable String str3, @Nullable AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b bVar, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.f22025a = str;
        this.f22026b = str2;
        this.f22027c = str3;
        this.f22028d = bVar;
        this.f22029e = str4;
        this.f22030f = str5;
        this.f22031g = str6;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @Nullable
    /* renamed from: a */
    public String mo14558a() {
        return this.f22030f;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @Nullable
    /* renamed from: b */
    public String mo14557b() {
        return this.f22031g;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @Nullable
    /* renamed from: c */
    public String mo14556c() {
        return this.f22027c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @NonNull
    /* renamed from: d */
    public String mo14555d() {
        return this.f22025a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @Nullable
    /* renamed from: e */
    public String mo14554e() {
        return this.f22029e;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b bVar;
        String str2;
        String str3;
        String str4;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9724a)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9724a aVar = (AbstractC9715v.AbstractC9723d.AbstractC9724a) obj;
        if (!this.f22025a.equals(aVar.mo14555d()) || !this.f22026b.equals(aVar.mo14552g()) || ((str = this.f22027c) != null ? !str.equals(aVar.mo14556c()) : aVar.mo14556c() != null) || ((bVar = this.f22028d) != null ? !bVar.equals(aVar.mo14553f()) : aVar.mo14553f() != null) || ((str2 = this.f22029e) != null ? !str2.equals(aVar.mo14554e()) : aVar.mo14554e() != null) || ((str3 = this.f22030f) != null ? !str3.equals(aVar.mo14558a()) : aVar.mo14558a() != null) || ((str4 = this.f22031g) != null ? !str4.equals(aVar.mo14557b()) : aVar.mo14557b() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @Nullable
    /* renamed from: f */
    public AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b mo14553f() {
        return this.f22028d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9724a
    @NonNull
    /* renamed from: g */
    public String mo14552g() {
        return this.f22026b;
    }

    public int hashCode() {
        int hashCode = this.f22025a.hashCode();
        int hashCode2 = this.f22026b.hashCode();
        String str = this.f22027c;
        int i = 0;
        int hashCode3 = str == null ? 0 : str.hashCode();
        AbstractC9715v.AbstractC9723d.AbstractC9724a.AbstractC9726b bVar = this.f22028d;
        int hashCode4 = bVar == null ? 0 : bVar.hashCode();
        String str2 = this.f22029e;
        int hashCode5 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f22030f;
        int hashCode6 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f22031g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i;
    }

    public String toString() {
        return "Application{identifier=" + this.f22025a + ", version=" + this.f22026b + ", displayVersion=" + this.f22027c + ", organization=" + this.f22028d + ", installationUuid=" + this.f22029e + ", developmentPlatform=" + this.f22030f + ", developmentPlatformVersion=" + this.f22031g + CssParser.BLOCK_END;
    }
}
