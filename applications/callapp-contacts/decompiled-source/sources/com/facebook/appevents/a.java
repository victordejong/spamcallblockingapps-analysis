package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.g;
import com.facebook.internal.ae;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a.class */
public final class a implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final String f19414a;

    /* renamed from: b  reason: collision with root package name */
    final String f19415b;

    /* renamed from: com.facebook.appevents.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a$a.class */
    static class C0383a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final String f19416a;

        /* renamed from: b  reason: collision with root package name */
        private final String f19417b;

        private C0383a(String str, String str2) {
            this.f19416a = str;
            this.f19417b = str2;
        }

        private Object readResolve() {
            return new a(this.f19416a, this.f19417b);
        }
    }

    public a(AccessToken accessToken) {
        this(accessToken.getToken(), g.m());
    }

    public a(String str, String str2) {
        this.f19414a = ae.a(str) ? null : str;
        this.f19415b = str2;
    }

    private Object writeReplace() {
        return new C0383a(this.f19414a, this.f19415b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return ae.a(aVar.f19414a, this.f19414a) && ae.a(aVar.f19415b, this.f19415b);
    }

    public final int hashCode() {
        String str = this.f19414a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f19415b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode ^ i;
    }
}
