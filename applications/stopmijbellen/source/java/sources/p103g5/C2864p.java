package p103g5;

import android.support.p012v4.media.C0082b;
import p103g5.AbstractC2878v;
/* renamed from: g5.p */
/* loaded from: classes-dex2jar.jar:g5/p.class */
public final class C2864p extends AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d {

    /* renamed from: a */
    public final String f9758a;

    /* renamed from: b */
    public final int f9759b;

    /* renamed from: c */
    public final C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a> f9760c;

    public C2864p(String str, int i, C2904w c2904w, C2865a c2865a) {
        this.f9758a = str;
        this.f9759b = i;
        this.f9760c = c2904w;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d
    /* renamed from: a */
    public C2904w<AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d.AbstractC2897a> mo2890a() {
        return this.f9760c;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d
    /* renamed from: b */
    public int mo2889b() {
        return this.f9759b;
    }

    @Override // p103g5.AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d
    /* renamed from: c */
    public String mo2888c() {
        return this.f9758a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d)) {
            return false;
        }
        AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d abstractC2896d = (AbstractC2878v.AbstractC2883d.AbstractC2889d.AbstractC2890a.AbstractC2892b.AbstractC2896d) obj;
        if (!this.f9758a.equals(abstractC2896d.mo2888c()) || this.f9759b != abstractC2896d.mo2889b() || !this.f9760c.equals(abstractC2896d.mo2890a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f9758a.hashCode() ^ 1000003) * 1000003) ^ this.f9759b) * 1000003) ^ this.f9760c.hashCode();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Thread{name=");
        m8752j.append(this.f9758a);
        m8752j.append(", importance=");
        m8752j.append(this.f9759b);
        m8752j.append(", frames=");
        m8752j.append(this.f9760c);
        m8752j.append("}");
        return m8752j.toString();
    }
}
