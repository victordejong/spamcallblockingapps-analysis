package p103g5;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p007a6.C0033h;
import p103g5.AbstractC2878v;
/* renamed from: g5.k */
/* loaded from: classes-dex2jar.jar:g5/k.class */
public final class C2853k extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a {

    /* renamed from: a */
    public final AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b f9734a;

    /* renamed from: b */
    public final C2904w<AbstractC2878v.AbstractC2880b> f9735b;

    /* renamed from: c */
    public final Boolean f9736c;

    /* renamed from: d */
    public final int f9737d;

    /* renamed from: g5.k$b */
    /* loaded from: classes-dex2jar.jar:g5/k$b.class */
    public static final class C2855b extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2891a {

        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b f9738a;

        /* renamed from: b */
        public C2904w<AbstractC2878v.AbstractC2880b> f9739b;

        /* renamed from: c */
        public Boolean f9740c;

        /* renamed from: d */
        public Integer f9741d;

        public C2855b(AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a abstractC2890a, C2854a c2854a) {
            C2853k c2853k = (C2853k) abstractC2890a;
            this.f9738a = c2853k.f9734a;
            this.f9739b = c2853k.f9735b;
            this.f9740c = c2853k.f9736c;
            this.f9741d = Integer.valueOf(c2853k.f9737d);
        }

        /* renamed from: a */
        public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a m2965a() {
            String str = this.f9738a == null ? " execution" : "";
            String str2 = str;
            if (this.f9741d == null) {
                str2 = C1676a.m4789h(str, " uiOrientation");
            }
            if (str2.isEmpty()) {
                return new C2853k(this.f9738a, this.f9739b, this.f9740c, this.f9741d.intValue(), null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str2));
        }
    }

    public C2853k(AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b abstractC2892b, C2904w c2904w, Boolean bool, int i, C2854a c2854a) {
        this.f9734a = abstractC2892b;
        this.f9735b = c2904w;
        this.f9736c = bool;
        this.f9737d = i;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a
    /* renamed from: a */
    public Boolean mo2910a() {
        return this.f9736c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a
    /* renamed from: b */
    public C2904w<AbstractC2878v.AbstractC2880b> mo2909b() {
        return this.f9735b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a
    /* renamed from: c */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b mo2908c() {
        return this.f9734a;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a
    /* renamed from: d */
    public int mo2907d() {
        return this.f9737d;
    }

    /* renamed from: e */
    public AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2891a m2966e() {
        return new C2855b(this, null);
    }

    public boolean equals(Object obj) {
        C2904w<AbstractC2878v.AbstractC2880b> c2904w;
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a abstractC2890a = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a) obj;
        if (!this.f9734a.equals(abstractC2890a.mo2908c()) || ((c2904w = this.f9735b) != null ? !c2904w.equals(abstractC2890a.mo2909b()) : abstractC2890a.mo2909b() != null) || ((bool = this.f9736c) != null ? !bool.equals(abstractC2890a.mo2910a()) : abstractC2890a.mo2910a() != null) || this.f9737d != abstractC2890a.mo2907d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f9734a.hashCode();
        C2904w<AbstractC2878v.AbstractC2880b> c2904w = this.f9735b;
        int i = 0;
        int hashCode2 = c2904w == null ? 0 : c2904w.hashCode();
        Boolean bool = this.f9736c;
        if (bool != null) {
            i = bool.hashCode();
        }
        return ((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ this.f9737d;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Application{execution=");
        m8752j.append(this.f9734a);
        m8752j.append(", customAttributes=");
        m8752j.append(this.f9735b);
        m8752j.append(", background=");
        m8752j.append(this.f9736c);
        m8752j.append(", uiOrientation=");
        return C0033h.m8885l(m8752j, this.f9737d, "}");
    }
}
