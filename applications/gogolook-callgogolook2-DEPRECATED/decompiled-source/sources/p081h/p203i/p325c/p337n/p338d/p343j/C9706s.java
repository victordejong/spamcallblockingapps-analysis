package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.s */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/s.class */
public final class C9706s extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d {

    /* renamed from: a */
    public final String f22136a;

    /* renamed from: h.i.c.n.d.j.s$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/s$b.class */
    public static final class C9708b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a {

        /* renamed from: a */
        public String f22137a;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a mo14406a(String str) {
            if (str != null) {
                this.f22137a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d.AbstractC9749a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d mo14407a() {
            String str = "";
            if (this.f22137a == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new C9706s(this.f22137a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C9706s(String str) {
        this.f22136a = str;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d
    @NonNull
    /* renamed from: a */
    public String mo14409a() {
        return this.f22136a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d) {
            return this.f22136a.equals(((AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9748d) obj).mo14409a());
        }
        return false;
    }

    public int hashCode() {
        return this.f22136a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f22136a + CssParser.BLOCK_END;
    }
}
