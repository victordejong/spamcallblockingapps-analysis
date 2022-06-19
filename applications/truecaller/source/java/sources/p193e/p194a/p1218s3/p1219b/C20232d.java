package p193e.p194a.p1218s3.p1219b;

import com.truecaller.exception.filters.RemoteFilterConfig;
import com.truecaller.exception.filters.RemoteFilterRule;
import e.m.e.k;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p615c4.AbstractC10935c;
import s1.f0.r;
import s1.g;
import s1.u.s;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.s3.b.d */
/* loaded from: classes9-dex2jar.jar:e/a/s3/b/d.class */
public final class C20232d extends AbstractC10935c {

    /* renamed from: a */
    public final g f56981a;

    /* renamed from: b */
    public final a<C20230b> f56982b;

    /* renamed from: e.a.s3.b.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/s3/b/d$a.class */
    public static final class C20233a extends m implements s1.z.b.a<List<? extends RemoteFilterConfig>> {

        /* renamed from: b */
        public final /* synthetic */ a f56983b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20233a(a aVar) {
            super(0);
            this.f56983b = aVar;
        }

        public Object invoke() {
            List list;
            List list2 = s.a;
            try {
                String string = ((AbstractC20235a) this.f56983b.get()).getString("remoteExceptionFilter_21367");
                if (r.p(string)) {
                    string = null;
                }
                list = list2;
                if (string != null) {
                    List list3 = (List) new k().g(string, new C20231c().getType());
                    list = list2;
                    if (list3 != null) {
                        list = list3;
                    }
                }
            } catch (Exception e) {
                e.getMessage();
                list = list2;
            }
            return list;
        }
    }

    @Inject
    public C20232d(a<AbstractC20235a> aVar, a<C20230b> aVar2) {
        l.e(aVar, "remoteConfig");
        l.e(aVar2, "debugIdRuleChecker");
        this.f56982b = aVar2;
        this.f56981a = C25225a.m3978P1(new C20233a(aVar));
    }

    @Override // p193e.p194a.p615c4.AbstractC10935c
    /* renamed from: e */
    public boolean mo11316e(Throwable th) {
        boolean z;
        l.e(th, "e");
        try {
            List list = (List) this.f56981a.getValue();
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    z = false;
                    if (it.hasNext()) {
                        if (m11315f((RemoteFilterConfig) it.next(), th)) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                z = false;
            }
        } catch (Exception e) {
            e.getMessage();
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m11315f(RemoteFilterConfig remoteFilterConfig, Throwable th) {
        String str;
        RemoteFilterRule[] rules = remoteFilterConfig.getRules();
        boolean z = false;
        if (rules != null) {
            int length = rules.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                RemoteFilterRule remoteFilterRule = rules[i];
                String type = remoteFilterRule.getType();
                C20229a c20229a = null;
                if (type != null) {
                    Locale locale = Locale.US;
                    l.d(locale, "Locale.US");
                    str = type.toLowerCase(locale);
                    l.d(str, "(this as java.lang.String).toLowerCase(locale)");
                } else {
                    str = null;
                }
                if (str != null) {
                    int hashCode = str.hashCode();
                    if (hashCode != -567445985) {
                        if (hashCode == 1541692078 && str.equals("debugid")) {
                            c20229a = (AbstractC20234e) this.f56982b.get();
                        }
                    } else if (str.equals("contains")) {
                        c20229a = C20229a.f56979a;
                    }
                }
                if (!(c20229a != null ? c20229a.mo11314a(remoteFilterRule, th) : false)) {
                    z = false;
                    break;
                }
                i++;
            }
        }
        return z;
    }
}
