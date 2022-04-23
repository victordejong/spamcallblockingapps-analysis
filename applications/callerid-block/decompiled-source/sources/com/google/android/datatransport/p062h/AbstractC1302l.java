package com.google.android.datatransport.p062h;

import com.google.android.datatransport.AbstractC1279c;
import com.google.android.datatransport.AbstractC1291d;
import com.google.android.datatransport.C1278b;
import com.google.android.datatransport.h.b;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.h.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/l.class */
abstract class AbstractC1302l {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/l$a.class */
    public static abstract class AbstractC1303a {
        /* renamed from: a */
        public abstract AbstractC1302l m9215a();

        /* renamed from: b */
        abstract AbstractC1303a m9214b(C1278b bVar);

        /* renamed from: c */
        abstract AbstractC1303a m9213c(AbstractC1279c<?> cVar);

        /* renamed from: d */
        abstract AbstractC1303a m9212d(AbstractC1291d<?, byte[]> dVar);

        /* renamed from: e */
        public abstract AbstractC1303a m9211e(AbstractC1304m mVar);

        /* renamed from: f */
        public abstract AbstractC1303a m9210f(String str);
    }

    AbstractC1302l() {
    }

    /* renamed from: a */
    public static AbstractC1303a m9222a() {
        return new b.b();
    }

    /* renamed from: b */
    public abstract C1278b m9221b();

    /* renamed from: c */
    abstract AbstractC1279c<?> m9220c();

    /* renamed from: d */
    public byte[] m9219d() {
        return m9218e().mo3710a(m9220c().m9341b());
    }

    /* renamed from: e */
    abstract AbstractC1291d<?, byte[]> m9218e();

    /* renamed from: f */
    public abstract AbstractC1304m m9217f();

    /* renamed from: g */
    public abstract String m9216g();
}
