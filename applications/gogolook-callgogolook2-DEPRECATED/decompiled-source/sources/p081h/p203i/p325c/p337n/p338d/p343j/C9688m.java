package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/m.class */
public final class C9688m extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a {

    /* renamed from: a */
    public final long f22084a;

    /* renamed from: b */
    public final long f22085b;

    /* renamed from: c */
    public final String f22086c;

    /* renamed from: d */
    public final String f22087d;

    /* renamed from: h.i.c.n.d.j.m$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/m$b.class */
    public static final class C9690b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a {

        /* renamed from: a */
        public Long f22088a;

        /* renamed from: b */
        public Long f22089b;

        /* renamed from: c */
        public String f22090c;

        /* renamed from: d */
        public String f22091d;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a mo14479a(long j) {
            this.f22088a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a mo14478a(String str) {
            if (str != null) {
                this.f22090c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a mo14480a() {
            String str = "";
            if (this.f22088a == null) {
                str = " baseAddress";
            }
            String str2 = str;
            if (this.f22089b == null) {
                str2 = str + " size";
            }
            String str3 = str2;
            if (this.f22090c == null) {
                str3 = str2 + " name";
            }
            if (str3.isEmpty()) {
                return new C9688m(this.f22088a.longValue(), this.f22089b.longValue(), this.f22090c, this.f22091d);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a mo14476b(long j) {
            this.f22089b = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a.AbstractC9735a mo14475b(@Nullable String str) {
            this.f22091d = str;
            return this;
        }
    }

    public C9688m(long j, long j2, String str, @Nullable String str2) {
        this.f22084a = j;
        this.f22085b = j2;
        this.f22086c = str;
        this.f22087d = str2;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a
    @NonNull
    /* renamed from: a */
    public long mo14486a() {
        return this.f22084a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a
    @NonNull
    /* renamed from: b */
    public String mo14485b() {
        return this.f22086c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a
    /* renamed from: c */
    public long mo14484c() {
        return this.f22085b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a
    @Nullable
    /* renamed from: d */
    public String mo14483d() {
        return this.f22087d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a aVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a) obj;
        if (this.f22084a != aVar.mo14486a() || this.f22085b != aVar.mo14484c() || !this.f22086c.equals(aVar.mo14485b()) || ((str = this.f22087d) != null ? !str.equals(aVar.mo14483d()) : aVar.mo14483d() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f22084a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f22085b;
        int i2 = (int) ((j2 >>> 32) ^ j2);
        int hashCode = this.f22086c.hashCode();
        String str = this.f22087d;
        return (str == null ? 0 : str.hashCode()) ^ ((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003);
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f22084a + ", size=" + this.f22085b + ", name=" + this.f22086c + ", uuid=" + this.f22087d + CssParser.BLOCK_END;
    }
}
