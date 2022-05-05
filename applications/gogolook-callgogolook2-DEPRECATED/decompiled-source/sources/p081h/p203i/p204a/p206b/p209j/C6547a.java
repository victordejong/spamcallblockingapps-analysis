package p081h.p203i.p204a.p206b.p209j;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Map;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
/* renamed from: h.i.a.b.j.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a.class */
public final class C6547a extends AbstractC6571h {

    /* renamed from: a */
    public final String f16327a;

    /* renamed from: b */
    public final Integer f16328b;

    /* renamed from: c */
    public final C6570g f16329c;

    /* renamed from: d */
    public final long f16330d;

    /* renamed from: e */
    public final long f16331e;

    /* renamed from: f */
    public final Map<String, String> f16332f;

    /* renamed from: h.i.a.b.j.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/a$b.class */
    public static final class C6549b extends AbstractC6571h.AbstractC6572a {

        /* renamed from: a */
        public String f16333a;

        /* renamed from: b */
        public Integer f16334b;

        /* renamed from: c */
        public C6570g f16335c;

        /* renamed from: d */
        public Long f16336d;

        /* renamed from: e */
        public Long f16337e;

        /* renamed from: f */
        public Map<String, String> f16338f;

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h.AbstractC6572a mo22323a(long j) {
            this.f16336d = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h.AbstractC6572a mo22322a(C6570g gVar) {
            if (gVar != null) {
                this.f16335c = gVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h.AbstractC6572a mo22321a(Integer num) {
            this.f16334b = num;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h.AbstractC6572a mo22320a(String str) {
            if (str != null) {
                this.f16333a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h.AbstractC6572a mo22316a(Map<String, String> map) {
            if (map != null) {
                this.f16338f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: a */
        public AbstractC6571h mo22324a() {
            String str = "";
            if (this.f16333a == null) {
                str = " transportName";
            }
            String str2 = str;
            if (this.f16335c == null) {
                str2 = str + " encodedPayload";
            }
            String str3 = str2;
            if (this.f16336d == null) {
                str3 = str2 + " eventMillis";
            }
            String str4 = str3;
            if (this.f16337e == null) {
                str4 = str3 + " uptimeMillis";
            }
            String str5 = str4;
            if (this.f16338f == null) {
                str5 = str4 + " autoMetadata";
            }
            if (str5.isEmpty()) {
                return new C6547a(this.f16333a, this.f16334b, this.f16335c, this.f16336d.longValue(), this.f16337e.longValue(), this.f16338f);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: b */
        public AbstractC6571h.AbstractC6572a mo22314b(long j) {
            this.f16337e = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h.AbstractC6572a
        /* renamed from: b */
        public Map<String, String> mo22315b() {
            Map<String, String> map = this.f16338f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }
    }

    public C6547a(String str, @Nullable Integer num, C6570g gVar, long j, long j2, Map<String, String> map) {
        this.f16327a = str;
        this.f16328b = num;
        this.f16329c = gVar;
        this.f16330d = j;
        this.f16331e = j2;
        this.f16332f = map;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    /* renamed from: a */
    public Map<String, String> mo22336a() {
        return this.f16332f;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    @Nullable
    /* renamed from: b */
    public Integer mo22334b() {
        return this.f16328b;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    /* renamed from: c */
    public C6570g mo22332c() {
        return this.f16329c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    /* renamed from: d */
    public long mo22330d() {
        return this.f16330d;
    }

    public boolean equals(Object obj) {
        Integer num;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6571h)) {
            return false;
        }
        AbstractC6571h hVar = (AbstractC6571h) obj;
        if (!this.f16327a.equals(hVar.mo22328f()) || ((num = this.f16328b) != null ? !num.equals(hVar.mo22334b()) : hVar.mo22334b() != null) || !this.f16329c.equals(hVar.mo22332c()) || this.f16330d != hVar.mo22330d() || this.f16331e != hVar.mo22327g() || !this.f16332f.equals(hVar.mo22336a())) {
            z = false;
        }
        return z;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    /* renamed from: f */
    public String mo22328f() {
        return this.f16327a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6571h
    /* renamed from: g */
    public long mo22327g() {
        return this.f16331e;
    }

    public int hashCode() {
        int hashCode = this.f16327a.hashCode();
        Integer num = this.f16328b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int hashCode3 = this.f16329c.hashCode();
        long j = this.f16330d;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f16331e;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f16332f.hashCode();
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f16327a + ", code=" + this.f16328b + ", encodedPayload=" + this.f16329c + ", eventMillis=" + this.f16330d + ", uptimeMillis=" + this.f16331e + ", autoMetadata=" + this.f16332f + CssParser.BLOCK_END;
    }
}
