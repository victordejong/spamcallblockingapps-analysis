package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.premium.premiumusertab.list.AnalyticsAction;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.C17135n;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17279a;
import p193e.p194a.p1349x.C21345i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.t */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t.class */
public abstract class AbstractC16736t {

    /* renamed from: e.a.l.c.a.t$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$a.class */
    public static final class C16737a extends AbstractC16736t {

        /* renamed from: a */
        public final boolean f46934a;

        public C16737a(boolean z) {
            super(null);
            this.f46934a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16737a) && this.f46934a == ((C16737a) obj).f46934a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f46934a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("AnnounceCallerId(isAnnounceCallEnabled="), this.f46934a, ")");
        }
    }

    /* renamed from: e.a.l.c.a.t$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$b.class */
    public static final class C16738b extends AbstractC16736t {

        /* renamed from: a */
        public static final C16738b f46935a = new C16738b();

        public C16738b() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.t$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$c.class */
    public static final class C16739c extends AbstractC16736t {

        /* renamed from: a */
        public final String f46936a;

        /* renamed from: b */
        public final boolean f46937b;

        /* renamed from: c */
        public final int f46938c;

        /* renamed from: d */
        public final int f46939d;

        /* renamed from: e */
        public final C16770x2 f46940e;

        /* renamed from: f */
        public final C16770x2 f46941f;

        /* renamed from: g */
        public final C16629a0 f46942g;

        /* renamed from: h */
        public final C16629a0 f46943h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16739c(String str, boolean z, int i, int i2, C16770x2 c16770x2, C16770x2 c16770x22, C16629a0 c16629a0, C16629a0 c16629a02) {
            super(null);
            l.e(c16770x2, "title");
            l.e(c16629a0, "cta1");
            this.f46936a = str;
            this.f46937b = z;
            this.f46938c = i;
            this.f46939d = i2;
            this.f46940e = c16770x2;
            this.f46941f = c16770x22;
            this.f46942g = c16629a0;
            this.f46943h = c16629a02;
        }

        public /* synthetic */ C16739c(String str, boolean z, int i, int i2, C16770x2 c16770x2, C16770x2 c16770x22, C16629a0 c16629a0, C16629a0 c16629a02, int i3) {
            this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? false : z, i, i2, c16770x2, (i3 & 32) != 0 ? null : c16770x22, c16629a0, (i3 & 128) != 0 ? null : c16629a02);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16739c)) {
                    return false;
                }
                C16739c c16739c = (C16739c) obj;
                return l.a(this.f46936a, c16739c.f46936a) && this.f46937b == c16739c.f46937b && this.f46938c == c16739c.f46938c && this.f46939d == c16739c.f46939d && l.a(this.f46940e, c16739c.f46940e) && l.a(this.f46941f, c16739c.f46941f) && l.a(this.f46942g, c16739c.f46942g) && l.a(this.f46943h, c16739c.f46943h);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f46936a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f46937b;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            int i3 = this.f46938c;
            int i4 = this.f46939d;
            C16770x2 c16770x2 = this.f46940e;
            int hashCode2 = c16770x2 != null ? c16770x2.hashCode() : 0;
            C16770x2 c16770x22 = this.f46941f;
            int hashCode3 = c16770x22 != null ? c16770x22.hashCode() : 0;
            C16629a0 c16629a0 = this.f46942g;
            int hashCode4 = c16629a0 != null ? c16629a0.hashCode() : 0;
            C16629a0 c16629a02 = this.f46943h;
            if (c16629a02 != null) {
                i = c16629a02.hashCode();
            }
            return (((((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Feature(type=");
            m8728C.append(this.f46936a);
            m8728C.append(", isGold=");
            m8728C.append(this.f46937b);
            m8728C.append(", backgroundRes=");
            m8728C.append(this.f46938c);
            m8728C.append(", iconRes=");
            m8728C.append(this.f46939d);
            m8728C.append(", title=");
            m8728C.append(this.f46940e);
            m8728C.append(", subTitle=");
            m8728C.append(this.f46941f);
            m8728C.append(", cta1=");
            m8728C.append(this.f46942g);
            m8728C.append(", cta2=");
            m8728C.append(this.f46943h);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.c.a.t$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$d.class */
    public static final class C16740d extends AbstractC16736t {

        /* renamed from: a */
        public final C21345i f46944a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16740d(C21345i c21345i) {
            super(null);
            l.e(c21345i, "ghostCallConfig");
            this.f46944a = c21345i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16740d) && l.a(this.f46944a, ((C16740d) obj).f46944a);
            }
            return true;
        }

        public int hashCode() {
            C21345i c21345i = this.f46944a;
            return c21345i != null ? c21345i.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("GhostCall(ghostCallConfig=");
            m8728C.append(this.f46944a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.c.a.t$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$e.class */
    public static final class C16741e extends AbstractC16736t {

        /* renamed from: a */
        public final C17135n f46945a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16741e(C17135n c17135n) {
            super(null);
            l.e(c17135n, "previewData");
            this.f46945a = c17135n;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16741e) && l.a(this.f46945a, ((C16741e) obj).f46945a);
            }
            return true;
        }

        public int hashCode() {
            C17135n c17135n = this.f46945a;
            return c17135n != null ? c17135n.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("GoldCallerId(previewData=");
            m8728C.append(this.f46945a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.c.a.t$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$f.class */
    public static final class C16742f extends AbstractC16736t {

        /* renamed from: a */
        public static final C16742f f46946a = new C16742f();

        public C16742f() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.t$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$g.class */
    public static final class C16743g extends AbstractC16736t {

        /* renamed from: a */
        public static final C16743g f46947a = new C16743g();

        public C16743g() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.t$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$h.class */
    public static final class C16744h extends AbstractC16736t {

        /* renamed from: a */
        public static final C16744h f46948a = new C16744h();

        public C16744h() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.t$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$i.class */
    public static final class C16745i extends AbstractC16736t {

        /* renamed from: a */
        public final String f46949a;

        /* renamed from: b */
        public final Integer f46950b;

        /* renamed from: c */
        public final String f46951c;

        /* renamed from: d */
        public final boolean f46952d;

        /* renamed from: e */
        public final C16770x2 f46953e;

        /* renamed from: f */
        public final C16770x2 f46954f;

        /* renamed from: g */
        public final C16770x2 f46955g;

        /* renamed from: h */
        public final C16993f f46956h;

        /* renamed from: i */
        public final C17279a f46957i;

        /* renamed from: j */
        public final C16629a0 f46958j;

        /* renamed from: k */
        public final C16771y f46959k;

        /* renamed from: l */
        public final AnalyticsAction f46960l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16745i(String str, Integer num, String str2, boolean z, C16770x2 c16770x2, C16770x2 c16770x22, C16770x2 c16770x23, C16993f c16993f, C17279a c17279a, C16629a0 c16629a0, C16771y c16771y, AnalyticsAction analyticsAction, int i) {
            super(null);
            str = (i & 1) != 0 ? null : str;
            num = (i & 2) != 0 ? null : num;
            str2 = (i & 4) != 0 ? null : str2;
            z = (i & 8) != 0 ? false : z;
            c16770x2 = (i & 16) != 0 ? null : c16770x2;
            c16770x22 = (i & 32) != 0 ? null : c16770x22;
            c16770x23 = (i & 64) != 0 ? null : c16770x23;
            c16629a0 = (i & 512) != 0 ? null : c16629a0;
            c16771y = (i & 1024) != 0 ? null : c16771y;
            analyticsAction = (i & 2048) != 0 ? null : analyticsAction;
            l.e(c16993f, "purchaseItem");
            l.e(c17279a, "purchaseButton");
            this.f46949a = str;
            this.f46950b = num;
            this.f46951c = str2;
            this.f46952d = z;
            this.f46953e = c16770x2;
            this.f46954f = c16770x22;
            this.f46955g = c16770x23;
            this.f46956h = c16993f;
            this.f46957i = c17279a;
            this.f46958j = c16629a0;
            this.f46959k = c16771y;
            this.f46960l = analyticsAction;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16745i)) {
                    return false;
                }
                C16745i c16745i = (C16745i) obj;
                return l.a(this.f46949a, c16745i.f46949a) && l.a(this.f46950b, c16745i.f46950b) && l.a(this.f46951c, c16745i.f46951c) && this.f46952d == c16745i.f46952d && l.a(this.f46953e, c16745i.f46953e) && l.a(this.f46954f, c16745i.f46954f) && l.a(this.f46955g, c16745i.f46955g) && l.a(this.f46956h, c16745i.f46956h) && l.a(this.f46957i, c16745i.f46957i) && l.a(this.f46958j, c16745i.f46958j) && l.a(this.f46959k, c16745i.f46959k) && l.a(this.f46960l, c16745i.f46960l);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f46949a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Integer num = this.f46950b;
            int hashCode2 = num != null ? num.hashCode() : 0;
            String str2 = this.f46951c;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f46952d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            C16770x2 c16770x2 = this.f46953e;
            int hashCode4 = c16770x2 != null ? c16770x2.hashCode() : 0;
            C16770x2 c16770x22 = this.f46954f;
            int hashCode5 = c16770x22 != null ? c16770x22.hashCode() : 0;
            C16770x2 c16770x23 = this.f46955g;
            int hashCode6 = c16770x23 != null ? c16770x23.hashCode() : 0;
            C16993f c16993f = this.f46956h;
            int hashCode7 = c16993f != null ? c16993f.hashCode() : 0;
            C17279a c17279a = this.f46957i;
            int hashCode8 = c17279a != null ? c17279a.hashCode() : 0;
            C16629a0 c16629a0 = this.f46958j;
            int hashCode9 = c16629a0 != null ? c16629a0.hashCode() : 0;
            C16771y c16771y = this.f46959k;
            int hashCode10 = c16771y != null ? c16771y.hashCode() : 0;
            AnalyticsAction analyticsAction = this.f46960l;
            if (analyticsAction != null) {
                i = analyticsAction.hashCode();
            }
            return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Promo(type=");
            m8728C.append(this.f46949a);
            m8728C.append(", imageRes=");
            m8728C.append(this.f46950b);
            m8728C.append(", imageUrl=");
            m8728C.append(this.f46951c);
            m8728C.append(", isGold=");
            m8728C.append(this.f46952d);
            m8728C.append(", title=");
            m8728C.append(this.f46953e);
            m8728C.append(", offer=");
            m8728C.append(this.f46954f);
            m8728C.append(", subTitle=");
            m8728C.append(this.f46955g);
            m8728C.append(", purchaseItem=");
            m8728C.append(this.f46956h);
            m8728C.append(", purchaseButton=");
            m8728C.append(this.f46957i);
            m8728C.append(", cta=");
            m8728C.append(this.f46958j);
            m8728C.append(", countDownTimerSpec=");
            m8728C.append(this.f46959k);
            m8728C.append(", onBindAnalyticsAction=");
            m8728C.append(this.f46960l);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.c.a.t$j */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$j.class */
    public static final class C16746j extends AbstractC16736t {

        /* renamed from: a */
        public final List<C16716o2> f46961a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16746j(List<C16716o2> list) {
            super(null);
            l.e(list, "reviews");
            this.f46961a = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16746j) && l.a(this.f46961a, ((C16746j) obj).f46961a);
            }
            return true;
        }

        public int hashCode() {
            List<C16716o2> list = this.f46961a;
            return list != null ? list.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8602l(C22128a.m8728C("Reviews(reviews="), this.f46961a, ")");
        }
    }

    /* renamed from: e.a.l.c.a.t$k */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$k.class */
    public static final class C16747k extends AbstractC16736t {

        /* renamed from: a */
        public final List<C16691j> f46962a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16747k(List<C16691j> list) {
            super(null);
            l.e(list, "options");
            this.f46962a = list;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16747k) && l.a(this.f46962a, ((C16747k) obj).f46962a);
            }
            return true;
        }

        public int hashCode() {
            List<C16691j> list = this.f46962a;
            return list != null ? list.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8602l(C22128a.m8728C("SpamProtection(options="), this.f46962a, ")");
        }
    }

    /* renamed from: e.a.l.c.a.t$l */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$l.class */
    public static final class C16748l extends AbstractC16736t {

        /* renamed from: a */
        public final C16756u0 f46963a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16748l(C16756u0 c16756u0) {
            super(null);
            l.e(c16756u0, "premiumSpamStats");
            this.f46963a = c16756u0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16748l) && l.a(this.f46963a, ((C16748l) obj).f46963a);
            }
            return true;
        }

        public int hashCode() {
            C16756u0 c16756u0 = this.f46963a;
            return c16756u0 != null ? c16756u0.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SpamStats(premiumSpamStats=");
            m8728C.append(this.f46963a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.l.c.a.t$m */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$m.class */
    public static final class C16749m extends AbstractC16736t {

        /* renamed from: a */
        public final AvatarXConfig f46964a;

        /* renamed from: b */
        public final String f46965b;

        /* renamed from: c */
        public final String f46966c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16749m(AvatarXConfig avatarXConfig, String str, String str2) {
            super(null);
            l.e(avatarXConfig, "avatarXConfig");
            l.e(str, "title");
            l.e(str2, "description");
            this.f46964a = avatarXConfig;
            this.f46965b = str;
            this.f46966c = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16749m)) {
                    return false;
                }
                C16749m c16749m = (C16749m) obj;
                return l.a(this.f46964a, c16749m.f46964a) && l.a(this.f46965b, c16749m.f46965b) && l.a(this.f46966c, c16749m.f46966c);
            }
            return true;
        }

        public int hashCode() {
            AvatarXConfig avatarXConfig = this.f46964a;
            int i = 0;
            int hashCode = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
            String str = this.f46965b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f46966c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UserBadge(avatarXConfig=");
            m8728C.append(this.f46964a);
            m8728C.append(", title=");
            m8728C.append(this.f46965b);
            m8728C.append(", description=");
            return C22128a.m8618h(m8728C, this.f46966c, ")");
        }
    }

    /* renamed from: e.a.l.c.a.t$n */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$n.class */
    public static final class C16750n extends AbstractC16736t {

        /* renamed from: a */
        public final boolean f46967a;

        public C16750n(boolean z) {
            super(null);
            this.f46967a = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16750n) && this.f46967a == ((C16750n) obj).f46967a;
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f46967a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            return z2 ? 1 : 0;
        }

        public String toString() {
            return C22128a.m8590o(C22128a.m8728C("WhatsAppCallerId(isWhatsAppCallerIdEnabled="), this.f46967a, ")");
        }
    }

    /* renamed from: e.a.l.c.a.t$o */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/t$o.class */
    public static final class C16751o extends AbstractC16736t {

        /* renamed from: a */
        public final boolean f46968a;

        /* renamed from: b */
        public final String f46969b;

        /* renamed from: c */
        public final String f46970c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16751o(boolean z, String str, String str2) {
            super(null);
            l.e(str, "label");
            l.e(str2, "cta");
            this.f46968a = z;
            this.f46969b = str;
            this.f46970c = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16751o)) {
                    return false;
                }
                C16751o c16751o = (C16751o) obj;
                return this.f46968a == c16751o.f46968a && l.a(this.f46969b, c16751o.f46969b) && l.a(this.f46970c, c16751o.f46970c);
            }
            return true;
        }

        public int hashCode() {
            boolean z = this.f46968a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            String str = this.f46969b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f46970c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return ((((z2 ? 1 : 0) * 31) + hashCode) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("WhoViewedMe(isIncognitoEnabled=");
            m8728C.append(this.f46968a);
            m8728C.append(", label=");
            m8728C.append(this.f46969b);
            m8728C.append(", cta=");
            return C22128a.m8618h(m8728C, this.f46970c, ")");
        }
    }

    public AbstractC16736t() {
    }

    public AbstractC16736t(f fVar) {
    }
}
