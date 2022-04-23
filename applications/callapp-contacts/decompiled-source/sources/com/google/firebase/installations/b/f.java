package com.google.firebase.installations.b;

import com.google.firebase.installations.b.b;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/f.class */
public abstract class f {

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/f$a.class */
    public static abstract class a {
        public abstract a a(long j);

        public abstract a a(b bVar);

        public abstract a a(String str);

        public abstract f a();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/f$b.class */
    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static a d() {
        return new b.a().a(0L);
    }

    public abstract String a();

    public abstract long b();

    public abstract b c();
}
