package com.truecaller.premium.promotion;

import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import e.m.e.k;
import e.m.e.o;
import e.m.e.p;
import e.m.e.q;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.C20592g;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/promotion/PremiumHomeTabPromo.class */
public final class PremiumHomeTabPromo {

    /* renamed from: a */
    public final k f14253a;

    /* renamed from: b */
    public final AbstractC20235a f14254b;

    /* renamed from: c */
    public final C20592g f14255c;

    /* renamed from: d */
    public final AbstractC17197v0 f14256d;

    /* renamed from: e */
    public final AbstractC16832c2 f14257e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "GENERIC", "CAMPAIGN", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/promotion/PremiumHomeTabPromo$Type.class */
    public enum Type {
        GENERIC("GenericPremiumPromo"),
        CAMPAIGN("SeasonalOfferPromo");
        
        public static final C4351a Companion = new C4351a(null);
        private final String value;

        /* renamed from: com.truecaller.premium.promotion.PremiumHomeTabPromo$Type$a */
        /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/promotion/PremiumHomeTabPromo$Type$a.class */
        public static final class C4351a {
            public C4351a(f fVar) {
            }
        }

        Type(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\f\u0010\u0004R\u001c\u0010\u0015\u001a\u00020\u00128\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014¨\u0006\u0018"}, d2 = {"com/truecaller/premium/promotion/PremiumHomeTabPromo$a", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", AbstractC2405c.f7629a, "Ljava/lang/String;", "a", "campaign", C22021b.f61237c, "url", "Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;", "Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;", "()Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;", "type", "<init>", "(Lcom/truecaller/premium/promotion/PremiumHomeTabPromo$Type;Ljava/lang/String;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.premium.promotion.PremiumHomeTabPromo$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/promotion/PremiumHomeTabPromo$a.class */
    public static final class C4352a {
        @b("type")

        /* renamed from: a */
        private final Type f14258a;
        @b("url")

        /* renamed from: b */
        private final String f14259b = null;
        @b("campaign")

        /* renamed from: c */
        private final String f14260c = null;

        public C4352a(Type type, String str, String str2) {
            l.e(type, "type");
            this.f14258a = type;
        }

        /* renamed from: a */
        public final String m34815a() {
            return this.f14260c;
        }

        /* renamed from: b */
        public final Type m34814b() {
            return this.f14258a;
        }

        /* renamed from: c */
        public final String m34813c() {
            return this.f14259b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4352a)) {
                    return false;
                }
                C4352a c4352a = (C4352a) obj;
                return l.a(this.f14258a, c4352a.f14258a) && l.a(this.f14259b, c4352a.f14259b) && l.a(this.f14260c, c4352a.f14260c);
            }
            return true;
        }

        public int hashCode() {
            Type type = this.f14258a;
            int i = 0;
            int hashCode = type != null ? type.hashCode() : 0;
            String str = this.f14259b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f14260c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Data(type=");
            m8728C.append(this.f14258a);
            m8728C.append(", url=");
            m8728C.append(this.f14259b);
            m8728C.append(", campaign=");
            return C22128a.m8618h(m8728C, this.f14260c, ")");
        }
    }

    /* renamed from: com.truecaller.premium.promotion.PremiumHomeTabPromo$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/promotion/PremiumHomeTabPromo$b.class */
    public static final class C4353b implements p<Type> {
        /* renamed from: a */
        public Object m34812a(q qVar, java.lang.reflect.Type type, o oVar) {
            Type type2;
            Type.C4351a c4351a = Type.Companion;
            String g = qVar.g();
            Objects.requireNonNull(c4351a);
            Type[] values = Type.values();
            int i = 0;
            while (true) {
                if (i >= 2) {
                    type2 = null;
                    break;
                }
                type2 = values[i];
                if (r.n(type2.getValue(), g, true)) {
                    break;
                }
                i++;
            }
            if (type2 == null) {
                type2 = Type.GENERIC;
            }
            return type2;
        }
    }

    @Inject
    public PremiumHomeTabPromo(AbstractC20235a abstractC20235a, C20592g c20592g, AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2) {
        l.e(abstractC20235a, "remoteConfig");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        this.f14254b = abstractC20235a;
        this.f14255c = c20592g;
        this.f14256d = abstractC17197v0;
        this.f14257e = abstractC16832c2;
        e.m.e.l lVar = new e.m.e.l();
        lVar.b(Type.class, new C4353b());
        k a = lVar.a();
        l.d(a, "GsonBuilder().registerTy…eDeserializer()).create()");
        this.f14253a = a;
    }
}
