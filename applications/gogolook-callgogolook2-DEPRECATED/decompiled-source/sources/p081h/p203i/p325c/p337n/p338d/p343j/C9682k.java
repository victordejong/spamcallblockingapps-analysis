package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/k.class */
public final class C9682k extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a {

    /* renamed from: a */
    public final AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b f22068a;

    /* renamed from: b */
    public final C9755w<AbstractC9715v.AbstractC9717b> f22069b;

    /* renamed from: c */
    public final Boolean f22070c;

    /* renamed from: d */
    public final int f22071d;

    /* renamed from: h.i.c.n.d.j.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/k$b.class */
    public static final class C9684b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a {

        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b f22072a;

        /* renamed from: b */
        public C9755w<AbstractC9715v.AbstractC9717b> f22073b;

        /* renamed from: c */
        public Boolean f22074c;

        /* renamed from: d */
        public Integer f22075d;

        public C9684b() {
        }

        public C9684b(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a aVar) {
            this.f22072a = aVar.mo14500c();
            this.f22073b = aVar.mo14501b();
            this.f22074c = aVar.mo14502a();
            this.f22075d = Integer.valueOf(aVar.mo14499d());
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a mo14495a(int i) {
            this.f22075d = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a mo14494a(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b bVar) {
            if (bVar != null) {
                this.f22072a = bVar;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a mo14493a(C9755w<AbstractC9715v.AbstractC9717b> wVar) {
            this.f22073b = wVar;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a mo14492a(@Nullable Boolean bool) {
            this.f22074c = bool;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a mo14496a() {
            String str = "";
            if (this.f22072a == null) {
                str = " execution";
            }
            String str2 = str;
            if (this.f22075d == null) {
                str2 = str + " uiOrientation";
            }
            if (str2.isEmpty()) {
                return new C9682k(this.f22072a, this.f22073b, this.f22074c, this.f22075d.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C9682k(AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b bVar, @Nullable C9755w<AbstractC9715v.AbstractC9717b> wVar, @Nullable Boolean bool, int i) {
        this.f22068a = bVar;
        this.f22069b = wVar;
        this.f22070c = bool;
        this.f22071d = i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a
    @Nullable
    /* renamed from: a */
    public Boolean mo14502a() {
        return this.f22070c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a
    @Nullable
    /* renamed from: b */
    public C9755w<AbstractC9715v.AbstractC9717b> mo14501b() {
        return this.f22069b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a
    @NonNull
    /* renamed from: c */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b mo14500c() {
        return this.f22068a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a
    /* renamed from: d */
    public int mo14499d() {
        return this.f22071d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a
    /* renamed from: e */
    public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9732a mo14498e() {
        return new C9684b(this);
    }

    public boolean equals(Object obj) {
        C9755w<AbstractC9715v.AbstractC9717b> wVar;
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a aVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a) obj;
        if (!this.f22068a.equals(aVar.mo14500c()) || ((wVar = this.f22069b) != null ? !wVar.equals(aVar.mo14501b()) : aVar.mo14501b() != null) || ((bool = this.f22070c) != null ? !bool.equals(aVar.mo14502a()) : aVar.mo14502a() != null) || this.f22071d != aVar.mo14499d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f22068a.hashCode();
        C9755w<AbstractC9715v.AbstractC9717b> wVar = this.f22069b;
        int i = 0;
        int hashCode2 = wVar == null ? 0 : wVar.hashCode();
        Boolean bool = this.f22070c;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ this.f22071d;
    }

    public String toString() {
        return "Application{execution=" + this.f22068a + ", customAttributes=" + this.f22069b + ", background=" + this.f22070c + ", uiOrientation=" + this.f22071d + CssParser.BLOCK_END;
    }
}
