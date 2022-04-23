package p081h.p203i.p204a.p206b.p209j;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p081h.p203i.p204a.p206b.p209j.C6547a;
/* renamed from: h.i.a.b.j.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/h.class */
public abstract class AbstractC6571h {

    /* renamed from: h.i.a.b.j.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/h$a.class */
    public static abstract class AbstractC6572a {
        /* renamed from: a */
        public abstract AbstractC6572a mo22323a(long j);

        /* renamed from: a */
        public abstract AbstractC6572a mo22322a(C6570g gVar);

        /* renamed from: a */
        public abstract AbstractC6572a mo22321a(Integer num);

        /* renamed from: a */
        public abstract AbstractC6572a mo22320a(String str);

        /* renamed from: a */
        public final AbstractC6572a m22319a(String str, int i) {
            mo22315b().put(str, String.valueOf(i));
            return this;
        }

        /* renamed from: a */
        public final AbstractC6572a m22318a(String str, long j) {
            mo22315b().put(str, String.valueOf(j));
            return this;
        }

        /* renamed from: a */
        public final AbstractC6572a m22317a(String str, String str2) {
            mo22315b().put(str, str2);
            return this;
        }

        /* renamed from: a */
        public abstract AbstractC6572a mo22316a(Map<String, String> map);

        /* renamed from: a */
        public abstract AbstractC6571h mo22324a();

        /* renamed from: b */
        public abstract AbstractC6572a mo22314b(long j);

        /* renamed from: b */
        public abstract Map<String, String> mo22315b();
    }

    /* renamed from: i */
    public static AbstractC6572a m22325i() {
        C6547a.C6549b bVar = new C6547a.C6549b();
        bVar.mo22316a(new HashMap());
        return bVar;
    }

    /* renamed from: a */
    public final String m22335a(String str) {
        String str2 = mo22336a().get(str);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        return str3;
    }

    /* renamed from: a */
    public abstract Map<String, String> mo22336a();

    /* renamed from: b */
    public final int m22333b(String str) {
        String str2 = mo22336a().get(str);
        return str2 == null ? 0 : Integer.valueOf(str2).intValue();
    }

    @Nullable
    /* renamed from: b */
    public abstract Integer mo22334b();

    /* renamed from: c */
    public final long m22331c(String str) {
        String str2 = mo22336a().get(str);
        return str2 == null ? 0L : Long.valueOf(str2).longValue();
    }

    /* renamed from: c */
    public abstract C6570g mo22332c();

    /* renamed from: d */
    public abstract long mo22330d();

    /* renamed from: e */
    public final Map<String, String> m22329e() {
        return Collections.unmodifiableMap(mo22336a());
    }

    /* renamed from: f */
    public abstract String mo22328f();

    /* renamed from: g */
    public abstract long mo22327g();

    /* renamed from: h */
    public AbstractC6572a m22326h() {
        C6547a.C6549b bVar = new C6547a.C6549b();
        bVar.mo22320a(mo22328f());
        bVar.mo22321a(mo22334b());
        bVar.mo22322a(mo22332c());
        bVar.mo22323a(mo22330d());
        bVar.mo22314b(mo22327g());
        bVar.mo22316a(new HashMap(mo22336a()));
        return bVar;
    }
}
