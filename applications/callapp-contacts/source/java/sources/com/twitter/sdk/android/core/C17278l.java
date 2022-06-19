package com.twitter.sdk.android.core;

import com.google.gson.annotations.AbstractC15952b;
import com.twitter.sdk.android.core.AbstractC17205a;
/* renamed from: com.twitter.sdk.android.core.l */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/l.class */
public class C17278l<T extends AbstractC17205a> {
    @AbstractC15952b(m7988a = "auth_token")

    /* renamed from: a */
    public final T f61035a;
    @AbstractC15952b(m7988a = "id")

    /* renamed from: b */
    final long f61036b;

    public C17278l(T t, long j) {
        if (t != null) {
            this.f61035a = t;
            this.f61036b = j;
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
        C17278l c17278l = (C17278l) obj;
        if (this.f61036b != c17278l.f61036b) {
            return false;
        }
        T t = this.f61035a;
        T t2 = c17278l.f61035a;
        return t != null ? t.equals(t2) : t2 == null;
    }

    public int hashCode() {
        T t = this.f61035a;
        int hashCode = t != null ? t.hashCode() : 0;
        long j = this.f61036b;
        return (hashCode * 31) + ((int) (j ^ (j >>> 32)));
    }
}
