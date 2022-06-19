package com.mopub.volley;

import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/Header.class */
public final class Header {

    /* renamed from: a */
    public final String f5461a;

    /* renamed from: b */
    public final String f5462b;

    public Header(String str, String str2) {
        this.f5461a = str;
        this.f5462b = str2;
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
        if (!TextUtils.equals(this.f5461a, header.f5461a) || !TextUtils.equals(this.f5462b, header.f5462b)) {
            z = false;
        }
        return z;
    }

    public final String getName() {
        return this.f5461a;
    }

    public final String getValue() {
        return this.f5462b;
    }

    public int hashCode() {
        return (this.f5461a.hashCode() * 31) + this.f5462b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f5461a + ",value=" + this.f5462b + "]";
    }
}
