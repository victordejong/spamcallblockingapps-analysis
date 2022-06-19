package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.C4632g;
import com.google.auto.value.AutoValue;
import java.util.List;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/l.class */
public abstract class AbstractC4642l {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.cct.internal.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/l$a.class */
    public static abstract class AbstractC4643a {
        /* renamed from: a */
        public abstract AbstractC4642l mo22085a();

        /* renamed from: b */
        public abstract AbstractC4643a mo22084b(ClientInfo clientInfo);

        /* renamed from: c */
        public abstract AbstractC4643a mo22083c(List<AbstractC4640k> list);

        /* renamed from: d */
        abstract AbstractC4643a mo22082d(Integer num);

        /* renamed from: e */
        abstract AbstractC4643a mo22081e(String str);

        /* renamed from: f */
        public abstract AbstractC4643a mo22080f(QosTier qosTier);

        /* renamed from: g */
        public abstract AbstractC4643a mo22079g(long j);

        /* renamed from: h */
        public abstract AbstractC4643a mo22078h(long j);

        /* renamed from: i */
        public AbstractC4643a m22077i(int i) {
            return mo22082d(Integer.valueOf(i));
        }

        /* renamed from: j */
        public AbstractC4643a m22076j(String str) {
            return mo22081e(str);
        }
    }

    /* renamed from: a */
    public static AbstractC4643a m22093a() {
        return new C4632g.C4634b();
    }

    /* renamed from: b */
    public abstract ClientInfo mo22092b();

    /* renamed from: c */
    public abstract List<AbstractC4640k> mo22091c();

    /* renamed from: d */
    public abstract Integer mo22090d();

    /* renamed from: e */
    public abstract String mo22089e();

    /* renamed from: f */
    public abstract QosTier mo22088f();

    /* renamed from: g */
    public abstract long mo22087g();

    /* renamed from: h */
    public abstract long mo22086h();
}
