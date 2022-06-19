package com.google.android.datatransport.p232h;

import com.google.android.datatransport.p232h.C4649a;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@AutoValue
/* renamed from: com.google.android.datatransport.h.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/h.class */
public abstract class AbstractC4664h {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/h$a.class */
    public static abstract class AbstractC4665a {
        /* renamed from: a */
        public final AbstractC4665a m22053a(String str, int i) {
            mo22049e().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: b */
        public final AbstractC4665a m22052b(String str, long j) {
            mo22049e().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: c */
        public final AbstractC4665a m22051c(String str, String str2) {
            mo22049e().put(str, str2);
            return this;
        }

        /* renamed from: d */
        public abstract AbstractC4664h mo22050d();

        /* renamed from: e */
        protected abstract Map<String, String> mo22049e();

        /* renamed from: f */
        protected abstract AbstractC4665a mo22048f(Map<String, String> map);

        /* renamed from: g */
        public abstract AbstractC4665a mo22047g(Integer num);

        /* renamed from: h */
        public abstract AbstractC4665a mo22046h(C4663g c4663g);

        /* renamed from: i */
        public abstract AbstractC4665a mo22045i(long j);

        /* renamed from: j */
        public abstract AbstractC4665a mo22044j(String str);

        /* renamed from: k */
        public abstract AbstractC4665a mo22043k(long j);
    }

    /* renamed from: a */
    public static AbstractC4665a m22065a() {
        return new C4649a.C4651b().mo22048f(new HashMap());
    }

    /* renamed from: b */
    public final String m22064b(String str) {
        String str2 = mo22063c().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: c */
    public abstract Map<String, String> mo22063c();

    /* renamed from: d */
    public abstract Integer mo22062d();

    /* renamed from: e */
    public abstract C4663g mo22061e();

    /* renamed from: f */
    public abstract long mo22060f();

    /* renamed from: g */
    public final int m22059g(String str) {
        String str2 = mo22063c().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: h */
    public final long m22058h(String str) {
        String str2 = mo22063c().get(str);
        return str2 == null ? (char) 0 : Long.valueOf(str2).longValue();
    }

    /* renamed from: i */
    public final Map<String, String> m22057i() {
        return Collections.unmodifiableMap(mo22063c());
    }

    /* renamed from: j */
    public abstract String mo22056j();

    /* renamed from: k */
    public abstract long mo22055k();

    /* renamed from: l */
    public AbstractC4665a m22054l() {
        return new C4649a.C4651b().mo22044j(mo22056j()).mo22047g(mo22062d()).mo22046h(mo22061e()).mo22045i(mo22060f()).mo22043k(mo22055k()).mo22048f(new HashMap(mo22063c()));
    }
}
