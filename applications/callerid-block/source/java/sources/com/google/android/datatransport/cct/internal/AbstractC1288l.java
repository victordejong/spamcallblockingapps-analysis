package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.g;
import com.google.auto.value.AutoValue;
import java.util.List;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/l.class */
public abstract class AbstractC1288l {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.internal.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/l$a.class */
    public static abstract class AbstractC1289a {
        /* renamed from: a */
        public abstract AbstractC1288l m9267a();

        /* renamed from: b */
        public abstract AbstractC1289a m9266b(ClientInfo clientInfo);

        /* renamed from: c */
        public abstract AbstractC1289a m9265c(List<AbstractC1286k> list);

        /* renamed from: d */
        abstract AbstractC1289a m9264d(Integer num);

        /* renamed from: e */
        abstract AbstractC1289a m9263e(String str);

        /* renamed from: f */
        public abstract AbstractC1289a m9262f(QosTier qosTier);

        /* renamed from: g */
        public abstract AbstractC1289a m9261g(long j);

        /* renamed from: h */
        public abstract AbstractC1289a m9260h(long j);

        /* renamed from: i */
        public AbstractC1289a m9259i(int i) {
            m9264d(Integer.valueOf(i));
            return this;
        }

        /* renamed from: j */
        public AbstractC1289a m9258j(String str) {
            m9263e(str);
            return this;
        }
    }

    /* renamed from: a */
    public static AbstractC1289a m9275a() {
        return new g.b();
    }

    /* renamed from: b */
    public abstract ClientInfo m9274b();

    /* renamed from: c */
    public abstract List<AbstractC1286k> m9273c();

    /* renamed from: d */
    public abstract Integer m9272d();

    /* renamed from: e */
    public abstract String m9271e();

    /* renamed from: f */
    public abstract QosTier m9270f();

    /* renamed from: g */
    public abstract long m9269g();

    /* renamed from: h */
    public abstract long m9268h();
}
