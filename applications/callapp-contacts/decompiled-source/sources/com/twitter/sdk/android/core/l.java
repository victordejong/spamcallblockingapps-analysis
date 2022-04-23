package com.twitter.sdk.android.core;

import com.google.gson.annotations.b;
import com.twitter.sdk.android.core.a;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/l.class */
public class l<T extends a> {
    @b(a = "auth_token")

    /* renamed from: a  reason: collision with root package name */
    public final T f35184a;
    @b(a = "id")

    /* renamed from: b  reason: collision with root package name */
    final long f35185b;

    public l(T t, long j) {
        if (t != null) {
            this.f35184a = t;
            this.f35185b = j;
            return;
        }
        throw new IllegalArgumentException("AuthToken must not be null.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f35185b != lVar.f35185b) {
            return false;
        }
        T t = this.f35184a;
        T t2 = lVar.f35184a;
        return t != null ? t.equals(t2) : t2 == null;
    }

    public int hashCode() {
        T t = this.f35184a;
        int hashCode = t != null ? t.hashCode() : 0;
        long j = this.f35185b;
        return (hashCode * 31) + ((int) (j ^ (j >>> 32)));
    }
}
