package com.mopub.volley;

import android.text.TextUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a  reason: collision with root package name */
    private final String f34793a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34794b;

    public Header(String str, String str2) {
        this.f34793a = str;
        this.f34794b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f34793a, header.f34793a) && TextUtils.equals(this.f34794b, header.f34794b);
    }

    public final String getName() {
        return this.f34793a;
    }

    public final String getValue() {
        return this.f34794b;
    }

    public final int hashCode() {
        return (this.f34793a.hashCode() * 31) + this.f34794b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.f34793a + ",value=" + this.f34794b + "]";
    }
}
