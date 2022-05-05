package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/d.class */
public final class C9663d extends AbstractC9715v.AbstractC9719c {

    /* renamed from: a */
    public final C9755w<AbstractC9715v.AbstractC9719c.AbstractC9721b> f21995a;

    /* renamed from: b */
    public final String f21996b;

    /* renamed from: h.i.c.n.d.j.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/d$b.class */
    public static final class C9665b extends AbstractC9715v.AbstractC9719c.AbstractC9720a {

        /* renamed from: a */
        public C9755w<AbstractC9715v.AbstractC9719c.AbstractC9721b> f21997a;

        /* renamed from: b */
        public String f21998b;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9720a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c.AbstractC9720a mo14582a(C9755w<AbstractC9715v.AbstractC9719c.AbstractC9721b> wVar) {
            if (wVar != null) {
                this.f21997a = wVar;
                return this;
            }
            throw new NullPointerException("Null files");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9720a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c.AbstractC9720a mo14581a(String str) {
            this.f21998b = str;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c.AbstractC9720a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9719c mo14583a() {
            String str = "";
            if (this.f21997a == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new C9663d(this.f21997a, this.f21998b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    public C9663d(C9755w<AbstractC9715v.AbstractC9719c.AbstractC9721b> wVar, @Nullable String str) {
        this.f21995a = wVar;
        this.f21996b = str;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c
    @NonNull
    /* renamed from: a */
    public C9755w<AbstractC9715v.AbstractC9719c.AbstractC9721b> mo14586a() {
        return this.f21995a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9719c
    @Nullable
    /* renamed from: b */
    public String mo14585b() {
        return this.f21996b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9719c)) {
            return false;
        }
        AbstractC9715v.AbstractC9719c cVar = (AbstractC9715v.AbstractC9719c) obj;
        if (!this.f21995a.equals(cVar.mo14586a()) || ((str = this.f21996b) != null ? !str.equals(cVar.mo14585b()) : cVar.mo14585b() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f21995a.hashCode();
        String str = this.f21996b;
        return ((hashCode ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f21995a + ", orgId=" + this.f21996b + CssParser.BLOCK_END;
    }
}
