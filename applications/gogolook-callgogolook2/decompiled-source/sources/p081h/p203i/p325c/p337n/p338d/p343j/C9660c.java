package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/c.class */
public final class C9660c extends AbstractC9715v.AbstractC9717b {

    /* renamed from: a */
    public final String f21991a;

    /* renamed from: b */
    public final String f21992b;

    /* renamed from: h.i.c.n.d.j.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/c$b.class */
    public static final class C9662b extends AbstractC9715v.AbstractC9717b.AbstractC9718a {

        /* renamed from: a */
        public String f21993a;

        /* renamed from: b */
        public String f21994b;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9717b.AbstractC9718a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9717b.AbstractC9718a mo14588a(String str) {
            if (str != null) {
                this.f21993a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9717b.AbstractC9718a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9717b mo14589a() {
            String str = "";
            if (this.f21993a == null) {
                str = " key";
            }
            String str2 = str;
            if (this.f21994b == null) {
                str2 = str + " value";
            }
            if (str2.isEmpty()) {
                return new C9660c(this.f21993a, this.f21994b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9717b.AbstractC9718a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9717b.AbstractC9718a mo14587b(String str) {
            if (str != null) {
                this.f21994b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    public C9660c(String str, String str2) {
        this.f21991a = str;
        this.f21992b = str2;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9717b
    @NonNull
    /* renamed from: a */
    public String mo14592a() {
        return this.f21991a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9717b
    @NonNull
    /* renamed from: b */
    public String mo14591b() {
        return this.f21992b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9717b)) {
            return false;
        }
        AbstractC9715v.AbstractC9717b bVar = (AbstractC9715v.AbstractC9717b) obj;
        if (!this.f21991a.equals(bVar.mo14592a()) || !this.f21992b.equals(bVar.mo14591b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f21991a.hashCode() ^ 1000003) * 1000003) ^ this.f21992b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f21991a + ", value=" + this.f21992b + CssParser.BLOCK_END;
    }
}
