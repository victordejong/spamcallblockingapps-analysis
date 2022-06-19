package com.android.volley;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/android/volley/Header.class */
public final class Header {
    private final String mName;
    private final String mValue;

    public Header(String str, String str2) {
        this.mName = str;
        this.mValue = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        if (!TextUtils.equals(this.mName, header.mName) || !TextUtils.equals(this.mValue, header.mValue)) {
            z = false;
        }
        return z;
    }

    public final String getName() {
        return this.mName;
    }

    public final String getValue() {
        return this.mValue;
    }

    public int hashCode() {
        return (this.mName.hashCode() * 31) + this.mValue.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.mName + ",value=" + this.mValue + "]";
    }
}
