package p193e.p194a.p1011l.p1020g;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.common.network.util.KnownEndpoints;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import s1.z.c.m;
import x3.h0.a;
import x3.h0.o;
/* renamed from: e.a.l.g.q */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/q.class */
public final class C16905q {

    /* renamed from: a */
    public final g f47480a = C25225a.m3978P1(C16909d.f47485b);

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\b\u0086\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001c\u0010\u0015\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0018\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\r\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001b"}, d2 = {"e/a/l/g/q$a", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", AbstractC2405c.f7629a, "Ljava/lang/String;", "getPurchaseReceipt", "purchaseReceipt", "", C22021b.f61237c, "J", "getRecipient", "()J", "recipient", "a", "getOffer", "offer", "<init>", "(Ljava/lang/String;JLjava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.l.g.q$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/q$a.class */
    public static final class C16906a {
        @b("offer")

        /* renamed from: a */
        private final String f47481a;
        @b("recipient")

        /* renamed from: b */
        private final long f47482b;
        @b("purchaseReceipt")

        /* renamed from: c */
        private final String f47483c;

        public C16906a(String str, long j, String str2) {
            l.e(str, "offer");
            l.e(str2, "purchaseReceipt");
            this.f47481a = str;
            this.f47482b = j;
            this.f47483c = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16906a)) {
                    return false;
                }
                C16906a c16906a = (C16906a) obj;
                return l.a(this.f47481a, c16906a.f47481a) && this.f47482b == c16906a.f47482b && l.a(this.f47483c, c16906a.f47483c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47481a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f47482b);
            String str2 = this.f47483c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + m34274a) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("GiftRequest(offer=");
            m8728C.append(this.f47481a);
            m8728C.append(", recipient=");
            m8728C.append(this.f47482b);
            m8728C.append(", purchaseReceipt=");
            return C22128a.m8618h(m8728C, this.f47483c, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u0007¨\u0006\u000f"}, d2 = {"e/a/l/g/q$b", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", "code", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.l.g.q$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/q$b.class */
    public static final class C16907b {
        @b("code")

        /* renamed from: a */
        private final int f47484a;

        /* renamed from: a */
        public final int m16780a() {
            return this.f47484a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16907b) && this.f47484a == ((C16907b) obj).f47484a;
            }
            return true;
        }

        public int hashCode() {
            return this.f47484a;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("GiftResponse(code="), this.f47484a, ")");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u001d\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"e/a/l/g/q$c", "", "Le/a/l/g/q$a;", "request", "Le/a/l/g/q$b;", "a", "(Le/a/l/g/q$a;Ls1/w/d;)Ljava/lang/Object;", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.l.g.q$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/q$c.class */
    public interface AbstractC16908c {
        @o("/v0/gift")
        /* renamed from: a */
        Object m16779a(@a C16906a c16906a, d<? super C16907b> dVar);
    }

    /* renamed from: e.a.l.g.q$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/q$d.class */
    public static final class C16909d extends m implements s1.z.b.a<AbstractC16908c> {

        /* renamed from: b */
        public static final C16909d f47485b = new C16909d();

        public C16909d() {
            super(0);
        }

        public Object invoke() {
            return (AbstractC16908c) C8367d.m28633a(KnownEndpoints.PREMIUM, AbstractC16908c.class);
        }
    }

    @e(c = "com.truecaller.premium.gift.GoldGiftNetworkHelper", f = "GoldGiftNetworkHelper.kt", l = {16}, m = "gift")
    /* renamed from: e.a.l.g.q$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/q$e.class */
    public static final class C16910e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47486d;

        /* renamed from: e */
        public int f47487e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16910e(d dVar) {
            super(dVar);
            C16905q.this = r4;
        }

        /* renamed from: s */
        public final Object m16778s(Object obj) {
            this.f47486d = obj;
            this.f47487e |= Integer.MIN_VALUE;
            return C16905q.this.m16781a(null, 0L, null, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|33|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|31|32))|7|8|33|(0)(0)|22|31|32) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c7, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cc, code lost:
        if ((r7 instanceof x3.l) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cf, code lost:
        r7 = new p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17222a(r7.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e5, code lost:
        if ((r7 instanceof java.net.SocketTimeoutException) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e8, code lost:
        r7 = p193e.p194a.p1011l.p1029r2.AbstractC17221a.C17225d.f48348a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ef, code lost:
        r0 = r7 instanceof java.io.IOException;
        r7 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16781a(java.lang.String r7, long r8, java.lang.String r10, s1.w.d<? super p193e.p194a.p1011l.p1029r2.AbstractC17221a<p193e.p194a.p1011l.p1020g.C16905q.C16907b>> r11) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1020g.C16905q.m16781a(java.lang.String, long, java.lang.String, s1.w.d):java.lang.Object");
    }
}
