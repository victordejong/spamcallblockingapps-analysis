package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.C10681a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.datatransport.runtime.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/h.class */
public abstract class AbstractC10730h {

    /* renamed from: com.google.android.datatransport.runtime.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/h$a.class */
    public static abstract class AbstractC10731a {
        /* renamed from: a */
        public abstract AbstractC10731a mo22472a(long j);

        /* renamed from: a */
        public abstract AbstractC10731a mo22471a(C10729g c10729g);

        /* renamed from: a */
        public abstract AbstractC10731a mo22470a(Integer num);

        /* renamed from: a */
        public abstract AbstractC10731a mo22469a(String str);

        /* renamed from: a */
        public final AbstractC10731a m22468a(String str, int i) {
            mo22473a().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public final AbstractC10731a m22467a(String str, long j) {
            mo22473a().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public final AbstractC10731a m22466a(String str, String str2) {
            mo22473a().put(str, str2);
            return this;
        }

        /* renamed from: a */
        protected abstract AbstractC10731a mo22465a(Map<String, String> map);

        /* renamed from: a */
        protected abstract Map<String, String> mo22473a();

        /* renamed from: b */
        public abstract AbstractC10731a mo22463b(long j);

        /* renamed from: b */
        public abstract AbstractC10730h mo22464b();
    }

    /* renamed from: i */
    public static AbstractC10731a m22474i() {
        C10681a.C10683a c10683a = new C10681a.C10683a();
        c10683a.f34523a = new HashMap();
        return c10683a;
    }

    /* renamed from: a */
    public final int m22484a(String str) {
        String str2 = mo22477f().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* renamed from: a */
    public abstract String mo22485a();

    /* renamed from: b */
    public final long m22482b(String str) {
        String str2 = mo22477f().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }

    /* renamed from: b */
    public abstract Integer mo22483b();

    /* renamed from: c */
    public abstract C10729g mo22481c();

    /* renamed from: c */
    public final String m22480c(String str) {
        String str2 = mo22477f().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: d */
    public abstract long mo22479d();

    /* renamed from: e */
    public abstract long mo22478e();

    /* renamed from: f */
    public abstract Map<String, String> mo22477f();

    /* renamed from: g */
    public final Map<String, String> m22476g() {
        return Collections.unmodifiableMap(mo22477f());
    }

    /* renamed from: h */
    public final AbstractC10731a m22475h() {
        return new C10681a.C10683a().mo22469a(mo22485a()).mo22470a(mo22483b()).mo22471a(mo22481c()).mo22472a(mo22479d()).mo22463b(mo22478e()).mo22465a(new HashMap(mo22477f()));
    }
}
