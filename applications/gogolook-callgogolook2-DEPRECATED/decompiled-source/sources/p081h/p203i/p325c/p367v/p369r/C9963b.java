package p081h.p203i.p325c.p367v.p369r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p367v.p369r.AbstractC9971f;
/* renamed from: h.i.c.v.r.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/r/b.class */
public final class C9963b extends AbstractC9971f {

    /* renamed from: a */
    public final String f22547a;

    /* renamed from: b */
    public final long f22548b;

    /* renamed from: c */
    public final AbstractC9971f.EnumC9973b f22549c;

    /* renamed from: h.i.c.v.r.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/v/r/b$b.class */
    public static final class C9965b extends AbstractC9971f.AbstractC9972a {

        /* renamed from: a */
        public String f22550a;

        /* renamed from: b */
        public Long f22551b;

        /* renamed from: c */
        public AbstractC9971f.EnumC9973b f22552c;

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f.AbstractC9972a
        /* renamed from: a */
        public AbstractC9971f.AbstractC9972a mo13792a(long j) {
            this.f22551b = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f.AbstractC9972a
        /* renamed from: a */
        public AbstractC9971f.AbstractC9972a mo13791a(AbstractC9971f.EnumC9973b bVar) {
            this.f22552c = bVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f.AbstractC9972a
        /* renamed from: a */
        public AbstractC9971f.AbstractC9972a mo13790a(String str) {
            this.f22550a = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f.AbstractC9972a
        /* renamed from: a */
        public AbstractC9971f mo13793a() {
            String str = "";
            if (this.f22551b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new C9963b(this.f22550a, this.f22551b.longValue(), this.f22552c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C9963b(@Nullable String str, long j, @Nullable AbstractC9971f.EnumC9973b bVar) {
        this.f22547a = str;
        this.f22548b = j;
        this.f22549c = bVar;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f
    @Nullable
    /* renamed from: a */
    public AbstractC9971f.EnumC9973b mo13797a() {
        return this.f22549c;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f
    @Nullable
    /* renamed from: b */
    public String mo13796b() {
        return this.f22547a;
    }

    @Override // p081h.p203i.p325c.p367v.p369r.AbstractC9971f
    @NonNull
    /* renamed from: c */
    public long mo13795c() {
        return this.f22548b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9971f)) {
            return false;
        }
        AbstractC9971f fVar = (AbstractC9971f) obj;
        String str = this.f22547a;
        if (str != null ? str.equals(fVar.mo13796b()) : fVar.mo13796b() == null) {
            if (this.f22548b == fVar.mo13795c()) {
                if ((r0 = this.f22549c) == null) {
                }
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        String str = this.f22547a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.f22548b;
        int i2 = (int) (j ^ (j >>> 32));
        AbstractC9971f.EnumC9973b bVar = this.f22549c;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((((hashCode ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i;
    }

    public String toString() {
        return "TokenResult{token=" + this.f22547a + ", tokenExpirationTimestamp=" + this.f22548b + ", responseCode=" + this.f22549c + CssParser.BLOCK_END;
    }
}
