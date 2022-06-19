package com.google.android.datatransport.p062h.p067x.p068j;

import com.google.android.datatransport.h.x.j.a;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.h.x.j.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/d.class */
abstract class AbstractC1319d {

    /* renamed from: a */
    static final AbstractC1319d f5381a;

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.x.j.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/d$a.class */
    static abstract class AbstractC1320a {
        AbstractC1320a() {
        }

        /* renamed from: a */
        abstract AbstractC1319d m9162a();

        /* renamed from: b */
        abstract AbstractC1320a m9161b(int i);

        /* renamed from: c */
        abstract AbstractC1320a m9160c(long j);

        /* renamed from: d */
        abstract AbstractC1320a m9159d(int i);

        /* renamed from: e */
        abstract AbstractC1320a m9158e(int i);

        /* renamed from: f */
        abstract AbstractC1320a m9157f(long j);
    }

    static {
        AbstractC1320a m9168a = m9168a();
        m9168a.m9157f(10485760L);
        m9168a.m9159d(200);
        m9168a.m9161b(10000);
        m9168a.m9160c(604800000L);
        m9168a.m9158e(81920);
        f5381a = m9168a.m9162a();
    }

    AbstractC1319d() {
    }

    /* renamed from: a */
    static AbstractC1320a m9168a() {
        return new a.b();
    }

    /* renamed from: b */
    abstract int m9167b();

    /* renamed from: c */
    abstract long m9166c();

    /* renamed from: d */
    abstract int m9165d();

    /* renamed from: e */
    abstract int m9164e();

    /* renamed from: f */
    abstract long m9163f();
}
