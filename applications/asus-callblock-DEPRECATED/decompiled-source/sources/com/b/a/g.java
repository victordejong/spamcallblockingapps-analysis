package com.b.a;

import com.b.a.a.h;
/* loaded from: classes-dex2jar.jar:com/b/a/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f3317a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3318b;

    public g(String str, String str2) {
        this.f3317a = str;
        this.f3318b = str2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof g) && h.a(this.f3317a, ((g) obj).f3317a) && h.a(this.f3318b, ((g) obj).f3318b);
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f3318b != null ? this.f3318b.hashCode() : 0;
        if (this.f3317a != null) {
            i = this.f3317a.hashCode();
        }
        return ((hashCode + 899) * 31) + i;
    }

    public final String toString() {
        return this.f3317a + " realm=\"" + this.f3318b + "\"";
    }
}
