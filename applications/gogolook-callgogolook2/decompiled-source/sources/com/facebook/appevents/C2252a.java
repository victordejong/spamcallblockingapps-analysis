package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.internal.C2408g0;
import java.io.Serializable;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/a.class */
public class C2252a implements Serializable {

    /* renamed from: a */
    public final String f2642a;

    /* renamed from: b */
    public final String f2643b;

    /* renamed from: com.facebook.appevents.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/a$b.class */
    public static class C2254b implements Serializable {

        /* renamed from: a */
        public final String f2644a;

        /* renamed from: b */
        public final String f2645b;

        public C2254b(String str, String str2) {
            this.f2644a = str;
            this.f2645b = str2;
        }

        private Object readResolve() {
            return new C2252a(this.f2644a, this.f2645b);
        }
    }

    public C2252a(AccessToken accessToken) {
        this(accessToken.m35491v(), C6135n.m23745f());
    }

    public C2252a(String str, String str2) {
        this.f2642a = C2408g0.m34816d(str) ? null : str;
        this.f2643b = str2;
    }

    private Object writeReplace() {
        return new C2254b(this.f2642a, this.f2643b);
    }

    /* renamed from: a */
    public String m35377a() {
        return this.f2642a;
    }

    /* renamed from: b */
    public String m35376b() {
        return this.f2643b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C2252a)) {
            return false;
        }
        C2252a aVar = (C2252a) obj;
        boolean z = false;
        if (C2408g0.m34858a(aVar.f2642a, this.f2642a)) {
            z = false;
            if (C2408g0.m34858a(aVar.f2643b, this.f2643b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        String str = this.f2642a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f2643b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode ^ i;
    }
}
