package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.u */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/u.class */
public final class C9712u extends AbstractC9715v.AbstractC9723d.AbstractC9752f {

    /* renamed from: a */
    public final String f22146a;

    /* renamed from: h.i.c.n.d.j.u$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/u$b.class */
    public static final class C9714b extends AbstractC9715v.AbstractC9723d.AbstractC9752f.AbstractC9753a {

        /* renamed from: a */
        public String f22147a;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9752f.AbstractC9753a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9752f.AbstractC9753a mo14392a(String str) {
            if (str != null) {
                this.f22147a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9752f.AbstractC9753a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9752f mo14393a() {
            String str = "";
            if (this.f22147a == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new C9712u(this.f22147a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C9712u(String str) {
        this.f22146a = str;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9752f
    @NonNull
    /* renamed from: a */
    public String mo14395a() {
        return this.f22146a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9752f) {
            return this.f22146a.equals(((AbstractC9715v.AbstractC9723d.AbstractC9752f) obj).mo14395a());
        }
        return false;
    }

    public int hashCode() {
        return this.f22146a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f22146a + CssParser.BLOCK_END;
    }
}
