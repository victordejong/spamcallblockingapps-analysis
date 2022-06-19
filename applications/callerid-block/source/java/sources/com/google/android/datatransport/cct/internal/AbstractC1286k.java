package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.f;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/k.class */
public abstract class AbstractC1286k {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.internal.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/k$a.class */
    public static abstract class AbstractC1287a {
        /* renamed from: a */
        public abstract AbstractC1286k m9283a();

        /* renamed from: b */
        public abstract AbstractC1287a m9282b(Integer num);

        /* renamed from: c */
        public abstract AbstractC1287a m9281c(long j);

        /* renamed from: d */
        public abstract AbstractC1287a m9280d(long j);

        /* renamed from: e */
        public abstract AbstractC1287a m9279e(NetworkConnectionInfo networkConnectionInfo);

        /* renamed from: f */
        abstract AbstractC1287a m9278f(byte[] bArr);

        /* renamed from: g */
        abstract AbstractC1287a m9277g(String str);

        /* renamed from: h */
        public abstract AbstractC1287a m9276h(long j);
    }

    /* renamed from: a */
    private static AbstractC1287a m9293a() {
        return new f.b();
    }

    /* renamed from: i */
    public static AbstractC1287a m9285i(String str) {
        AbstractC1287a m9293a = m9293a();
        m9293a.m9277g(str);
        return m9293a;
    }

    /* renamed from: j */
    public static AbstractC1287a m9284j(byte[] bArr) {
        AbstractC1287a m9293a = m9293a();
        m9293a.m9278f(bArr);
        return m9293a;
    }

    /* renamed from: b */
    public abstract Integer m9292b();

    /* renamed from: c */
    public abstract long m9291c();

    /* renamed from: d */
    public abstract long m9290d();

    /* renamed from: e */
    public abstract NetworkConnectionInfo m9289e();

    /* renamed from: f */
    public abstract byte[] m9288f();

    /* renamed from: g */
    public abstract String m9287g();

    /* renamed from: h */
    public abstract long m9286h();
}
