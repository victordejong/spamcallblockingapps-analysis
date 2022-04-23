package com.mopub.volley;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a */
    public final String f9487a;

    /* renamed from: b */
    public final String f9488b;

    public Header(String str, String str2) {
        this.f9487a = str;
        this.f9488b = str2;
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
        if (!TextUtils.equals(this.f9487a, header.f9487a) || !TextUtils.equals(this.f9488b, header.f9488b)) {
            z = false;
        }
        return z;
    }

    public final String getName() {
        return this.f9487a;
    }

    public final String getValue() {
        return this.f9488b;
    }

    public int hashCode() {
        return (this.f9487a.hashCode() * 31) + this.f9488b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f9487a + ",value=" + this.f9488b + "]";
    }
}
