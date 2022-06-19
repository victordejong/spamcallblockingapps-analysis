package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.C4629f;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/k.class */
public abstract class AbstractC4640k {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.internal.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/k$a.class */
    public static abstract class AbstractC4641a {
        /* renamed from: a */
        public abstract AbstractC4640k mo22101a();

        /* renamed from: b */
        public abstract AbstractC4641a mo22100b(Integer num);

        /* renamed from: c */
        public abstract AbstractC4641a mo22099c(long j);

        /* renamed from: d */
        public abstract AbstractC4641a mo22098d(long j);

        /* renamed from: e */
        public abstract AbstractC4641a mo22097e(NetworkConnectionInfo networkConnectionInfo);

        /* renamed from: f */
        abstract AbstractC4641a mo22096f(byte[] bArr);

        /* renamed from: g */
        abstract AbstractC4641a mo22095g(String str);

        /* renamed from: h */
        public abstract AbstractC4641a mo22094h(long j);
    }

    /* renamed from: a */
    private static AbstractC4641a m22111a() {
        return new C4629f.C4631b();
    }

    /* renamed from: i */
    public static AbstractC4641a m22103i(String str) {
        return m22111a().mo22095g(str);
    }

    /* renamed from: j */
    public static AbstractC4641a m22102j(byte[] bArr) {
        return m22111a().mo22096f(bArr);
    }

    /* renamed from: b */
    public abstract Integer mo22110b();

    /* renamed from: c */
    public abstract long mo22109c();

    /* renamed from: d */
    public abstract long mo22108d();

    /* renamed from: e */
    public abstract NetworkConnectionInfo mo22107e();

    /* renamed from: f */
    public abstract byte[] mo22106f();

    /* renamed from: g */
    public abstract String mo22105g();

    /* renamed from: h */
    public abstract long mo22104h();
}
