package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.k;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.l.p2.r0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/r0.class */
public interface AbstractC17168r0 {

    /* renamed from: e.a.l.p2.r0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/r0$a.class */
    public static final class C17169a {

        /* renamed from: a */
        public final int f48163a;

        /* renamed from: b */
        public final String f48164b;

        /* renamed from: c */
        public final C17203x f48165c;

        public C17169a(int i, String str, C17203x c17203x) {
            l.e(str, "receipt");
            l.e(c17203x, "premium");
            this.f48163a = i;
            this.f48164b = str;
            this.f48165c = c17203x;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17169a)) {
                    return false;
                }
                C17169a c17169a = (C17169a) obj;
                return this.f48163a == c17169a.f48163a && l.a(this.f48164b, c17169a.f48164b) && l.a(this.f48165c, c17169a.f48165c);
            }
            return true;
        }

        public int hashCode() {
            int i = this.f48163a;
            String str = this.f48164b;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            C17203x c17203x = this.f48165c;
            if (c17203x != null) {
                i2 = c17203x.hashCode();
            }
            return (((i * 31) + hashCode) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("VerificationResult(status=");
            m8728C.append(this.f48163a);
            m8728C.append(", receipt=");
            m8728C.append(this.f48164b);
            m8728C.append(", premium=");
            m8728C.append(this.f48165c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: a */
    Object mo16454a(String str, String str2, d<? super C17169a> dVar);

    /* renamed from: b */
    Object mo16453b(d<? super k<Integer, C17203x>> dVar);

    /* renamed from: c */
    k<Integer, C17203x> mo16452c();

    /* renamed from: d */
    Object mo16451d(String str, String str2, d<? super C17169a> dVar);
}
