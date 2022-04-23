package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Set;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
/* renamed from: h.i.a.b.j.y.j.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/d.class */
public final class C6629d extends AbstractC6634g.AbstractC6636b {

    /* renamed from: a */
    public final long f16458a;

    /* renamed from: b */
    public final long f16459b;

    /* renamed from: c */
    public final Set<AbstractC6634g.EnumC6638c> f16460c;

    /* renamed from: h.i.a.b.j.y.j.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/d$b.class */
    public static final class C6631b extends AbstractC6634g.AbstractC6636b.AbstractC6637a {

        /* renamed from: a */
        public Long f16461a;

        /* renamed from: b */
        public Long f16462b;

        /* renamed from: c */
        public Set<AbstractC6634g.EnumC6638c> f16463c;

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b.AbstractC6637a
        /* renamed from: a */
        public AbstractC6634g.AbstractC6636b.AbstractC6637a mo22193a(long j) {
            this.f16461a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b.AbstractC6637a
        /* renamed from: a */
        public AbstractC6634g.AbstractC6636b.AbstractC6637a mo22192a(Set<AbstractC6634g.EnumC6638c> set) {
            if (set != null) {
                this.f16463c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b.AbstractC6637a
        /* renamed from: a */
        public AbstractC6634g.AbstractC6636b mo22194a() {
            String str = "";
            if (this.f16461a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f16462b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f16463c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new C6629d(this.f16461a.longValue(), this.f16462b.longValue(), this.f16463c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b.AbstractC6637a
        /* renamed from: b */
        public AbstractC6634g.AbstractC6636b.AbstractC6637a mo22191b(long j) {
            this.f16462b = Long.valueOf(j);
            return this;
        }
    }

    public C6629d(long j, long j2, Set<AbstractC6634g.EnumC6638c> set) {
        this.f16458a = j;
        this.f16459b = j2;
        this.f16460c = set;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b
    /* renamed from: a */
    public long mo22198a() {
        return this.f16458a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b
    /* renamed from: b */
    public Set<AbstractC6634g.EnumC6638c> mo22197b() {
        return this.f16460c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g.AbstractC6636b
    /* renamed from: c */
    public long mo22196c() {
        return this.f16459b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6634g.AbstractC6636b)) {
            return false;
        }
        AbstractC6634g.AbstractC6636b bVar = (AbstractC6634g.AbstractC6636b) obj;
        if (!(this.f16458a == bVar.mo22198a() && this.f16459b == bVar.mo22196c() && this.f16460c.equals(bVar.mo22197b()))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f16458a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f16459b;
        return this.f16460c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f16458a + ", maxAllowedDelay=" + this.f16459b + ", flags=" + this.f16460c + CssParser.BLOCK_END;
    }
}
