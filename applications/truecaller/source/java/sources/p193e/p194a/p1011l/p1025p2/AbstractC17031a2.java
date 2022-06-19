package p193e.p194a.p1011l.p1025p2;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.network.ImpressionData;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.a2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/a2.class */
public interface AbstractC17031a2 {

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001c\u0010\u0014\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013R\u001c\u0010\u0015\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\f\u0010\u0004¨\u0006\u0016"}, d2 = {"e/a/l/p2/a2$a", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", AbstractC2405c.f7629a, "product", "", C22021b.f61237c, "J", "()J", "price", ImpressionData.CURRENCY, "premium_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.l.p2.a2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/a2$a.class */
    public static final class C17032a {
        @b("product")

        /* renamed from: a */
        private final String f47776a;
        @b("price")

        /* renamed from: b */
        private final long f47777b;
        @b(ImpressionData.CURRENCY)

        /* renamed from: c */
        private final String f47778c;

        /* renamed from: a */
        public final String m16619a() {
            return this.f47778c;
        }

        /* renamed from: b */
        public final long m16618b() {
            return this.f47777b;
        }

        /* renamed from: c */
        public final String m16617c() {
            return this.f47776a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17032a)) {
                    return false;
                }
                C17032a c17032a = (C17032a) obj;
                return l.a(this.f47776a, c17032a.f47776a) && this.f47777b == c17032a.f47777b && l.a(this.f47778c, c17032a.f47778c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47776a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f47777b);
            String str2 = this.f47778c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + m34274a) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ProductPrice(product=");
            m8728C.append(this.f47776a);
            m8728C.append(", price=");
            m8728C.append(this.f47777b);
            m8728C.append(", currency=");
            return C22128a.m8618h(m8728C, this.f47778c, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"e/a/l/p2/a2$b", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "a", "Ljava/util/List;", "getProducts", "()Ljava/util/List;", "products", "<init>", "(Ljava/util/List;)V", "premium_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.l.p2.a2$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/a2$b.class */
    public static final class C17033b {
        @b("products")

        /* renamed from: a */
        private final List<String> f47779a;

        public C17033b(List<String> list) {
            l.e(list, "products");
            this.f47779a = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C17033b) && l.a(this.f47779a, ((C17033b) obj).f47779a);
            }
            return true;
        }

        public int hashCode() {
            List<String> list = this.f47779a;
            return list != null ? list.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8602l(C22128a.m8728C("ProductPricesRequest(products="), this.f47779a, ")");
        }
    }
}
