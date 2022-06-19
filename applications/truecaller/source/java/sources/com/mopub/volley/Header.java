package com.mopub.volley;

import android.text.TextUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a */
    public final String f9267a;

    /* renamed from: b */
    public final String f9268b;

    public Header(String str, String str2) {
        this.f9267a = str;
        this.f9268b = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Header.class != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        if (!TextUtils.equals(this.f9267a, header.f9267a) || !TextUtils.equals(this.f9268b, header.f9268b)) {
            z = false;
        }
        return z;
    }

    public final String getName() {
        return this.f9267a;
    }

    public final String getValue() {
        return this.f9268b;
    }

    public int hashCode() {
        return this.f9268b.hashCode() + (this.f9267a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Header[name=");
        m8728C.append(this.f9267a);
        m8728C.append(",value=");
        return C22128a.m8618h(m8728C, this.f9268b, "]");
    }
}
