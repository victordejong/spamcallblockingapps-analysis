package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.t */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/t.class */
public final class C9709t extends AbstractC9715v.AbstractC9723d.AbstractC9750e {

    /* renamed from: a */
    public final int f22138a;

    /* renamed from: b */
    public final String f22139b;

    /* renamed from: c */
    public final String f22140c;

    /* renamed from: d */
    public final boolean f22141d;

    /* renamed from: h.i.c.n.d.j.t$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/t$b.class */
    public static final class C9711b extends AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a {

        /* renamed from: a */
        public Integer f22142a;

        /* renamed from: b */
        public String f22143b;

        /* renamed from: c */
        public String f22144c;

        /* renamed from: d */
        public Boolean f22145d;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a mo14399a(int i) {
            this.f22142a = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a mo14398a(String str) {
            if (str != null) {
                this.f22144c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a mo14397a(boolean z) {
            this.f22145d = Boolean.valueOf(z);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9750e mo14400a() {
            String str = "";
            if (this.f22142a == null) {
                str = " platform";
            }
            String str2 = str;
            if (this.f22143b == null) {
                str2 = str + " version";
            }
            String str3 = str2;
            if (this.f22144c == null) {
                str3 = str2 + " buildVersion";
            }
            String str4 = str3;
            if (this.f22145d == null) {
                str4 = str3 + " jailbroken";
            }
            if (str4.isEmpty()) {
                return new C9709t(this.f22142a.intValue(), this.f22143b, this.f22144c, this.f22145d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9750e.AbstractC9751a mo14396b(String str) {
            if (str != null) {
                this.f22143b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    public C9709t(int i, String str, String str2, boolean z) {
        this.f22138a = i;
        this.f22139b = str;
        this.f22140c = str2;
        this.f22141d = z;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e
    @NonNull
    /* renamed from: a */
    public String mo14405a() {
        return this.f22140c;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e
    /* renamed from: b */
    public int mo14404b() {
        return this.f22138a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e
    @NonNull
    /* renamed from: c */
    public String mo14403c() {
        return this.f22139b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9750e
    /* renamed from: d */
    public boolean mo14402d() {
        return this.f22141d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9715v.AbstractC9723d.AbstractC9750e)) {
            return false;
        }
        AbstractC9715v.AbstractC9723d.AbstractC9750e eVar = (AbstractC9715v.AbstractC9723d.AbstractC9750e) obj;
        if (this.f22138a != eVar.mo14404b() || !this.f22139b.equals(eVar.mo14403c()) || !this.f22140c.equals(eVar.mo14405a()) || this.f22141d != eVar.mo14402d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f22138a;
        int hashCode = this.f22139b.hashCode();
        return ((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ this.f22140c.hashCode()) * 1000003) ^ (this.f22141d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f22138a + ", version=" + this.f22139b + ", buildVersion=" + this.f22140c + ", jailbroken=" + this.f22141d + CssParser.BLOCK_END;
    }
}
