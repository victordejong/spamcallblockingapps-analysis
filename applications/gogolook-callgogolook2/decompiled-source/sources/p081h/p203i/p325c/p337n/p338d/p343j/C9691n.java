package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/n.class */
public final class C9691n extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c {

    /* renamed from: a */
    public final String f22092a;

    /* renamed from: b */
    public final String f22093b;

    /* renamed from: c */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> f22094c;

    /* renamed from: d */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c f22095d;

    /* renamed from: e */
    public final int f22096e;

    /* renamed from: h.i.c.n.d.j.n$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/n$b.class */
    public static final class C9693b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a {

        /* renamed from: a */
        public String f22097a;

        /* renamed from: b */
        public String f22098b;

        /* renamed from: c */
        public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> f22099c;

        /* renamed from: d */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c f22100d;

        /* renamed from: e */
        public Integer f22101e;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a mo14462a(int i) {
            this.f22101e = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a mo14461a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar) {
            this.f22100d = cVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a mo14460a(C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> wVar) {
            if (wVar != null) {
                this.f22099c = wVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a mo14459a(String str) {
            this.f22098b = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c mo14463a() {
            String str = "";
            if (this.f22097a == null) {
                str = " type";
            }
            String str2 = str;
            if (this.f22099c == null) {
                str2 = str + " frames";
            }
            String str3 = str2;
            if (this.f22101e == null) {
                str3 = str2 + " overflowCount";
            }
            if (str3.isEmpty()) {
                return new C9691n(this.f22097a, this.f22098b, this.f22099c, this.f22100d, this.f22101e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c.AbstractC9738a mo14458b(String str) {
            if (str != null) {
                this.f22097a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }
    }

    public C9691n(String str, @Nullable String str2, C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> wVar, @Nullable AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar, int i) {
        this.f22092a = str;
        this.f22093b = str2;
        this.f22094c = wVar;
        this.f22095d = cVar;
        this.f22096e = i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c
    @Nullable
    /* renamed from: a */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c mo14469a() {
        return this.f22095d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c
    @NonNull
    /* renamed from: b */
    public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> mo14468b() {
        return this.f22094c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c
    /* renamed from: c */
    public int mo14467c() {
        return this.f22096e;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c
    @Nullable
    /* renamed from: d */
    public String mo14466d() {
        return this.f22093b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c
    @NonNull
    /* renamed from: e */
    public String mo14465e() {
        return this.f22092a;
    }

    public boolean equals(Object obj) {
        String str;
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar2 = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c) obj;
        if (!this.f22092a.equals(cVar2.mo14465e()) || ((str = this.f22093b) != null ? !str.equals(cVar2.mo14466d()) : cVar2.mo14466d() != null) || !this.f22094c.equals(cVar2.mo14468b()) || ((cVar = this.f22095d) != null ? !cVar.equals(cVar2.mo14469a()) : cVar2.mo14469a() != null) || this.f22096e != cVar2.mo14467c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22092a.hashCode();
        String str = this.f22093b;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        int hashCode3 = this.f22094c.hashCode();
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar = this.f22095d;
        if (cVar != null) {
            i = cVar.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f22096e;
    }

    public String toString() {
        return "Exception{type=" + this.f22092a + ", reason=" + this.f22093b + ", frames=" + this.f22094c + ", causedBy=" + this.f22095d + ", overflowCount=" + this.f22096e + CssParser.BLOCK_END;
    }
}
