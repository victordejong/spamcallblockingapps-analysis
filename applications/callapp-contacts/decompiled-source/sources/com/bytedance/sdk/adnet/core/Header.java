package com.bytedance.sdk.adnet.core;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/Header.class */
public final class Header {

    /* renamed from: a  reason: collision with root package name */
    private final String f8263a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8264b;

    public Header(String str, String str2) {
        this.f8263a = str;
        this.f8264b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        return TextUtils.equals(this.f8263a, header.f8263a) && TextUtils.equals(this.f8264b, header.f8264b);
    }

    public final String getName() {
        return this.f8263a;
    }

    public final String getValue() {
        return this.f8264b;
    }

    public final int hashCode() {
        return (this.f8263a.hashCode() * 31) + this.f8264b.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.f8263a + ",value=" + this.f8264b + "]";
    }
}
