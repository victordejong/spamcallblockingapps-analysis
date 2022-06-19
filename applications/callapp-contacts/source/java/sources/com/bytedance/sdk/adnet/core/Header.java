package com.bytedance.sdk.adnet.core;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Header.class */
public final class Header {

    /* renamed from: a */
    private final String f15361a;

    /* renamed from: b */
    private final String f15362b;

    public Header(String str, String str2) {
        this.f15361a = str;
        this.f15362b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f15361a, header.f15361a) && TextUtils.equals(this.f15362b, header.f15362b);
    }

    public final String getName() {
        return this.f15361a;
    }

    public final String getValue() {
        return this.f15362b;
    }

    public final int hashCode() {
        return (this.f15361a.hashCode() * 31) + this.f15362b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.f15361a + ",value=" + this.f15362b + "]";
    }
}
