package com.google.android.datatransport.p062h;

import com.google.android.datatransport.h.a;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@AutoValue
/* renamed from: com.google.android.datatransport.h.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/h.class */
public abstract class AbstractC1297h {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/h$a.class */
    public static abstract class AbstractC1298a {
        /* renamed from: a */
        public final AbstractC1298a m9235a(String str, int i) {
            m9231e().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: b */
        public final AbstractC1298a m9234b(String str, long j) {
            m9231e().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: c */
        public final AbstractC1298a m9233c(String str, String str2) {
            m9231e().put(str, str2);
            return this;
        }

        /* renamed from: d */
        public abstract AbstractC1297h m9232d();

        /* renamed from: e */
        protected abstract Map<String, String> m9231e();

        /* renamed from: f */
        protected abstract AbstractC1298a m9230f(Map<String, String> map);

        /* renamed from: g */
        public abstract AbstractC1298a m9229g(Integer num);

        /* renamed from: h */
        public abstract AbstractC1298a m9228h(C1296g c1296g);

        /* renamed from: i */
        public abstract AbstractC1298a m9227i(long j);

        /* renamed from: j */
        public abstract AbstractC1298a m9226j(String str);

        /* renamed from: k */
        public abstract AbstractC1298a m9225k(long j);
    }

    /* renamed from: a */
    public static AbstractC1298a m9247a() {
        a.b bVar = new a.b();
        bVar.f(new HashMap());
        return bVar;
    }

    /* renamed from: b */
    public final String m9246b(String str) {
        String str2 = m9245c().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: c */
    protected abstract Map<String, String> m9245c();

    /* renamed from: d */
    public abstract Integer m9244d();

    /* renamed from: e */
    public abstract C1296g m9243e();

    /* renamed from: f */
    public abstract long m9242f();

    /* renamed from: g */
    public final int m9241g(String str) {
        String str2 = m9245c().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: h */
    public final long m9240h(String str) {
        String str2 = m9245c().get(str);
        return str2 == null ? (char) 0 : Long.valueOf(str2).longValue();
    }

    /* renamed from: i */
    public final Map<String, String> m9239i() {
        return Collections.unmodifiableMap(m9245c());
    }

    /* renamed from: j */
    public abstract String m9238j();

    /* renamed from: k */
    public abstract long m9237k();

    /* renamed from: l */
    public AbstractC1298a m9236l() {
        a.b bVar = new a.b();
        bVar.j(m9238j());
        bVar.m9229g(m9244d());
        bVar.m9228h(m9243e());
        bVar.m9227i(m9242f());
        bVar.m9225k(m9237k());
        bVar.m9230f(new HashMap(m9245c()));
        return bVar;
    }
}
