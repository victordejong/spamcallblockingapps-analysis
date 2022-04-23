package p626l;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.Serializable;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.n */
/* loaded from: classes3-dex2jar.jar:l/n.class */
public final class C14984n<A, B, C> implements Serializable {

    /* renamed from: a */
    public final A f33018a;

    /* renamed from: b */
    public final B f33019b;

    /* renamed from: c */
    public final C f33020c;

    public C14984n(A a, B b, C c) {
        this.f33018a = a;
        this.f33019b = b;
        this.f33020c = c;
    }

    /* renamed from: a */
    public final A m650a() {
        return this.f33018a;
    }

    /* renamed from: b */
    public final B m649b() {
        return this.f33019b;
    }

    /* renamed from: c */
    public final C m648c() {
        return this.f33020c;
    }

    /* renamed from: d */
    public final A m647d() {
        return this.f33018a;
    }

    /* renamed from: e */
    public final B m646e() {
        return this.f33019b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14984n)) {
            return false;
        }
        C14984n nVar = (C14984n) obj;
        return C15149k.m384a(this.f33018a, nVar.f33018a) && C15149k.m384a(this.f33019b, nVar.f33019b) && C15149k.m384a(this.f33020c, nVar.f33020c);
    }

    /* renamed from: f */
    public final C m645f() {
        return this.f33020c;
    }

    public int hashCode() {
        A a = this.f33018a;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f33019b;
        int hashCode2 = b != null ? b.hashCode() : 0;
        C c = this.f33020c;
        if (c != null) {
            i = c.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return '(' + this.f33018a + UserProfile.CARD_CATE_SEPARATOR + this.f33019b + UserProfile.CARD_CATE_SEPARATOR + this.f33020c + ')';
    }
}
