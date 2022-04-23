package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/h.class */
public abstract class h {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/h$a.class */
    public static abstract class a {
        public abstract a a(long j);

        public abstract a a(g gVar);

        public abstract a a(Integer num);

        public abstract a a(String str);

        public final a a(String str, int i) {
            a().put(str, String.valueOf(i));
            return this;
        }

        public final a a(String str, long j) {
            a().put(str, String.valueOf(j));
            return this;
        }

        public final a a(String str, String str2) {
            a().put(str, str2);
            return this;
        }

        protected abstract a a(Map<String, String> map);

        protected abstract Map<String, String> a();

        public abstract a b(long j);

        public abstract h b();
    }

    public static a i() {
        a.C0415a aVar = new a.C0415a();
        aVar.f20389a = new HashMap();
        return aVar;
    }

    public final int a(String str) {
        String str2 = f().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public abstract String a();

    public final long b(String str) {
        String str2 = f().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }

    public abstract Integer b();

    public abstract g c();

    public final String c(String str) {
        String str2 = f().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    public abstract long d();

    public abstract long e();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Map<String, String> f();

    public final Map<String, String> g() {
        return Collections.unmodifiableMap(f());
    }

    public final a h() {
        return new a.C0415a().a(a()).a(b()).a(c()).a(d()).b(e()).a(new HashMap(f()));
    }
}
