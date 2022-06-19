package com.google.firebase.p165e;

import javax.annotation.Nonnull;
/* renamed from: com.google.firebase.e.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/e/a.class */
public final class C4928a extends AbstractC4933f {

    /* renamed from: a */
    private final String f21048a;

    /* renamed from: b */
    private final String f21049b;

    public C4928a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f21048a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f21049b = str2;
    }

    @Override // com.google.firebase.p165e.AbstractC4933f
    @Nonnull
    /* renamed from: a */
    public String mo2013a() {
        return this.f21048a;
    }

    @Override // com.google.firebase.p165e.AbstractC4933f
    @Nonnull
    /* renamed from: b */
    public String mo2011b() {
        return this.f21049b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj instanceof AbstractC4933f) {
                AbstractC4933f abstractC4933f = (AbstractC4933f) obj;
                if (!this.f21048a.equals(abstractC4933f.mo2013a()) || !this.f21049b.equals(abstractC4933f.mo2011b())) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public int hashCode() {
        return ((this.f21048a.hashCode() ^ 1000003) * 1000003) ^ this.f21049b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f21048a + ", version=" + this.f21049b + "}";
    }
}
