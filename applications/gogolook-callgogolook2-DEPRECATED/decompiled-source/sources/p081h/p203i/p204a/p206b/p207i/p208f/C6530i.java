package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o;
/* renamed from: h.i.a.b.i.f.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/i.class */
public final class C6530i extends AbstractC6542o {

    /* renamed from: a */
    public final AbstractC6542o.EnumC6545c f16266a;

    /* renamed from: b */
    public final AbstractC6542o.EnumC6544b f16267b;

    /* renamed from: h.i.a.b.i.f.i$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/i$b.class */
    public static final class C6532b extends AbstractC6542o.AbstractC6543a {

        /* renamed from: a */
        public AbstractC6542o.EnumC6545c f16268a;

        /* renamed from: b */
        public AbstractC6542o.EnumC6544b f16269b;

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o.AbstractC6543a
        /* renamed from: a */
        public AbstractC6542o.AbstractC6543a mo22358a(@Nullable AbstractC6542o.EnumC6544b bVar) {
            this.f16269b = bVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o.AbstractC6543a
        /* renamed from: a */
        public AbstractC6542o.AbstractC6543a mo22357a(@Nullable AbstractC6542o.EnumC6545c cVar) {
            this.f16268a = cVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o.AbstractC6543a
        /* renamed from: a */
        public AbstractC6542o mo22359a() {
            return new C6530i(this.f16268a, this.f16269b);
        }
    }

    public C6530i(@Nullable AbstractC6542o.EnumC6545c cVar, @Nullable AbstractC6542o.EnumC6544b bVar) {
        this.f16266a = cVar;
        this.f16267b = bVar;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o
    @Nullable
    /* renamed from: a */
    public AbstractC6542o.EnumC6544b mo22362a() {
        return this.f16267b;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o
    @Nullable
    /* renamed from: b */
    public AbstractC6542o.EnumC6545c mo22361b() {
        return this.f16266a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6542o)) {
            return false;
        }
        AbstractC6542o oVar = (AbstractC6542o) obj;
        AbstractC6542o.EnumC6545c cVar = this.f16266a;
        if (cVar != null ? cVar.equals(oVar.mo22361b()) : oVar.mo22361b() == null) {
            AbstractC6542o.EnumC6544b bVar = this.f16267b;
            if (bVar != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC6542o.EnumC6545c cVar = this.f16266a;
        int i = 0;
        int hashCode = cVar == null ? 0 : cVar.hashCode();
        AbstractC6542o.EnumC6544b bVar = this.f16267b;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f16266a + ", mobileSubtype=" + this.f16267b + CssParser.BLOCK_END;
    }
}
