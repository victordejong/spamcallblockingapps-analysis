package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/l.class */
public abstract class l {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/l$a.class */
    public static abstract class a {
        public abstract a a(long j);

        public abstract a a(o oVar);

        public abstract a a(Integer num);

        abstract a a(String str);

        abstract a a(byte[] bArr);

        public abstract l a();

        public abstract a b(long j);

        public abstract a c(long j);
    }

    public static a a(String str) {
        return new f.a().a(str);
    }

    public static a a(byte[] bArr) {
        return new f.a().a(bArr);
    }

    public abstract long a();

    public abstract Integer b();

    public abstract long c();

    public abstract byte[] d();

    public abstract String e();

    public abstract long f();

    public abstract o g();
}
