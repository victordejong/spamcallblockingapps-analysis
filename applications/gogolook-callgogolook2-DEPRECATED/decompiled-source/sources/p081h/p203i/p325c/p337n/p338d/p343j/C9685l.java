package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.l */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/l.class */
public final class C9685l extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b {

    /* renamed from: a */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> f22076a;

    /* renamed from: b */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c f22077b;

    /* renamed from: c */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d f22078c;

    /* renamed from: d */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> f22079d;

    /* renamed from: h.i.c.n.d.j.l$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/l$b.class */
    public static final class C9687b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b {

        /* renamed from: a */
        public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> f22080a;

        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c f22081b;

        /* renamed from: c */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d f22082c;

        /* renamed from: d */
        public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> f22083d;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b mo14473a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar) {
            if (cVar != null) {
                this.f22081b = cVar;
                return this;
            }
            throw new NullPointerException("Null exception");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b mo14472a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d dVar) {
            if (dVar != null) {
                this.f22082c = dVar;
                return this;
            }
            throw new NullPointerException("Null signal");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b mo14471a(C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> wVar) {
            if (wVar != null) {
                this.f22083d = wVar;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b mo14474a() {
            String str = "";
            if (this.f22080a == null) {
                str = " threads";
            }
            String str2 = str;
            if (this.f22081b == null) {
                str2 = str + " exception";
            }
            String str3 = str2;
            if (this.f22082c == null) {
                str3 = str2 + " signal";
            }
            String str4 = str3;
            if (this.f22083d == null) {
                str4 = str3 + " binaries";
            }
            if (str4.isEmpty()) {
                return new C9685l(this.f22080a, this.f22081b, this.f22082c, this.f22083d);
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9736b mo14470b(C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> wVar) {
            if (wVar != null) {
                this.f22080a = wVar;
                return this;
            }
            throw new NullPointerException("Null threads");
        }
    }

    public C9685l(C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> wVar, AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c cVar, AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d dVar, C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> wVar2) {
        this.f22076a = wVar;
        this.f22077b = cVar;
        this.f22078c = dVar;
        this.f22079d = wVar2;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b
    @NonNull
    /* renamed from: a */
    public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9734a> mo14491a() {
        return this.f22079d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b
    @NonNull
    /* renamed from: b */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9737c mo14490b() {
        return this.f22077b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b
    @NonNull
    /* renamed from: c */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9739d mo14489c() {
        return this.f22078c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b
    @NonNull
    /* renamed from: d */
    public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e> mo14488d() {
        return this.f22076a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b bVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b) obj;
        if (!this.f22076a.equals(bVar.mo14488d()) || !this.f22077b.equals(bVar.mo14490b()) || !this.f22078c.equals(bVar.mo14489c()) || !this.f22079d.equals(bVar.mo14491a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f22076a.hashCode() ^ 1000003) * 1000003) ^ this.f22077b.hashCode()) * 1000003) ^ this.f22078c.hashCode()) * 1000003) ^ this.f22079d.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f22076a + ", exception=" + this.f22077b + ", signal=" + this.f22078c + ", binaries=" + this.f22079d + CssParser.BLOCK_END;
    }
}
