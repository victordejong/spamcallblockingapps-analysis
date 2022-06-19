package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.internal.C10213ae;
import java.io.Serializable;
/* renamed from: com.facebook.appevents.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a.class */
public final class C9958a implements Serializable {

    /* renamed from: a */
    final String f33136a;

    /* renamed from: b */
    final String f33137b;

    /* renamed from: com.facebook.appevents.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a$a.class */
    static class C9960a implements Serializable {

        /* renamed from: a */
        private final String f33138a;

        /* renamed from: b */
        private final String f33139b;

        private C9960a(String str, String str2) {
            this.f33138a = str;
            this.f33139b = str2;
        }

        private Object readResolve() {
            return new C9958a(this.f33138a, this.f33139b);
        }
    }

    public C9958a(AccessToken accessToken) {
        this(accessToken.getToken(), C10181g.m23286m());
    }

    public C9958a(String str, String str2) {
        this.f33136a = C10213ae.m23230a(str) ? null : str;
        this.f33137b = str2;
    }

    private Object writeReplace() {
        return new C9960a(this.f33136a, this.f33137b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C9958a)) {
            return false;
        }
        C9958a c9958a = (C9958a) obj;
        return C10213ae.m23233a(c9958a.f33136a, this.f33136a) && C10213ae.m23233a(c9958a.f33137b, this.f33137b);
    }

    public final int hashCode() {
        String str = this.f33136a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f33137b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode ^ i;
    }
}
