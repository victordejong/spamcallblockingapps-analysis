package p193e.p194a.p1070n2.p1072b;

import com.truecaller.account.numbers.SecondaryNumberPromoDisplayConfig;
import e.m.e.k;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.g;
import s1.l;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.n2.b.a */
/* loaded from: classes4-dex2jar.jar:e/a/n2/b/a.class */
public final class C18472a {

    /* renamed from: a */
    public final g f52151a = C25225a.m3978P1(new C18473a());

    /* renamed from: b */
    public final AbstractC8432l f52152b;

    /* renamed from: c */
    public final AbstractC13497p f52153c;

    /* renamed from: d */
    public final C20592g f52154d;

    /* renamed from: e */
    public final AbstractC21881d f52155e;

    /* renamed from: f */
    public final C8601l0 f52156f;

    /* renamed from: e.a.n2.b.a$a */
    /* loaded from: classes4-dex2jar.jar:e/a/n2/b/a$a.class */
    public static final class C18473a extends m implements a<SecondaryNumberPromoDisplayConfig> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18473a() {
            super(0);
            C18472a.this = r4;
        }

        public Object invoke() {
            Object obj;
            k kVar = new k();
            try {
                C20592g c20592g = C18472a.this.f52154d;
                obj = (SecondaryNumberPromoDisplayConfig) kVar.f(((AbstractC20597i) c20592g.f58065y3.m10941a(c20592g, C20592g.f57695p6[234])).mo10938g(), SecondaryNumberPromoDisplayConfig.class);
            } catch (Throwable th) {
                obj = C25225a.m3935a0(th);
            }
            Object obj2 = obj;
            if (obj instanceof l.a) {
                obj2 = null;
            }
            SecondaryNumberPromoDisplayConfig secondaryNumberPromoDisplayConfig = (SecondaryNumberPromoDisplayConfig) obj2;
            if (secondaryNumberPromoDisplayConfig == null) {
                secondaryNumberPromoDisplayConfig = new SecondaryNumberPromoDisplayConfig(false, 0L, 0, 7, null);
            }
            return secondaryNumberPromoDisplayConfig;
        }
    }

    @Inject
    public C18472a(AbstractC8432l abstractC8432l, AbstractC13497p abstractC13497p, C20592g c20592g, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        s1.z.c.l.e(abstractC8432l, "truecallerAccountManager");
        s1.z.c.l.e(abstractC13497p, "multiSimManager");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC21881d, "generalSettings");
        s1.z.c.l.e(c8601l0, "timestampUtil");
        this.f52152b = abstractC8432l;
        this.f52153c = abstractC13497p;
        this.f52154d = c20592g;
        this.f52155e = abstractC21881d;
        this.f52156f = c8601l0;
    }

    /* renamed from: a */
    public final SecondaryNumberPromoDisplayConfig m14882a() {
        return (SecondaryNumberPromoDisplayConfig) this.f52151a.getValue();
    }
}
