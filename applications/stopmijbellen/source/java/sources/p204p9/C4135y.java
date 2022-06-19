package p204p9;

import android.support.p012v4.media.C0082b;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;
import p015b0.C0713a;
import p204p9.C4121r;
import p204p9.C4123s;
import p214q9.C4171c;
/* renamed from: p9.y */
/* loaded from: classes2-dex2jar.jar:p9/y.class */
public final class C4135y {

    /* renamed from: a */
    public final C4123s f13041a;

    /* renamed from: b */
    public final String f13042b;

    /* renamed from: c */
    public final C4121r f13043c;
    @Nullable

    /* renamed from: d */
    public final AbstractC4081a0 f13044d;

    /* renamed from: e */
    public final Map<Class<?>, Object> f13045e;
    @Nullable

    /* renamed from: f */
    public volatile C4094d f13046f;

    /* renamed from: p9.y$a */
    /* loaded from: classes2-dex2jar.jar:p9/y$a.class */
    public static class C4136a {
        @Nullable

        /* renamed from: a */
        public C4123s f13047a;

        /* renamed from: b */
        public String f13048b;

        /* renamed from: c */
        public C4121r.C4122a f13049c;
        @Nullable

        /* renamed from: d */
        public AbstractC4081a0 f13050d;

        /* renamed from: e */
        public Map<Class<?>, Object> f13051e;

        public C4136a() {
            this.f13051e = Collections.emptyMap();
            this.f13048b = "GET";
            this.f13049c = new C4121r.C4122a();
        }

        public C4136a(C4135y c4135y) {
            this.f13051e = Collections.emptyMap();
            this.f13047a = c4135y.f13041a;
            this.f13048b = c4135y.f13042b;
            this.f13050d = c4135y.f13044d;
            this.f13051e = c4135y.f13045e.isEmpty() ? Collections.emptyMap() : new LinkedHashMap(c4135y.f13045e);
            this.f13049c = c4135y.f13043c.m1399e();
        }

        /* renamed from: a */
        public C4135y m1361a() {
            if (this.f13047a != null) {
                return new C4135y(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: b */
        public C4136a m1360b(String str, String str2) {
            C4121r.C4122a c4122a = this.f13049c;
            Objects.requireNonNull(c4122a);
            C4121r.m1403a(str);
            C4121r.m1402b(str2, str);
            c4122a.m1392d(str);
            c4122a.f12953a.add(str);
            c4122a.f12953a.add(str2.trim());
            return this;
        }

        /* renamed from: c */
        public C4136a m1359c(String str, @Nullable AbstractC4081a0 abstractC4081a0) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() != 0) {
                if (abstractC4081a0 != null && !C0713a.m7440g(str)) {
                    throw new IllegalArgumentException(C0082b.m8755g("method ", str, " must not have a request body."));
                }
                if (abstractC4081a0 == null) {
                    if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                        throw new IllegalArgumentException(C0082b.m8755g("method ", str, " must have a request body."));
                    }
                }
                this.f13048b = str;
                this.f13050d = abstractC4081a0;
                return this;
            }
            throw new IllegalArgumentException("method.length() == 0");
        }

        /* renamed from: d */
        public C4136a m1358d(String str) {
            String str2;
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                StringBuilder m8752j = C0082b.m8752j("http:");
                m8752j.append(str.substring(3));
                str2 = m8752j.toString();
            } else {
                str2 = str;
                if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    StringBuilder m8752j2 = C0082b.m8752j("https:");
                    m8752j2.append(str.substring(4));
                    str2 = m8752j2.toString();
                }
            }
            C4123s.C4124a c4124a = new C4123s.C4124a();
            c4124a.m1372c(null, str2);
            m1357e(c4124a.m1374a());
            return this;
        }

        /* renamed from: e */
        public C4136a m1357e(C4123s c4123s) {
            Objects.requireNonNull(c4123s, "url == null");
            this.f13047a = c4123s;
            return this;
        }
    }

    public C4135y(C4136a c4136a) {
        this.f13041a = c4136a.f13047a;
        this.f13042b = c4136a.f13048b;
        this.f13043c = new C4121r(c4136a.f13049c);
        this.f13044d = c4136a.f13050d;
        Map<Class<?>, Object> map = c4136a.f13051e;
        byte[] bArr = C4171c.f13144a;
        this.f13045e = map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    /* renamed from: a */
    public C4094d m1362a() {
        C4094d c4094d = this.f13046f;
        if (c4094d == null) {
            c4094d = C4094d.m1423a(this.f13043c);
            this.f13046f = c4094d;
        }
        return c4094d;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Request{method=");
        m8752j.append(this.f13042b);
        m8752j.append(", url=");
        m8752j.append(this.f13041a);
        m8752j.append(", tags=");
        m8752j.append(this.f13045e);
        m8752j.append('}');
        return m8752j.toString();
    }
}
