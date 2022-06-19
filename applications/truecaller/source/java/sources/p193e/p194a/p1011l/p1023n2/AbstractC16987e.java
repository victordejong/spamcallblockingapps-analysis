package p193e.p194a.p1011l.p1023n2;

import android.app.Activity;
import com.truecaller.premium.billing.Receipt;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.AbstractC17126l;
import p193e.p194a.p1011l.p1025p2.C17125k1;
import p193e.p194a.p1011l.p1025p2.C17134m1;
import s1.s;
import s1.w.d;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.n2.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/n2/e.class */
public interface AbstractC16987e {

    /* renamed from: e.a.l.n2.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/n2/e$a.class */
    public static abstract class AbstractC16988a {

        /* renamed from: e.a.l.n2.e$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/n2/e$a$a.class */
        public static final class C16989a extends AbstractC16988a {

            /* renamed from: a */
            public static final C16989a f47658a = new C16989a();

            public C16989a() {
                super(null);
            }
        }

        /* renamed from: e.a.l.n2.e$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/l/n2/e$a$b.class */
        public static final class C16990b extends AbstractC16988a {

            /* renamed from: a */
            public final String f47659a;

            public C16990b(String str) {
                super(null);
                this.f47659a = str;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C16990b) && l.a(this.f47659a, ((C16990b) obj).f47659a);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f47659a;
                return str != null ? str.hashCode() : 0;
            }

            public String toString() {
                return C22128a.m8618h(C22128a.m8728C("Error(debugMessage="), this.f47659a, ")");
            }
        }

        /* renamed from: e.a.l.n2.e$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/l/n2/e$a$c.class */
        public static final class C16991c extends AbstractC16988a {

            /* renamed from: a */
            public final Receipt f47660a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16991c(Receipt receipt) {
                super(null);
                l.e(receipt, "receipt");
                this.f47660a = receipt;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C16991c) && l.a(this.f47660a, ((C16991c) obj).f47660a);
                }
                return true;
            }

            public int hashCode() {
                Receipt receipt = this.f47660a;
                return receipt != null ? receipt.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("PendingPurchase(receipt=");
                m8728C.append(this.f47660a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.l.n2.e$a$d */
        /* loaded from: classes12-dex2jar.jar:e/a/l/n2/e$a$d.class */
        public static final class C16992d extends AbstractC16988a {

            /* renamed from: a */
            public final Receipt f47661a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16992d(Receipt receipt) {
                super(null);
                l.e(receipt, "receipt");
                this.f47661a = receipt;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C16992d) && l.a(this.f47661a, ((C16992d) obj).f47661a);
                }
                return true;
            }

            public int hashCode() {
                Receipt receipt = this.f47661a;
                return receipt != null ? receipt.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Success(receipt=");
                m8728C.append(this.f47661a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        public AbstractC16988a() {
        }

        public AbstractC16988a(f fVar) {
        }
    }

    /* renamed from: a */
    Object mo16671a(d<? super s> dVar);

    /* renamed from: b */
    Object mo16670b(C17134m1 c17134m1, d<? super List<C16993f>> dVar);

    /* renamed from: c */
    void mo16669c(AbstractC17126l abstractC17126l);

    /* renamed from: d */
    Object mo16668d(Receipt receipt, d<? super s> dVar);

    /* renamed from: e */
    Object mo16667e(d<? super List<Receipt>> dVar);

    /* renamed from: f */
    Object mo16666f(C17125k1 c17125k1, d<? super C16993f> dVar);

    /* renamed from: g */
    Object mo16665g(Activity activity, C16993f c16993f, String str, d<? super AbstractC16988a> dVar);

    /* renamed from: h */
    Object mo16664h(Receipt receipt, d<? super Boolean> dVar);

    /* renamed from: i */
    Object mo16663i(d<? super List<Receipt>> dVar);

    /* renamed from: j */
    Object mo16662j(d<? super C16993f> dVar);

    /* renamed from: k */
    Object mo16661k(d<? super C16993f> dVar);

    /* renamed from: l */
    Object mo16660l(d<? super Boolean> dVar);

    /* renamed from: m */
    Object mo16659m(d<? super List<Receipt>> dVar);
}
