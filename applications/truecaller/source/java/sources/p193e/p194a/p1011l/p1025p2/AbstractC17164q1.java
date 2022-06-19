package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.PremiumLaunchContext;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.p2.q1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/q1.class */
public interface AbstractC17164q1 {

    /* renamed from: e.a.l.p2.q1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/q1$a.class */
    public static final class C17165a {

        /* renamed from: a */
        public final b f48156a;

        /* renamed from: b */
        public final String f48157b;

        /* renamed from: c */
        public final String f48158c;

        public C17165a(b bVar, String str, String str2) {
            l.e(bVar, "date");
            l.e(str, "orderId");
            l.e(str2, "source");
            this.f48156a = bVar;
            this.f48157b = str;
            this.f48158c = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17165a)) {
                    return false;
                }
                C17165a c17165a = (C17165a) obj;
                return l.a(this.f48156a, c17165a.f48156a) && l.a(this.f48157b, c17165a.f48157b) && l.a(this.f48158c, c17165a.f48158c);
            }
            return true;
        }

        public int hashCode() {
            b bVar = this.f48156a;
            int i = 0;
            int hashCode = bVar != null ? bVar.hashCode() : 0;
            String str = this.f48157b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f48158c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("HistoryEntry(date=");
            m8728C.append(this.f48156a);
            m8728C.append(", orderId=");
            m8728C.append(this.f48157b);
            m8728C.append(", source=");
            return C22128a.m8618h(m8728C, this.f48158c, ")");
        }
    }

    /* renamed from: e.a.l.p2.q1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/q1$b.class */
    public static final class C17166b {

        /* renamed from: a */
        public final String f48159a;

        /* renamed from: b */
        public final long f48160b;

        public C17166b(String str, long j) {
            l.e(str, "source");
            this.f48159a = str;
            this.f48160b = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17166b)) {
                    return false;
                }
                C17166b c17166b = (C17166b) obj;
                return l.a(this.f48159a, c17166b.f48159a) && this.f48160b == c17166b.f48160b;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f48159a;
            return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f48160b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SourceEntry(source=");
            m8728C.append(this.f48159a);
            m8728C.append(", timestamp=");
            return C22128a.m8693K2(m8728C, this.f48160b, ")");
        }
    }

    /* renamed from: a */
    String mo16461a(String str);

    /* renamed from: b */
    void mo16460b(String str, PremiumLaunchContext premiumLaunchContext);

    /* renamed from: c */
    String mo16459c();

    /* renamed from: d */
    List<C17165a> mo16458d();

    /* renamed from: e */
    void mo16457e(PremiumLaunchContext premiumLaunchContext);
}
