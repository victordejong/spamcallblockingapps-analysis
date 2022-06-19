package com.google.android.datatransport.p232h;

import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.p232h.C4652b;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.h.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/l.class */
public abstract class AbstractC4671l {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/l$a.class */
    public static abstract class AbstractC4672a {
        /* renamed from: a */
        public abstract AbstractC4671l mo22030a();

        /* renamed from: b */
        public abstract AbstractC4672a mo22029b(C4602b c4602b);

        /* renamed from: c */
        public abstract AbstractC4672a mo22028c(AbstractC4603c<?> abstractC4603c);

        /* renamed from: d */
        public abstract AbstractC4672a mo22027d(AbstractC4645d<?, byte[]> abstractC4645d);

        /* renamed from: e */
        public abstract AbstractC4672a mo22026e(AbstractC4673m abstractC4673m);

        /* renamed from: f */
        public abstract AbstractC4672a mo22025f(String str);
    }

    /* renamed from: a */
    public static AbstractC4672a m22037a() {
        return new C4652b.C4654b();
    }

    /* renamed from: b */
    public abstract C4602b mo22036b();

    /* renamed from: c */
    public abstract AbstractC4603c<?> mo22035c();

    /* renamed from: d */
    public byte[] m22034d() {
        return mo22033e().mo1135a(mo22035c().mo22181b());
    }

    /* renamed from: e */
    public abstract AbstractC4645d<?, byte[]> mo22033e();

    /* renamed from: f */
    public abstract AbstractC4673m mo22032f();

    /* renamed from: g */
    public abstract String mo22031g();
}
