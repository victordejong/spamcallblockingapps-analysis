package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/p.class */
public final class C9697p extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e {

    /* renamed from: a */
    public final String f22108a;

    /* renamed from: b */
    public final int f22109b;

    /* renamed from: c */
    public final C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> f22110c;

    /* renamed from: h.i.c.n.d.j.p$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/p$b.class */
    public static final class C9699b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a {

        /* renamed from: a */
        public String f22111a;

        /* renamed from: b */
        public Integer f22112b;

        /* renamed from: c */
        public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> f22113c;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a mo14444a(int i) {
            this.f22112b = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a mo14443a(C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> wVar) {
            if (wVar != null) {
                this.f22113c = wVar;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a mo14442a(String str) {
            if (str != null) {
                this.f22111a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9742a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e mo14445a() {
            String str = "";
            if (this.f22111a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f22112b == null) {
                str2 = str + " importance";
            }
            String str3 = str2;
            if (this.f22113c == null) {
                str3 = str2 + " frames";
            }
            if (str3.isEmpty()) {
                return new C9697p(this.f22111a, this.f22112b.intValue(), this.f22113c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }
    }

    public C9697p(String str, int i, C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> wVar) {
        this.f22108a = str;
        this.f22109b = i;
        this.f22110c = wVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e
    @NonNull
    /* renamed from: a */
    public C9755w<AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e.AbstractC9743b> mo14449a() {
        return this.f22110c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e
    /* renamed from: b */
    public int mo14448b() {
        return this.f22109b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e
    @NonNull
    /* renamed from: c */
    public String mo14447c() {
        return this.f22108a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e eVar = (AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9731a.AbstractC9733b.AbstractC9741e) obj;
        if (!this.f22108a.equals(eVar.mo14447c()) || this.f22109b != eVar.mo14448b() || !this.f22110c.equals(eVar.mo14449a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f22108a.hashCode() ^ 1000003) * 1000003) ^ this.f22109b) * 1000003) ^ this.f22110c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f22108a + ", importance=" + this.f22109b + ", frames=" + this.f22110c + CssParser.BLOCK_END;
    }
}
