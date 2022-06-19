package com.facebook.p094a;

import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.internal.C2079x;
import java.io.Serializable;
/* renamed from: com.facebook.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/a.class */
public class C1806a implements Serializable {

    /* renamed from: a */
    private final String f5497a;

    /* renamed from: b */
    private final String f5498b;

    /* renamed from: com.facebook.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/a$a.class */
    static class C1808a implements Serializable {

        /* renamed from: a */
        private final String f5499a;

        /* renamed from: b */
        private final String f5500b;

        private C1808a(String str, String str2) {
            this.f5499a = str;
            this.f5500b = str2;
        }

        private Object readResolve() {
            return new C1806a(this.f5499a, this.f5500b);
        }
    }

    public C1806a(C1803a c1803a) {
        this(c1803a.m16250d(), C2095j.m15356l());
    }

    public C1806a(String str, String str2) {
        this.f5497a = C2079x.m15472a(str) ? null : str;
        this.f5498b = str2;
    }

    private Object writeReplace() {
        return new C1808a(this.f5497a, this.f5498b);
    }

    /* renamed from: a */
    public String m16234a() {
        return this.f5497a;
    }

    /* renamed from: b */
    public String m16231b() {
        return this.f5498b;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof C1806a)) {
            z = false;
        } else {
            C1806a c1806a = (C1806a) obj;
            z = false;
            if (C2079x.m15475a(c1806a.f5497a, this.f5497a)) {
                z = false;
                if (C2079x.m15475a(c1806a.f5498b, this.f5498b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.f5497a == null ? 0 : this.f5497a.hashCode();
        if (this.f5498b != null) {
            i = this.f5498b.hashCode();
        }
        return hashCode ^ i;
    }
}
