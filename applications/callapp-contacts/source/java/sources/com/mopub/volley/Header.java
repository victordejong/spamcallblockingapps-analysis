package com.mopub.volley;

import android.text.TextUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a */
    private final String f60366a;

    /* renamed from: b */
    private final String f60367b;

    public Header(String str, String str2) {
        this.f60366a = str;
        this.f60367b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f60366a, header.f60366a) && TextUtils.equals(this.f60367b, header.f60367b);
    }

    public final String getName() {
        return this.f60366a;
    }

    public final String getValue() {
        return this.f60367b;
    }

    public final int hashCode() {
        return (this.f60366a.hashCode() * 31) + this.f60367b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.f60366a + ",value=" + this.f60367b + "]";
    }
}
