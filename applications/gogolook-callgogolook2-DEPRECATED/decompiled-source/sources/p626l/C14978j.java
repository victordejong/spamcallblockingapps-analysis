package p626l;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.Serializable;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.j */
/* loaded from: classes3-dex2jar.jar:l/j.class */
public final class C14978j<A, B> implements Serializable {

    /* renamed from: a */
    public final A f33011a;

    /* renamed from: b */
    public final B f33012b;

    public C14978j(A a, B b) {
        this.f33011a = a;
        this.f33012b = b;
    }

    /* renamed from: a */
    public final A m661a() {
        return this.f33011a;
    }

    /* renamed from: b */
    public final B m660b() {
        return this.f33012b;
    }

    /* renamed from: c */
    public final A m659c() {
        return this.f33011a;
    }

    /* renamed from: d */
    public final B m658d() {
        return this.f33012b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14978j)) {
            return false;
        }
        C14978j jVar = (C14978j) obj;
        return C15149k.m384a(this.f33011a, jVar.f33011a) && C15149k.m384a(this.f33012b, jVar.f33012b);
    }

    public int hashCode() {
        A a = this.f33011a;
        int i = 0;
        int hashCode = a != null ? a.hashCode() : 0;
        B b = this.f33012b;
        if (b != null) {
            i = b.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return '(' + this.f33011a + UserProfile.CARD_CATE_SEPARATOR + this.f33012b + ')';
    }
}
