package com.google.firebase.installations.p168b;

import com.google.firebase.installations.p168b.C5016b;
/* renamed from: com.google.firebase.installations.b.e */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/e.class */
public abstract class AbstractC5023e {

    /* renamed from: com.google.firebase.installations.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/e$a.class */
    public static abstract class AbstractC5024a {
        /* renamed from: a */
        public abstract AbstractC5024a mo1810a(long j);

        /* renamed from: a */
        public abstract AbstractC5024a mo1809a(EnumC5025b enumC5025b);

        /* renamed from: a */
        public abstract AbstractC5024a mo1808a(String str);

        /* renamed from: a */
        public abstract AbstractC5023e mo1811a();
    }

    /* renamed from: com.google.firebase.installations.b.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/installations/b/e$b.class */
    public enum EnumC5025b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    /* renamed from: d */
    public static AbstractC5024a m1812d() {
        return new C5016b.C5018a().mo1810a(0L);
    }

    /* renamed from: a */
    public abstract String mo1815a();

    /* renamed from: b */
    public abstract long mo1814b();

    /* renamed from: c */
    public abstract EnumC5025b mo1813c();
}
