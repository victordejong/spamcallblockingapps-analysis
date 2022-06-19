package p193e.p194a.p1041l0.p1045v;

import androidx.recyclerview.widget.RecyclerView;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l0.v.a */
/* loaded from: classes6-dex2jar.jar:e/a/l0/v/a.class */
public interface AbstractC17389a {

    /* renamed from: e.a.l0.v.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/v/a$a.class */
    public static final class C17390a {

        /* renamed from: a */
        public final int f48731a;

        /* renamed from: b */
        public final long f48732b;

        public C17390a(int i, long j) {
            this.f48731a = i;
            this.f48732b = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        public C17390a(int i, long j, int i2) {
            i = (i2 & 1) != 0 ? 0 : i;
            ?? r6 = (i2 & 2) != 0 ? 9223372036854775807 : j;
            this.f48731a = i;
            this.f48732b = r6;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("State ");
            C22128a.m8669S0(m8728C, this.f48731a == 0 ? "STATE_NEXT_ROUND" : "STATE_DONE", " | ", "TimeLimitMillis ");
            long j = this.f48732b;
            m8728C.append(j == RecyclerView.FOREVER_NS ? "MAX" : Long.valueOf(j));
            m8728C.append('}');
            return m8728C.toString();
        }
    }

    /* renamed from: a */
    void mo16145a(C17390a c17390a);
}
